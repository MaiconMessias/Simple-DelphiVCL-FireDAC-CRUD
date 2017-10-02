object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Login'
  ClientHeight = 285
  ClientWidth = 406
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlButton: TPanel
    Left = 0
    Top = 218
    Width = 406
    Height = 67
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      406
      67)
    object BtnEntrar: TButton
      Left = 15
      Top = 15
      Width = 154
      Height = 25
      Anchors = []
      Caption = 'Entrar'
      TabOrder = 0
      OnClick = BtnEntrarClick
    end
    object BtnCancelar: TButton
      Left = 234
      Top = 15
      Width = 154
      Height = 25
      Anchors = []
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object PnlUserSenha: TPanel
    Left = 0
    Top = 35
    Width = 406
    Height = 183
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      406
      183)
    object LblSenha: TLabel
      Left = 75
      Top = 99
      Width = 38
      Height = 13
      Anchors = []
      Caption = 'Senha:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblUsername: TLabel
      Left = 75
      Top = 62
      Width = 61
      Height = 13
      Anchors = []
      Caption = 'Username:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EdtUsername: TEdit
      Left = 142
      Top = 58
      Width = 172
      Height = 21
      Anchors = []
      TabOrder = 0
    end
    object EdtSenha: TEdit
      Left = 142
      Top = 95
      Width = 172
      Height = 21
      PasswordChar = '#'
      TabOrder = 1
    end
  end
  object PnlIdioma: TPanel
    Left = 0
    Top = 0
    Width = 406
    Height = 35
    Align = alClient
    TabOrder = 2
    object LblIdioma: TLabel
      Left = 182
      Top = 11
      Width = 43
      Height = 13
      Caption = 'Idioma:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CBoxLinguagem: TComboBox
      Left = 242
      Top = 8
      Width = 145
      Height = 21
      ItemIndex = 0
      TabOrder = 0
      Text = 'Portugu'#234's (Brasil)'
      OnChange = CBoxLinguagemChange
      Items.Strings = (
        'Portugu'#234's (Brasil)'
        'Ingl'#234's (EUA)')
    end
  end
end
