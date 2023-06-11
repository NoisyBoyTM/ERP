unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Phys.IBWrapper, FireDAC.Phys.MySQLDef, FireDAC.Phys.MySQL;

type
  TDM = class(TDataModule)
    FDConnection: TFDConnection;
    FDWaitCursor: TFDGUIxWaitCursor;
    qryConta: TFDQuery;
    qryItensVenda: TFDQuery;
    qryContaIDCONTA: TIntegerField;
    qryContaNOMECONTA: TStringField;
    qryContaDESCRICAO: TStringField;
    qryContaCLASSIFICACAO: TStringField;
    qryContaVALOR: TSingleField;
    qryContaPARCELA: TIntegerField;
    qryContaDTVENCIMENTO: TSQLTimeStampField;
    qryContaPAGO: TStringField;
    qryContaOBSERVACAO: TStringField;
    qryItensVendaIDITEMVENDA: TIntegerField;
    qryItensVendaIDVENDA: TIntegerField;
    qryItensVendaIDPRODUTO: TIntegerField;
    qryItensVendaVALOR: TSingleField;
    qryItensVendaQUANTIDADE: TIntegerField;
    dsLogin: TDataSource;
    dsProduto: TDataSource;
    dsItensVenda: TDataSource;
    dsCliente: TDataSource;
    dsEmpresa: TDataSource;
    dsConta: TDataSource;
    dsVenda: TDataSource;
    dsSeguranca: TDataSource;
    dsUsuario: TDataSource;
    dsGridRelatorio: TDataSource;
    qryGeral: TFDQuery;
    dsGeral: TDataSource;
    qryLogin: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField15: TStringField;
    dsProdutoPersonalizado1: TDataSource;
    tbSeguranca: TFDTable;
    tbSegurancaIDUSUARIO: TIntegerField;
    tbSegurancaCREDENCIAL: TIntegerField;
    tbSegurancaVENDA: TStringField;
    tbSegurancaPRODUTO: TStringField;
    tbSegurancaCLIENTE: TStringField;
    tbSegurancaEMPRESA: TStringField;
    tbSegurancaCONTA: TStringField;
    tbSegurancaUSUARIO: TStringField;
    tbSegurancaRELATORIO: TStringField;
    tbSegurancaNOME: TStringField;
    tbProduto: TFDTable;
    tbProdutoIDPRODUTO: TIntegerField;
    tbProdutoNOMEPRODUTO: TStringField;
    tbProdutoCODIGO: TStringField;
    tbProdutoCUSTO: TSingleField;
    tbProdutoMARGEMLUCRO: TIntegerField;
    tbProdutoPRECO: TSingleField;
    tbProdutoQUANTIDADE: TIntegerField;
    tbProdutoFORNECEDOR: TIntegerField;
    tbProdutoDTENTRADA: TSQLTimeStampField;
    tbProdutoCDPERSONALIZADO1: TIntegerField;
    tbProdutoCDPERSONALIZADO2: TIntegerField;
    tbProdutoCDPERSONALIZADO3: TIntegerField;
    tbProdutoCDPERSONALIZADO4: TIntegerField;
    tbProdutoOBSERVACAO: TStringField;
    tbEmpresa: TFDTable;
    tbEmpresaIDEMPRESA: TIntegerField;
    tbEmpresaNOMEFANTASIA: TStringField;
    tbEmpresaRAZAOSOCIAL: TStringField;
    tbEmpresaATIVO: TStringField;
    tbEmpresaCNPJ: TStringField;
    tbEmpresaTELEFONE: TStringField;
    tbEmpresaEMAIL: TStringField;
    tbEmpresaESTADO: TStringField;
    tbEmpresaCIDADE: TStringField;
    tbEmpresaBAIRRO: TStringField;
    tbEmpresaRUA: TStringField;
    tbEmpresaNUMERO: TStringField;
    tbEmpresaCOMPLEMENTO: TStringField;
    tbEmpresaCEP: TStringField;
    tbEmpresaOBSERVACAO: TStringField;
    dsProdutoPersonalizado2: TDataSource;
    dsProdutoPersonalizado3: TDataSource;
    dsProdutoPersonalizado4: TDataSource;
    tbProdutoPersonalizado1: TFDTable;
    tbProdutoPersonalizado2: TFDTable;
    tbProdutoPersonalizado3: TFDTable;
    tbProdutoPersonalizado4: TFDTable;
    tbProdutoPersonalizado2CDPERSONALIZADO2: TIntegerField;
    tbProdutoPersonalizado2NMPERSONALIZADO2: TStringField;
    tbProdutoPersonalizado3CDPERSONALIZADO3: TIntegerField;
    tbProdutoPersonalizado3NMPERSONALIZADO3: TStringField;
    tbProdutoPersonalizado4CDPERSONALIZADO4: TIntegerField;
    tbProdutoPersonalizado4NMPERSONALIZADO4: TStringField;
    tbProdutoATIVO: TStringField;
    tbProdutoPersonalizado1CDPERSONALIZADO1: TIntegerField;
    tbProdutoPersonalizado1NMPERSONALIZADO1: TStringField;
    tbCliente: TFDTable;
    tbClienteIDCLIENTE: TIntegerField;
    tbClienteNOME: TStringField;
    tbClienteATIVO: TStringField;
    tbClienteCPF: TStringField;
    tbClienteTELEFONE: TStringField;
    tbClienteEMAIL: TStringField;
    tbClienteSEXO: TStringField;
    tbClienteESTADO: TStringField;
    tbClienteCIDADE: TStringField;
    tbClienteBAIRRO: TStringField;
    tbClienteRUA: TStringField;
    tbClienteNUMERO: TStringField;
    tbClienteCOMPLEMENTO: TStringField;
    tbClienteCEP: TStringField;
    tbClienteDTNASCIMENTO: TSQLTimeStampField;
    tbClienteOBSERVACAO: TStringField;
    tbEmpresaIE: TStringField;
    tbUsuario: TFDTable;
    tbUsuarioIDUSUARIO: TIntegerField;
    tbUsuarioNOME: TStringField;
    tbUsuarioSENHA: TStringField;
    tbUsuarioATIVO: TStringField;
    tbUsuarioCPF: TStringField;
    tbUsuarioTELEFONE: TStringField;
    tbUsuarioEMAIL: TStringField;
    tbUsuarioSEXO: TStringField;
    tbUsuarioESTADO: TStringField;
    tbUsuarioCIDADE: TStringField;
    tbUsuarioBAIRRO: TStringField;
    tbUsuarioRUA: TStringField;
    tbUsuarioNUMERO: TStringField;
    tbUsuarioCOMPLEMENTO: TStringField;
    tbUsuarioCEP: TStringField;
    tbUsuarioDTNASCIMENTO: TSQLTimeStampField;
    tbUsuarioOBSERVACAO: TStringField;
    tbProdutoNCM: TStringField;
    tbVenda: TFDTable;
    dsFormaPagamento: TDataSource;
    tbFormaPagamento: TFDTable;
    tbFormaPagamentoIDPAGAMENTO: TIntegerField;
    tbFormaPagamentoNMPAGAMENTO: TStringField;
    tbVendaIDVENDA: TIntegerField;
    tbVendaIDEMPRESA: TIntegerField;
    tbVendaIDCLIENTE: TIntegerField;
    tbVendaIDFUNCIONARIO: TIntegerField;
    tbVendaPARCELA: TIntegerField;
    tbVendaPAGO: TStringField;
    tbVendaOBSERVACAO: TStringField;
    tbVendaSUFIXO: TStringField;
    tbVendaIDFORMAPAGAMENTO: TIntegerField;
    qryConfig: TFDQuery;
    dsConfig: TDataSource;
    tbVendaDESCONTO: TSingleField;
    tbVendaVALORTOTAL: TSingleField;
    qryItensVendaNOMEPRODUTO: TStringField;
    qryItensVendaCODIGOBARRAS: TStringField;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    tbVendaDTVENDA: TDateField;
    tbVendaDTVENCIMENTO: TDateField;
    procedure tbSegurancaVENDAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaPRODUTOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaCLIENTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaEMPRESAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaCONTAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaUSUARIOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure tbSegurancaRELATORIOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;
  UsuarioLogado: String;
  UsuarioLogadoID: Integer;
  UsuarioLogadoCredencial: Integer;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.tbSegurancaCLIENTEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DM.tbSegurancaCLIENTE.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaCLIENTE.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaCONTAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
    if DM.tbSegurancaCONTA.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaCONTA.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaEMPRESAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DM.tbSegurancaEMPRESA.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaEMPRESA.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaPRODUTOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DM.tbSegurancaPRODUTO.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaPRODUTO.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaRELATORIOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
    if DM.tbSegurancaRELATORIO.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaRELATORIO.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaUSUARIOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
    if DM.tbSegurancaUSUARIO.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaUSUARIO.AsString = 'F' then
    Text := 'Bloqueado';
end;

procedure TDM.tbSegurancaVENDAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if DM.tbSegurancaVENDA.AsString = 'T' then
    Text := 'Liberado'
  else
    if DM.tbSegurancaVENDA.AsString = 'F' then
    Text := 'Bloqueado';
end;

end.
