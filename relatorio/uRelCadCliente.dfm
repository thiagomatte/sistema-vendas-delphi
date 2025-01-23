object frmRelCadCliente: TfrmRelCadCliente
  Left = 0
  Top = 0
  Caption = 'frmRelCadCliente'
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
    DataSource = dtsCliente
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
        Width = 205
        Height = 24
        Caption = 'Listagem de Cliente'
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
        Left = 15
        Top = 0
        Width = 20
        Height = 16
        DataField = 'clienteId'
        DataSource = dtsCliente
        Text = ''
        Transparent = False
      end
      object RLDBText2: TRLDBText
        Left = 71
        Top = 2
        Width = 38
        Height = 16
        DataField = 'Nome'
        DataSource = dtsCliente
        Text = ''
        Transparent = False
      end
      object RLDBText3: TRLDBText
        Left = 254
        Top = 3
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = dtsCliente
        Text = ''
        Transparent = False
      end
      object RLDBText4: TRLDBText
        Left = 582
        Top = 3
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = dtsCliente
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
        Left = 71
        Top = 4
        Width = 41
        Height = 16
        Caption = 'Nome'
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
        Left = 254
        Top = 4
        Width = 40
        Height = 16
        Caption = 'Email'
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
        Left = 582
        Top = 4
        Width = 60
        Height = 16
        Caption = 'Telefone'
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
  object QryCliente: TZQuery
    Connection = DtmPrincipal.ConexaoDB
    Active = True
    SQL.Strings = (
      'SELECT clientes.clienteId,'
      '       clientes.Nome,'
      '       Clientes.email,'
      '       clientes.telefone'
      'from clientes'
      'ORDER BY clientes.Nome;')
    Params = <>
    Left = 872
    Top = 112
    object QryClienteclienteId: TZIntegerField
      FieldName = 'clienteId'
      ReadOnly = True
    end
    object QryClienteNome: TZUnicodeStringField
      FieldName = 'Nome'
      Size = 60
    end
    object QryClienteemail: TZUnicodeStringField
      FieldName = 'email'
      Size = 100
    end
    object QryClientetelefone: TZUnicodeStringField
      FieldName = 'telefone'
      Size = 14
    end
  end
  object dtsCliente: TDataSource
    DataSet = QryCliente
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
