unit FEdtIncFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrameEdtIncFornecedor = class(TFrame)
    lblNomeFantasia: TLabel;
    LblCNPJ: TLabel;
    DBEdtCNPJ: TDBEdit;
    DBEdtNomeFantasia: TDBEdit;
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

uses UntPesquisaFornecedor;

procedure TFrameEdtIncFornecedor.btnCancelarClick(Sender: TObject);
begin
  with TFrmPesquisaFornecedor(Self.Owner) do begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    TabShtMain.TabVisible := True;
    TabShtEdtIncFornecedor.TabVisible := False;
  end;
end;

procedure TFrameEdtIncFornecedor.btnSalvarClick(Sender: TObject);
begin
  TFrmPesquisaFornecedor(Self.Owner).FDQTempPesq.Post;
  TFrmPesquisaFornecedor(Self.Owner).TabShtMain.TabVisible := True;
  TFrmPesquisaFornecedor(Self.Owner).TabShtEdtIncFornecedor.TabVisible := False;
end;

end.
