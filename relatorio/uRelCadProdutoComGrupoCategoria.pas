unit uRelCadProdutoComGrupoCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmPrincipal, RLReport, RLFilters, RLPDFFilter,
  Vcl.StdCtrls, RLXLSXFilter, RLHTMLFilter, RLXLSFilter;

type
  TfrmRelCadProdutoComGrupoCategoria = class(TForm)
    QryProdutos: TZQuery;
    dtsProdutos: TDataSource;
    Relatorio: TRLReport;
    RLPDFFilter1: TRLPDFFilter;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLDraw1: TRLDraw;
    RLBand1: TRLBand;
    RLDraw2: TRLDraw;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    Label1: TLabel;
    RLLabel2: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    BandaDoGrupo: TRLGroup;
    RLBand4: TRLBand;
    RLBand3: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    QryProdutosprodutoId: TZIntegerField;
    QryProdutosNome: TZUnicodeStringField;
    QryProdutosDescricao: TZUnicodeStringField;
    QryProdutosValor: TZFMTBCDField;
    QryProdutosQuantidade: TZFMTBCDField;
    QryProdutoscategoriaId: TZIntegerField;
    QryProdutosDescricaoCategoria: TZUnicodeStringField;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand5: TRLBand;
    RLDraw3: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBResult2: TRLDBResult;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProdutoComGrupoCategoria: TfrmRelCadProdutoComGrupoCategoria;

implementation

{$R *.dfm}

procedure TfrmRelCadProdutoComGrupoCategoria.FormCreate(Sender: TObject);
begin
  QryProdutos.Open;
end;

procedure TfrmRelCadProdutoComGrupoCategoria.FormDestroy(Sender: TObject);
begin
  QryProdutos.Close;
end;

end.
