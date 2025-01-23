object frmRelCadProduto: TfrmRelCadProduto
  Left = 0
  Top = 0
  Caption = 'frmRelCadProduto'
  ClientHeight = 845
  ClientWidth = 939
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Relatorio: TRLReport
    Left = 0
    Top = 8
    Width = 794
    Height = 1123
    Color = clBtnHighlight
    DataSource = dtsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Transparent = False
    object Cabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      Transparent = False
      object RLLabel1: TRLLabel
        Left = 3
        Top = 28
        Width = 229
        Height = 24
        Caption = 'Listagem de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
      object RLDraw1: TRLDraw
        Left = 0
        Top = 50
        Width = 718
        Height = 17
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
        Transparent = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 156
      Width = 718
      Height = 40
      BandType = btFooter
      Transparent = False
      object Label1: TLabel
        Left = 668
        Top = 16
        Width = 4
        Height = 16
        Caption = '/'
      end
      object RLDraw2: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 17
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
        Transparent = False
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 0
        Top = 13
        Width = 60
        Height = 16
        Info = itFullDate
        Text = ''
        Transparent = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 643
        Top = 16
        Width = 22
        Height = 16
        Info = itPageNumber
        Text = ''
        Transparent = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 677
        Top = 16
        Width = 33
        Height = 16
        Info = itLastPageNumber
        Text = ''
        Transparent = False
      end
      object RLLabel2: TRLLabel
        Left = 582
        Top = 16
        Width = 49
        Height = 16
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 131
      Width = 718
      Height = 25
      Transparent = False
      object RLDBText1: TRLDBText
        Left = 16
        Top = 2
        Width = 25
        Height = 16
        DataField = 'produtoId'
        DataSource = dtsProdutos
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 78
        Top = 2
        Width = 38
        Height = 16
        DataField = 'Nome'
        DataSource = dtsProdutos
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 430
        Top = 2
        Width = 43
        Height = 16
        DataField = 'Quantidade'
        DataSource = dtsProdutos
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 583
        Top = 2
        Width = 34
        Height = 16
        DataField = 'Valor'
        DataSource = dtsProdutos
        Text = ''
        Transparent = False
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 26
      BandType = btColumnHeader
      Transparent = False
      object RLPanel1: TRLPanel
        Left = 0
        Top = 0
        Width = 718
        Height = 26
        Align = faClient
        Color = clInfoBk
        ParentColor = False
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 78
        Top = 4
        Width = 115
        Height = 16
        Caption = 'Nome do Produto'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel3: TRLLabel
        Left = 0
        Top = 4
        Width = 49
        Height = 16
        Caption = 'C'#243'digo'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 374
        Top = 4
        Width = 152
        Height = 16
        Caption = 'Quantidade do Estoque'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
      object RLLabel6: TRLLabel
        Left = 583
        Top = 4
        Width = 38
        Height = 16
        Alignment = taRightJustify
        Caption = 'Valor'
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
      end
    end
  end
  object QryProdutos: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'SELECT produtos.produtoId,'
      '       produtos.Nome,'
      '       produtos.Valor,'
      '       produtos.Quantidade'
      'FROM produtos'
      'ORDER BY nome;')
    Params = <>
    Left = 872
    Top = 112
    object QryProdutosprodutoId: TZIntegerField
      FieldName = 'produtoId'
      ReadOnly = True
    end
    object QryProdutosNome: TZUnicodeStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryProdutosValor: TZFMTBCDField
      FieldName = 'Valor'
      DisplayFormat = '#0.00'
      Precision = 18
      Size = 5
    end
    object QryProdutosQuantidade: TZFMTBCDField
      FieldName = 'Quantidade'
      Precision = 18
      Size = 5
    end
  end
  object dtsProdutos: TDataSource
    DataSet = QryProdutos
    Left = 872
    Top = 64
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 872
    Top = 168
  end
  object RLXLSXFilter1: TRLXLSXFilter
    DisplayName = 'Planilha Excel'
    Left = 872
    Top = 224
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 872
    Top = 280
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 872
    Top = 336
  end
end
