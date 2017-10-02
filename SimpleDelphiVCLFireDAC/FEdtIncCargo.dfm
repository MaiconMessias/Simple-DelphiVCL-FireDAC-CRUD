object FrameEdtIncCargo: TFrameEdtIncCargo
  Left = 0
  Top = 0
  Width = 426
  Height = 308
  TabOrder = 0
  object LblId: TLabel
    Left = 61
    Top = 82
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
    Left = 61
    Top = 116
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
  object lblSalario: TLabel
    Left = 61
    Top = 149
    Width = 42
    Height = 13
    Caption = 'Sal'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdtIdCargo: TDBEdit
    Left = 130
    Top = 78
    Width = 65
    Height = 21
    DataField = 'ID'
    DataSource = FrmPesquisaCargo.DtSTempPesq
    TabOrder = 0
  end
  object DBEdtDescrCargo: TDBEdit
    Left = 130
    Top = 112
    Width = 247
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = FrmPesquisaCargo.DtSTempPesq
    TabOrder = 1
  end
  object DBEdtSalCargo: TDBEdit
    Left = 130
    Top = 145
    Width = 121
    Height = 21
    DataField = 'SALARIO'
    DataSource = FrmPesquisaCargo.DtSTempPesq
    TabOrder = 2
  end
  object btnCancelar: TButton
    Left = 240
    Top = 220
    Width = 145
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btnCancelarClick
  end
  object btnSalvar: TButton
    Left = 43
    Top = 220
    Width = 145
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = btnSalvarClick
  end
end
