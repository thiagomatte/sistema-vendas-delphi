inherited frmProVenda: TfrmProVenda
  Caption = 'Vendas'
  StyleElements = [seFont, seClient, seBorder]
  TextHeight = 13
  inherited pnlRodaPe: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited pnlCentro: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited pgcPrincipal: TPageControl
      inherited tabListagem: TTabSheet
        inherited pnlListagemTopo: TPanel
          StyleElements = [seFont, seClient, seBorder]
          inherited lblIndice: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited mskPesquisa: TMaskEdit
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited pnlListagemCentro: TPanel
          StyleElements = [seFont, seClient, seBorder]
        end
      end
    end
  end
  inherited QryListagem: TZQuery
    SQL.Strings = (
      'SELECT vendas.vendaId'
      '             ,vendas.clienteId'
      '             ,clientes.nome'
      '             ,vendas.dataVenda'
      '             ,vendas.totalVenda'
      'FROM vendas'
      'INNER JOIN clientes ON clientes.clienteId = vendas.clientesId;')
  end
end
