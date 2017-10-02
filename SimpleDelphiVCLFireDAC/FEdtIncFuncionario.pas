unit FEdtIncFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrameEdtIncFuncionario = class(TFrame)
    FDQCargo: TFDQuery;
    DtSCargo: TDataSource;
    FDQCargoID: TIntegerField;
    FDQCargoDESCRICAO: TStringField;
    FDQCargoSALARIO: TCurrencyField;
    DBEdtId: TDBEdit;
    LblId: TLabel;
    DBEdtNome: TDBEdit;
    lblNome: TLabel;
    DBEdtRG: TDBEdit;
    lblRG: TLabel;
    DBEdtCPF: TDBEdit;
    lblCPF: TLabel;
    lblCargo: TLabel;
    DBLookupCBoxCargo: TDBLookupComboBox;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UntPesquisaFuncionario, UntDtMMain, UntLanguage;

procedure TFrameEdtIncFuncionario.btnCancelarClick(Sender: TObject);
begin
  with TFrmPesquisaFuncionario(Self.Owner) do begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    TabShtMain.TabVisible := True;
    TabShtEdtInc.TabVisible := False;
  end;
end;

procedure TFrameEdtIncFuncionario.btnSalvarClick(Sender: TObject);
begin
  if (DBLookupCBoxCargo.Text = '') then
        MessageDlg(sMsgCargoObrigatorio, mtWarning, [mbOK], 0)
  else begin
    TFrmPesquisaFuncionario(Self.Owner).FDQTempPesq.Post;
    TFrmPesquisaFuncionario(Self.Owner).TabShtMain.TabVisible := True;
    TFrmPesquisaFuncionario(Self.Owner).TabShtEdtInc.TabVisible := False;
  end;
end;

end.
