inherited FrmPesquisaFuncionario: TFrmPesquisaFuncionario
  Caption = 'FrmPesquisaFuncionario'
  ClientHeight = 431
  ClientWidth = 645
  ExplicitWidth = 661
  ExplicitHeight = 469
  PixelsPerInch = 96
  TextHeight = 13
  inherited PagCtrlMain: TPageControl
    Width = 645
    Height = 431
    ExplicitWidth = 655
    ExplicitHeight = 441
    inherited TabShtMain: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 647
      ExplicitHeight = 413
      inherited Panel1: TPanel
        Top = 359
        Width = 637
        ExplicitTop = 369
        ExplicitWidth = 647
        inherited DBNavMain: TDBNavigator
          Width = 577
          Hints.Strings = ()
          ExplicitWidth = 587
        end
        inherited btnImprimir: TButton
          Left = 578
          ExplicitLeft = 588
        end
      end
      inherited DBGMain: TDBGrid
        Top = 75
        Width = 637
      end
    end
    object TabShtEdtInc: TTabSheet
      Caption = 'TabShtEdtInc'
      ImageIndex = 1
      ExplicitWidth = 647
      ExplicitHeight = 413
      inline FrameEdtIncFunci: TFrameEdtIncFuncionario
        Left = 80
        Top = 56
        Width = 457
        Height = 293
        TabOrder = 0
        ExplicitLeft = 80
        ExplicitTop = 56
        ExplicitWidth = 457
        ExplicitHeight = 293
        inherited DBEdtId: TDBEdit
          DataSource = nil
        end
        inherited DBEdtNome: TDBEdit
          DataSource = nil
        end
        inherited DBEdtRG: TDBEdit
          DataSource = nil
        end
        inherited DBEdtCPF: TDBEdit
          DataSource = nil
        end
        inherited DBLookupCBoxCargo: TDBLookupComboBox
          DataSource = nil
        end
      end
    end
  end
  inherited FDQTempPesq: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FUNCIONARIO'
      'ORDER BY'
      '/*OrdIni*/'
      'ID ASC'
      '/*OrdFim*/')
    object FDQTempPesqID: TIntegerField
      DisplayLabel = 'Id'
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object FDQTempPesqNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 100
    end
    object FDQTempPesqCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '000\.000\.000\-00;1;_'
    end
    object FDQTempPesqRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      EditMask = '00\.000\.000\-0;1;_'
    end
    object FDQTempPesqID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
      Origin = 'ID_CARGO'
      Visible = False
    end
  end
end
