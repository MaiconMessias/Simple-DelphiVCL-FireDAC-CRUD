inherited FrmPesquisaCargo: TFrmPesquisaCargo
  Caption = 'FrmPesquisaCargo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PagCtrlMain: TPageControl
    inherited TabShtMain: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 392
      inherited Panel1: TPanel
        inherited DBNavMain: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    object TabShtEdtInc: TTabSheet
      Caption = 'TabShtEdtInc'
      ImageIndex = 1
      inline FrameEdtIncCarg: TFrameEdtIncCargo
        Left = 104
        Top = 28
        Width = 426
        Height = 308
        TabOrder = 0
        ExplicitLeft = 104
        ExplicitTop = 28
        inherited DBEdtIdCargo: TDBEdit
          DataSource = nil
        end
        inherited DBEdtDescrCargo: TDBEdit
          DataSource = nil
        end
        inherited DBEdtSalCargo: TDBEdit
          DataSource = nil
        end
        inherited btnCancelar: TButton
          OnClick = FrameEdtIncCargo1btnCancelarClick
        end
        inherited btnSalvar: TButton
          OnClick = FrameEdtIncCargo1btnSalvarClick
        end
      end
    end
  end
  inherited FDQTempPesq: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CARGO'
      'ORDER BY'
      '/*OrdIni*/'
      'ID ASC'
      '/*OrdFim*/')
    object FDQTempPesqID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object FDQTempPesqDESCRICAO: TStringField
      DisplayWidth = 50
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object FDQTempPesqSALARIO: TCurrencyField
      DisplayWidth = 13
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
    end
  end
end
