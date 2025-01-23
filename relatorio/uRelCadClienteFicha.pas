unit uRelCadClienteFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmPrincipal, RLReport, RLFilters, RLPDFFilter,
  Vcl.StdCtrls, RLXLSXFilter, RLHTMLFilter, RLXLSFilter, Vcl.Imaging.pngimage;

type
  TfrmRelCadClienteFicha = class(TForm)
    QryCliente: TZQuery;
    dtsCliente: TDataSource;
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
    RLXLSXFilter1: TRLXLSXFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    QryClienteclienteId: TZIntegerField;
    QryClienteNome: TZUnicodeStringField;
    QryClienteemail: TZUnicodeStringField;
    QryClientetelefone: TZUnicodeStringField;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    QryClientecep: TZUnicodeStringField;
    QryClienteendereco: TZUnicodeStringField;
    QryClientebairro: TZUnicodeStringField;
    QryClientecidade: TZUnicodeStringField;
    QryClienteestado: TZUnicodeStringField;
    QryClientedataNascimento: TZDateTimeField;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw3: TRLDraw;
    RLImage1: TRLImage;
    RLAngleLabel1: TRLAngleLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadClienteFicha: TfrmRelCadClienteFicha;

implementation

{$R *.dfm}

procedure TfrmRelCadClienteFicha.FormCreate(Sender: TObject);
begin
  QryCliente.Open;
end;

procedure TfrmRelCadClienteFicha.FormDestroy(Sender: TObject);
begin
  QryCliente.Close;
end;

end.
