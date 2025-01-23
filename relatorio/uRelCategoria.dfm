object frmRelCategoria: TfrmRelCategoria
  Left = 0
  Top = 0
  Caption = 'frmRelCategoria'
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
    DataSource = dtsCategorias
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
        Width = 245
        Height = 24
        Caption = 'Listagem de Categorias'
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
        Left = 0
        Top = 2
        Width = 67
        Height = 16
        DataField = 'categoriaId'
        DataSource = dtsCategorias
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 78
        Top = 2
        Width = 60
        Height = 16
        DataField = 'descricao'
        DataSource = dtsCategorias
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
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o'
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
    end
  end
  object QryCategorias: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    SQL.Strings = (
      
        'SELECT categoriaId, descricao from categorias ORDER BY descricao' +
        ';')
    Params = <>
    Left = 872
    Top = 112
    object QryCategoriascategoriaId: TZIntegerField
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object QryCategoriasdescricao: TZUnicodeStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
  object dtsCategorias: TDataSource
    DataSet = QryCategorias
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
