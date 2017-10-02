unit UntLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, UntMainScreen,
  Vcl.Mask;

type
  TFrmLogin = class(TForm)
    PnlButton: TPanel;
    BtnEntrar: TButton;
    BtnCancelar: TButton;
    PnlUserSenha: TPanel;
    LblSenha: TLabel;
    LblUsername: TLabel;
    EdtUsername: TEdit;
    PnlIdioma: TPanel;
    CBoxLinguagem: TComboBox;
    LblIdioma: TLabel;
    EdtSenha: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnEntrarClick(Sender: TObject);
    procedure CBoxLinguagemChange(Sender: TObject);
  private
    indexCBoxLinguagem: integer;
    FrmMainScreen: TFrmMainScreen;
    procedure Traducao();
  public
    procedure setFrmMainScreen(FrmMainScreen: TFrmMainScreen);
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UntLanguage, UntDtMMain;

var
  FrmMainScreen: TFrmMainScreen;

procedure TFrmLogin.BtnCancelarClick(Sender: TObject);
begin
  Self.Close;
  Self.FrmMainScreen.Close;
end;

procedure TFrmLogin.BtnEntrarClick(Sender: TObject);
begin
  if (DtMMain.validaUsuario(EdtUsername.Text, EdtSenha.Text)) then
    Self.FrmMainScreen.Show
  else begin
    MessageDlg(sMsgErroLogin, mtWarning, [mbOK], 0);
  end;
end;

procedure TFrmLogin.CBoxLinguagemChange(Sender: TObject);
begin
  case CBoxLinguagem.ItemIndex of
    0: language^ := 'pt';
    else language^ := 'en';
  end;
  // Armazena o indice do combobox para restaurar apos a traducao
  indexCBoxLinguagem := CBoxLinguagem.ItemIndex;
  ChangeValues;
  Traducao;
end;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  New(language);
  language^ := 'pt';
  ChangeValues;
  Traducao;
end;

procedure TFrmLogin.setFrmMainScreen(FrmMainScreen: TFrmMainScreen);
begin
  Self.FrmMainScreen := FrmMainScreen;
end;

procedure TFrmLogin.Traducao;
begin

  with (CBoxLinguagem) do begin
    Items.Clear;
    Items.Add(sItemPt);
    Items.Add(sItemEn);
    ItemIndex := indexCBoxLinguagem;
  end;
  Self.Caption := sTituloLogin;
  LblIdioma.Caption := lbIdioma;
  LblUsername.Caption := lbUsername;
  LblSenha.Caption := lbSenha;
  BtnEntrar.Caption := btEntrar;
  BtnCancelar.Caption := btCancelar;
end;

end.
