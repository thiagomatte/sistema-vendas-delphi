object DtmPrincipal: TDtmPrincipal
  Height = 326
  Width = 664
  object ConexaoDB: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'CP_UTF16'
    Catalog = ''
    Properties.Strings = (
      'RawStringEncoding=DB_CP'
      'codepage=CP_UTF16')
    Connected = True
    SQLHourGlass = True
    DisableSavepoints = False
    HostName = ''
    Port = 0
    Database = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=vendas;Data Source=DESKTOP-BO27GAN\SQLE' +
      'XPRESS'
    User = ''
    Password = ''
    Protocol = 'ado'
    Left = 24
    Top = 24
  end
  object QryScriptCategorias: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'categorias'#39') IS NULL'
      'BEGIN'
      '    CREATE TABLE categorias('
      '         categoriaId INT IDENTITY(1,1) NOT NULL,'
      '         descricao VARCHAR(30) NULL,'
      '         PRIMARY KEY (categoriaId)'
      ')'
      'END')
    Params = <>
    Left = 136
    Top = 24
  end
  object QryScriptClientes: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'clientes'#39') IS NULL'
      'BEGIN'
      #9'CREATE TABLE clientes('
      #9#9'clienteId int IDENTITY(1,1) NOT NULL,'
      #9#9'nome varchar(60) NULL,'
      #9#9'endereco varchar(60) null,'
      #9#9'cidade varchar(50) null,'
      #9#9'bairro varchar(40) null,'
      #9#9'estado varchar(2) null,'
      #9#9'cep varchar(10) null,'
      #9#9'telefone varchar(14) null,  '
      #9#9'email varchar(100) null,'
      #9#9'dataNascimento datetime null'
      #9#9'PRIMARY KEY (clienteId),'
      #9')'
      'END')
    Params = <>
    Left = 248
    Top = 24
  end
  object QryScriptProdutos: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'produtos'#39') IS NULL '
      'BEGIN'
      #9'CREATE TABLE produtos('
      #9#9'produtoId int IDENTITY(1,1) NOT NULL,'
      #9#9'nome varchar(60) NULL,'
      #9#9'descricao varchar(255) null,'
      #9#9'valor decimal(18,5) default 0.00000 null,'
      #9#9'quantidade decimal(18,5) default 0.00000 null,'
      #9#9'categoriaId int null,'
      #9#9'PRIMARY KEY (produtoId),'
      #9#9'CONSTRAINT FK_ProdutosCategorias '
      #9#9'FOREIGN KEY (categoriaId) references categorias(categoriaId)'
      #9')'
      'END')
    Params = <>
    Left = 136
    Top = 88
  end
  object QryScriptVendas: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'vendas'#39') IS NULL '
      'BEGIN'
      #9'Create table vendas ('
      #9'  vendaId int identity(1,1) not null,'
      #9'  clienteId int not null,'
      #9'  dataVenda datetime default getdate(),'
      #9'  totalVenda decimal(18,5) default 0.00000,'
      ''
      ''
      #9'  PRIMARY KEY (vendaId),'
      #9'  CONSTRAINT FK_VendasClientes FOREIGN KEY (clienteId)'
      #9#9'REFERENCES clientes(clienteId)'
      #9')'
      'END')
    Params = <>
    Left = 248
    Top = 88
  end
  object QryScriptItensVendas: TZQuery
    Connection = ConexaoDB
    SQL.Strings = (
      'IF OBJECT_ID ('#39'vendasItens'#39') IS NULL '
      'BEGIN'
      #9'Create table vendasItens ('
      #9'  vendaId int not null,'
      #9'  produtoId int not null,'
      #9'  valorUnitario decimal (18,5) default 0.00000,'
      #9'  quantidade decimal (18,5) default 0.00000,'
      #9'  totalProduto decimal (18,5) default 0.00000,'
      #9'  PRIMARY KEY (vendaId,produtoId),'
      #9'  CONSTRAINT FK_VendasItensProdutos FOREIGN KEY (produtoId)'
      #9#9'REFERENCES produtos(produtoId)'
      #9')'
      'END')
    Params = <>
    Left = 352
    Top = 80
  end
end
