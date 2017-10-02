inherited FrmPesquisaUsuario: TFrmPesquisaUsuario
  Caption = 'FrmPesquisaUsuario'
  PixelsPerInch = 96
  TextHeight = 13
  inherited PagCtrlMain: TPageControl
    inherited TabShtMain: TTabSheet
      inherited Panel1: TPanel
        inherited DBNavMain: TDBNavigator
          Hints.Strings = ()
        end
      end
    end
    object TabShtEdtInc: TTabSheet
      Caption = 'TabShtEdtInc'
      ImageIndex = 1
      inline FrameEdtIncUsu: TFrameEdtIncUsuario
        Left = 112
        Top = 80
        Width = 375
        Height = 228
        TabOrder = 0
        ExplicitLeft = 112
        ExplicitTop = 80
        inherited DBEdtId: TDBEdit
          DataSource = nil
        end
        inherited DBEdtUsuario: TDBEdit
          DataSource = nil
        end
        inherited DBEdtSenha: TDBEdit
          DataSource = nil
        end
        inherited DBLookupCBoxFunci: TDBLookupComboBox
          DataSource = nil
        end
        inherited btnCancelar: TButton
          OnClick = FrameEdtIncUsubtnCancelarClick
        end
        inherited btnSalvar: TButton
          OnClick = FrameEdtIncUsubtnSalvarClick
        end
      end
    end
  end
  inherited FDQTempPesq: TFDQuery
    SQL.Strings = (
      'SELECT * FROM USUARIO'
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
    object FDQTempPesqUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Size = 40
    end
    object FDQTempPesqSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
    end
    object FDQTempPesqID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      Origin = 'ID_FUNCIONARIO'
      Visible = False
    end
  end
end
