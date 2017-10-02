unit UntPesquisaFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntTemplatePesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FEdtIncFornecedor;

type
  TFrmPesquisaFornecedor = class(TFrmTemplatePesqu)
    TabShtEdtIncFornecedor: TTabSheet;
    FrameEdtIncFornece: TFrameEdtIncFornecedor;
    FDQTempPesqCNPJ: TStringField;
    FDQTempPesqNOME_FANTASIA: TStringField;
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FrameEdtIncFornecebtnSalvarClick(Sender: TObject);
    procedure FrameEdtIncFornecebtnCancelarClick(Sender: TObject);
  private
    procedure Traducao();
  public
    { Public declarations }
  end;

var
  FrmPesquisaFornecedor: TFrmPesquisaFornecedor;

implementation

{$R *.dfm}

uses UntLanguage;

procedure TFrmPesquisaFornecedor.DBNavMainClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtIncFornecedor.TabVisible := True;
    TabShtEdtIncFornecedor.Caption := sTabShtInc;

    // Tela de Inclusão inicializando os campos
    with FrameEdtIncFornece do begin
      DBEdtCNPJ.Text := '';
      DBEdtCNPJ.ReadOnly := False;
      DBEdtNomeFantasia.Text := '';
    end;
  end else if (Button = nbEdit) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtIncFornecedor.TabVisible := True;
    TabShtEdtIncFornecedor.Caption := sTabShtEdt;
    FrameEdtIncFornece.DBEdtCNPJ.ReadOnly := True;
  end;
  // Executa o Append apos os campos serem inicializados
  inherited;
end;

procedure TFrmPesquisaFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  Traducao;
  TabShtEdtIncFornecedor.TabVisible := False;
end;

procedure TFrmPesquisaFornecedor.FrameEdtIncFornecebtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  FrameEdtIncFornece.btnCancelarClick(Sender);
end;

procedure TFrmPesquisaFornecedor.FrameEdtIncFornecebtnSalvarClick(
  Sender: TObject);
begin
  inherited;
  FrameEdtIncFornece.btnSalvarClick(Sender);
end;

procedure TFrmPesquisaFornecedor.Traducao;
begin
  Self.Caption := sTituloTelaPesqFornecedor;
  TabShtMain.Caption := sLblTituloTabSheetFornecedor;
  FrameEdtIncFornece.LblCNPJ.Caption := slblCNPJFornecedor;
  FrameEdtIncFornece.lblNomeFantasia.Caption := slblNomeFantasiaFornecedor;
  FrameEdtIncFornece.btnSalvar.Caption := sbtnPesquFornecedorSalvar;
  FrameEdtIncFornece.btnCancelar.Caption := sbtnPesquFornecedorCancelar;
  FDQTempPesqCNPJ.DisplayLabel := slblDBGCNPJFornecedor;
  FDQTempPesqNOME_FANTASIA.DisplayLabel := slblDBGNomeFantasiaFornecedor;
end;

end.
