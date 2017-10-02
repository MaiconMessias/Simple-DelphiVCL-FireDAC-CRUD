inherited FrmPesquisaProduto: TFrmPesquisaProduto
  Caption = 'FrmPesquisaProduto'
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
      inline FrameEdtIncProd: TFrameEdtIncProduto
        Left = 104
        Top = 18
        Width = 386
        Height = 358
        TabOrder = 0
        ExplicitLeft = 104
        ExplicitTop = 18
        inherited btnSalvar: TButton
          OnClick = FrameEdtIncProdbtnSalvarClick
        end
        inherited btnCancelar: TButton
          OnClick = FrameEdtIncProdbtnCancelarClick
        end
      end
    end
  end
  inherited FDQTempPesq: TFDQuery
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
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
    object FDQTempPesqDETALHE: TStringField
      DisplayWidth = 100
      FieldName = 'DETALHE'
      Origin = 'DETALHE'
      Size = 300
    end
    object FDQTempPesqPRECO_COMPRA: TCurrencyField
      FieldName = 'PRECO_COMPRA'
      Origin = 'PRECO_COMPRA'
    end
    object FDQTempPesqPRECO_VENDA: TCurrencyField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
    end
    object FDQTempPesqID_FORNECEDOR: TStringField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Visible = False
    end
  end
end
