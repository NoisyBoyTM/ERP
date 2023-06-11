unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, System.MaskUtils,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, Vcl.DBCtrls, Vcl.CheckLst, System.UITypes,
  uDM, uRelatorio, uLogin, uPesquisa,uAux, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus, FireDAC.Comp.Client, Vcl.Themes, Vcl.Styles, uItensVenda, MidasLib, Midas;

type
  TFrmPrincipal = class(TForm)
    pcPrincipal: TPageControl;
    Venda: TTabSheet;
    Produto: TTabSheet;
    Cliente: TTabSheet;
    Empresa: TTabSheet;
    Conta: TTabSheet;
    Usuario: TTabSheet;
    Home: TTabSheet;
    btnPesquisaConta: TButton;
    Seguranca: TTabSheet;
    grdSeguranca: TDBGrid;
    pnlProdutosBottom: TPanel;
    btnProdutoCancelar: TButton;
    btnProdutosProximo: TButton;
    btnProdutosAnterior: TButton;
    btnProdutoPesquisa: TButton;
    btnProdutosSalvar: TButton;
    btnProdutoInserir: TButton;
    btnProdutoExcluir: TButton;
    MainMenuPrincipal: TMainMenu;
    Config: TMenuItem;
    Sobre: TMenuItem;
    V101: TMenuItem;
    Tema: TMenuItem;
    pnlProdutos: TPanel;
    lblProdutoId: TLabel;
    edtProdutoId: TDBEdit;
    edtProdutoNome: TDBEdit;
    lblProdutoNome: TLabel;
    cbxProdutoAtivo: TCheckBox;
    edtProdutoDtEntrada: TDBEdit;
    lblProdutoDtEntrada: TLabel;
    lblProdutoQuantidade: TLabel;
    edtProdutoQuantidade: TDBEdit;
    edtProdutoCodigo: TDBEdit;
    lblProdutoCodigo: TLabel;
    lblProdutoCusto: TLabel;
    edtProdutoCusto: TDBEdit;
    edtProdutoMargem: TDBEdit;
    lblProdutoMargemLucro: TLabel;
    lblProdutoPreco: TLabel;
    edtProdutoPreco: TDBEdit;
    edtProdutoFornecedor2: TDBLookupComboBox;
    lblProdutoFornecedor: TLabel;
    lblProdutoPersonalizado4: TLabel;
    cbProdutoPersonalizado4: TDBLookupComboBox;
    cbProdutoPersonalizado3: TDBLookupComboBox;
    lblProdutoPersonalizado3: TLabel;
    lblProdutoPersonalizado2: TLabel;
    cbProdutoPersonalizado2: TDBLookupComboBox;
    cbProdutoPersonalizado1: TDBLookupComboBox;
    lblProdutoPersonalizado1: TLabel;
    Label2: TLabel;
    memoProdutoObs: TDBMemo;
    Panel1: TPanel;
    btnClienteProximo: TButton;
    btnClienteAnterior: TButton;
    btnClienteExcluir: TButton;
    btnClientePesquisa: TButton;
    btnClienteSalvar: TButton;
    btnClienteInserir: TButton;
    btnClienteCancelar: TButton;
    pnlClientes: TPanel;
    edtClienteCep: TDBEdit;
    edtClienteNumero: TDBEdit;
    lblClienteNumero: TLabel;
    lblClienteRua: TLabel;
    edtClienteRua: TDBEdit;
    lblClienteDtNascimento: TLabel;
    edtClienteDtNascimento: TDBEdit;
    lblClienteSexo: TLabel;
    edtClienteSexo: TDBEdit;
    cbxClienteAtivo: TCheckBox;
    edtClienteTelefone: TDBEdit;
    lblClienteTelefone: TLabel;
    lblClienteCPF: TLabel;
    edtClienteCpf: TDBEdit;
    edtClienteNome: TDBEdit;
    lblClienteNome: TLabel;
    lblClienteId: TLabel;
    edtClienteId: TDBEdit;
    lblClienteEmail: TLabel;
    edtClienteEmail: TDBEdit;
    lblClienteCidade: TLabel;
    edtClienteCidade: TDBEdit;
    edtClienteEstado: TDBEdit;
    lblClienteEstado: TLabel;
    lblClienteObs: TLabel;
    memoClienteObs: TDBMemo;
    lblClienteBairro: TLabel;
    edtClienteBairro: TDBEdit;
    edtClienteComplemento: TDBEdit;
    lblClienteComplemento: TLabel;
    lblClienteCep: TLabel;
    pnlEmpresaBottom: TPanel;
    btnEmpresaProximo: TButton;
    btnEmpresaAnterior: TButton;
    btnEmpresaExcluir: TButton;
    btnEmpresaInserir: TButton;
    btnEmpresaSalvar: TButton;
    btnEmpresaPesquisa: TButton;
    btnEmpresaCancelar: TButton;
    pnlEmpresa: TPanel;
    memoEmpresaObs: TDBMemo;
    Label18: TLabel;
    edtEmpresaIe: TDBEdit;
    Label8: TLabel;
    edtEmpresaBairro: TDBEdit;
    Label15: TLabel;
    edtEmpresaEstado: TDBEdit;
    Label11: TLabel;
    edtEmpresaCidade: TDBEdit;
    Label12: TLabel;
    edtEmpresaEmail: TDBEdit;
    Label10: TLabel;
    edtEmpresaId: TDBEdit;
    Label1: TLabel;
    edtEmpresaFantasia: TDBEdit;
    Label3: TLabel;
    edtEmpresaSocial: TDBEdit;
    Label9: TLabel;
    cbxEmpresaAtivo: TCheckBox;
    edtEmpresaCnpj: TDBEdit;
    Label4: TLabel;
    edtEmpresaTelefone: TDBEdit;
    Label5: TLabel;
    edtEmpresaRua: TDBEdit;
    Label13: TLabel;
    edtEmpresaNumero: TDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    edtEmpresaCep: TDBEdit;
    edtEmpresaComplemento: TDBEdit;
    Label16: TLabel;
    pnlContasBottom: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    pnlContas: TPanel;
    Panel2: TPanel;
    btnUsuarioProximo: TButton;
    btnUsuarioAnterior: TButton;
    btnUsuarioExcluir: TButton;
    btnUsuarioInserir: TButton;
    btnUsuarioSalvar: TButton;
    btnUsuarioPesquisa: TButton;
    btnUsuarioCancelar: TButton;
    pnlUsuario: TPanel;
    MemoUsuarioObs: TDBMemo;
    lblUsuarioObs: TLabel;
    edtUsuarioBairro: TDBEdit;
    lblUsuarioBairro: TLabel;
    edtUsuarioUf: TDBEdit;
    lblUsuarioUf: TLabel;
    edtUsuarioTelefone: TDBEdit;
    lblUsuarioTelefone: TLabel;
    EdtUsuarioId: TDBEdit;
    lblUsuarioId: TLabel;
    lblUsuarioNome: TLabel;
    edtUsuarioNome: TDBEdit;
    edtUsuarioSenha: TDBEdit;
    lblUsuarioSenha: TLabel;
    edtUsuarioCpf: TDBEdit;
    lblUsuarioCpf: TLabel;
    cbxUsuarioAtivo: TCheckBox;
    lblUsuarioSexo: TLabel;
    edtUsuarioSexo: TDBEdit;
    edtUsuarioDtNascimento: TDBEdit;
    lblUsuarioDtNascimento: TLabel;
    edtUsuarioEmail: TDBEdit;
    lblUsuarioEmail: TLabel;
    edtUsuarioCidade: TDBEdit;
    lblUsuarioCidade: TLabel;
    edtUsuarioRua: TDBEdit;
    lblUsuarioRua: TLabel;
    lblUsuarioNumero: TLabel;
    edtUsuarioNumero: TDBEdit;
    edtUsuarioCep: TDBEdit;
    lblUsuarioCep: TLabel;
    edtUsuarioComplemento: TDBEdit;
    lblUsuarioComplemento: TLabel;
    lblProdutoNcm: TLabel;
    edtProdutoNcm: TDBEdit;
    Backup1: TMenuItem;
    Glow1: TMenuItem;
    TabletDark1: TMenuItem;
    Windows10SlateGray1: TMenuItem;
    AmethystKamri1: TMenuItem;
    Auric1: TMenuItem;
    CharcoalDarkSlate1: TMenuItem;
    EmeraldLightSlate1: TMenuItem;
    Light1: TMenuItem;
    OnyxBlue1: TMenuItem;
    RubyGraphite1: TMenuItem;
    SapphireKamri1: TMenuItem;
    SmokeyQuartzKamri1: TMenuItem;
    IcebergClassico1: TMenuItem;
    pnlVendaBottom: TPanel;
    btnVendaCancelar: TButton;
    btnVendaProximo: TButton;
    btnVendaAnterior: TButton;
    btnVendaPesquisa: TButton;
    btnVendaSalvar: TButton;
    btnVendaInserir: TButton;
    btnVendaExcluir: TButton;
    pnlVenda: TPanel;
    tmrHoraAtual: TTimer;
    pnlHome: TPanel;
    Label6: TLabel;
    edtVendaId: TDBEdit;
    Label7: TLabel;
    edtVendaSufixo: TDBEdit;
    Label19: TLabel;
    edtVendaDtVenda: TDBEdit;
    Label22: TLabel;
    edtVendaValor: TDBEdit;
    Label26: TLabel;
    Label31: TLabel;
    memoVendaObs: TDBMemo;
    Label32: TLabel;
    edtVendaEmpresa: TDBLookupComboBox;
    Label33: TLabel;
    edVendaCliente: TDBLookupComboBox;
    edtVendaUsuario: TDBLookupComboBox;
    Label20: TLabel;
    cbVendaFormaPagamento: TDBLookupComboBox;
    Label21: TLabel;
    edtVendaVencimento: TDBEdit;
    Label23: TLabel;
    cbVendaParcela: TDBComboBox;
    cbxVendaPago: TCheckBox;
    Sufixo: TMenuItem;
    Outros: TMenuItem;
    VendaSemItens: TMenuItem;
    Label24: TLabel;
    edtVendaDesconto: TDBEdit;
    Atalhos: TMenuItem;
    F1: TMenuItem;
    F2: TMenuItem;
    F3: TMenuItem;
    F4: TMenuItem;
    F5: TMenuItem;
    LEFT: TMenuItem;
    RIGHT: TMenuItem;
    QTD: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //Pesquisa
    procedure btnPesquisaVendasClick(Sender: TObject);
    procedure btnPesquisaProdutosClick(Sender: TObject);
    procedure btnPesquisaEmpresaClick(Sender: TObject);
    procedure btnPesquisaContaClick(Sender: TObject);
    procedure btnUsuarioPesquisaClick(Sender: TObject);
    procedure btnClientePesquisaClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    //Usuario
    procedure edtUsuarioCpfChange(Sender: TObject);
    procedure edtUsuarioTelefoneChange(Sender: TObject);
    procedure edtUsuarioDtNascimentoChange(Sender: TObject);
    procedure edtUsuarioSexoChange(Sender: TObject);
    procedure edtUsuarioUfChange(Sender: TObject);
    procedure edtUsuarioNumeroChange(Sender: TObject);
    procedure edtUsuarioCepChange(Sender: TObject);
    procedure btnUsuarioSalvarClick(Sender: TObject);
    procedure btnUsuarioInserirClick(Sender: TObject);
    procedure btnUsuarioCancelarClick(Sender: TObject);
    //Cliente
    procedure edtClienteCpfChange(Sender: TObject);
    procedure edtClienteTelefoneChange(Sender: TObject);
    procedure edtClienteDtNascimentoChange(Sender: TObject);
    procedure edtClienteSexoChange(Sender: TObject);
    procedure edtClienteEstadoChange(Sender: TObject);
    procedure edtClienteNumeroChange(Sender: TObject);
    procedure edtClienteCepChange(Sender: TObject);
    procedure btnClienteInserirClick(Sender: TObject);
    procedure btnClienteSalvarClick(Sender: TObject);
    procedure btnClienteCancelarClick(Sender: TObject);
    procedure btnProdutoInserirClick(Sender: TObject);
    procedure btnProdutoSalvar(Sender: TObject);
    procedure btnProdutoPesquisaClick(Sender: TObject);
    procedure edtProdutoQuantidadeChange(Sender: TObject);
    procedure edtProdutoDtEntradaChange(Sender: TObject);
    procedure edtProdutoCustoChange(Sender: TObject);
    procedure edtProdutoMargemClick(Sender: TObject);
    procedure edtProdutoPrecoClick(Sender: TObject);
    procedure edtProdutoMargemExit(Sender: TObject);
    procedure btnProdutoCancelarClick(Sender: TObject);
    procedure grdSegurancaDblClick(Sender: TObject);
    procedure pcPrincipalChange(Sender: TObject);
    procedure edtProdutoCustoExit(Sender: TObject);
    procedure cbxProdutoAtivoClick(Sender: TObject);
    procedure btnProdutosProximoClick(Sender: TObject);
    procedure btnProdutosAnteriorClick(Sender: TObject);
    procedure btnProdutoExcluirClick(Sender: TObject);
    procedure btnClienteAnteriorClick(Sender: TObject);
    procedure btnClienteProximoClick(Sender: TObject);
    procedure btnClienteExcluirClick(Sender: TObject);
    procedure cbxClienteAtivoClick(Sender: TObject);
    procedure btnEmpresaInserirClick(Sender: TObject);
    procedure btnEmpresaPesquisaClick(Sender: TObject);
    procedure btnEmpresaAnteriorClick(Sender: TObject);
    procedure btnEmpresaProximoClick(Sender: TObject);
    procedure btnEmpresaCancelarClick(Sender: TObject);
    procedure btnEmpresaExcluirClick(Sender: TObject);
    procedure cbxEmpresaAtivoClick(Sender: TObject);
    procedure cbxUsuarioAtivoClick(Sender: TObject);
    procedure btnUsuarioAnteriorClick(Sender: TObject);
    procedure btnUsuarioProximoClick(Sender: TObject);
    procedure btnUsuarioExcluirClick(Sender: TObject);
    procedure Backup1Click(Sender: TObject);
    procedure Glow1Click(Sender: TObject);
    procedure TabletDark1Click(Sender: TObject);
    procedure Windows10SlateGray1Click(Sender: TObject);
    procedure AmethystKamri1Click(Sender: TObject);
    procedure Auric1Click(Sender: TObject);
    procedure CharcoalDarkSlate1Click(Sender: TObject);
    procedure EmeraldLightSlate1Click(Sender: TObject);
    procedure Light1Click(Sender: TObject);
    procedure OnyxBlue1Click(Sender: TObject);
    procedure RubyGraphite1Click(Sender: TObject);
    procedure SapphireKamri1Click(Sender: TObject);
    procedure SmokeyQuartzKamri1Click(Sender: TObject);
    procedure IcebergClassico1Click(Sender: TObject);
    procedure tmrHoraAtualTimer(Sender: TObject);
    procedure cbxVendaPagoClick(Sender: TObject);
    procedure btnVendaAnteriorClick(Sender: TObject);
    procedure btnVendaProximoClick(Sender: TObject);
    procedure btnVendaInserirClick(Sender: TObject);
    procedure btnVendaSalvarClick(Sender: TObject);
    procedure btnVendaPesquisaClick(Sender: TObject);
    procedure btnVendaCancelarClick(Sender: TObject);
    procedure btnVendaExcluirClick(Sender: TObject);
    procedure btnEmpresaSalvarClick(Sender: TObject);
    procedure cbVendaParcelaClick(Sender: TObject);
    procedure SufixoClick(Sender: TObject);
    procedure VendaSemItensClick(Sender: TObject);
    procedure edtVendaDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    procedure CarregaTema;
    procedure DefineTema(Tema: String);
    procedure BloqueiaAcesso;
  public
    { Public declarations }
    HORA_ATUAL: String;
    procedure CarregaQuery;
    procedure DesCarregaQuery;
    Procedure ChamaFormPesquisa(Tabela, Coluna, Parametro:String);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  CarregaTema;
  FrmPrincipal.Hide;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pcPrincipal.ActivePage = Venda then
  begin
    if DM.tbVenda.State = dsBrowse then
    begin
      if key = VK_F1 then
        btnVendaInserirClick(btnVendaInserir)
      else
      if key = VK_F3 then
        btnVendaPesquisaClick(btnVendaPesquisa)
      else
      if key = VK_LEFT then
        btnVendaAnteriorClick(btnVendaAnterior)
      else
      if key = VK_RIGHT then
        btnVendaProximoClick(btnVendaProximo)
    end
    else
    begin
      if key = VK_F2 then
        btnVendaSalvarClick(btnVendaSalvar )
      else
      if key = VK_F4 then
        btnVendaCancelarClick(btnVendaCancelar)
    end;
  end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CarregaQuery;

  if not Assigned(FrmLogin) then
    FrmLogin := TFrmLogin.Create(FrmLogin);
  FrmLogin.ShowModal;
  FreeAndNil(FrmLogin);
  pcPrincipal.ActivePage := Home;
  BloqueiaAcesso;
end;

procedure TFrmPrincipal.grdSegurancaDblClick(Sender: TObject);
var
  Field : String;
begin
  Field := copy(grdSeguranca.SelectedField.Name, 12, length(grdSeguranca.SelectedField.Name));
  if (Field = 'tbSegurancaNOME') or (Field = 'tbSegurancaIDUSUARIO') or (DM.tbSegurancaIDUSUARIO.AsString = '0') then
    Exit;

  DM.tbSeguranca.edit;
  if Field = 'CREDENCIAL' then
  begin
    if DM.tbSeguranca.FieldByName(Field).AsString = '1' then
      DM.tbSeguranca.FieldByName(Field).AsString := '2'
    else
      DM.tbSeguranca.FieldByName(Field).AsString := '1';
  end
  else
  begin
    if DM.tbSeguranca.FieldByName(Field).AsString = 'T' then
      DM.tbSeguranca.FieldByName(Field).AsString := 'F'
    else
      DM.tbSeguranca.FieldByName(Field).AsString := 'T';
  end;
  DM.tbSeguranca.Post;
end;

procedure TFrmPrincipal.btnRelatorioClick(Sender: TObject);
begin
    try
      if FrmRelatorio = nil then
        FrmRelatorio := TFrmRelatorio.Create(self);
      FrmRelatorio.ShowModal;
    finally
      FreeAndNil(FrmRelatorio);
    end;
end;

procedure TFrmPrincipal.btnUsuarioSalvarClick(Sender: TObject);
var
  queryTemp: TFDQuery;
begin
  if DM.tbUsuario.State in [dsEdit, dsInsert] then
  begin
    queryTemp := CriaQueryTemp;
    try
      if DM.tbUsuario.State = dsInsert then
      begin
        queryTemp.SQL.Text := 'UPDATE OR INSERT INTO SEGURANCA VALUES (' + DM.tbUsuarioIDUSUARIO.AsString + ', 1, ''F'', ''F'', ''F'', ''F'', ''F'', ''F'', ''F'');';
        queryTemp.ExecSQL;
      end;

      DM.tbUsuarioSENHA.ASString := criptografar(DM.tbUsuarioSENHA.ASString, 7);
      DM.tbUsuario.Post;
    finally
      btnUsuarioInserir.Enabled := True;
      btnUsuarioExcluir.Visible := True;
      btnUsuarioCancelar.Visible := False;
      btnUsuarioPesquisa.Visible := True;
      btnUsuarioAnterior.Visible := True;
      btnUsuarioProximo.Visible := True;
      cbxUsuarioAtivo.Enabled := True;
      cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
      FreeAndNil(queryTemp);
    end;
  end;
end;

procedure TFrmPrincipal.btnVendaAnteriorClick(Sender: TObject);
begin
  DM.tbVenda.Prior;
  cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
end;

procedure TFrmPrincipal.btnVendaCancelarClick(Sender: TObject);
begin
  if DM.tbVenda.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbVenda.Cancel;
    finally
      btnVendaInserir.Enabled := True;
      btnVendaCancelar.Visible := False;
      btnVendaExcluir.Visible := True;
      btnVendaPesquisa.Visible := True;
      btnVendaAnterior.Visible := True;
      btnVendaProximo.Visible := True;
      cbxVendaPago.Enabled := True;
      cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnVendaExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbVendaIDVENDA.AsString <> '0' then
  begin
    if not (DM.tbVenda.State in [dsEdit, dsInsert]) then
    begin
      DM.tbVenda.Delete;
      DM.tbVenda.Last;
      cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnVendaInserirClick(Sender: TObject);
var
  queryTemp: TFDQuery;
begin
  DM.qryConfig.Open;
  try
    if DM.qryConfig.FieldByName('VENDASEMITEM').AsString = 'N' then
    begin
      try
        if frmItensVenda = nil then
          frmItensVenda := TfrmItensVenda.Create(nil);
        frmItensVenda.ShowModal;
      finally
        FreeAndNil(frmItensVenda);
      end;
    end
    else
    if DM.qryConfig.FieldByName('VENDASEMITEM').AsString = 'S' then
    begin
      btnVendaInserir.Enabled := False;
      btnVendaExcluir.Visible := False;
      btnVendaCancelar.Visible := True;
      btnVendaPesquisa.Visible := False;
      btnVendaAnterior.Visible := False;
      btnVendaProximo.Visible := False;
      cbxVendaPago.Enabled := False;

      queryTemp := CriaQueryTemp;
      try
        queryTemp.SQL.Text := 'SELECT MAX(IDVENDA) FROM VENDA;';
        queryTemp.Open;

        DM.tbVenda.Append;
        DM.tbVendaIDVENDA.AsInteger := queryTemp.FieldByName('MAX(IDVENDA)').AsInteger + 1;
        DM.tbVendaSUFIXO.AsString := DM.qryConfig.FieldByName('SUFIXO').AsString;
        DM.tbVendaDTVENDA.AsString := copy(DateToStr(now), 1, 10);
      finally
        FreeAndNil(queryTemp);
      end;
    end;
  finally
    DM.qryConfig.Close;
  end;
end;

procedure TFrmPrincipal.btnVendaPesquisaClick(Sender: TObject);
begin
  try
    ChamaFormPesquisa('VENDA', '*', '');
    DM.tbVenda.Locate('IDVENDA', DM.qryGeral.FieldByName('IDVENDA').AsString, []);
    cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.btnVendaProximoClick(Sender: TObject);
begin
  DM.tbVenda.Next;
  cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
end;

procedure TFrmPrincipal.btnVendaSalvarClick(Sender: TObject);
begin
  if DM.tbVenda.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbVenda.Post;
    finally
      btnVendaInserir.Enabled := True;
      btnVendaExcluir.Visible := True;
      btnVendaCancelar.Visible := False;
      btnVendaPesquisa.Visible := True;
      btnVendaAnterior.Visible := True;
      btnVendaProximo.Visible := True;
      cbxVendaPago.Enabled := True;
      cbxVendaPago.Checked := AtualizaCheckBox('VENDA', 'IDVENDA = ' + DM.tbVendaIDVENDA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnProdutosProximoClick(Sender: TObject);
begin
  DM.tbProduto.Next;
  cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
end;

procedure TFrmPrincipal.btnProdutosAnteriorClick(Sender: TObject);
begin
  DM.tbProduto.Prior;
  cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
end;

procedure TFrmPrincipal.btnProdutoPesquisaClick(Sender: TObject);
begin
  try
    ChamaFormPesquisa('PRODUTO', '*', '');
    DM.tbProduto.Locate('IDPRODUTO', DM.qryGeral.FieldByName('IDPRODUTO').AsString, []);
    cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.btnProdutoSalvar(Sender: TObject);
begin
  if DM.tbProduto.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbProduto.Post;
    finally
      btnProdutoInserir.Enabled := True;
      btnProdutoExcluir.Visible := True;
      btnProdutoCancelar.Visible := False;
      btnProdutoPesquisa.Visible := True;
      btnProdutosAnterior.Visible := True;
      btnProdutosProximo.Visible := True;
      cbxProdutoAtivo.Enabled := True;
      cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnUsuarioInserirClick(Sender: TObject);
begin
  btnUsuarioInserir.Enabled := False;
  btnUsuarioExcluir.Visible := False;
  btnUsuarioCancelar.Visible := True;
  btnUsuarioPesquisa.Visible := False;
  btnUsuarioAnterior.Visible := False;
  btnUsuarioProximo.Visible := False;
  cbxUsuarioAtivo.Enabled := False;

  try
    DM.qryGeral.SQL.Text := 'SELECT MAX(IDUSUARIO) FROM USUARIO;';
    DM.qryGeral.Open;

    DM.tbUsuario.Append;
    DM.tbUsuarioIDUSUARIO.AsInteger := DM.qryGeral.FieldByName('MAX(IDUSUARIO)').AsInteger + 1;
    DM.tbUsuarioATIVO.AsString := 'T';
  finally
    DM.qryGeral.Close;
  end;
end;

procedure TFrmPrincipal.ChamaFormPesquisa(Tabela, Coluna, Parametro:String);
begin
  try
    if FrmPesquisa = nil then
      FrmPesquisa := TFrmPesquisa.Create(self);
    FrmPesquisa.PreparaConsulta(Tabela, Coluna, Parametro);
    FrmPesquisa.ShowModal;
  except
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.edtUsuarioCepChange(Sender: TObject);
begin
  edtUsuarioCep.Text := Formatar(edtUsuarioCep.Text , 'CEP', '');
  edtUsuarioCep.SelStart := Length(edtUsuarioCep.Text);
end;

procedure TFrmPrincipal.edtUsuarioCpfChange(Sender: TObject);
begin
  edtUsuarioCpf.Text := Formatar(edtUsuarioCpf.Text , 'CPF', '');
  edtUsuarioCpf.SelStart := Length(edtUsuarioCpf.Text);
end;

procedure TFrmPrincipal.edtUsuarioDtNascimentoChange(Sender: TObject);
begin
  edtUsuarioDtNascimento.Text := Formatar(edtUsuarioDtNascimento.Text , 'DATA', '');
  edtUsuarioDtNascimento.SelStart := Length(edtUsuarioDtNascimento.Text);
end;

procedure TFrmPrincipal.edtUsuarioNumeroChange(Sender: TObject);
begin
  edtUsuarioNumero.Text := Formatar(edtUsuarioNumero.Text , 'PERSONALIZADO', '######');
  edtUsuarioNumero.SelStart := Length(edtUsuarioNumero.Text);
end;

procedure TFrmPrincipal.edtUsuarioSexoChange(Sender: TObject);
begin
  edtUsuarioSexo.MaxLength := 1;
  if  (edtUsuarioSexo.Text <> 'M') and (edtUsuarioSexo.Text <> 'F') then edtUsuarioSexo.Text := '';
end;

procedure TFrmPrincipal.edtUsuarioTelefoneChange(Sender: TObject);
begin
  edtUsuarioTelefone.Text := Formatar(edtUsuarioTelefone.Text , 'TELEFONE', '');
  edtUsuarioTelefone.SelStart := Length(edtUsuarioTelefone.Text);
end;

procedure TFrmPrincipal.edtUsuarioUfChange(Sender: TObject);
begin
  edtUsuarioUf.MaxLength := 2;
end;

procedure TFrmPrincipal.edtVendaDescontoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    if not (DM.tbVenda.State in [dsInsert, dsEdit]) then
      DM.tbVenda.edit;

    DM.tbVendaVALORTOTAL.AsFloat := DM.tbVendaVALORTOTAL.AsFloat + DM.tbVendaDESCONTO.AsFloat;
    DM.tbVendaDESCONTO.AsFloat := 0;
    edtVendaID.SetFocus;
  end
  else
  if Key = VK_RETURN then
  begin
    if DM.tbVendaVALORTOTAL.AsFloat < DM.tbVendaDESCONTO.AsFloat then
    begin
      DM.tbVendaDESCONTO.AsFloat := 0;
      raise Exception.Create('Valor de Desconto deve ser menor que o Valor Total!');
    end;

    if not (DM.tbVenda.State in [dsInsert, dsEdit]) then
      DM.tbVenda.edit;

    DM.tbVendaVALORTOTAL.AsFloat := DM.tbVendaVALORTOTAL.AsFloat - DM.tbVendaDESCONTO.AsFloat;
      edtVendaID.SetFocus;
  end;
end;

procedure TFrmPrincipal.edtClienteCepChange(Sender: TObject);
begin
  edtClienteCep.Text := Formatar(edtClienteCep.Text , 'CEP', '');
  edtClienteCep.SelStart := Length(edtClienteCep.Text);
end;

procedure TFrmPrincipal.edtClienteCpfChange(Sender: TObject);
begin
  edtClienteCpf.Text := Formatar(edtClienteCpf.Text , 'CPF', '');
  edtClienteCpf.SelStart := Length(edtClienteCpf.Text);
end;

procedure TFrmPrincipal.edtClienteDtNascimentoChange(Sender: TObject);
begin
  edtClienteDtNascimento.Text := Formatar(edtClienteDtNascimento.Text , 'DATA', '');
  edtClienteDtNascimento.SelStart := Length(edtClienteDtNascimento.Text);
end;

procedure TFrmPrincipal.edtClienteNumeroChange(Sender: TObject);
begin
  edtClienteNumero.Text := Formatar(edtClienteNumero.Text , 'PERSONALIZADO', '######');
  edtClienteNumero.SelStart := Length(edtClienteNumero.Text);
end;

procedure TFrmPrincipal.edtClienteSexoChange(Sender: TObject);
begin
  edtClienteSexo.MaxLength := 1;
  if  (edtClienteSexo.Text <> 'M') and (edtClienteSexo.Text <> 'F') then edtClienteSexo.Text := '';
end;

procedure TFrmPrincipal.edtClienteTelefoneChange(Sender: TObject);
begin
  edtClienteTelefone.Text := Formatar(edtClienteTelefone.Text , 'TELEFONE', '');
  edtClienteTelefone.SelStart := Length(edtClienteTelefone.Text);
end;

procedure TFrmPrincipal.edtProdutoCustoChange(Sender: TObject);
begin
//  edtProdutoCusto.Text := Formatar(edtProdutoCusto.Text , 'REAIS', '');
  //edtProdutoCusto.SelStart := Length(edtProdutoCusto.Text);
end;

procedure TFrmPrincipal.edtProdutoCustoExit(Sender: TObject);
begin
  if edtProdutoMargem.Text = '' then
    edtProdutoMargem.Text := '0';

  if edtProdutoCusto.Text <> '' then
    edtProdutoPreco.Text := FloatToStr(StrToFloat(edtProdutoCusto.Text) + (StrToFloat(edtProdutoCusto.Text) * StrToFloat(edtProdutoMargem.Text)) / 100);
end;

procedure TFrmPrincipal.edtProdutoDtEntradaChange(Sender: TObject);
begin
  edtProdutoDtEntrada.Text := Formatar(edtProdutoDtEntrada.Text , 'DATA', '');
  edtProdutoDtEntrada.SelStart := Length(edtProdutoDtEntrada.Text);
end;

procedure TFrmPrincipal.edtProdutoMargemClick(Sender: TObject);
begin
  //edtProdutoMargem.Text := Formatar(edtProdutoMargem.Text , '%', '%');
  //edtProdutoMargem.SelStart := Length(edtProdutoMargem.Text);
end;

procedure TFrmPrincipal.edtProdutoMargemExit(Sender: TObject);
begin
  if edtProdutoMargem.Text = '' then
    edtProdutoMargem.Text := '0';

  if edtProdutoCusto.Text <> '' then
    edtProdutoPreco.Text := FloatToStr(StrToFloat(edtProdutoCusto.Text) + (StrToFloat(edtProdutoCusto.Text) * StrToFloat(edtProdutoMargem.Text)) / 100);
end;

procedure TFrmPrincipal.edtProdutoPrecoClick(Sender: TObject);
begin
  //edtProdutoPreco.Text := Formatar(edtProdutoPreco.Text , 'REAIS', '');
  //edtProdutoPreco.SelStart := Length(edtProdutoPreco.Text);
end;

procedure TFrmPrincipal.edtProdutoQuantidadeChange(Sender: TObject);
begin
  edtProdutoQuantidade.Text := Formatar(edtProdutoQuantidade.Text , 'PERSONALIZADO', '#######');
  edtProdutoQuantidade.SelStart := Length(edtProdutoQuantidade.Text);
end;

procedure TFrmPrincipal.edtClienteEstadoChange(Sender: TObject);
begin
  edtClienteEstado.MaxLength := 2;
end;

procedure TFrmPrincipal.btnUsuarioPesquisaClick(Sender: TObject);
begin
  try
    ChamaFormPesquisa('USUARIO', '*', '');
    DM.tbUsuario.Locate('IDUSUARIO', DM.qryGeral.FieldByName('IDUSUARIO').AsString, []);
    cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.btnUsuarioProximoClick(Sender: TObject);
begin
  DM.tbUsuario.Next;
  cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
end;

procedure TFrmPrincipal.btnPesquisaVendasClick(Sender: TObject);
begin
  ChamaFormPesquisa('VENDA', '*', '');
  FreeAndNil(FrmPesquisa);
end;

procedure TFrmPrincipal.btnProdutoCancelarClick(Sender: TObject);
begin
  if DM.tbProduto.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbProduto.Cancel;
    finally
      btnProdutoInserir.Enabled := True;
      btnProdutoCancelar.Visible := False;
      btnProdutoExcluir.Visible := True;
      btnProdutoPesquisa.Visible := True;
      btnProdutosAnterior.Visible := True;
      btnProdutosProximo.Visible := True;
      cbxProdutoAtivo.Enabled := True;
      cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnProdutoInserirClick(Sender: TObject);
begin
  btnProdutoInserir.Enabled := False;
  btnProdutoExcluir.Visible := False;
  btnProdutoCancelar.Visible := True;
  btnProdutoPesquisa.Visible := False;
  btnProdutosAnterior.Visible := False;
  btnProdutosProximo.Visible := False;
  cbxProdutoAtivo.Enabled := False;

  try
    DM.qryGeral.SQL.Text := 'SELECT MAX(IDPRODUTO) FROM PRODUTO;';
    DM.qryGeral.Open;

    DM.tbProduto.Append;
    DM.tbProdutoIDPRODUTO.AsInteger := DM.qryGeral.FieldByName('MAX(IDPRODUTO)').AsInteger + 1;
    DM.tbProdutoATIVO.AsString := 'T';
    DM.tbProdutoDTENTRADA.AsString := copy(DateToStr(now), 1, 10);
  finally
    DM.qryGeral.Close;
  end;
end;

procedure TFrmPrincipal.TabletDark1Click(Sender: TObject);
begin
  DefineTema('Tablet Dark');
end;

procedure TFrmPrincipal.tmrHoraAtualTimer(Sender: TObject);
begin
  HORA_ATUAL := TimeToStr(Time);
  pnlHome.Caption := HORA_ATUAL;
end;

procedure TFrmPrincipal.VendaSemItensClick(Sender: TObject);
var
  Retorno: String;
  queryTemp: TFDQuery;
begin
  queryTemp := CriaQueryTemp;
  try
    Retorno := InputBox('Permitir Cadastrar Vendas Sem Incluir Itens?', '"S" ou "N":', 'N');
    queryTemp.SQL.Text := 'UPDATE CONFIG SET VENDASEMITEM = ' + QuotedStr(Retorno) + ' WHERE IDCONFIG = 1;';
    queryTemp.ExecSQL;
  finally
    FreeAndNil(queryTemp)
  end;
end;

procedure TFrmPrincipal.AmethystKamri1Click(Sender: TObject);
begin
  DefineTema('Amethyst Kamri');
end;

procedure TFrmPrincipal.Auric1Click(Sender: TObject);
begin
  DefineTema('Auric');
end;

procedure TFrmPrincipal.Glow1Click(Sender: TObject);
begin
  DefineTema('Glow');
end;

procedure TFrmPrincipal.IcebergClassico1Click(Sender: TObject);
begin
  TStyleManager.TrySetStyle('Iceberg Classico');
end;

procedure TFrmPrincipal.Light1Click(Sender: TObject);
begin
  DefineTema('Light');
end;

procedure TFrmPrincipal.OnyxBlue1Click(Sender: TObject);
begin
  DefineTema('Onyx Blue');
end;

procedure TFrmPrincipal.CharcoalDarkSlate1Click(Sender: TObject);
begin
  DefineTema('Charcoal Dark Slate');
end;

procedure TFrmPrincipal.cbxVendaPagoClick(Sender: TObject);
begin
  if not (DM.tbVenda.State in [dsInsert, dsEdit]) then
  begin
    DM.tbVenda.Edit;
    if cbxVendaPago.Checked then
      DM.tbVendaPAGO.AsString := 'T'
    else
      DM.tbVendaPAGO.AsString := 'F';

    DM.tbVenda.Post;
  end;
end;

procedure TFrmPrincipal.EmeraldLightSlate1Click(Sender: TObject);
begin
  DefineTema('Emerald Light Slate');
end;

procedure TFrmPrincipal.RubyGraphite1Click(Sender: TObject);
begin
  DefineTema('Ruby Graphite');
end;

procedure TFrmPrincipal.SapphireKamri1Click(Sender: TObject);
begin
  DefineTema('Sapphire Kamri');
end;

procedure TFrmPrincipal.SmokeyQuartzKamri1Click(Sender: TObject);
begin
  DefineTema('Smokey Quartz Kamri');
end;

procedure TFrmPrincipal.SufixoClick(Sender: TObject);
var
  Sufixo: String;
  queryTemp: TFDQuery;
begin
  queryTemp := CriaQueryTemp;
  try
    Sufixo := InputBox('Cadastro de Sufixo', 'Novo Sufixo:', copy(DateToStr(now), 7, 4));
    queryTemp.SQL.Text := 'UPDATE CONFIG SET SUFIXO = ' + Sufixo + ' WHERE IDCONFIG = 1;';
    queryTemp.ExecSQL;
  finally
    FreeAndNil(queryTemp)
  end;
end;

procedure TFrmPrincipal.Windows10SlateGray1Click(Sender: TObject);
begin
  DefineTema('Windows10 SlateGray');
end;

procedure TFrmPrincipal.Backup1Click(Sender: TObject);
begin
  CopyFile(PWideChar(DM.FDConnection.Params.Database), PWideChar(ExtractFilePath(DM.FDConnection.Params.Database) + 'Backup\backup' + SomenteNumero(DateToStr(now)) + '.fdb'), False);
end;

procedure TFrmPrincipal.btnClienteAnteriorClick(Sender: TObject);
begin
  DM.tbCliente.Prior;
  cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
end;

procedure TFrmPrincipal.btnClienteCancelarClick(Sender: TObject);
begin
  if DM.tbCliente.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbCliente.Cancel;
    finally
      btnClienteInserir.Enabled := True;
      btnClienteCancelar.Visible := False;
      btnClienteExcluir.Visible := True;
      btnClientePesquisa.Visible := True;
      btnClienteAnterior.Visible := True;
      btnClienteProximo.Visible := True;
      cbxClienteAtivo.Enabled := True;
      cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnClienteExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbClienteIDCLIENTE.AsString <> '0' then
  begin
    if not (DM.tbCliente.State in [dsEdit, dsInsert]) then
    begin
      DM.tbCliente.Delete;
      DM.tbCliente.Last;
      cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnClienteInserirClick(Sender: TObject);
begin
  btnClienteInserir.Enabled := False;
  btnClienteExcluir.Visible := False;
  btnClienteCancelar.Visible := True;
  btnClientePesquisa.Visible := False;
  btnClienteAnterior.Visible := False;
  btnClienteProximo.Visible := False;
  cbxClienteAtivo.Enabled := False;

  try
    DM.qryGeral.SQL.Text := 'SELECT MAX(IDCLIENTE) FROM CLIENTE;';
    DM.qryGeral.Open;

    DM.tbCliente.Append;
    DM.tbClienteIDCLIENTE.AsInteger := DM.qryGeral.FieldByName('MAX(IDCLIENTE)').AsInteger + 1;
    DM.tbClienteATIVO.AsString := 'T';
  finally
    DM.qryGeral.Close;
  end;
end;

procedure TFrmPrincipal.btnClientePesquisaClick(Sender: TObject);
begin
  try
    ChamaFormPesquisa('CLIENTE', '*', '');
    DM.tbCliente.Locate('IDCLIENTE', DM.qryGeral.FieldByName('IDCLIENTE').AsString, []);
    cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.btnClienteProximoClick(Sender: TObject);
begin
  DM.tbCliente.Next;
  cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
end;

procedure TFrmPrincipal.btnClienteSalvarClick(Sender: TObject);
begin
  if DM.tbCliente.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbCliente.Post;
    finally
      btnClienteInserir.Enabled := True;
      btnClienteExcluir.Visible := True;
      btnClienteCancelar.Visible := False;
      btnClientePesquisa.Visible := True;
      btnClienteAnterior.Visible := True;
      btnClienteProximo.Visible := True;
      cbxClienteAtivo.Enabled := True;
      cbxClienteAtivo.Checked := AtualizaCheckBox('CLIENTE', 'IDCLIENTE = ' + DM.tbClienteIDCLIENTE.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnEmpresaAnteriorClick(Sender: TObject);
begin
  DM.tbEmpresa.Prior;
  cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
end;

procedure TFrmPrincipal.btnEmpresaCancelarClick(Sender: TObject);
begin
  if DM.tbEmpresa.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbEmpresa.Cancel;
    finally
      btnEmpresaInserir.Enabled := True;
      btnEmpresaCancelar.Visible := False;
      btnClienteExcluir.Visible := True;
      btnEmpresaPesquisa.Visible := True;
      btnEmpresaAnterior.Visible := True;
      btnEmpresaProximo.Visible := True;
      cbxEmpresaAtivo.Enabled := True;
      cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnEmpresaExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbEmpresaIDEMPRESA.AsString <> '0' then
  begin
    if not (DM.tbEmpresa.State in [dsEdit, dsInsert]) then
    begin
      DM.tbEmpresa.Delete;
      DM.tbEmpresa.Last;
      cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnEmpresaInserirClick(Sender: TObject);
begin
  btnEmpresaInserir.Enabled := False;
  btnEmpresaExcluir.Visible := False;
  btnEmpresaCancelar.Visible := True;
  btnEmpresaPesquisa.Visible := False;
  btnEmpresaAnterior.Visible := False;
  btnEmpresaProximo.Visible := False;
  cbxEmpresaAtivo.Enabled := False;

  try
    DM.qryGeral.SQL.Text := 'SELECT MAX(IDEMPRESA) FROM EMPRESA;';
    DM.qryGeral.Open;

    DM.tbEmpresa.Append;
    DM.tbEmpresaIDEMPRESA.AsInteger := DM.qryGeral.FieldByName('MAX(IDEMPRESA)').AsInteger + 1;
    DM.tbEmpresaATIVO.AsString := 'T';
  finally
    DM.qryGeral.Close;
  end;
end;

procedure TFrmPrincipal.btnEmpresaPesquisaClick(Sender: TObject);
begin
  try
    ChamaFormPesquisa('EMPRESA', '*', '');
    DM.tbEmpresa.Locate('IDEMPRESA', DM.qryGeral.FieldByName('IDEMPRESA').AsString, []);
    cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
  finally
    FreeAndNil(FrmPesquisa);
  end;
end;

procedure TFrmPrincipal.btnEmpresaProximoClick(Sender: TObject);
begin
  DM.tbEmpresa.Next;
  cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
end;

procedure TFrmPrincipal.btnEmpresaSalvarClick(Sender: TObject);
begin
  if DM.tbEmpresa.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbEmpresa.Post;
    finally
      btnEmpresaInserir.Enabled := True;
      btnEmpresaExcluir.Visible := True;
      btnEmpresaCancelar.Visible := False;
      btnEmpresaPesquisa.Visible := True;
      btnEmpresaAnterior.Visible := True;
      btnEmpresaProximo.Visible := True;
      cbxEmpresaAtivo.Enabled := True;
      cbxEmpresaAtivo.Checked := AtualizaCheckBox('EMPRESA', 'IDEMPRESA = ' + DM.tbEmpresaIDEMPRESA.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnProdutoExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbProdutoIDPRODUTO.AsString <> '0' then
  begin
    if not (DM.tbProduto.State in [dsEdit, dsInsert]) then
    begin
      DM.tbProduto.Delete;
      DM.tbProduto.Last;
      cbxProdutoAtivo.Checked := AtualizaCheckBox('PRODUTO', 'IDPRODUTO = ' + DM.tbProdutoIDPRODUTO.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnPesquisaContaClick(Sender: TObject);
begin
  ChamaFormPesquisa('CONTA', '*', '');
  FreeAndNil(FrmPesquisa);
end;

procedure TFrmPrincipal.btnPesquisaEmpresaClick(Sender: TObject);
begin
  ChamaFormPesquisa('EMPRESA', '*', '');
  FreeAndNil(FrmPesquisa);
end;

procedure TFrmPrincipal.btnPesquisaProdutosClick(Sender: TObject);
begin
  ChamaFormPesquisa('PRODUTO', '*', '');
  FreeAndNil(FrmPesquisa);
end;

procedure TFrmPrincipal.btnUsuarioAnteriorClick(Sender: TObject);
begin
  DM.tbUsuario.Prior;
  cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
end;

procedure TFrmPrincipal.btnUsuarioCancelarClick(Sender: TObject);
begin
  if DM.tbUsuario.State in [dsEdit, dsInsert] then
  begin
    try
      DM.tbUsuario.Cancel;
    finally
      btnUsuarioInserir.Enabled := True;
      btnUsuarioCancelar.Visible := False;
      btnUsuarioExcluir.Visible := True;
      btnUsuarioPesquisa.Visible := True;
      btnUsuarioAnterior.Visible := True;
      btnUsuarioProximo.Visible := True;
      cbxUsuarioAtivo.Enabled := True;
      cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
    end;
  end;
end;

procedure TFrmPrincipal.btnUsuarioExcluirClick(Sender: TObject);
var
  queryTemp: TFDQuery;
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbUsuarioIDUSUARIO.AsString <> '0' then
  begin
    if not (DM.tbUsuario.State in [dsEdit, dsInsert]) then
    begin
      queryTemp := CriaQueryTemp;
      try
        try
          queryTemp.SQL.Text := 'DELETE FROM SEGURANCA WHERE IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString;
          queryTemp.ExecSQL;
        finally
          DM.tbUsuario.Delete;
        end;
      finally
        DM.tbUsuario.Last;
        cbxUsuarioAtivo.Checked := AtualizaCheckBox('USUARIO', 'IDUSUARIO = ' + DM.tbUsuarioIDUSUARIO.AsString);
        FreeAndNil(queryTemp);
      end;
    end;
  end;
end;

procedure TFrmPrincipal.CarregaQuery;
begin
  //DM.tbUsuario.open;
  //DM.tbSeguranca.open;

  //DM.tbCliente.open;
  //DM.tbEmpresa.open;

  //DM.tbProdutoPersonalizado1.open;
  //DM.tbProdutoPersonalizado2.open;
  //DM.tbProdutoPersonalizado3.open;
  //DM.tbProdutoPersonalizado4.open;
  //DM.tbProduto.open;

  //DM.qryItensVenda.open;
  //DM.qryVenda.open;

  //DM.qryConta.open;
end;

procedure TFrmPrincipal.DesCarregaQuery;
begin
  DM.tbUsuario.Close;
  DM.tbSeguranca.Close;

  DM.tbCliente.Close;
  DM.tbEmpresa.Close;

  DM.tbProdutoPersonalizado1.Close;
  DM.tbProdutoPersonalizado2.Close;
  DM.tbProdutoPersonalizado3.Close;
  DM.tbProdutoPersonalizado4.Close;
  DM.tbProduto.Close;

  DM.tbFormaPagamento.Close;
  DM.qryItensVenda.Close;
  DM.tbvenda.Close;

  DM.qryConta.Close;
end;

procedure TFrmPrincipal.CarregaTema;
var
  queryTemp: TFDQuery;
begin
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'SELECT TEMA FROM CONFIG WHERE IDCONFIG = 1';
    queryTemp.Open;

    TStyleManager.TrySetStyle(queryTemp.FieldByName('TEMA').AsString, false);
  finally
    FreeAndNil(queryTemp)
  end;
end;

procedure TFrmPrincipal.DefineTema(Tema: String);
var
  queryTemp: TFDQuery;
begin
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'UPDATE CONFIG SET TEMA = ' + QuotedStr(Tema) + ' WHERE IDCONFIG = 1';
    queryTemp.ExecSQL;

  finally
    FreeAndNil(queryTemp);
    TStyleManager.TrySetStyle(Tema);
  end;
end;

procedure TFrmPrincipal.pcPrincipalChange(Sender: TObject);
begin
  DesCarregaQuery;
  FrmPrincipal.Width := 550;
  if pcPrincipal.ActivePage = Seguranca then
  begin
    DM.tbSeguranca.open;
    DM.tbUsuario.open;
    FrmPrincipal.Width := 750
  end
  else
  if pcPrincipal.ActivePage = Usuario then
  begin
    DM.tbUsuario.open;
    DM.tbSeguranca.open;
  end
  else
  if pcPrincipal.ActivePage = Produto then
  begin
    DM.tbEmpresa.Open;
    DM.tbProdutoPersonalizado1.open;
    DM.tbProdutoPersonalizado2.open;
    DM.tbProdutoPersonalizado3.open;
    DM.tbProdutoPersonalizado4.open;
    DM.tbProduto.open;
  end
  else
  if pcPrincipal.ActivePage = Venda then
  begin
    DM.tbUsuario.Open;
    DM.tbEmpresa.Open;
    DM.tbCliente.Open;
    DM.tbFormaPagamento.open;
    //DM.qryItensVenda.open;
    DM.tbVenda.open;
    DM.tbVenda.Last;
  end
  else
  if pcPrincipal.ActivePage = Cliente then
  begin
    DM.tbCliente.Open;
  end
  else
  if pcPrincipal.ActivePage = Empresa then
  begin
    DM.tbEmpresa.Open;
  end
  else
  if pcPrincipal.ActivePage = Home then
  begin
    DesCarregaQuery;
  end;
end;

procedure TFrmPrincipal.cbVendaParcelaClick(Sender: TObject);
begin
  if not (DM.tbVenda.state in [dsInsert, dsEdit]) then
    DM.tbVenda.Edit;
  DM.tbVendaDTVENCIMENTO.AsString := Copy(DateTimeToStr(IncMonth(now, StrToInt(cbVendaParcela.Text))), 1, 10);
end;

procedure TFrmPrincipal.cbxClienteAtivoClick(Sender: TObject);
begin
  if not (DM.tbCliente.State in [dsInsert, dsEdit]) then
  begin
    DM.tbCliente.Edit;
    if cbxClienteAtivo.Checked then
      DM.tbClienteATIVO.AsString := 'T'
    else
      DM.tbClienteATIVO.AsString := 'F';

    DM.tbCliente.Post;
  end;
end;

procedure TFrmPrincipal.cbxEmpresaAtivoClick(Sender: TObject);
begin
  if not (DM.tbEmpresa.State in [dsInsert, dsEdit]) then
  begin
    DM.tbEmpresa.Edit;
    if cbxEmpresaAtivo.Checked then
      DM.tbEmpresaATIVO.AsString := 'T'
    else
      DM.tbEmpresaATIVO.AsString := 'F';

    DM.tbEmpresa.Post;
  end;
end;

procedure TFrmPrincipal.cbxProdutoAtivoClick(Sender: TObject);
begin
  if not (DM.tbSeguranca.State in [dsInsert, dsEdit]) then
  begin
    DM.tbProduto.Edit;
    if cbxProdutoAtivo.Checked then
      DM.tbProdutoATIVO.AsString := 'T'
    else
      DM.tbProdutoATIVO.AsString := 'F';

    DM.tbProduto.Post;
  end;
end;

procedure TFrmPrincipal.cbxUsuarioAtivoClick(Sender: TObject);
begin
  if not (DM.tbUsuario.State in [dsInsert, dsEdit]) then
  begin
    DM.tbUsuario.Edit;
    if cbxUsuarioAtivo.Checked then
      DM.tbUsuarioATIVO.AsString := 'T'
    else
      DM.tbUsuarioATIVO.AsString := 'F';

    DM.tbUsuario.Post;
  end;
end;

procedure TFrmPrincipal.BloqueiaAcesso;
var
  i: Integer;
  queryTemp: TFDQuery;
begin
  queryTemp := CriaQueryTemp;
  try
    //ORDENAR OS CAMPOS CONFORME A AS TABS DO PAGE CONTROL PRINCIPAL
    queryTemp.SQL.Text := 'SELECT CONTA, SEGURANCA, USUARIO, EMPRESA, CLIENTE, PRODUTO, VENDA FROM SEGURANCA WHERE IDUSUARIO = ' + IntToStr(UsuarioLogadoID);
    queryTemp.Open;

    for i := 0 to queryTemp.FieldCount - 1 do
    begin
      if queryTemp.fields[i].AsString = 'F'then
        pcPrincipal.Pages[i].TabVisible := False;
    end;

  finally
    FreeAndNil(queryTemp);
  end;
end;

end.
