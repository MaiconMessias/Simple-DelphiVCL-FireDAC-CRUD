unit FEdtIncUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrameEdtIncUsuario = class(TFrame)
    LblId: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    lblFuncionario: TLabel;
    FDQFuncionario: TFDQuery;
    DtSFuncionario: TDataSource;
    DBEdtId: TDBEdit;
    DBEdtUsuario: TDBEdit;
    DBEdtSenha: TDBEdit;
    DBLookupCBoxFunci: TDBLookupComboBox;
    btnCancelar: TButton;
    btnSalvar: TButton;
    FDQFuncionarioID: TIntegerField;
    FDQFuncionarioFUNCIONARIO: TStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UntPesquisaUsuario, UntLanguage;

procedure TFrameEdtIncUsuario.btnCancelarClick(Sender: TObject);
begin
  with TFrmPesquisaUsuario(Self.Owner) do begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    TabShtMain.TabVisible := True;
    TabShtEdtInc.TabVisible := False;
  end;
end;

procedure TFrameEdtIncUsuario.btnSalvarClick(Sender: TObject);
begin
  if (DBLookupCBoxFunci.Text = '') then
    MessageDlg(sMsgFuncionarioObrigatorio, mtWarning, [mbOK], 0)
  else begin
    TFrmPesquisaUsuario(Self.Owner).FDQTempPesq.Post;
    TFrmPesquisaUsuario(Self.Owner).TabShtMain.TabVisible := True;
    TFrmPesquisaUsuario(Self.Owner).TabShtEdtInc.TabVisible := False;
  end;
end;

end.
