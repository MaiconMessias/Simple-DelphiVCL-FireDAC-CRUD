unit UntLanguage_pt_BR;

interface

const
  // Tela Login
  sTituloLogin = 'Login';
  lbIdioma = 'Idioma:';
  lbUsername = 'Usuário:';
  lbSenha = 'Senha:';
  btEntrar = 'Entrar';
  btCancelar = 'Cancelar';
  // ComboBox CBoxLinguagem
  sItemPt = 'Português (Brasil)';
  sItemEn = 'Inglês (EUA)';
  sMsgErroLogin = 'Usuário e/ou senha inválido(s)';

  // Tela Principal
  sTituloTelaPrincipal = 'Tela Principal';
  menuItemPesquisa = 'Pesquisa';
  menuItemFuncionario = 'Funcionário';
  menuItemCargo = 'Cargo';
  menuItemFornecedor = 'Fornecedor';
  menuItemProduto = 'Produto';
  menuItemSistema = 'Sistema';
  menuItemUsuario = 'Usuário';
  menuItemSair = 'Sair';

  // Pesquisa de Funcionario
  sTituloTelaPesqFunci = 'Pesquisa de Funcionário';
  sLblTituloTabSheet = 'Funcionários';
  sTabShtInc = 'Incluir';
  sTabShtEdt = 'Editar';
  sMsgCargoObrigatorio = 'O campo Cargo é obrigatório !';
  slblIdFunci = 'Id:';
  slblNomeFunci = 'Nome:';
  slblRGFunci = 'RG:';
  slblCPFFunci = 'CPF:';
  slblCargoFunci = 'Cargo:';
  slblDBGIdFunci = 'Id';
  slblDBGNomeFunci = 'Nome';
  slblDBGRGFunci = 'RG';
  slblDBGCPFFunci = 'CPF';
  sbtnPesquFunciSalvar = 'Salvar';
  sbtnPesquFunciCancelar = 'Cancelar';

  // Consts.pas
  SMsgDlgConfirm = 'Confirmação';
  SMsgDlgWarning = 'Atenção';
  SMsgDlgCancel = 'Cancelar';
  SDeleteRecordQuestion = 'Deseja realmente deletar o registro ?';

  // Pesquisa de Cargo
  sTituloTelaPesqCargo = 'Pesquisa de Cargo';
  sLblTituloTabSheetCargo = 'Cargos';
  slblIdCargo = 'Id:';
  slblDescricaoCargo = 'Descrição:';
  slblSalarioCargo = 'Salário:';
  slblDBGIdCargo = 'Id';
  slblDBGDescricaoCargo = 'Descrição';
  slblDBGSalarioCargo = 'Salário';
  sbtnPesquCargoSalvar = 'Salvar';
  sbtnPesquCargoCancelar = 'Cancelar';

  // Pesquisa de Fornecedor
  sTituloTelaPesqFornecedor = 'Pesquisa de Fornecedor';
  sLblTituloTabSheetFornecedor = 'Fornecedores';
  slblCNPJFornecedor = 'CNPJ:';
  slblNomeFantasiaFornecedor = 'Nome Fantasia:';
  slblDBGCNPJFornecedor = 'CNPJ';
  slblDBGNomeFantasiaFornecedor = 'Nome Fantasia';
  sbtnPesquFornecedorSalvar = 'Salvar';
  sbtnPesquFornecedorCancelar = 'Cancelar';

  // Pesquisa de Produto
  sTituloTelaPesqProduto = 'Pesquisa de Produto';
  sLblTituloTabSheetProduto = 'Produtos';
  sMsgFornecedorObrigatorio = 'O campo Fornecedor é obrigatório !';
  slblIdProduto = 'Id:';
  slblDescricaoProduto = 'Descrição:';
  slblDetalheProduto = 'Detalhe:';
  slblPrecoCompraProduto = 'Preço de Compra:';
  slblPrecoVendaProduto = 'Preço de Venda:';
  slblFornecedorProduto = 'Fornecedor:';
  slblDBGIdProduto = 'Id';
  slblDBGDescricaoProduto = 'Descrição';
  slblDBGDetalheProduto = 'Detalhe';
  slblDBGPrecoCompraProduto = 'Preço de Compra';
  slblDBGPrecoVendaProduto = 'Preço de Venda';
  sbtnPesquProdutoSalvar = 'Salvar';
  sbtnPesquProdutoCancelar = 'Cancelar';

  // Pesquisa de Usuario
  sTituloTelaPesqUsuario = 'Pesquisa de Usuário';
  sLblTituloTabSheetUsuario = 'Usuários';
  sMsgFuncionarioObrigatorio = 'O campo Funcionário é obrigatório';
  slblIdUsuario = 'Id:';
  slblUsuarioUsuario = 'Usuário:';
  slblSenhaUsuario = 'Senha:';
  slblFuncionarioUsuario = 'Funcionário:';
  slblDBGIdUsuario = 'Id';
  slblDBGUsuarioUsuario = 'Usuário';
  slblDBGSenhaUsuario = 'Senha';
  sbtnPesquUsuarioSalvar = 'Salvar';
  sbtnPesquUsuarioCancelar = 'Cancelar';

implementation

end.
