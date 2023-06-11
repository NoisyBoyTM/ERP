object DM: TDM
  OldCreateOrder = False
  Height = 604
  Width = 693
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=erpdb'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 544
    Top = 520
  end
  object FDWaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 608
    Top = 520
  end
  object qryConta: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CONTA;')
    Left = 47
    Top = 480
    object qryContaIDCONTA: TIntegerField
      FieldName = 'IDCONTA'
      Origin = 'IDCONTA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContaNOMECONTA: TStringField
      FieldName = 'NOMECONTA'
      Origin = 'NOMECONTA'
      Size = 50
    end
    object qryContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 250
    end
    object qryContaCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
      Size = 30
    end
    object qryContaVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qryContaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object qryContaDTVENCIMENTO: TSQLTimeStampField
      FieldName = 'DTVENCIMENTO'
      Origin = 'DTVENCIMENTO'
    end
    object qryContaPAGO: TStringField
      FieldName = 'PAGO'
      Origin = 'PAGO'
      FixedChar = True
      Size = 1
    end
    object qryContaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
  end
  object qryItensVenda: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM ITENSVENDA;')
    Left = 48
    Top = 64
    object qryItensVendaIDITEMVENDA: TIntegerField
      FieldName = 'IDITEMVENDA'
      Origin = 'IDITEMVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItensVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      Required = True
    end
    object qryItensVendaIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
    end
    object qryItensVendaVALOR: TSingleField
      FieldName = 'VALOR'
      Origin = 'VALOR'
    end
    object qryItensVendaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object qryItensVendaNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 200
    end
    object qryItensVendaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Origin = 'CODIGOBARRAS'
      Size = 128
    end
  end
  object dsLogin: TDataSource
    DataSet = qryLogin
    Left = 77
    Top = 234
  end
  object dsProduto: TDataSource
    DataSet = tbProduto
    Left = 220
    Top = 344
  end
  object dsItensVenda: TDataSource
    Left = 76
    Top = 64
  end
  object dsCliente: TDataSource
    DataSet = tbCliente
    Left = 74
    Top = 370
  end
  object dsEmpresa: TDataSource
    DataSet = tbEmpresa
    Left = 74
    Top = 418
  end
  object dsConta: TDataSource
    DataSet = qryConta
    Left = 75
    Top = 480
  end
  object dsVenda: TDataSource
    DataSet = tbVenda
    Left = 76
    Top = 14
  end
  object dsSeguranca: TDataSource
    DataSet = tbSeguranca
    Left = 76
    Top = 280
  end
  object dsUsuario: TDataSource
    DataSet = tbUsuario
    Left = 73
    Top = 322
  end
  object dsGridRelatorio: TDataSource
    DataSet = qryGeral
    Left = 202
    Top = 40
  end
  object qryGeral: TFDQuery
    Connection = FDConnection
    Left = 48
    Top = 528
  end
  object dsGeral: TDataSource
    DataSet = qryGeral
    Left = 80
    Top = 528
  end
  object qryLogin: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM USUARIO WHERE ATIVO = '#39'T'#39';')
    Left = 45
    Top = 234
    object IntegerField1: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object StringField3: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object StringField4: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object StringField5: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object StringField6: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object StringField7: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object StringField8: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object StringField9: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object StringField10: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object StringField11: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 50
    end
    object StringField12: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object StringField13: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object StringField14: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object StringField15: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
  end
  object dsProdutoPersonalizado1: TDataSource
    DataSet = tbProdutoPersonalizado1
    Left = 224
    Top = 384
  end
  object tbSeguranca: TFDTable
    IndexFieldNames = 'IDUSUARIO'
    Connection = FDConnection
    UpdateOptions.AssignedValues = [uvUpdateMode, uvCheckRequired]
    UpdateOptions.KeyFields = 'IDUSUARIO'
    TableName = 'SEGURANCA'
    Left = 48
    Top = 280
    object tbSegurancaIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      Required = True
    end
    object tbSegurancaNOME: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME'
      LookupDataSet = tbUsuario
      LookupKeyFields = 'IDUSUARIO'
      LookupResultField = 'NOME'
      KeyFields = 'IDUSUARIO'
      Origin = 'NOME'
      Size = 100
      Lookup = True
    end
    object tbSegurancaCREDENCIAL: TIntegerField
      FieldName = 'CREDENCIAL'
      Origin = 'CREDENCIAL'
    end
    object tbSegurancaVENDA: TStringField
      FieldName = 'VENDA'
      Origin = 'VENDA'
      OnGetText = tbSegurancaVENDAGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      OnGetText = tbSegurancaPRODUTOGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaCLIENTE: TStringField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      OnGetText = tbSegurancaCLIENTEGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      OnGetText = tbSegurancaEMPRESAGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      OnGetText = tbSegurancaCONTAGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      OnGetText = tbSegurancaUSUARIOGetText
      FixedChar = True
      Size = 1
    end
    object tbSegurancaRELATORIO: TStringField
      FieldName = 'RELATORIO'
      Origin = 'RELATORIO'
      OnGetText = tbSegurancaRELATORIOGetText
      FixedChar = True
      Size = 1
    end
  end
  object tbProduto: TFDTable
    IndexFieldNames = 'IDPRODUTO'
    Connection = FDConnection
    TableName = 'PRODUTO'
    Left = 192
    Top = 344
    object tbProdutoIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutoATIVO: TStringField
      FieldName = 'ATIVO'
    end
    object tbProdutoNOMEPRODUTO: TStringField
      FieldName = 'NOMEPRODUTO'
      Origin = 'NOMEPRODUTO'
      Size = 200
    end
    object tbProdutoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 128
    end
    object tbProdutoCUSTO: TSingleField
      FieldName = 'CUSTO'
      Origin = 'CUSTO'
    end
    object tbProdutoMARGEMLUCRO: TIntegerField
      FieldName = 'MARGEMLUCRO'
      Origin = 'MARGEMLUCRO'
    end
    object tbProdutoPRECO: TSingleField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
    object tbProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object tbProdutoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      LookupDataSet = tbEmpresa
      LookupKeyFields = 'IDEMPRESA'
      LookupResultField = 'RAZAOSOCIAL'
      KeyFields = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
    end
    object tbProdutoDTENTRADA: TSQLTimeStampField
      FieldName = 'DTENTRADA'
      Origin = 'DTENTRADA'
    end
    object tbProdutoCDPERSONALIZADO1: TIntegerField
      FieldName = 'CDPERSONALIZADO1'
      LookupDataSet = tbProdutoPersonalizado1
      LookupKeyFields = 'CDPERSONALIZADO1'
      LookupResultField = 'NMPERSONALIZADO1'
      KeyFields = 'CDPERSONALIZADO1'
    end
    object tbProdutoCDPERSONALIZADO2: TIntegerField
      FieldName = 'CDPERSONALIZADO2'
      LookupDataSet = tbProdutoPersonalizado2
      LookupKeyFields = 'CDPERSONALIZADO2'
      LookupResultField = 'NMPERSONALIZADO2'
      KeyFields = 'CDPERSONALIZADO2'
    end
    object tbProdutoCDPERSONALIZADO3: TIntegerField
      FieldName = 'CDPERSONALIZADO3'
      LookupDataSet = tbProdutoPersonalizado3
      LookupKeyFields = 'CDPERSONALIZADO3'
      LookupResultField = 'NMPERSONALIZADO3'
      KeyFields = 'CDPERSONALIZADO3'
    end
    object tbProdutoCDPERSONALIZADO4: TIntegerField
      FieldName = 'CDPERSONALIZADO4'
      LookupDataSet = tbProdutoPersonalizado4
      LookupKeyFields = 'CDPERSONALIZADO4'
      LookupResultField = 'NMPERSONALIZADO4'
      KeyFields = 'CDPERSONALIZADO4'
    end
    object tbProdutoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
    object tbProdutoNCM: TStringField
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 8
    end
  end
  object tbEmpresa: TFDTable
    IndexFieldNames = 'IDEMPRESA'
    Connection = FDConnection
    TableName = 'EMPRESA'
    Left = 48
    Top = 419
    object tbEmpresaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbEmpresaNOMEFANTASIA: TStringField
      FieldName = 'NOMEFANTASIA'
      Origin = 'NOMEFANTASIA'
      Size = 30
    end
    object tbEmpresaRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Origin = 'RAZAOSOCIAL'
      Size = 30
    end
    object tbEmpresaATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object tbEmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
    end
    object tbEmpresaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object tbEmpresaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object tbEmpresaESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object tbEmpresaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbEmpresaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object tbEmpresaRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 50
    end
    object tbEmpresaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 10
    end
    object tbEmpresaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tbEmpresaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object tbEmpresaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
    object tbEmpresaIE: TStringField
      FieldName = 'IE'
      Origin = 'IE'
      Size = 9
    end
  end
  object dsProdutoPersonalizado2: TDataSource
    DataSet = tbProdutoPersonalizado2
    Left = 224
    Top = 424
  end
  object dsProdutoPersonalizado3: TDataSource
    DataSet = tbProdutoPersonalizado3
    Left = 224
    Top = 480
  end
  object dsProdutoPersonalizado4: TDataSource
    DataSet = tbProdutoPersonalizado4
    Left = 224
    Top = 528
  end
  object tbProdutoPersonalizado1: TFDTable
    IndexFieldNames = 'CDPERSONALIZADO1'
    Connection = FDConnection
    TableName = 'PRODUTO_PERSONALIZADO1'
    Left = 190
    Top = 384
    object tbProdutoPersonalizado1CDPERSONALIZADO1: TIntegerField
      FieldName = 'CDPERSONALIZADO1'
      Origin = 'CDPERSONALIZADO1'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutoPersonalizado1NMPERSONALIZADO1: TStringField
      FieldName = 'NMPERSONALIZADO1'
      Origin = 'NMPERSONALIZADO1'
      Size = 30
    end
  end
  object tbProdutoPersonalizado2: TFDTable
    IndexFieldNames = 'CDPERSONALIZADO2'
    Connection = FDConnection
    TableName = 'PRODUTO_PERSONALIZADO2'
    Left = 192
    Top = 425
    object tbProdutoPersonalizado2CDPERSONALIZADO2: TIntegerField
      FieldName = 'CDPERSONALIZADO2'
      Origin = 'CDPERSONALIZADO2'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutoPersonalizado2NMPERSONALIZADO2: TStringField
      FieldName = 'NMPERSONALIZADO2'
      Origin = 'NMPERSONALIZADO2'
      Size = 30
    end
  end
  object tbProdutoPersonalizado3: TFDTable
    IndexFieldNames = 'CDPERSONALIZADO3'
    Connection = FDConnection
    TableName = 'PRODUTO_PERSONALIZADO3'
    Left = 192
    Top = 481
    object tbProdutoPersonalizado3CDPERSONALIZADO3: TIntegerField
      FieldName = 'CDPERSONALIZADO3'
      Origin = 'CDPERSONALIZADO3'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutoPersonalizado3NMPERSONALIZADO3: TStringField
      FieldName = 'NMPERSONALIZADO3'
      Origin = 'NMPERSONALIZADO3'
      Size = 30
    end
  end
  object tbProdutoPersonalizado4: TFDTable
    IndexFieldNames = 'CDPERSONALIZADO4'
    Connection = FDConnection
    TableName = 'PRODUTO_PERSONALIZADO4'
    Left = 192
    Top = 529
    object tbProdutoPersonalizado4CDPERSONALIZADO4: TIntegerField
      FieldName = 'CDPERSONALIZADO4'
      Origin = 'CDPERSONALIZADO4'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutoPersonalizado4NMPERSONALIZADO4: TStringField
      FieldName = 'NMPERSONALIZADO4'
      Origin = 'NMPERSONALIZADO4'
      Size = 30
    end
  end
  object tbCliente: TFDTable
    IndexFieldNames = 'IDCLIENTE'
    Connection = FDConnection
    TableName = 'CLIENTE'
    Left = 48
    Top = 370
    object tbClienteIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object tbClienteATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object tbClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object tbClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object tbClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object tbClienteSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object tbClienteESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object tbClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object tbClienteRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 50
    end
    object tbClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 14
    end
    object tbClienteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tbClienteCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object tbClienteDTNASCIMENTO: TSQLTimeStampField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object tbClienteOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
  end
  object tbUsuario: TFDTable
    IndexFieldNames = 'IDUSUARIO'
    Connection = FDConnection
    TableName = 'USUARIO'
    Left = 48
    Top = 322
    object tbUsuarioIDUSUARIO: TIntegerField
      FieldName = 'IDUSUARIO'
      Origin = 'IDUSUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbUsuarioNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object tbUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 15
    end
    object tbUsuarioATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Size = 1
    end
    object tbUsuarioCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 14
    end
    object tbUsuarioTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 15
    end
    object tbUsuarioEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object tbUsuarioSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 1
    end
    object tbUsuarioESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object tbUsuarioCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
    end
    object tbUsuarioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 30
    end
    object tbUsuarioRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 50
    end
    object tbUsuarioNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 14
    end
    object tbUsuarioCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
    end
    object tbUsuarioCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object tbUsuarioDTNASCIMENTO: TSQLTimeStampField
      FieldName = 'DTNASCIMENTO'
      Origin = 'DTNASCIMENTO'
    end
    object tbUsuarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
  end
  object tbVenda: TFDTable
    IndexFieldNames = 'IDVENDA'
    Connection = FDConnection
    TableName = 'VENDA'
    Left = 48
    Top = 16
    object tbVendaIDVENDA: TIntegerField
      FieldName = 'IDVENDA'
      Origin = 'IDVENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbVendaIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object tbVendaIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
    end
    object tbVendaIDFUNCIONARIO: TIntegerField
      FieldName = 'IDFUNCIONARIO'
      Origin = 'IDFUNCIONARIO'
    end
    object tbVendaPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'PARCELA'
    end
    object tbVendaPAGO: TStringField
      FieldName = 'PAGO'
      Origin = 'PAGO'
      FixedChar = True
      Size = 1
    end
    object tbVendaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 1000
    end
    object tbVendaSUFIXO: TStringField
      FieldName = 'SUFIXO'
      Origin = 'SUFIXO'
      Size = 10
    end
    object tbVendaIDFORMAPAGAMENTO: TIntegerField
      FieldName = 'IDFORMAPAGAMENTO'
      Origin = 'IDFORMAPAGAMENTO'
    end
    object tbVendaDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
    end
    object tbVendaVALORTOTAL: TSingleField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
    end
    object tbVendaDTVENDA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTVENDA'
      Origin = 'DTVENDA'
    end
    object tbVendaDTVENCIMENTO: TDateField
      FieldName = 'DTVENCIMENTO'
    end
  end
  object dsFormaPagamento: TDataSource
    DataSet = tbFormaPagamento
    Left = 76
    Top = 112
  end
  object tbFormaPagamento: TFDTable
    IndexFieldNames = 'IDPAGAMENTO'
    Connection = FDConnection
    TableName = 'FORMA_PAGAMENTO'
    Left = 48
    Top = 112
    object tbFormaPagamentoIDPAGAMENTO: TIntegerField
      FieldName = 'IDPAGAMENTO'
      Origin = 'IDPAGAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbFormaPagamentoNMPAGAMENTO: TStringField
      FieldName = 'NMPAGAMENTO'
      Origin = 'NMPAGAMENTO'
      Size = 15
    end
  end
  object qryConfig: TFDQuery
    Connection = FDConnection
    SQL.Strings = (
      'SELECT * FROM CONFIG;')
    Left = 48
    Top = 192
  end
  object dsConfig: TDataSource
    DataSet = qryConfig
    Left = 80
    Top = 192
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ERP\dll\libmysql.dll'
    Left = 576
    Top = 520
  end
end
