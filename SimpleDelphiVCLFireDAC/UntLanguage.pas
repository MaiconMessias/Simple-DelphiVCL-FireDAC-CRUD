unit UntLanguage;

interface
  uses Windows, Consts, UntLanguage_en_US, UntLanguage_pt_BR, Vcl.VDBConsts;

  var
    language: ^string;

  procedure SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
  procedure ChangeValues;

  resourcestring
    // Tela Login
    sTituloLogin = '';
    lbIdioma = '';
    lbUsername = '';
    lbSenha = '';
    btEntrar = '';
    btCancelar = '';
    // ComboBox CBoxLinguagem
    sItemPt = '';
    sItemEn = '';
    sMsgErroLogin = '';

    // Tela Principal
    sTituloTelaPrincipal = '';
    menuItemPesquisa = '';
    menuItemFuncionario = '';
    menuItemCargo = '';
    menuItemFornecedor = '';
    menuItemProduto = '';
    menuItemSistema = '';
    menuItemUsuario = '';
    menuItemSair = '';

    // Pesquisa de Funcionario
    sTituloTelaPesqFunci = '';
    sLblTituloTabSheet = '';
    sTabShtInc = '';
    sTabShtEdt = '';
    sMsgCargoObrigatorio = '';
    slblIdFunci = '';
    slblNomeFunci = '';
    slblRGFunci = '';
    slblCPFFunci = '';
    slblCargoFunci = '';
    slblDBGIdFunci = '';
    slblDBGNomeFunci = '';
    slblDBGRGFunci = '';
    slblDBGCPFFunci = '';
    sbtnPesquFunciSalvar = '';
    sbtnPesquFunciCancelar = '';

    // Pesquisa de Cargo
    sTituloTelaPesqCargo = '';
    sLblTituloTabSheetCargo = '';
    slblIdCargo = '';
    slblDescricaoCargo = '';
    slblSalarioCargo = '';
    slblDBGIdCargo = '';
    slblDBGDescricaoCargo = '';
    slblDBGSalarioCargo = '';
    sbtnPesquCargoSalvar = '';
    sbtnPesquCargoCancelar = '';

    // Pesquisa de Fornecedor
    sTituloTelaPesqFornecedor = '';
    sLblTituloTabSheetFornecedor = '';
    slblCNPJFornecedor = '';
    slblNomeFantasiaFornecedor = '';
    slblDBGCNPJFornecedor = '';
    slblDBGNomeFantasiaFornecedor = '';
    sbtnPesquFornecedorSalvar = '';
    sbtnPesquFornecedorCancelar = '';

    // Pesquisa de Produto
    sTituloTelaPesqProduto = '';
    sLblTituloTabSheetProduto = '';
    sMsgFornecedorObrigatorio = '';
    slblIdProduto = '';
    slblDescricaoProduto = '';
    slblDetalheProduto = '';
    slblPrecoCompraProduto = '';
    slblPrecoVendaProduto = '';
    slblFornecedorProduto = '';
    slblDBGIdProduto = '';
    slblDBGDescricaoProduto = '';
    slblDBGDetalheProduto = '';
    slblDBGPrecoCompraProduto = '';
    slblDBGPrecoVendaProduto = '';
    sbtnPesquProdutoSalvar = '';
    sbtnPesquProdutoCancelar = '';

    // Pesquisa de Usuario
    sTituloTelaPesqUsuario = '';
    sLblTituloTabSheetUsuario = '';
    sMsgFuncionarioObrigatorio = '';
    slblIdUsuario = '';
    slblUsuarioUsuario = '';
    slblSenhaUsuario = '';
    slblFuncionarioUsuario = '';
    slblDBGIdUsuario = '';
    slblDBGUsuarioUsuario = '';
    slblDBGSenhaUsuario = '';
    sbtnPesquUsuarioSalvar = '';
    sbtnPesquUsuarioCancelar = '';

implementation

procedure SetResourceString(xOldResourceString: PResStringRec; xValueChanged: PChar);
var
  POldProtect: DWORD;
begin
  VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), PAGE_EXECUTE_READWRITE, @POldProtect);
  xOldResourceString^.Identifier := Integer(xValueChanged);
  VirtualProtect(xOldResourceString, SizeOf(xOldResourceString^), POldProtect,
                 @POldProtect);
end;

procedure ChangeValues;
begin
  if (language <> nil) then begin
    if (language^ = 'en') then begin
      SetResourceString(@sTituloTelaPrincipal, UntLanguage_en_US.sTituloTelaPrincipal);
      SetResourceString(@sItemPt, UntLanguage_en_US.sItemPt);
      SetResourceString(@sItemEn, UntLanguage_en_US.sItemEn);
      SetResourceString(@sTituloLogin, UntLanguage_en_US.sTituloLogin);
      SetResourceString(@lbIdioma, UntLanguage_en_US.lbIdioma);
      SetResourceString(@lbUsername, UntLanguage_en_US.lbUsername);
      SetResourceString(@lbSenha, UntLanguage_en_US.lbSenha);
      SetResourceString(@btEntrar, UntLanguage_en_US.btEntrar);
      SetResourceString(@btCancelar, UntLanguage_en_US.btCancelar);
      SetResourceString(@menuItemPesquisa, UntLanguage_en_US.menuItemPesquisa);
      SetResourceString(@menuItemFuncionario, UntLanguage_en_US.menuItemFuncionario);
      SetResourceString(@sMsgErroLogin, UntLanguage_en_US.sMsgErroLogin);
      SetResourceString(@sTituloTelaPesqFunci, UntLanguage_en_US.sTituloTelaPesqFunci);
      SetResourceString(@sLblTituloTabSheet, UntLanguage_en_US.sLblTituloTabSheet);
      SetResourceString(@sTabShtInc, UntLanguage_en_US.sTabShtInc);
      SetResourceString(@sTabShtEdt, UntLanguage_en_US.sTabShtEdt);
      SetResourceString(@sMsgCargoObrigatorio, UntLanguage_en_US.sMsgCargoObrigatorio);
      SetResourceString(@slblIdFunci, UntLanguage_en_US.slblIdFunci);
      SetResourceString(@slblNomeFunci, UntLanguage_en_US.slblNomeFunci);
      SetResourceString(@slblRGFunci, UntLanguage_en_US.slblRGFunci);
      SetResourceString(@slblCPFFunci, UntLanguage_en_US.slblCPFFunci);
      SetResourceString(@slblCargoFunci, UntLanguage_en_US.slblCargoFunci);
      SetResourceString(@slblDBGIdFunci, UntLanguage_en_US.slblDBGIdFunci);
      SetResourceString(@slblDBGNomeFunci, UntLanguage_en_US.slblDBGNomeFunci);
      SetResourceString(@slblDBGRGFunci, UntLanguage_en_US.slblDBGRGFunci);
      SetResourceString(@slblDBGCPFFunci, UntLanguage_en_US.slblDBGCPFFunci);
      SetResourceString(@sbtnPesquFunciSalvar, UntLanguage_en_US.sbtnPesquFunciSalvar);
      SetResourceString(@sbtnPesquFunciCancelar, UntLanguage_en_US.sbtnPesquFunciCancelar);
      SetResourceString(@sTituloTelaPesqCargo, UntLanguage_en_US.sTituloTelaPesqCargo);
      SetResourceString(@sLblTituloTabSheetCargo, UntLanguage_en_US.sLblTituloTabSheetCargo);
      SetResourceString(@slblIdCargo, UntLanguage_en_US.slblIdCargo);
      SetResourceString(@slblDescricaoCargo, UntLanguage_en_US.slblDescricaoCargo);
      SetResourceString(@slblSalarioCargo, UntLanguage_en_US.slblSalarioCargo);
      SetResourceString(@slblDBGIdCargo, UntLanguage_en_US.slblDBGIdCargo);
      SetResourceString(@slblDBGDescricaoCargo, UntLanguage_en_US.slblDBGDescricaoCargo);
      SetResourceString(@slblDBGSalarioCargo, UntLanguage_en_US.slblDBGSalarioCargo);
      SetResourceString(@sbtnPesquCargoSalvar, UntLanguage_en_US.sbtnPesquCargoSalvar);
      SetResourceString(@sbtnPesquCargoCancelar, UntLanguage_en_US.sbtnPesquCargoCancelar);
      SetResourceString(@menuItemCargo, UntLanguage_en_US.menuItemCargo);
      SetResourceString(@menuItemSair, UntLanguage_en_US.menuItemSair);
      SetResourceString(@sTituloTelaPesqFornecedor, UntLanguage_en_US.sTituloTelaPesqFornecedor);
      SetResourceString(@sLblTituloTabSheetFornecedor, UntLanguage_en_US.sLblTituloTabSheetFornecedor);
      SetResourceString(@slblCNPJFornecedor, UntLanguage_en_US.slblCNPJFornecedor);
      SetResourceString(@slblNomeFantasiaFornecedor, UntLanguage_en_US.slblNomeFantasiaFornecedor);
      SetResourceString(@slblDBGCNPJFornecedor, UntLanguage_en_US.slblDBGCNPJFornecedor);
      SetResourceString(@slblDBGNomeFantasiaFornecedor, UntLanguage_en_US.slblDBGNomeFantasiaFornecedor);
      SetResourceString(@sbtnPesquFornecedorSalvar, UntLanguage_en_US.sbtnPesquFornecedorSalvar);
      SetResourceString(@sbtnPesquFornecedorCancelar, UntLanguage_en_US.sbtnPesquFornecedorCancelar);
      SetResourceString(@menuItemFornecedor, UntLanguage_en_US.menuItemFornecedor);
      SetResourceString(@sTituloTelaPesqProduto, UntLanguage_en_US.sTituloTelaPesqProduto);
      SetResourceString(@sLblTituloTabSheetProduto, UntLanguage_en_US.sLblTituloTabSheetProduto);
      SetResourceString(@sMsgFornecedorObrigatorio, UntLanguage_en_US.sMsgFornecedorObrigatorio);
      SetResourceString(@slblIdProduto, UntLanguage_en_US.slblIdProduto);
      SetResourceString(@slblDescricaoProduto, UntLanguage_en_US.slblDescricaoProduto);
      SetResourceString(@slblDetalheProduto, UntLanguage_en_US.slblDetalheProduto);
      SetResourceString(@slblPrecoCompraProduto, UntLanguage_en_US.slblPrecoCompraProduto);
      SetResourceString(@slblPrecoVendaProduto, UntLanguage_en_US.slblPrecoVendaProduto);
      SetResourceString(@slblFornecedorProduto, UntLanguage_en_US.slblFornecedorProduto);
      SetResourceString(@slblDBGIdProduto, UntLanguage_en_US.slblDBGIdProduto);
      SetResourceString(@slblDBGDescricaoProduto, UntLanguage_en_US.slblDBGDescricaoProduto);
      SetResourceString(@slblDBGDetalheProduto, UntLanguage_en_US.slblDBGDetalheProduto);
      SetResourceString(@slblDBGPrecoCompraProduto, UntLanguage_en_US.slblDBGPrecoCompraProduto);
      SetResourceString(@slblDBGPrecoVendaProduto, UntLanguage_en_US.slblDBGPrecoVendaProduto);
      SetResourceString(@sbtnPesquProdutoSalvar, UntLanguage_en_US.sbtnPesquProdutoSalvar);
      SetResourceString(@sbtnPesquProdutoCancelar, UntLanguage_en_US.sbtnPesquProdutoCancelar);
      SetResourceString(@menuItemProduto, UntLanguage_en_US.menuItemProduto);
      SetResourceString(@menuItemSistema, UntLanguage_en_US.menuItemSistema);
      SetResourceString(@menuItemUsuario, UntLanguage_en_US.menuItemUsuario);
      SetResourceString(@sTituloTelaPesqUsuario, UntLanguage_en_US.sTituloTelaPesqUsuario);
      SetResourceString(@sLblTituloTabSheetUsuario, UntLanguage_en_US.sLblTituloTabSheetUsuario);
      SetResourceString(@sMsgFuncionarioObrigatorio, UntLanguage_en_US.sMsgFuncionarioObrigatorio);
      SetResourceString(@slblIdUsuario, UntLanguage_en_US.slblIdUsuario);
      SetResourceString(@slblUsuarioUsuario, UntLanguage_en_US.slblUsuarioUsuario);
      SetResourceString(@slblSenhaUsuario, UntLanguage_en_US.slblSenhaUsuario);
      SetResourceString(@slblFuncionarioUsuario, UntLanguage_en_US.slblFuncionarioUsuario);
      SetResourceString(@slblDBGIdUsuario, UntLanguage_en_US.slblDBGIdUsuario);
      SetResourceString(@slblDBGUsuarioUsuario, UntLanguage_en_US.slblDBGUsuarioUsuario);
      SetResourceString(@slblDBGSenhaUsuario, UntLanguage_en_US.slblDBGSenhaUsuario);
      SetResourceString(@sbtnPesquUsuarioSalvar, UntLanguage_en_US.sbtnPesquUsuarioSalvar);
      SetResourceString(@sbtnPesquUsuarioCancelar, UntLanguage_en_US.sbtnPesquUsuarioCancelar);
      // Consts.pas
      SetResourceString(@Consts.SMsgDlgWarning, UntLanguage_en_US.SMsgDlgWarning);
      SetResourceString(@Consts.SMsgDlgConfirm, UntLanguage_en_US.SMsgDlgConfirm);
      SetResourceString(@Consts.SMsgDlgCancel, UntLanguage_en_US.SMsgDlgCancel);
      // Vcl.VDBConsts
      SetResourceString(@Vcl.VDBConsts.SDeleteRecordQuestion, UntLanguage_en_US.SDeleteRecordQuestion);
    end else if (language^ = 'pt') then begin
      SetResourceString(@sTituloTelaPrincipal, UntLanguage_pt_BR.sTituloTelaPrincipal);
      SetResourceString(@sItemPt, UntLanguage_pt_BR.sItemPt);
      SetResourceString(@sItemEn, UntLanguage_pt_BR.sItemEn);
      SetResourceString(@sTituloLogin, UntLanguage_pt_BR.sTituloLogin);
      SetResourceString(@lbIdioma, UntLanguage_pt_BR.lbIdioma);
      SetResourceString(@lbUsername, UntLanguage_pt_BR.lbUsername);
      SetResourceString(@lbSenha, UntLanguage_pt_BR.lbSenha);
      SetResourceString(@btEntrar, UntLanguage_pt_BR.btEntrar);
      SetResourceString(@btCancelar, UntLanguage_pt_BR.btCancelar);
      SetResourceString(@menuItemPesquisa, UntLanguage_pt_BR.menuItemPesquisa);
      SetResourceString(@menuItemFuncionario, UntLanguage_pt_BR.menuItemFuncionario);
      SetResourceString(@sMsgErroLogin, UntLanguage_pt_BR.sMsgErroLogin);
      SetResourceString(@sTituloTelaPesqFunci, UntLanguage_pt_BR.sTituloTelaPesqFunci);
      SetResourceString(@sLblTituloTabSheet, UntLanguage_pt_BR.sLblTituloTabSheet);
      SetResourceString(@sTabShtInc, UntLanguage_pt_BR.sTabShtInc);
      SetResourceString(@sTabShtEdt, UntLanguage_pt_BR.sTabShtEdt);
      SetResourceString(@sMsgCargoObrigatorio, UntLanguage_pt_BR.sMsgCargoObrigatorio);
      SetResourceString(@slblIdFunci, UntLanguage_pt_BR.slblIdFunci);
      SetResourceString(@slblNomeFunci, UntLanguage_pt_BR.slblNomeFunci);
      SetResourceString(@slblRGFunci, UntLanguage_pt_BR.slblRGFunci);
      SetResourceString(@slblCPFFunci, UntLanguage_pt_BR.slblCPFFunci);
      SetResourceString(@slblCargoFunci, UntLanguage_pt_BR.slblCargoFunci);
      SetResourceString(@slblDBGIdFunci, UntLanguage_pt_BR.slblDBGIdFunci);
      SetResourceString(@slblDBGNomeFunci, UntLanguage_pt_BR.slblDBGNomeFunci);
      SetResourceString(@slblDBGRGFunci, UntLanguage_pt_BR.slblDBGRGFunci);
      SetResourceString(@slblDBGCPFFunci, UntLanguage_pt_BR.slblDBGCPFFunci);
      SetResourceString(@sbtnPesquFunciSalvar, UntLanguage_pt_BR.sbtnPesquFunciSalvar);
      SetResourceString(@sbtnPesquFunciCancelar, UntLanguage_pt_BR.sbtnPesquFunciCancelar);
      SetResourceString(@sTituloTelaPesqCargo, UntLanguage_pt_BR.sTituloTelaPesqCargo);
      SetResourceString(@sLblTituloTabSheetCargo, UntLanguage_pt_BR.sLblTituloTabSheetCargo);
      SetResourceString(@slblIdCargo, UntLanguage_pt_BR.slblIdCargo);
      SetResourceString(@slblDescricaoCargo, UntLanguage_pt_BR.slblDescricaoCargo);
      SetResourceString(@slblSalarioCargo, UntLanguage_pt_BR.slblSalarioCargo);
      SetResourceString(@slblDBGIdCargo, UntLanguage_pt_BR.slblDBGIdCargo);
      SetResourceString(@slblDBGDescricaoCargo, UntLanguage_pt_BR.slblDBGDescricaoCargo);
      SetResourceString(@slblDBGSalarioCargo, UntLanguage_pt_BR.slblDBGSalarioCargo);
      SetResourceString(@sbtnPesquCargoSalvar, UntLanguage_pt_BR.sbtnPesquCargoSalvar);
      SetResourceString(@sbtnPesquCargoCancelar, UntLanguage_pt_BR.sbtnPesquCargoCancelar);
      SetResourceString(@menuItemCargo, UntLanguage_pt_BR.menuItemCargo);
      SetResourceString(@menuItemSair, UntLanguage_pt_BR.menuItemSair);
      SetResourceString(@sTituloTelaPesqFornecedor, UntLanguage_pt_BR.sTituloTelaPesqFornecedor);
      SetResourceString(@sLblTituloTabSheetFornecedor, UntLanguage_pt_BR.sLblTituloTabSheetFornecedor);
      SetResourceString(@slblCNPJFornecedor, UntLanguage_pt_BR.slblCNPJFornecedor);
      SetResourceString(@slblNomeFantasiaFornecedor, UntLanguage_pt_BR.slblNomeFantasiaFornecedor);
      SetResourceString(@slblDBGCNPJFornecedor, UntLanguage_pt_BR.slblDBGCNPJFornecedor);
      SetResourceString(@slblDBGNomeFantasiaFornecedor, UntLanguage_pt_BR.slblDBGNomeFantasiaFornecedor);
      SetResourceString(@sbtnPesquFornecedorSalvar, UntLanguage_pt_BR.sbtnPesquFornecedorSalvar);
      SetResourceString(@sbtnPesquFornecedorCancelar, UntLanguage_pt_BR.sbtnPesquFornecedorCancelar);
      SetResourceString(@menuItemFornecedor, UntLanguage_pt_BR.menuItemFornecedor);
      SetResourceString(@sTituloTelaPesqProduto, UntLanguage_pt_BR.sTituloTelaPesqProduto);
      SetResourceString(@sLblTituloTabSheetProduto, UntLanguage_pt_BR.sLblTituloTabSheetProduto);
      SetResourceString(@sMsgFornecedorObrigatorio, UntLanguage_pt_BR.sMsgFornecedorObrigatorio);
      SetResourceString(@slblIdProduto, UntLanguage_pt_BR.slblIdProduto);
      SetResourceString(@slblDescricaoProduto, UntLanguage_pt_BR.slblDescricaoProduto);
      SetResourceString(@slblDetalheProduto, UntLanguage_pt_BR.slblDetalheProduto);
      SetResourceString(@slblPrecoCompraProduto, UntLanguage_pt_BR.slblPrecoCompraProduto);
      SetResourceString(@slblPrecoVendaProduto, UntLanguage_pt_BR.slblPrecoVendaProduto);
      SetResourceString(@slblFornecedorProduto, UntLanguage_pt_BR.slblFornecedorProduto);
      SetResourceString(@slblDBGIdProduto, UntLanguage_pt_BR.slblDBGIdProduto);
      SetResourceString(@slblDBGDescricaoProduto, UntLanguage_pt_BR.slblDBGDescricaoProduto);
      SetResourceString(@slblDBGDetalheProduto, UntLanguage_pt_BR.slblDBGDetalheProduto);
      SetResourceString(@slblDBGPrecoCompraProduto, UntLanguage_pt_BR.slblDBGPrecoCompraProduto);
      SetResourceString(@slblDBGPrecoVendaProduto, UntLanguage_pt_BR.slblDBGPrecoVendaProduto);
      SetResourceString(@sbtnPesquProdutoSalvar, UntLanguage_pt_BR.sbtnPesquProdutoSalvar);
      SetResourceString(@sbtnPesquProdutoCancelar, UntLanguage_pt_BR.sbtnPesquProdutoCancelar);
      SetResourceString(@menuItemProduto, UntLanguage_pt_BR.menuItemProduto);
      SetResourceString(@menuItemSistema, UntLanguage_pt_BR.menuItemSistema);
      SetResourceString(@menuItemUsuario, UntLanguage_pt_BR.menuItemUsuario);
      SetResourceString(@sTituloTelaPesqUsuario, UntLanguage_pt_BR.sTituloTelaPesqUsuario);
      SetResourceString(@sLblTituloTabSheetUsuario, UntLanguage_pt_BR.sLblTituloTabSheetUsuario);
      SetResourceString(@sMsgFuncionarioObrigatorio, UntLanguage_pt_BR.sMsgFuncionarioObrigatorio);
      SetResourceString(@slblIdUsuario, UntLanguage_pt_BR.slblIdUsuario);
      SetResourceString(@slblUsuarioUsuario, UntLanguage_pt_BR.slblUsuarioUsuario);
      SetResourceString(@slblSenhaUsuario, UntLanguage_pt_BR.slblSenhaUsuario);
      SetResourceString(@slblFuncionarioUsuario, UntLanguage_pt_BR.slblFuncionarioUsuario);
      SetResourceString(@slblDBGIdUsuario, UntLanguage_pt_BR.slblDBGIdUsuario);
      SetResourceString(@slblDBGUsuarioUsuario, UntLanguage_pt_BR.slblDBGUsuarioUsuario);
      SetResourceString(@slblDBGSenhaUsuario, UntLanguage_pt_BR.slblDBGSenhaUsuario);
      SetResourceString(@sbtnPesquUsuarioSalvar, UntLanguage_pt_BR.sbtnPesquUsuarioSalvar);
      SetResourceString(@sbtnPesquUsuarioCancelar, UntLanguage_pt_BR.sbtnPesquUsuarioCancelar);
      // Consts.pas
      SetResourceString(@Consts.SMsgDlgWarning, UntLanguage_pt_BR.SMsgDlgWarning);
      SetResourceString(@Consts.SMsgDlgConfirm, UntLanguage_pt_BR.SMsgDlgConfirm);
      SetResourceString(@Consts.SMsgDlgCancel, UntLanguage_pt_BR.SMsgDlgCancel);
      // Vcl.VDBConsts
      SetResourceString(@Vcl.VDBConsts.SDeleteRecordQuestion, UntLanguage_pt_BR.SDeleteRecordQuestion);

    end;
  end;
end;

end.
