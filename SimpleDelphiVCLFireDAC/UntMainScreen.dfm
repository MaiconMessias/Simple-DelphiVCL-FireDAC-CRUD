object FrmMainScreen: TFrmMainScreen
  Left = 0
  Top = 0
  Caption = 'Tela Principal'
  ClientHeight = 475
  ClientWidth = 816
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MMenuTelaPrincipal
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MMenuTelaPrincipal: TMainMenu
    Left = 744
    Top = 16
    object MItemPesquisa: TMenuItem
      Caption = 'Pesquisa'
      object MItemFuncionario: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = MItemFuncionarioClick
      end
      object MItemCargo: TMenuItem
        Caption = 'Cargo'
        OnClick = MItemCargoClick
      end
      object MItemFornecedor: TMenuItem
        Caption = 'Fornecedor'
        OnClick = MItemFornecedorClick
      end
      object MItemProduto: TMenuItem
        Caption = 'Produto'
        OnClick = MItemProdutoClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MItemSair: TMenuItem
        Caption = 'Sair'
        OnClick = MItemSairClick
      end
    end
    object MItemSistema: TMenuItem
      Caption = 'Sistema'
      object MItemUsuario: TMenuItem
        Caption = 'Usu'#225'rio'
        OnClick = MItemUsuarioClick
      end
    end
  end
end
