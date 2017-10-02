unit UntPesquisaCargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntTemplatePesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FEdtIncCargo;

type
  TFrmPesquisaCargo = class(TFrmTemplatePesqu)
    TabShtEdtInc: TTabSheet;
    FDQTempPesqID: TIntegerField;
    FDQTempPesqDESCRICAO: TStringField;
    FDQTempPesqSALARIO: TCurrencyField;
    FrameEdtIncCarg: TFrameEdtIncCargo;
    procedure FrameEdtIncCargo1btnSalvarClick(Sender: TObject);
    procedure FrameEdtIncCargo1btnCancelarClick(Sender: TObject);
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
  private
    procedure Traducao();
  public
    { Public declarations }
  end;

var
  FrmPesquisaCargo: TFrmPesquisaCargo;

implementation

{$R *.dfm}

uses UntLanguage;

procedure TFrmPesquisaCargo.DBNavMainClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtInc;

    // Tela de Inclusão inicializando os campos
    with FrameEdtIncCarg do begin
      DBEdtIdCargo.Text := '';
      DBEdtDescrCargo.Text := '';
      DBEdtSalCargo.Text := '';
    end;
  end else if (Button = nbEdit) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtEdt;
  end;
  // Executa o Append apos os campos serem inicializados
  inherited;
end;

procedure TFrmPesquisaCargo.FormShow(Sender: TObject);
begin
  inherited;
  Traducao;
  TabShtEdtInc.TabVisible := False;
end;

procedure TFrmPesquisaCargo.FrameEdtIncCargo1btnCancelarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncCarg.btnCancelarClick(Sender);
end;

procedure TFrmPesquisaCargo.FrameEdtIncCargo1btnSalvarClick(Sender: TObject);
begin
  inherited;
  FrameEdtIncCarg.btnSalvarClick(Sender);
end;

procedure TFrmPesquisaCargo.Traducao;
begin
  Self.Caption := sTituloTelaPesqCargo;
  TabShtMain.Caption := sLblTituloTabSheetCargo;
  FrameEdtIncCarg.LblId.Caption := slblIdCargo;
  FrameEdtIncCarg.lblDescricao.Caption := slblDescricaoCargo;
  FrameEdtIncCarg.lblSalario.Caption := slblSalarioCargo;
  FrameEdtIncCarg.btnSalvar.Caption := sbtnPesquCargoSalvar;
  FrameEdtIncCarg.btnCancelar.Caption := sbtnPesquCargoCancelar;
  FDQTempPesqID.DisplayLabel := slblDBGIdCargo;
  FDQTempPesqDESCRICAO.DisplayLabel := slblDBGDescricaoCargo;
  FDQTempPesqSALARIO.DisplayLabel := slblDBGSalarioCargo;
end;

end.
