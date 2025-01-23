object frmMenuPrincipal: TfrmMenuPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu Principal'
  ClientHeight = 679
  ClientWidth = 1191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 608
    Width = 1191
    Height = 71
    Align = alBottom
    Caption = 'Zandon'#225' Solu'#231#245'es em Software'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -53
    Font.Name = 'Yu Gothic UI'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 761
  end
  object Label2: TLabel
    Left = 0
    Top = 568
    Width = 1191
    Height = 40
    Align = alBottom
    Caption = 'Power By'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 131
  end
  object MainMenu1: TMainMenu
    Left = 120
    Top = 24
    object CADASTRO1: TMenuItem
      Caption = '&CADASTRO'
      object Cliente1: TMenuItem
        Caption = '&CLIENTE'
        OnClick = Cliente1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object CATEGORIAS1: TMenuItem
        Caption = 'CATE&GORIA'
        OnClick = CATEGORIAS1Click
      end
      object PRODUTO1: TMenuItem
        Caption = '&PRODUTO'
        OnClick = PRODUTO1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FECHAR1: TMenuItem
        Caption = '&FECHAR'
        OnClick = FECHAR1Click
      end
    end
    object MOVIMENTAO1: TMenuItem
      Caption = '&MOVIMENTA'#199#195'O'
      object VENDA1: TMenuItem
        Caption = '&VENDA'
        OnClick = VENDA1Click
      end
    end
    object RELATRIOS1: TMenuItem
      Caption = '&RELAT'#211'RIO'
      object CATEGORIA1: TMenuItem
        Caption = 'CATEGORIA'
        OnClick = CATEGORIA1Click
      end
      object CLIENTE2: TMenuItem
        Caption = '&CLIENTE'
        OnClick = CLIENTE2Click
      end
      object FICHADECLIENTE1: TMenuItem
        Caption = 'FICHA DE CLIENTE'
        OnClick = FICHADECLIENTE1Click
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object PRODUTO2: TMenuItem
        Caption = '&PRODUTO'
        OnClick = PRODUTO2Click
      end
      object PRODUTOSPORCATEGORIA1: TMenuItem
        Caption = 'PRODUTOS POR CATEGORIA'
        OnClick = PRODUTOSPORCATEGORIA1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object VENDAPORDIA1: TMenuItem
        Caption = '&VENDA POR DATA'
        OnClick = VENDAPORDIA1Click
      end
    end
  end
end
