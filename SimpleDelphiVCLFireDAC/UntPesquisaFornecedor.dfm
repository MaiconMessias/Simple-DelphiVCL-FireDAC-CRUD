inherited FrmPesquisaFornecedor: TFrmPesquisaFornecedor
  Caption = 'FrmPesquisaFornecedor'
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
    object TabShtEdtIncFornecedor: TTabSheet
      Caption = 'TabShtEdtIncFornecedor'
      ImageIndex = 1
      inline FrameEdtIncFornece: TFrameEdtIncFornecedor
        Left = 104
        Top = 88
        Width = 403
        Height = 183
        TabOrder = 0
        ExplicitLeft = 104
        ExplicitTop = 88
        inherited DBEdtCNPJ: TDBEdit
          DataSource = nil
        end
        inherited DBEdtNomeFantasia: TDBEdit
          DataSource = nil
        end
        inherited btnSalvar: TButton
          OnClick = FrameEdtIncFornecebtnSalvarClick
        end
        inherited btnCancelar: TButton
          OnClick = FrameEdtIncFornecebtnCancelarClick
        end
      end
    end
  end
  inherited FDQTempPesq: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR'
      'ORDER BY'
      '/*OrdIni*/'
      'CNPJ ASC'
      '/*OrdFim*/')
    object FDQTempPesqCNPJ: TStringField
      DisplayWidth = 20
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '00\.000\.000\/0000\-00;1;_'
    end
    object FDQTempPesqNOME_FANTASIA: TStringField
      DisplayWidth = 70
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 100
    end
  end
end
