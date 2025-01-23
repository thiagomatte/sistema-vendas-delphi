unit uDTMVenda;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDtmPrincipal, Datasnap.DBClient;

type
  TdtmVenda = class(TDataModule)
    QryCliente: TZQuery;
    QryClienteclienteId: TZIntegerField;
    QryClientenome: TZUnicodeStringField;
    QryProdutos: TZQuery;
    QryProdutosprodutoId: TZIntegerField;
    QryProdutosnome: TZUnicodeStringField;
    QryProdutosvalor: TZFMTBCDField;
    QryProdutosquantidade: TZFMTBCDField;
    dtsCliente: TDataSource;
    dtItensVenda: TDataSource;
    dtsProdutos: TDataSource;
    cdsItensVenda: TClientDataSet;
    cdsItensVendaprodutoId: TIntegerField;
    cdsItensVendaNomeProduto: TStringField;
    cdsItensVendaquantidade: TFloatField;
    cdsItensVendavalorUnitario: TFloatField;
    cdsItensVendavalorTotalProduto: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmVenda: TdtmVenda;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}


{$R *.dfm}

procedure TdtmVenda.DataModuleCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;
  QryCliente.Open;
  QryProdutos.Open;
end;

procedure TdtmVenda.DataModuleDestroy(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;
  QryCliente.Open;
  QryProdutos.Open;
end;

end.
