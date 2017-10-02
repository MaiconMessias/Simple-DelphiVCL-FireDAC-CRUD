unit UntPesquisaUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntTemplatePesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FEdtIncUsuario;

type
  TFrmPesquisaUsuario = class(TFrmTemplatePesqu)
    TabShtEdtInc: TTabSheet;
    FDQTempPesqID: TIntegerField;
    FDQTempPesqUSUARIO: TStringField;
    FDQTempPesqSENHA: TStringField;
    FDQTempPesqID_FUNCIONARIO: TIntegerField;
    FrameEdtIncUsu: TFrameEdtIncUsuario;
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FrameEdtIncUsubtnCancelarClick(Sender: TObject);
    procedure FrameEdtIncUsubtnSalvarClick(Sender: TObject);
  private
    procedure Traducao();
  public
    { Public declarations }
  end;

var
  FrmPesquisaUsuario: TFrmPesquisaUsuario;

implementation

{$R *.dfm}

uses UntLanguage;

procedure TFrmPesquisaUsuario.DBNavMainClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtInc;

    // Tela de Inclusão inicializando os campos
    with FrameEdtIncUsu do begin
      FDQFuncionario.Close;
      FDQFuncionario.Open;
      DBEdtId.Text := '';
      DBEdtUsuario.Text := '';
      DBEdtSenha.Text := '';
      DBLookupCBoxFunci.KeyValue := -1;
    end;
  end else if (Button = nbEdit) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtEdt;
    // Tela de Edição
    with FrameEdtIncUsu do begin
      FDQFuncionario.Close;
      FDQFuncionario.Open;
    end;
  end;
  // Executa o Append apos os campos serem inicializados
  inherited;
end;

procedure TFrmPesquisaUsuario.FormShow(Sender: TObject);
begin
  inherited;
  Traducao;
  TabShtEdtInc.TabVisible := False;
end;

procedure TFrmPesquisaUsuario.FrameEdtIncUsubtnCancelarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncUsu.btnCancelarClick(Sender);
end;

procedure TFrmPesquisaUsuario.FrameEdtIncUsubtnSalvarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncUsu.btnSalvarClick(Sender);
end;

procedure TFrmPesquisaUsuario.Traducao;
begin
  Self.Caption := sTituloTelaPesqUsuario;
  TabShtMain.Caption := sLblTituloTabSheetUsuario;
  FrameEdtIncUsu.LblId.Caption := slblIdUsuario;
  FrameEdtIncUsu.lblUsuario.Caption := slblUsuarioUsuario;
  FrameEdtIncUsu.lblSenha.Caption := slblSenhaUsuario;
  FrameEdtIncUsu.lblFuncionario.Caption := slblFuncionarioUsuario;
  FrameEdtIncUsu.btnCancelar.Caption := sbtnPesquUsuarioCancelar;
  FrameEdtIncUsu.btnSalvar.Caption := sbtnPesquUsuarioSalvar;
  FDQTempPesqID.DisplayLabel := slblDBGIdUsuario;
  FDQTempPesqUSUARIO.DisplayLabel := slblDBGUsuarioUsuario;
  FDQTempPesqSENHA.DisplayLabel := slblDBGSenhaUsuario;
end;

end.
