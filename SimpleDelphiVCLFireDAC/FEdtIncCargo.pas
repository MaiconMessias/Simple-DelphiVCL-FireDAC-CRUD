unit FEdtIncCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrameEdtIncCargo = class(TFrame)
    LblId: TLabel;
    lblDescricao: TLabel;
    lblSalario: TLabel;
    DBEdtIdCargo: TDBEdit;
    DBEdtDescrCargo: TDBEdit;
    DBEdtSalCargo: TDBEdit;
    btnCancelar: TButton;
    btnSalvar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UntPesquisaCargo;

procedure TFrameEdtIncCargo.btnCancelarClick(Sender: TObject);
begin
  with TFrmPesquisaCargo(Self.Owner) do begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    TabShtMain.TabVisible := True;
    TabShtEdtInc.TabVisible := False;
  end;
end;

procedure TFrameEdtIncCargo.btnSalvarClick(Sender: TObject);
begin
  TFrmPesquisaCargo(Self.Owner).FDQTempPesq.Post;
  TFrmPesquisaCargo(Self.Owner).TabShtMain.TabVisible := True;
  TFrmPesquisaCargo(Self.Owner).TabShtEdtInc.TabVisible := False;
end;

end.
