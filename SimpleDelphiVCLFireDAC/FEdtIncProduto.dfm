object FrameEdtIncProduto: TFrameEdtIncProduto
  Left = 0
  Top = 0
  Width = 386
  Height = 358
  TabOrder = 0
  object LblId: TLabel
    Left = 50
    Top = 15
    Width = 15
    Height = 13
    Caption = 'Id:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDescricao: TLabel
    Left = 50
    Top = 43
    Width = 58
    Height = 13
    Caption = 'Descri'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPrecoCompra: TLabel
    Left = 50
    Top = 73
    Width = 82
    Height = 13
    Caption = 'Pre'#231'o Compra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPrecoVenda: TLabel
    Left = 50
    Top = 105
    Width = 73
    Height = 13
    Caption = 'Pre'#231'o Venda:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFornecedor: TLabel
    Left = 50
    Top = 136
    Width = 67
    Height = 13
    Caption = 'Fornecedor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDetalhe: TLabel
    Left = 50
    Top = 165
    Width = 47
    Height = 13
    Caption = 'Detalhe:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdtId: TDBEdit
    Left = 159
    Top = 11
    Width = 57
    Height = 21
    DataField = 'ID'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    TabOrder = 0
  end
  object DBEdtDescricao: TDBEdit
    Left = 159
    Top = 39
    Width = 209
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    TabOrder = 1
  end
  object DBEdtPrecoCompra: TDBEdit
    Left = 159
    Top = 69
    Width = 113
    Height = 21
    DataField = 'PRECO_COMPRA'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    TabOrder = 2
  end
  object DBEdtPrecoVenda: TDBEdit
    Left = 159
    Top = 101
    Width = 113
    Height = 21
    DataField = 'PRECO_VENDA'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    TabOrder = 3
  end
  object DBMDetalhe: TDBMemo
    Left = 159
    Top = 165
    Width = 209
    Height = 129
    DataField = 'DETALHE'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    TabOrder = 4
  end
  object DBLookupCBoxFornecedor: TDBLookupComboBox
    Left = 159
    Top = 132
    Width = 209
    Height = 21
    DataField = 'ID_FORNECEDOR'
    DataSource = FrmPesquisaProduto.DtSTempPesq
    KeyField = 'CNPJ'
    ListField = 'NOME_FANTASIA'
    ListSource = DtSFornecedor
    TabOrder = 5
  end
  object btnSalvar: TButton
    Left = 26
    Top = 322
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 223
    Top = 322
    Width = 145
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 7
    OnClick = btnCancelarClick
  end
  object FDQFornecedor: TFDQuery
    Connection = DtMMain.FDCon
    SQL.Strings = (
      'SELECT  CNPJ, '
      '              NOME_FANTASIA'
      '   FROM FORNECEDOR')
    Left = 24
    Top = 8
    object FDQFornecedorCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFornecedorNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 100
    end
  end
  object DtSFornecedor: TDataSource
    DataSet = FDQFornecedor
    Left = 24
    Top = 72
  end
end
