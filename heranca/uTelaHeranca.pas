unit uTelaHeranca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, uDtmPrincipal,
  uEnum, RxToolEdit, RxCurrEdit;

type
  TfrmTelaHeranca = class(TForm)
    pnlRodaPe: TPanel;
    pnlCentro: TPanel;
    pgcPrincipal: TPageControl;
    tabListagem: TTabSheet;
    tabManutencao: TTabSheet;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    pnlListagemTopo: TPanel;
    pnlListagemCentro: TPanel;
    grdListagem: TDBGrid;
    mskPesquisa: TMaskEdit;
    btnPesquisa: TBitBtn;
    btnNavigator: TDBNavigator;
    QryListagem: TZQuery;
    DtsListagem: TDataSource;
    btnCancelar: TBitBtn;
    lblIndice: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grdListagemTitleClick(Column: TColumn);
    procedure mskPesquisaChange(Sender: TObject);
    procedure grdListagemDblClick(Sender: TObject);
    procedure grdListagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar,
      btnApagar: TBitBtn; btnNavigator: TDBNavigator;
      pgcPrincipal: TPageControl; Flag: Boolean);
    procedure ControlaIndiceTab(pgcPrincipal: TPageControl; i: Integer);
    function RetornarCampoTraduzido(Campo: string): string;
    procedure ExibirLabelIndice(Campo: string; aLabel: TLabel);
    function ExisteCampoObrigatorio: Boolean;
    procedure DesabilitarEditPK;
    procedure LimparEdits;
    { Private declarations }
  public
    { Public declarations }
    EstadoDoCadastro:TEstadoDoCadastro;
    IndiceAtual:string;
    procedure BloqueiaCTRL_DEL_DBGrid(var Key: Word; Shift: TShiftState);
    function Gravar(EstadoDoCadastro:TEstadoDoCadastro):boolean; virtual;
    function Apagar:Boolean; virtual;
  end;

var
  frmTelaHeranca: TfrmTelaHeranca;

implementation

{$R *.dfm}

{$region 'OBSERVA��ES'}
//TAG: 1 - Chave Primaria
//TAG: 2 - Campos Obrigat�rios
{$endregion}

{$region 'Function/Procedure DE CONTROLE'}
procedure TfrmTelaHeranca.ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar,
                          btnApagar:TBitBtn; btnNavigator:TDBNavigator;
                          pgcPrincipal:TPageControl; Flag:Boolean);
begin
  btnNovo.Enabled      :=Flag;
  btnApagar.Enabled    :=Flag;
  btnAlterar.Enabled   :=Flag;
  btnNavigator.Enabled :=Flag;
  pgcPrincipal.Pages[0].TabVisible:=Flag;

  btnCancelar.Enabled  :=not(Flag);
  btnGravar.Enabled    :=not(Flag);
end;

procedure TfrmTelaHeranca.ControlaIndiceTab(pgcPrincipal:TPageControl; i: Integer);
begin
  if (pgcPrincipal.Pages[i].TabVisible) then
      pgcPrincipal.TabIndex:=0;
end;

function TfrmTelaHeranca.RetornarCampoTraduzido(Campo: string):string;
var i:Integer;
begin
  for I := 0 to QryListagem.FieldCount-1 do begin
    if LowerCase(QryListagem.Fields[i].FieldName) = LowerCase(Campo) then begin
       Result:=QryListagem.Fields[i].DisplayLabel;
       Break;
    end;
  end;
end;

function TfrmTelaHeranca.ExisteCampoObrigatorio:Boolean;
var i:Integer;
begin
  Result:=False;
  for I := 0 to ComponentCount -1 do begin
    if (Components[i] is TLabeledEdit) then begin
       if (TLabeledEdit(Components[i]).Tag = 2) and (TLabeledEdit(Components[i]).Text = EmptyStr) then begin
          MessageDlg(TLabeledEdit(Components[i]).EditLabel.Caption + ' � um campo obrigat�rio' ,mtInformation,[mbOK],0);
          TLabeledEdit(Components[i]).SetFocus;
          Result:=True;
          Break;
       end;
    end;
  end;
end;

Procedure TfrmTelaHeranca.DesabilitarEditPK;
var i:Integer;
begin
  for I := 0 to ComponentCount -1 do begin
    if (Components[i] is TLabeledEdit) then begin
       if (TLabeledEdit(Components[i]).Tag = 1) then begin
          TLabeledEdit(Components[i]).Enabled:=false;
          Break;
       end;
    end;
  end;
end;

procedure TfrmTelaHeranca.LimparEdits;
Var i:Integer;
begin
  for i := 0 to ComponentCount -1 do begin
    if (Components[i] is TLabeledEdit) then
      TLabeledEdit(Components[i]).Text:=EmptyStr
    else if (Components[i] is TEdit) then
      TEdit(Components[i]).Text:=''
    else if (Components[i] is TDBLookupComboBox) then
      TDBLookupComboBox(Components[i]).KeyValue:=Null
    else if (Components[i] is TMemo) then
      TMemo(Components[i]).Text:=''
    else if (Components[i] is TCurrencyEdit) then
      TCurrencyEdit(Components[i]).Text:=''
    else if (Components[i] is TDateEdit) then
      TDateEdit(Components[i]).Date:=0
    else if (Components[i] is TMaskEdit) then
      TMaskEdit(Components[i]).Text:='';

  end;
end;

{$endregion}

{$region 'M�todos Virtual'}
function TfrmTelaHeranca.Gravar(EstadoDoCadastro: TEstadoDoCadastro): boolean;
begin
   if (EstadoDoCadastro=ecInserir) then
       showmessage('Inserir')
   else if (EstadoDoCadastro=ecAlterar) then
       showmessage('Alterado')
   else
      showmessage('Nada aconteceu');
end;

function TfrmTelaHeranca.Apagar: Boolean;
begin
  showmessage('Apagar');
end;
{$endregion}

procedure TfrmTelaHeranca.ExibirLabelIndice(Campo: string; aLabel:TLabel);
begin
  aLabel.Caption:=RetornarCampoTraduzido(Campo);
end;

procedure TfrmTelaHeranca.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmTelaHeranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QryListagem.Close;
end;

procedure TfrmTelaHeranca.FormCreate(Sender: TObject);
begin
  QryListagem.Connection:=DtmPrincipal.ConexaoDB;
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  grdListagem.Options:=[dgTitles,
                        dgIndicator,
                        dgColumnResize,
                        dgColLines,
                        dgRowLines,
                        dgTabs,
                        dgRowSelect,
                        dgAlwaysShowSelection,
                        dgCancelOnExit,
                        dgTitleClick,
                        dgTitleHotTrack];
end;

procedure TfrmTelaHeranca.FormShow(Sender: TObject);
begin
  ControlaIndiceTab(pgcPrincipal, 0);
  lblIndice.Caption:=IndiceAtual;
  DesabilitarEditPK;
  if QryListagem.SQL.Text<>EmptyStr then begin
     QryListagem.IndexFieldNames:=IndiceAtual;
     ExibirLabelIndice(IndiceAtual, lblIndice);
     QryListagem.Open;
  end;
end;


procedure TfrmTelaHeranca.mskPesquisaChange(Sender: TObject);
begin
  QryListagem.Locate(IndiceAtual, TMaskEdit(Sender).Text,[loPartialKey])
end;

procedure TfrmTelaHeranca.btnAlterarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, False);
  EstadoDoCadastro:=ecAlterar;
end;

procedure TfrmTelaHeranca.btnCancelarClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
  ControlaIndiceTab(pgcPrincipal, 0);
  EstadoDoCadastro:=ecNenhum;
  LimparEdits;
end;

procedure TfrmTelaHeranca.btnNovoClick(Sender: TObject);
begin
  ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, false);
  EstadoDoCadastro:=ecInserir;
  LimparEdits;
end;

procedure TfrmTelaHeranca.grdListagemTitleClick(Column: TColumn);
begin
  IndiceAtual                :=Column.FieldName;
  QryListagem.IndexFieldNames:=IndiceAtual;
  ExibirLabelIndice(IndiceAtual, lblIndice);
end;

procedure TfrmTelaHeranca.grdListagemDblClick(Sender: TObject);
begin
  btnAlterar.Click;
end;

procedure TfrmTelaHeranca.grdListagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  BloqueiaCTRL_DEL_DBGrid(Key, Shift);
end;

procedure TfrmTelaHeranca.btnGravarClick(Sender: TObject);
begin
  if (ExisteCampoObrigatorio) then
     Abort;

  Try
    if Gravar(EstadoDoCadastro) then begin
       ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
       ControlaIndiceTab(pgcPrincipal, 0);
       EstadoDoCadastro:=ecNenhum;
       LimparEdits;
       QryListagem.Refresh;
    end
    else begin
      MessageDlg('Erro ao Gravar', mtWarning,[mbOK],0);
    end;
  Finally
  End;

end;

procedure TfrmTelaHeranca.btnApagarClick(Sender: TObject);
begin
  try
    if (Apagar) then begin
       ControlarBotoes(btnNovo, btnAlterar, btnCancelar, btnGravar, btnApagar, btnNavigator, pgcPrincipal, true);
       ControlaIndiceTab(pgcPrincipal, 0);
       LimparEdits;
       QryListagem.Refresh;
    end
    else begin
      MessageDlg('Erro ao Gravar', mtWarning,[mbOK],0);
    end;
  finally
    EstadoDoCadastro:=ecNenhum;
  end;
end;

procedure TfrmTelaHeranca.BloqueiaCTRL_DEL_DBGrid(var Key: Word; Shift: TShiftState);
begin
  // Caso haja a combina��o de teclas CTRL + tecla 46 (delete) ele bloqueia a a��o
  if (Shift = [ssCtrl]) and (Key = 46) then
  Key:= 0;
end;

end.
