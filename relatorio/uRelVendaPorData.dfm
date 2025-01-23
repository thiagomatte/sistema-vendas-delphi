object frmRelVendaPorData: TfrmRelVendaPorData
  Left = 0
  Top = 0
  Caption = 'frmRelProVendaPorData'
  ClientHeight = 845
  ClientWidth = 939
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnDestroy = FormDestroy
  TextHeight = 15
  object Relatorio: TRLReport
    Left = -8
    Top = 8
    Width = 794
    Height = 1123
    Color = clBtnHighlight
    DataSource = dtsVenda
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
        Width = 291
        Height = 24
        Caption = 'Listagem de Venda por Data'
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
      Top = 264
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
    object BandaDoGrupo: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 120
      DataFields = 'dataVenda'
      Transparent = False
      object RLBand4: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLLabel7: TRLLabel
          Left = 9
          Top = 6
          Width = 47
          Height = 18
          Caption = 'DATA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Black'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = False
        end
        object RLDBText5: TRLDBText
          Left = 78
          Top = 8
          Width = 66
          Height = 16
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 26
        BandType = btColumnHeader
        Color = clInfoBk
        ParentColor = False
        Transparent = False
        object RLLabel3: TRLLabel
          Left = 78
          Top = 5
          Width = 110
          Height = 16
          Caption = 'Nome do Cliente'
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
          Left = 603
          Top = 6
          Width = 103
          Height = 16
          Caption = 'Valor da Venda'
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
        object RLLabel8: TRLLabel
          Left = 9
          Top = 5
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
      object RLBand2: TRLBand
        Left = 0
        Top = 59
        Width = 718
        Height = 25
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 9
          Top = 2
          Width = 52
          Height = 16
          DataField = 'clienteId'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
        object RLDBText2: TRLDBText
          Left = 78
          Top = 2
          Width = 36
          Height = 16
          DataField = 'nome'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
        object RLDBText4: TRLDBText
          Left = 640
          Top = 2
          Width = 66
          Height = 16
          DataField = 'totalVenda'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 84
        Width = 718
        Height = 37
        BandType = btSummary
        Transparent = False
        object RLDraw3: TRLDraw
          Left = 376
          Top = 4
          Width = 342
          Height = 9
          DrawKind = dkLine
          Transparent = False
        end
        object RLDBResult1: TRLDBResult
          Left = 610
          Top = 13
          Width = 105
          Height = 16
          Alignment = taRightJustify
          DataField = 'totalVenda'
          DataSource = dtsVenda
          DisplayMask = '#0.00'
          Info = riSum
          Text = ''
          Transparent = False
        end
        object RLLabel6: TRLLabel
          Left = 525
          Top = 14
          Width = 98
          Height = 16
          Caption = 'Total por Data:'
          Color = clBtnHighlight
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
    object RLBand6: TRLBand
      Left = 38
      Top = 225
      Width = 718
      Height = 39
      BandType = btSummary
      Transparent = False
      object RLDBResult2: TRLDBResult
        Left = 610
        Top = 13
        Width = 105
        Height = 16
        Alignment = taRightJustify
        DataField = 'totalVenda'
        DataSource = dtsVenda
        DisplayMask = '#0.00'
        Info = riSum
        Text = ''
        Transparent = False
      end
      object RLLabel4: TRLLabel
        Left = 525
        Top = 13
        Width = 79
        Height = 16
        Caption = 'Total Geral:'
        Color = clBtnHighlight
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
  object QryVenda: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'SELECT vendas.vendaId,'
      '       vendas.clienteId,'
      '       clientes.nome,'
      '       vendas.dataVenda,'
      '       vendas.totalVenda'
      'FROM vendas'
      '  INNER JOIN clientes ON clientes.clienteId = vendas.clienteId'
      'WHERE vendas.dataVenda BETWEEN :DataInicio AND :DataFim'
      'ORDER BY vendas.dataVenda, clienteId;')
    Params = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        SQLType = stDate
        Value = '01/10/2018'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        SQLType = stDate
        Value = 43403d
      end>
    Left = 872
    Top = 112
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataInicio'
        ParamType = ptInput
        SQLType = stDate
        Value = '01/10/2018'
      end
      item
        DataType = ftDate
        Name = 'DataFim'
        ParamType = ptInput
        SQLType = stDate
        Value = 43403d
      end>
    object QryVendavendaId: TZIntegerField
      FieldName = 'vendaId'
      ReadOnly = True
    end
    object QryVendaclienteId: TZIntegerField
      FieldName = 'clienteId'
      Required = True
    end
    object QryVendanome: TZUnicodeStringField
      FieldName = 'nome'
      Size = 60
    end
    object QryVendadataVenda: TZDateTimeField
      FieldName = 'dataVenda'
    end
    object QryVendatotalVenda: TZFMTBCDField
      FieldName = 'totalVenda'
      Precision = 18
      Size = 5
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVenda
    Left = 872
    Top = 56
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 872
    Top = 168
  end
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 872
    Top = 224
  end
  object RLHTMLFilter1: TRLHTMLFilter
    DocumentStyle = dsCSS2
    DisplayName = 'P'#225'gina da Web'
    Left = 872
    Top = 280
  end
end
