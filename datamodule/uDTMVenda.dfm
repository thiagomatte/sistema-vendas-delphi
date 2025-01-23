object dtmVenda: TdtmVenda
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 308
  Width = 472
  object QryCliente: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT clienteId, nome FROM clientes;')
    Params = <>
    Left = 56
    Top = 56
    object QryClienteclienteId: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClientenome: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
  end
  object QryProdutos: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      'SELECT produtoId, nome, valor, quantidade FROM produtos;')
    Params = <>
    Left = 160
    Top = 56
    object QryProdutosprodutoId: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryProdutosnome: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object QryProdutosvalor: TZFMTBCDField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Precision = 18
      Size = 5
    end
    object QryProdutosquantidade: TZFMTBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
      Precision = 18
      Size = 5
    end
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 56
    object cdsItensVendaprodutoId: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'produtoId'
    end
    object cdsItensVendaNomeProduto: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NomeProduto'
    end
    object cdsItensVendaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsItensVendavalorUnitario: TFloatField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valorUnitario'
    end
    object cdsItensVendavalorTotalProduto: TFloatField
      DisplayLabel = 'Total Produto'
      FieldName = 'valorTotalProduto'
    end
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
    Left = 56
    Top = 128
  end
  object dtItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 264
    Top = 128
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 160
    Top = 128
  end
end
