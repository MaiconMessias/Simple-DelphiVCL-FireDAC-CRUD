unit UntPesquisaFuncionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UntTemplatePesquisa, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  FEdtIncFuncionario;

type
  TFrmPesquisaFuncionario = class(TFrmTemplatePesqu)
    FDQTempPesqID: TIntegerField;
    FDQTempPesqNOME: TStringField;
    FDQTempPesqCPF: TStringField;
    FDQTempPesqRG: TStringField;
    FDQTempPesqID_CARGO: TIntegerField;
    TabShtEdtInc: TTabSheet;
    FrameEdtIncFunci: TFrameEdtIncFuncionario;
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure FrameEdtIncFuncibtnCancelarClick(Sender: TObject);
    procedure FrameEdtIncFuncibtnSalvarClick(Sender: TObject);
  private
    procedure Traducao();
  public
    { Public declarations }
  end;

var
  FrmPesquisaFuncionario: TFrmPesquisaFuncionario;

implementation

{$R *.dfm}

uses UntLanguage;

procedure TFrmPesquisaFuncionario.DBNavMainClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtInc;

    // Tela de Inclusão inicializando os campos
    with FrameEdtIncFunci do begin
      FDQCargo.Close;
      FDQCargo.Open;
      DBEdtID.Text := '';
      DBEdtNome.Text := '';
      DBEdtRG.Text := '';
      DBEdtCPF.Text := '';
      DBLookupCBoxCargo.KeyValue := -1;
    end;
  end else if (Button = nbEdit) then begin
    TabShtMain.TabVisible := False;
    TabShtEdtInc.TabVisible := True;
    TabShtEdtInc.Caption := sTabShtEdt;
    // Tela de Edição
    with FrameEdtIncFunci do begin
      FDQCargo.Close;
      FDQCargo.Open;
    end;
  end;
  // Executa o Append apos os campos serem inicializados
  inherited;
end;

procedure TFrmPesquisaFuncionario.FormShow(Sender: TObject);
begin
  inherited;
  Traducao;
  TabShtEdtInc.TabVisible := False;
end;

procedure TFrmPesquisaFuncionario.FrameEdtIncFuncibtnCancelarClick(
  Sender: TObject);
begin
  inherited;
  FrameEdtIncFunci.btnCancelarClick(Sender);
end;

procedure TFrmPesquisaFuncionario.FrameEdtIncFuncibtnSalvarClick(
  Sender: TObject);
begin
  inherited;
  FrameEdtIncFunci.btnSalvarClick(Sender);
end;

procedure TFrmPesquisaFuncionario.Traducao;
begin
  Self.Caption := sTituloTelaPesqFunci;
  TabShtMain.Caption := sLblTituloTabSheet;
  FrameEdtIncFunci.LblId.Caption := slblIdFunci;
  FrameEdtIncFunci.lblNome.Caption := slblNomeFunci;
  FrameEdtIncFunci.lblRG.Caption := slblRGFunci;
  FrameEdtIncFunci.lblCPF.Caption := slblCPFFunci;
  FrameEdtIncFunci.lblCargo.Caption := slblCargoFunci;
  FrameEdtIncFunci.btnSalvar.Caption := sbtnPesquFunciSalvar;
  FrameEdtIncFunci.btnCancelar.Caption := sbtnPesquFunciCancelar;
  FDQTempPesqID.DisplayLabel := slblDBGIdFunci;
  FDQTempPesqNOME.DisplayLabel := slblDBGNomeFunci;
  FDQTempPesqRG.DisplayLabel := slblDBGRGFunci;
  FDQTempPesqCPF.DisplayLabel := slblDBGCPFFunci;
end;

end.
