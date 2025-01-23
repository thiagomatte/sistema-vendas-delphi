unit uRelProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport, RLFilters, RLPDFFilter,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, RLXLSFilter,
  RLXLSXFilter;

type
  TfrmRelProVenda = class(TForm)
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    RLLabel1: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    QryVendas: TZQuery;
    dtsVendas: TDataSource;
    Rodape: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLDraw2: TRLDraw;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RegistrosDB: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    dtsVendasItens: TDataSource;
    QryVendaItens: TZQuery;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel4: TRLLabel;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    QryVendasvendaId: TZIntegerField;
    QryVendasclienteId: TZIntegerField;
    QryVendasnome: TZUnicodeStringField;
    QryVendasdataVenda: TZDateTimeField;
    QryVendastotalVenda: TZFMTBCDField;
    QryVendaItensvendaId: TZIntegerField;
    QryVendaItensprodutoId: TZIntegerField;
    QryVendaItensNome: TZUnicodeStringField;
    QryVendaItensquantidade: TZFMTBCDField;
    QryVendaItensvalorUnitario: TZFMTBCDField;
    QryVendaItenstotalProduto: TZFMTBCDField;
    RLDraw3: TRLDraw;
    RLDraw1: TRLDraw;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProVenda: TfrmRelProVenda;

implementation

{$R *.dfm}

uses uDtmPrincipal;

procedure TfrmRelProVenda.FormDestroy(Sender: TObject);
begin
  QryVendas.Close;
  QryVendaItens.Close;
end;


end.
