unit uDtmPrincipal;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection, Vcl.forms,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDtmPrincipal = class(TDataModule)
    ConexaoDB: TZConnection;
    QryScriptCategorias: TZQuery;
    QryScriptClientes: TZQuery;
    QryScriptProdutos: TZQuery;
    QryScriptVendas: TZQuery;
    QryScriptItensVendas: TZQuery;


  private
    procedure ConexaoDBAfterConnect(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DtmPrincipal: TDtmPrincipal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TDtmPrincipal.ConexaoDBAfterConnect(Sender: TObject);
begin

end;

end.
