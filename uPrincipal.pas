unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Enter, uDtmPrincipal, ufrmAtualizaDB,
  Vcl.StdCtrls, uRelCategoria, uRelCadCliente, uRelCadClienteFicha;

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
    Label1: TLabel;
    Label2: TLabel;
    CATEGORIA1: TMenuItem;
    FICHADECLIENTE1: TMenuItem;
    PRODUTOSPORCATEGORIA1: TMenuItem;
    N4: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FECHAR1Click(Sender: TObject);
    procedure CATEGORIAS1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure PRODUTO1Click(Sender: TObject);
    procedure VENDA1Click(Sender: TObject);
    procedure CATEGORIA1Click(Sender: TObject);
    procedure CLIENTE2Click(Sender: TObject);
    procedure FICHADECLIENTE1Click(Sender: TObject);
    procedure PRODUTO2Click(Sender: TObject);
    procedure PRODUTOSPORCATEGORIA1Click(Sender: TObject);
    procedure VENDAPORDIA1Click(Sender: TObject);
  private
    { Private declarations }
    TeclaEnter:TMREnter;
    procedure AtualizacaoBancoDados(aForm: TfrmAtualizaDB);
  public
    { Public declarations }
  end;

var
  frmMenuPrincipal: TfrmMenuPrincipal;

implementation

{$R *.dfm}

uses uCadCategorias, uCadCliente, uCadProdutos, uProVenda, uRelCadProduto,
  uRelCadProdutoComGrupoCategoria, uSelecionarData, uRelVendaPorData,
  uRelProVenda;


procedure TfrmMenuPrincipal.CATEGORIA1Click(Sender: TObject);
begin
  frmRelCategoria:=TfrmRelCategoria.Create(Self);
  frmRelCategoria.Relatorio.PreviewModal;
  frmRelCategoria.Release;
end;

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

procedure TfrmMenuPrincipal.CLIENTE2Click(Sender: TObject);
begin
  frmRelCadCliente:=TfrmRelCadCliente.Create(Self);
  frmRelCadCliente.Relatorio.PreviewModal;
  frmRelCadCliente.Release;
end;

procedure TfrmMenuPrincipal.FECHAR1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmMenuPrincipal.FICHADECLIENTE1Click(Sender: TObject);
begin
  frmRelCadClienteFicha:=TfrmRelCadClienteFicha.Create(Self);
  frmRelCadClienteFicha.Relatorio.PreviewModal;
  frmRelCadClienteFicha.Release;
end;

procedure TfrmMenuPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Assigned(DtmPrincipal) then
     FreeAndNil(DtmPrincipal);
end;

procedure TfrmMenuPrincipal.FormCreate(Sender: TObject);
begin
  frmAtualizaDB:=TfrmAtualizaDB.Create(Self);
  frmAtualizaDB.Show;
  frmAtualizaDB.Refresh;

  DtmPrincipal:=TDtmPrincipal.Create(self); // Instancia o DataModule
  with DtmPrincipal.ConexaoDB do begin
    SQLHourGlass:=False; // Habilita o Cursor em cada transação no banco de dados
    // LibraryLocation:=ExtractFilePath(Application.ExeName)+'ntwdblib.dll'; ----- Seta a DLL para conexao do SQL
    Protocol:='ado';  //Protocolo do banco de dados
    HostName:='.\SQLEXPRESS'; //Instancia do SQLServer
    Port:=1433;          //Porta do SQL Server
    // User := 'sa'; ----- Usuario do Banco de Dados
    // Password:='mudar@123'; ---- Senha do Usuário do banco
    Database:='vendas';  //Nome do Banco de Dados
    Connected:=True;  //Faz a Conexão do Banco
  end;

  AtualizacaoBancoDados(frmAtualizaDb);
  frmAtualizaDB.Free;
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

procedure TfrmMenuPrincipal.PRODUTO2Click(Sender: TObject);
begin
  frmRelCadProduto:=TfrmRelCadProduto.Create(Self);
  frmRelCadProduto.Relatorio.PreviewModal;
  frmRelCadProduto.Release;
end;

procedure TfrmMenuPrincipal.PRODUTOSPORCATEGORIA1Click(Sender: TObject);
begin
  frmRelCadProdutoComGrupoCategoria:=TfrmRelCadProdutoComGrupoCategoria.Create(Self);
  frmRelCadProdutoComGrupoCategoria.Relatorio.PreviewModal;
  frmRelCadProdutoComGrupoCategoria.Release;
end;

procedure TfrmMenuPrincipal.VENDA1Click(Sender: TObject);
begin
  frmProVenda:=TfrmProVenda.Create(Self);
  frmProVenda.ShowModal;
  frmProVenda.Release;
end;

procedure TfrmMenuPrincipal.VENDAPORDIA1Click(Sender: TObject);
begin
  Try
    frmSelecionarData:=TfrmSelecionarData.Create(Self);
    frmSelecionarData.ShowModal;

    frmRelVendaPorData:=TfrmRelVendaPorData.Create(self);
    frmRelVendaPorData.QryVenda.Close;
    frmRelVendaPorData.QryVenda.ParamByName('DataInicio').AsDate:=frmSelecionarData.EdtDataInicio.Date;
    frmRelVendaPorData.QryVenda.ParamByName('DataFim').AsDate:=frmSelecionarData.EdtDataFinal.Date;
    frmRelVendaPorData.QryVenda.Open;
    frmRelVendaPorData.Relatorio.PreviewModal;

  Finally
    frmSelecionarData.Release;
  End;
end;

procedure TfrmMenuPrincipal.AtualizacaoBancoDados(aForm:TfrmAtualizaDB);
begin
  aForm.chkConexao.Checked := true;
  aForm.Refresh;

  DtmPrincipal.QryScriptCategorias.ExecSQL;
  aForm.chkCategoria.Checked := true;
  aForm.Refresh;
  Sleep(200);

  DtmPrincipal.QryScriptProdutos.ExecSQL;
  aForm.chkProduto.Checked := true;
  aForm.Refresh;
  Sleep(200);

  DtmPrincipal.QryScriptClientes.ExecSQL;
  aForm.chkCliente.Checked := true;
  aForm.Refresh;
  Sleep(200);

  DtmPrincipal.QryScriptVendas.ExecSQL;
  aForm.chkVendas.Checked := true;
  aForm.Refresh;
  Sleep(200);

  DtmPrincipal.QryScriptItensVendas.ExecSQL;
  aForm.chkItensVendas.Checked := true;
  aForm.Refresh;
  Sleep(200);
end;

end.
