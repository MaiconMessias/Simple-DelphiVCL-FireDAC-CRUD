unit FEdtIncProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrameEdtIncProduto = class(TFrame)
    LblId: TLabel;
    lblDescricao: TLabel;
    lblPrecoCompra: TLabel;
    lblPrecoVenda: TLabel;
    lblFornecedor: TLabel;
    DBEdtId: TDBEdit;
    DBEdtDescricao: TDBEdit;
    DBEdtPrecoCompra: TDBEdit;
    DBEdtPrecoVenda: TDBEdit;
    DBMDetalhe: TDBMemo;
    lblDetalhe: TLabel;
    DBLookupCBoxFornecedor: TDBLookupComboBox;
    btnSalvar: TButton;
    btnCancelar: TButton;
    FDQFornecedor: TFDQuery;
    DtSFornecedor: TDataSource;
    FDQFornecedorCNPJ: TStringField;
    FDQFornecedorNOME_FANTASIA: TStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UntPesquisaProduto, UntLanguage;

procedure TFrameEdtIncProduto.btnCancelarClick(Sender: TObject);
begin
  with TFrmPesquisaProduto(Self.Owner) do begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    TabShtMain.TabVisible := True;
    TabShtEdtInc.TabVisible := False;
  end;
end;

procedure TFrameEdtIncProduto.btnSalvarClick(Sender: TObject);
begin
  if (DBLookupCBoxFornecedor.Text = '') then
    MessageDlg(sMsgFornecedorObrigatorio, mtWarning, [mbOK], 0)
  else begin
    TFrmPesquisaProduto(Self.Owner).FDQTempPesq.Post;
    TFrmPesquisaProduto(Self.Owner).TabShtMain.TabVisible := True;
    TFrmPesquisaProduto(Self.Owner).TabShtEdtInc.TabVisible := False;
  end;
end;

end.
