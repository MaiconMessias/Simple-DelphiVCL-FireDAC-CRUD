unit UntUtil;

interface
uses Forms, DBGrids, FireDAC.Comp.Client;

var
  campoAnt : String = '';
  campoAtual : String = '';
  num: Integer = 0;

  function verificaFormAberto(formMain: TForm; formAberto: String): Integer;
  procedure DBGridTitleClick(Column: TColumn; FDQuery: TFDQuery);
  procedure LimpaOrderBy(FDQuery: TFDQuery);

implementation

function VerificaFormAberto(formMain: TForm; formAberto: String): Integer;
var
  i: integer;
begin
  result := -1;
  for i := 0 to formMain.MDIChildCount - 1 do begin
    if (formMain.MDIChildren[i].Name = formAberto) then
      result := i;
  end;
end;

// Ordenacao das colunas
procedure DBGridTitleClick(Column: TColumn; FDQuery: TFDQuery);
begin
  campoAtual := Column.Field.FieldName;
  FDQuery.Close;
  if (campoAnt = campoAtual) then begin
    if (num = 0) then begin
      LimpaOrderBy(FDQuery);
      FDQuery.SQL.Strings[FDQuery.SQL.IndexOf('/*OrdFim*/')-1] := campoAtual + ' DESC';
      num := 1;
    end else if (num=1) then begin
      LimpaOrderBy(FDQuery);
      FDQuery.SQL.Strings[FDQuery.SQL.IndexOf('/*OrdFim*/')-1] := campoAtual + ' ASC';
      num := 0;
    end;
  end else begin
    LimpaOrderBy(FDQuery);
    FDQuery.SQL.Strings[FDQuery.SQL.IndexOf('/*OrdFim*/')-1] := campoAtual + ' DESC';
  end;

  campoAnt := campoAtual;
  FDQuery.Open;
end;

// Limpa order by
procedure LimpaOrderBy(FDQuery: TFDQuery);
var
  i: integer;
begin
  for i := FDQuery.SQL.IndexOf('/*OrdIni*/')+1 to
    FDQuery.SQL.IndexOf('/*OrdFim*/')-1 do begin
    FDQuery.SQL.Strings[FDQuery.SQL.IndexOf('/*OrdFim*/')-1] := '';
  end;
end;

end.
