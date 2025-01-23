unit uRelCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmPrincipal, RLReport, RLFilters, RLPDFFilter,
  Vcl.StdCtrls, RLXLSXFilter, RLHTMLFilter, RLXLSFilter;

type
  TfrmRelCategoria = class(TForm)
    QryCategorias: TZQuery;
    dtsCategorias: TDataSource;
    QryCategoriascategoriaId: TZIntegerField;
    QryCategoriasdescricao: TZUnicodeStringField;
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
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLBand3: TRLBand;
    RLPanel1: TRLPanel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCategoria: TfrmRelCategoria;

implementation

{$R *.dfm}

procedure TfrmRelCategoria.FormCreate(Sender: TObject);
begin
  QryCategorias.Open;
end;

procedure TfrmRelCategoria.FormDestroy(Sender: TObject);
begin
  QryCategorias.Close;
end;

end.
