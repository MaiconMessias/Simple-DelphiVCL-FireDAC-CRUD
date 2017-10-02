program SimpleDelphiVCLFireDACFireBird;

uses
  Vcl.Forms,
  UntDtMMain in 'UntDtMMain.pas' {DtMMain: TDataModule},
  UntLogin in 'UntLogin.pas' {FrmLogin},
  UntMainScreen in 'UntMainScreen.pas' {FrmMainScreen},
  UntTemplatePesquisa in 'UntTemplatePesquisa.pas' {FrmTemplatePesqu},
  UntLanguage_pt_BR in 'UntLanguage_pt_BR.pas',
  UntLanguage_en_US in 'UntLanguage_en_US.pas',
  UntLanguage in 'UntLanguage.pas',
  UntUtil in 'UntUtil.pas',
  UntPesquisaFuncionario in 'UntPesquisaFuncionario.pas' {FrmPesquisaFuncionario},
  FEdtIncFuncionario in 'FEdtIncFuncionario.pas' {FrameEdtIncFuncionario: TFrame},
  UntPesquisaCargo in 'UntPesquisaCargo.pas' {FrmPesquisaCargo},
  FEdtIncCargo in 'FEdtIncCargo.pas' {FrameEdtIncCargo: TFrame},
  FEdtIncFornecedor in 'FEdtIncFornecedor.pas' {FrameEdtIncFornecedor: TFrame},
  UntPesquisaFornecedor in 'UntPesquisaFornecedor.pas' {FrmPesquisaFornecedor},
  UntPesquisaProduto in 'UntPesquisaProduto.pas' {FrmPesquisaProduto},
  FEdtIncProduto in 'FEdtIncProduto.pas' {FrameEdtIncProduto: TFrame},
  UntPesquisaUsuario in 'UntPesquisaUsuario.pas' {FrmPesquisaUsuario},
  FEdtIncUsuario in 'FEdtIncUsuario.pas' {FrameEdtIncUsuario: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDtMMain, DtMMain);
  Application.CreateForm(TFrmMainScreen, FrmMainScreen);
  Application.ShowMainForm:=False;
  Application.MainForm.Visible:=False;
  Application.Run;
end.
