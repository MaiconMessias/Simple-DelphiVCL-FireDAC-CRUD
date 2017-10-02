object FrmTemplatePesqu: TFrmTemplatePesqu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FrmTemplatePesqu'
  ClientHeight = 420
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PagCtrlMain: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 420
    ActivePage = TabShtMain
    Align = alClient
    TabOrder = 0
    object TabShtMain: TTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 348
        Width = 627
        Height = 44
        Align = alBottom
        TabOrder = 0
        object DBNavMain: TDBNavigator
          Left = 1
          Top = 1
          Width = 567
          Height = 42
          DataSource = DtSTempPesq
          Align = alClient
          TabOrder = 0
          OnClick = DBNavMainClick
        end
        object btnImprimir: TButton
          Left = 568
          Top = 1
          Width = 58
          Height = 42
          Align = alRight
          Caption = 'Imprimir'
          Enabled = False
          TabOrder = 1
          Visible = False
        end
      end
      object DBGMain: TDBGrid
        Left = 0
        Top = 64
        Width = 627
        Height = 284
        Align = alBottom
        DataSource = DtSTempPesq
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnTitleClick = DBGMainTitleClick
      end
    end
  end
  object DtSTempPesq: TDataSource
    DataSet = FDQTempPesq
    Left = 564
    Top = 48
  end
  object FDQTempPesq: TFDQuery
    AfterPost = FDQTempPesqAfterPost
    Connection = DtMMain.FDCon
    SQL.Strings = (
      '/*OrdIni*/'
      '/*OrdFim*/')
    Left = 476
    Top = 48
  end
  object FDGUIxWaitCursorTempPesq: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 556
    Top = 120
  end
end
