unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDtmPrincipal, Enter;

type
  TfrmMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    CADASTRO1: TMenuItem;
    Cliente1: TMenuItem;
    N1: TMenuItem;
    PRODUTO1: TMenuItem;
    CATEGORIAS1: TMenuItem;
    N2: TMenuItem;
    FECHAR1: TMenuItem;
    MOVIMENTAO1: TMenuItem;
    VENDA1: TMenuItem;
    RELATRIOS1: TMenuItem;
    CLIENTE2: TMenuItem;
    PRODUTO2: TMenuItem;
    N3: TMenuItem;
    VENDAPORDIA1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAR1Click(Sender: TObject);
    procedure CATEGORIAS1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter:TMREnter;
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias, uCadCliente, uCadProdutos;


procedure TfrmMenuPrincipal.CATEGORIAS1Click(Sender: TObject);
begin
  frmCadCategoria:=TfrmCadCategoria.Create(Self);
  frmCadCategoria.ShowModal;
  frmCadCategoria.Release;
end;

procedure TfrmMenuPrincipal.Cliente1Click(Sender: TObject);
begin
  frmCadCliente:=TfrmCadCliente.Create(Self);
  frmCadCliente.ShowModal;
  frmCadCliente.Release;
end;

procedure TfrmMenuPrincipal.FECHAR1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(DtmPrincipal) then
     FreeAndNil(DtmPrincipal);
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin

  DtmPrincipal:=TDtmPrincipal.Create(self); // Instancia o DataModule
  with DtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=False; // Habilita o Cursor em cada transa��o no banco de dados
    // LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll'; ----- Seta a DLL para conexao do SQL
    Protocol:='ado';  //Protocolo do banco de dados
    HostName:='.\SQLEXPRESS'; //Instancia do SQLServer
    Port:=1433;          //Porta do SQL Server
    // User := 'sa'; ----- Usuario do Banco de Dados
    // Password:='mudar@123'; ---- Senha do Usu�rio do banco
    Database:='vendas';  //Nome do Banco de Dados
    Connected:=True;  //Faz a Conex�o do Banco
  end;

  TeclaEnter:=TMREnter.Create(Self);
  TeclaEnter.FocusEnabled:=True;
  TeclaEnter.FocusColor:=clInfoBk;

end;

procedure TfrmMenuPrincipal.PRODUTO1Click(Sender: TObject);
begin
  frmCadProduto:=TfrmCadProduto.Create(Self);
  frmCadProduto.ShowModal;
  frmCadProduto.Release;
end;

end.
