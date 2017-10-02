unit UntLanguage_en_US;

interface

const

  // Login Screen
  sTituloLogin = 'Login';
  lbIdioma = 'Language:';
  lbUsername = 'Username:';
  lbSenha = 'Password:';
  btEntrar = 'Send';
  btCancelar = 'Cancel';
  // ComboBox CBoxLinguagem
  sItemPt = 'Portuguese (Brazil)';
  sItemEn = 'English (US)';
  sMsgErroLogin = 'Invalid username and/or password';

  // Main Screen
  sTituloTelaPrincipal = 'Main Screen';
  menuItemPesquisa = 'Search';
  menuItemFuncionario = 'Employee';
  menuItemCargo = 'Office';
  menuItemFornecedor = 'Supplier';
  menuItemProduto = 'Product';
  menuItemSistema = 'System';
  menuItemUsuario = 'User';
  menuItemSair = 'Exit';

  // Employee Search
  sTituloTelaPesqFunci = 'Employee Search';
  sLblTituloTabSheet = 'Employees';
  sTabShtInc = 'Add';
  sTabShtEdt = 'Edit';
  sMsgCargoObrigatorio = 'The Cargo field is required !';
  slblIdFunci = 'Id:';
  slblNomeFunci = 'Name:';
  slblRGFunci = 'RG:';
  slblCPFFunci = 'CPF:';
  slblCargoFunci = 'Office:';
  slblDBGIdFunci = 'Id';
  slblDBGNomeFunci = 'Name';
  slblDBGRGFunci = 'RG';
  slblDBGCPFFunci = 'CPF';
  sbtnPesquFunciSalvar = 'Salve';
  sbtnPesquFunciCancelar = 'Cancel';

  // Consts.pas
  SMsgDlgWarning = 'Warning';
  SMsgDlgConfirm = 'Confirm';
  SMsgDlgCancel = 'Cancel';
  SDeleteRecordQuestion = 'Delete record?';

  // Office Search
  sTituloTelaPesqCargo = 'Office Search';
  sLblTituloTabSheetCargo = 'Offices';
  slblIdCargo = 'Id:';
  slblDescricaoCargo = 'Description:';
  slblSalarioCargo = 'Salary:';
  slblDBGIdCargo = 'Id';
  slblDBGDescricaoCargo = 'Description';
  slblDBGSalarioCargo = 'Salary';
  sbtnPesquCargoSalvar = 'Salve';
  sbtnPesquCargoCancelar = 'Cancel';

  // Supplier Search
  sTituloTelaPesqFornecedor = 'Supplier Search';
  sLblTituloTabSheetFornecedor = 'Suppliers';
  slblCNPJFornecedor = 'CNPJ:';
  slblNomeFantasiaFornecedor = 'Commercial name:';
  slblDBGCNPJFornecedor = 'CNPJ';
  slblDBGNomeFantasiaFornecedor = 'Trade/commercial name';
  sbtnPesquFornecedorSalvar = 'Salve';
  sbtnPesquFornecedorCancelar = 'Cancel';

  // Product Search
  sTituloTelaPesqProduto = 'Product Search';
  sLblTituloTabSheetProduto = 'Products';
  sMsgFornecedorObrigatorio = 'The Fornecedor field is required !';
  slblIdProduto = 'Id:';
  slblDescricaoProduto = 'Description:';
  slblDetalheProduto = 'Detail:';
  slblPrecoCompraProduto = 'Purchase Price:';
  slblPrecoVendaProduto = 'Sale Price:';
  slblFornecedorProduto = 'Supplier:';
  slblDBGIdProduto = 'Id';
  slblDBGDescricaoProduto = 'Description';
  slblDBGDetalheProduto = 'Detail';
  slblDBGPrecoCompraProduto = 'Purchase Price';
  slblDBGPrecoVendaProduto = 'Sale Price';
  sbtnPesquProdutoSalvar = 'Salve';
  sbtnPesquProdutoCancelar = 'Cancel';

  // User Search
  sTituloTelaPesqUsuario = 'User Search';
  sLblTituloTabSheetUsuario = 'Users';
  sMsgFuncionarioObrigatorio = 'The Funcionário field is required !';
  slblIdUsuario = 'Id:';
  slblUsuarioUsuario = 'Username:';
  slblSenhaUsuario = 'Password:';
  slblFuncionarioUsuario = 'Employee:';
  slblDBGIdUsuario = 'Id';
  slblDBGUsuarioUsuario = 'Username';
  slblDBGSenhaUsuario = 'Password';
  sbtnPesquUsuarioSalvar = 'Salve';
  sbtnPesquUsuarioCancelar = 'Cancel';

implementation

end.
