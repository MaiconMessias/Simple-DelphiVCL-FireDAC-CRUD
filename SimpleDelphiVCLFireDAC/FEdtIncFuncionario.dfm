object FrameEdtIncFuncionario: TFrameEdtIncFuncionario
  Left = 0
  Top = 0
  Width = 455
  Height = 280
  TabOrder = 0
  object LblId: TLabel
    Left = 91
    Top = 66
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
  object lblNome: TLabel
    Left = 91
    Top = 94
    Width = 35
    Height = 13
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblRG: TLabel
    Left = 91
    Top = 120
    Width = 19
    Height = 13
    Caption = 'RG:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCPF: TLabel
    Left = 91
    Top = 147
    Width = 23
    Height = 13
    Caption = 'CPF:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCargo: TLabel
    Left = 91
    Top = 176
    Width = 36
    Height = 13
    Caption = 'Cargo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdtId: TDBEdit
    Left = 137
    Top = 63
    Width = 76
    Height = 21
    DataField = 'ID'
    DataSource = FrmPesquisaFuncionario.DtSTempPesq
    TabOrder = 0
  end
  object DBEdtNome: TDBEdit
    Left = 137
    Top = 90
    Width = 248
    Height = 21
    DataField = 'NOME'
    DataSource = FrmPesquisaFuncionario.DtSTempPesq
    TabOrder = 1
  end
  object DBEdtRG: TDBEdit
    Left = 137
    Top = 117
    Width = 112
    Height = 21
    DataField = 'RG'
    DataSource = FrmPesquisaFuncionario.DtSTempPesq
    TabOrder = 2
  end
  object DBEdtCPF: TDBEdit
    Left = 137
    Top = 144
    Width = 112
    Height = 21
    DataField = 'CPF'
    DataSource = FrmPesquisaFuncionario.DtSTempPesq
    TabOrder = 3
  end
  object DBLookupCBoxCargo: TDBLookupComboBox
    Left = 137
    Top = 172
    Width = 248
    Height = 21
    DataField = 'ID_CARGO'
    DataSource = FrmPesquisaFuncionario.DtSTempPesq
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = DtSCargo
    TabOrder = 4
  end
  object btnSalvar: TButton
    Left = 43
    Top = 228
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 240
    Top = 228
    Width = 145
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
  object FDQCargo: TFDQuery
    Connection = DtMMain.FDCon
    SQL.Strings = (
      'SELECT  ID, '
      '        ID || '#39' - '#39' || DESCRICAO AS DESCRICAO,'
      '        SALARIO '
      '   FROM CARGO')
    Left = 24
    Top = 8
    object FDQCargoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCargoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 114
    end
    object FDQCargoSALARIO: TCurrencyField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
    end
  end
  object DtSCargo: TDataSource
    DataSet = FDQCargo
    Left = 24
    Top = 72
  end
end
