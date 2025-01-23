unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmPrincipal, RLReport, RLFilters, RLPDFFilter,
  Vcl.StdCtrls, RLXLSXFilter, RLHTMLFilter, RLXLSFilter;

type
  TfrmRelVendaPorData = class(TForm)
    QryVenda: TZQuery;
    dtsVenda: TDataSource;
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
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand5: TRLBand;
    RLDraw3: TRLDraw;
    RLDBResult1: TRLDBResult;
    RLLabel6: TRLLabel;
    QryVendavendaId: TZIntegerField;
    QryVendaclienteId: TZIntegerField;
    QryVendanome: TZUnicodeStringField;
    QryVendadataVenda: TZDateTimeField;
    QryVendatotalVenda: TZFMTBCDField;
    RLBand6: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel4: TRLLabel;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation

{$R *.dfm}

procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
  QryVenda.Close;
end;

end.
