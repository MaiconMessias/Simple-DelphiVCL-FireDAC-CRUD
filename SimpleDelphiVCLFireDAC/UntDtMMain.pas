unit UntDtMMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDtMMain = class(TDataModule)
    FDCon: TFDConnection;
    FDTransactMain: TFDTransaction;
    FDPhysFBDriverLinkMain: TFDPhysFBDriverLink;
    FDQMain: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    function validaUsuario(usuario: string; senha: string): boolean;
  end;

var
  DtMMain: TDtMMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDtMMain }

procedure TDtMMain.DataModuleCreate(Sender: TObject);
begin
  FDCon.Connected := True;
end;

procedure TDtMMain.DataModuleDestroy(Sender: TObject);
begin
    FDCon.Connected := False;
end;

function TDtMMain.validaUsuario(usuario, senha: string): boolean;
begin
  with FDQMain do begin
    Close;
    ParamByName('PUSUARIO').AsString := String(usuario).ToUpper;
    ParamByName('PSENHA').AsString := String(senha).ToUpper;
    Open;
    if (RecordCount = 0) then
      result := False
    else
      result := True;
  end;
end;

end.
