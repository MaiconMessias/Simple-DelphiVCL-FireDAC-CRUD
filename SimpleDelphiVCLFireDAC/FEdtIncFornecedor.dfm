object FrameEdtIncFornecedor: TFrameEdtIncFornecedor
  Left = 0
  Top = 0
  Width = 403
  Height = 183
  TabOrder = 0
  object lblNomeFantasia: TLabel
    Left = 53
    Top = 76
    Width = 105
    Height = 13
    Caption = 'Commercial name:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblCNPJ: TLabel
    Left = 53
    Top = 42
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
  object DBEdtCNPJ: TDBEdit
    Left = 160
    Top = 39
    Width = 121
    Height = 21
    DataField = 'CNPJ'
    DataSource = FrmPesquisaFornecedor.DtSTempPesq
    TabOrder = 0
  end
  object DBEdtNomeFantasia: TDBEdit
    Left = 160
    Top = 73
    Width = 121
    Height = 21
    DataField = 'NOME_FANTASIA'
    DataSource = FrmPesquisaFornecedor.DtSTempPesq
    TabOrder = 1
  end
  object btnSalvar: TButton
    Left = 27
    Top = 134
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 2
    OnClick = btnSalvarClick
  end
  object btnCancelar: TButton
    Left = 224
    Top = 134
    Width = 145
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
