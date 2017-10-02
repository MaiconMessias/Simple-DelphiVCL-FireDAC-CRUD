unit UntMainScreen;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TFrmMainScreen = class(TForm)
    MMenuTelaPrincipal: TMainMenu;
    MItemPesquisa: TMenuItem;
    MItemFuncionario: TMenuItem;
    MItemCargo: TMenuItem;
    N1: TMenuItem;
    MItemSair: TMenuItem;
    MItemFornecedor: TMenuItem;
    MItemProduto: TMenuItem;
    MItemSistema: TMenuItem;
    MItemUsuario: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure MItemFuncionarioClick(Sender: TObject);
    procedure MItemCargoClick(Sender: TObject);
    procedure MItemSairClick(Sender: TObject);
    procedure MItemFornecedorClick(Sender: TObject);
    procedure MItemProdutoClick(Sender: TObject);
    procedure MItemUsuarioClick(Sender: TObject);
  private
    procedure Traducao();
  public
  end;

var
  FrmMainScreen: TFrmMainScreen;

implementation

{$R *.dfm}

uses UntLanguage, UntUtil, UntLogin, UntPesquisaFuncionario, UntPesquisaCargo,
     UntPesquisaFornecedor, UntPesquisaProduto, UntPesquisaUsuario;

var
  FrmLogin: TFrmLogin;
  FrmPesquisaFuncionario: TFrmPesquisaFuncionario;
  FrmPesquisaCargo: TFrmPesquisaCargo;
  FrmPesquisaFornecedor: TFrmPesquisaFornecedor;
  FrmPesquisaProduto: TFrmPesquisaProduto;
  FrmPesquisaUsuario: TFrmPesquisaUsuario;

{ TFrmMainScreen }

procedure TFrmMainScreen.MItemCargoClick(Sender: TObject);
var
  formAberto: Integer;
begin
  formAberto := UntUtil.VerificaFormAberto(Self, 'FrmPesquisaCargo');
  if (formAberto = -1) then begin
    FrmPesquisaCargo := TFrmPesquisaCargo.Create(Self);
    FrmPesquisaCargo.Show;
  end else begin
    TFrmPesquisaCargo(Self.MDIChildren[formAberto]).WindowState := wsMinimized;
    TFrmPesquisaCargo(Self.MDIChildren[formAberto]).WindowState := wsNormal;
  end;
end;

procedure TFrmMainScreen.MItemFornecedorClick(Sender: TObject);
var
  formAberto: Integer;
begin
  formAberto := UntUtil.VerificaFormAberto(Self, 'FrmPesquisaFornecedor');
  if (formAberto = -1) then begin
    FrmPesquisaFornecedor := TFrmPesquisaFornecedor.Create(Self);
    FrmPesquisaFornecedor.Show;
  end else begin
    TFrmPesquisaFornecedor(Self.MDIChildren[formAberto]).WindowState := wsMinimized;
    TFrmPesquisaFornecedor(Self.MDIChildren[formAberto]).WindowState := wsNormal;
  end;
end;

procedure TFrmMainScreen.MItemFuncionarioClick(Sender: TObject);
var
  formAberto: Integer;
begin
  formAberto := UntUtil.VerificaFormAberto(Self, 'FrmPesquisaFuncionario');
  if (formAberto = -1) then begin
    FrmPesquisaFuncionario := TFrmPesquisaFuncionario.Create(Self);
    FrmPesquisaFuncionario.Show;
  end else begin
    TFrmPesquisaFuncionario(Self.MDIChildren[formAberto]).WindowState := wsMinimized;
    TFrmPesquisaFuncionario(Self.MDIChildren[formAberto]).WindowState := wsNormal;
  end;
end;

procedure TFrmMainScreen.MItemProdutoClick(Sender: TObject);
var
  formAberto: Integer;
begin
  formAberto := UntUtil.VerificaFormAberto(Self, 'FrmPesquisaProduto');
  if (formAberto = -1) then begin
    FrmPesquisaProduto := TFrmPesquisaProduto.Create(Self);
    FrmPesquisaProduto.Show;
  end else begin
    TFrmPesquisaProduto(Self.MDIChildren[formAberto]).WindowState := wsMinimized;
    TFrmPesquisaProduto(Self.MDIChildren[formAberto]).WindowState := wsNormal;
  end;
end;

procedure TFrmMainScreen.MItemSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFrmMainScreen.MItemUsuarioClick(Sender: TObject);
var
  formAberto: Integer;
begin
  formAberto := UntUtil.VerificaFormAberto(Self, 'FrmPesquisaUsuario');
  if (formAberto = -1) then begin
    FrmPesquisaUsuario := TFrmPesquisaUsuario.Create(Self);
    FrmPesquisaUsuario.Show;
  end else begin
    TFrmPesquisaUsuario(Self.MDIChildren[formAberto]).WindowState := wsMinimized;
    TFrmPesquisaUsuario(Self.MDIChildren[formAberto]).WindowState := wsNormal;
  end;
end;

procedure TFrmMainScreen.FormShow(Sender: TObject);
begin
  if FrmLogin = nil then begin
    FrmLogin := TFrmLogin.Create(Self);
    FrmLogin.setFrmMainScreen(Self);
    FrmLogin.Show;
  end else begin
    FrmLogin.Close;
    Traducao;
  end;
end;


procedure TFrmMainScreen.Traducao;
begin
  Self.Caption := sTituloTelaPrincipal;
  MItemPesquisa.Caption := menuItemPesquisa;
  MItemFuncionario.Caption := menuItemFuncionario;
  MItemCargo.Caption := menuItemCargo;
  MItemFornecedor.Caption := menuItemFornecedor;
  MItemProduto.Caption := menuItemProduto;
  MItemSair.Caption := menuItemSair;
  MItemSistema.Caption := menuItemSistema;
  MItemUsuario.Caption := menuItemUsuario;
end;

end.
