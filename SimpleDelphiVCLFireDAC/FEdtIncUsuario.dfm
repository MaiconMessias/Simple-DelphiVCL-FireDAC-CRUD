object FrameEdtIncUsuario: TFrameEdtIncUsuario
  Left = 0
  Top = 0
  Width = 375
  Height = 228
  TabOrder = 0
  object LblId: TLabel
    Left = 64
    Top = 43
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
  object lblUsuario: TLabel
    Left = 64
    Top = 70
    Width = 46
    Height = 13
    Caption = 'Usu'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSenha: TLabel
    Left = 64
    Top = 97
    Width = 38
    Height = 13
    Caption = 'Senha:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFuncionario: TLabel
    Left = 64
    Top = 131
    Width = 68
    Height = 13
    Caption = 'Funcion'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdtId: TDBEdit
    Left = 136
    Top = 39
    Width = 73
    Height = 21
    DataField = 'ID'
    DataSource = FrmPesquisaUsuario.DtSTempPesq
    TabOrder = 0
  end
  object DBEdtUsuario: TDBEdit
    Left = 136
    Top = 66
    Width = 224
    Height = 21
    CharCase = ecUpperCase
    DataField = 'USUARIO'
    DataSource = FrmPesquisaUsuario.DtSTempPesq
    TabOrder = 1
  end
  object DBEdtSenha: TDBEdit
    Left = 136
    Top = 93
    Width = 224
    Height = 21
    CharCase = ecUpperCase
    DataField = 'SENHA'
    DataSource = FrmPesquisaUsuario.DtSTempPesq
    TabOrder = 2
  end
  object DBLookupCBoxFunci: TDBLookupComboBox
    Left = 136
    Top = 127
    Width = 220
    Height = 21
    DataField = 'ID_FUNCIONARIO'
    DataSource = FrmPesquisaUsuario.DtSTempPesq
    KeyField = 'ID'
    ListField = 'FUNCIONARIO'
    ListSource = DtSFuncionario
    TabOrder = 3
  end
  object btnCancelar: TButton
    Left = 215
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
  object btnSalvar: TButton
    Left = 18
    Top = 184
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 5
    OnClick = btnSalvarClick
  end
  object FDQFuncionario: TFDQuery
    Connection = DtMMain.FDCon
    SQL.Strings = (
      'SELECT ID,'
      '             ID || '#39' - '#39' || NOME AS FUNCIONARIO'
      '  FROM FUNCIONARIO'
      ' ')
    Left = 24
    Top = 8
    object FDQFuncionarioID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFuncionarioFUNCIONARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 114
    end
  end
  object DtSFuncionario: TDataSource
    DataSet = FDQFuncionario
    Left = 24
    Top = 72
  end
end
