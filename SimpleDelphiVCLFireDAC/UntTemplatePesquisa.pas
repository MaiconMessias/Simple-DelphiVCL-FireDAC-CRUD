unit UntTemplatePesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrmTemplatePesqu = class(TForm)
    PagCtrlMain: TPageControl;
    TabShtMain: TTabSheet;
    Panel1: TPanel;
    DBNavMain: TDBNavigator;
    btnImprimir: TButton;
    DBGMain: TDBGrid;
    DtSTempPesq: TDataSource;
    FDQTempPesq: TFDQuery;
    FDGUIxWaitCursorTempPesq: TFDGUIxWaitCursor;
    procedure DBGMainTitleClick(Column: TColumn);
    procedure DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FDQTempPesqAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTemplatePesqu: TFrmTemplatePesqu;

implementation

{$R *.dfm}

uses UntUtil, UntDtMMain;

procedure TFrmTemplatePesqu.DBGMainTitleClick(Column: TColumn);
begin
  UntUtil.DBGridTitleClick(Column, FDQTempPesq);
end;

procedure TFrmTemplatePesqu.DBNavMainClick(Sender: TObject; Button: TNavigateBtn);
begin
  if (Button = nbInsert) then begin
    FDQTempPesq.Close;
    FDQTempPesq.Open;
    FDQTempPesq.Append;
  end;
end;

procedure TFrmTemplatePesqu.FDQTempPesqAfterPost(DataSet: TDataSet);
begin
  FDQTempPesq.Close;
  FDQTempPesq.Open;
end;

procedure TFrmTemplatePesqu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmTemplatePesqu.FormShow(Sender: TObject);
begin
  FDQTempPesq.Close;
  FDQTempPesq.Open;
end;

end.
