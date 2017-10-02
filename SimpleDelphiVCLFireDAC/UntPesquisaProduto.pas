unit UntPesquisaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntTemplatePesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FEdtIncProduto;

type
  TFrmPesquisaProduto = class(TFrmTemplatePesqu)
    FDQTempPesqID: TIntegerField;
    FDQTempPesqDESCRICAO: TStringField;
    FDQTempPesqDETALHE: TStringField;
    FDQTempPesqPRECO_COMPRA: TCurrencyField;
    FDQTempPesqPRECO_VENDA: TCurrencyField;
    FDQTempPesqID_FORNECEDOR: TStringField;
    TabShtEdtInc: TTabSheet;
    FrameEdtIncProd: TFrameEdtIncProduto;
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FrameEdtIncProdbtnSalvarClick(Sender: TObject);
    procedure FrameEdtIncProdbtnCancelarClick(Sender: TObject);
  private
    procedure Traducao();
  public
    { Public declarations }
  end;

var
  FrmPesquisaProduto: TFrmPesquisaProduto;

implementation

{$R *.dfm}

uses UntLanguage;

procedure TFrmPesquisaProduto.DBNavMainClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtInc;

    // Tela de Inclusão inicializando os campos
    with FrameEdtIncProd do begin
      FDQFornecedor.Close;
      FDQFornecedor.Open;
      DBEdtId.Text := '';
      DBEdtDescricao.Text := '';
      DBEdtPrecoCompra.Text := '';
      DBEdtPrecoVenda.Text := '';
      DBLookupCBoxFornecedor.KeyValue := -1;
      DBMDetalhe.Lines.Clear;
    end;
  end else if (Button = nbEdit) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtEdt;
    // Tela de Edição
    with FrameEdtIncProd do begin
      FDQFornecedor.Close;
      FDQFornecedor.Open;
    end;
  end;
  // Executa o Append apos os campos serem inicializados
  inherited;
end;

procedure TFrmPesquisaProduto.FormShow(Sender: TObject);
begin
  inherited;
  Traducao;
  TabShtEdtInc.TabVisible := False;
end;

procedure TFrmPesquisaProduto.FrameEdtIncProdbtnCancelarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncProd.btnCancelarClick(Sender);
end;

procedure TFrmPesquisaProduto.FrameEdtIncProdbtnSalvarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncProd.btnSalvarClick(Sender);
end;

procedure TFrmPesquisaProduto.Traducao;
begin
  Self.Caption := sTituloTelaPesqProduto;
  TabShtMain.Caption := sLblTituloTabSheetProduto;
  FrameEdtIncProd.LblId.Caption := slblIdProduto;
  FrameEdtIncProd.lblDescricao.Caption := slblDescricaoProduto;
  FrameEdtIncProd.lblDetalhe.Caption := slblDetalheProduto;
  FrameEdtIncProd.lblPrecoCompra.Caption := slblPrecoCompraProduto;
  FrameEdtIncProd.lblPrecoVenda.Caption := slblPrecoVendaProduto;
  FrameEdtIncProd.lblFornecedor.Caption := slblFornecedorProduto;
  FrameEdtIncProd.btnSalvar.Caption := sbtnPesquProdutoSalvar;
  FrameEdtIncProd.btnCancelar.Caption := sbtnPesquProdutoCancelar;
  FDQTempPesqID.DisplayLabel := slblDBGIdProduto;
  FDQTempPesqDESCRICAO.DisplayLabel := slblDBGDescricaoProduto;
  FDQTempPesqDETALHE.DisplayLabel := slblDBGDetalheProduto;
  FDQTempPesqPRECO_COMPRA.DisplayLabel := slblDBGPrecoCompraProduto;
  FDQTempPesqPRECO_VENDA.DisplayLabel := slblDBGPrecoVendaProduto;
end;

end.
