unit uPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls, uDM,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls;

type
  TFrmPesquisa = class(TForm)
    grdPesquisa: TDBGrid;
    chkAtivo: TCheckBox;
    edtPesquisa: TEdit;
    btnPesquisa: TButton;
    bntFechar: TButton;
    procedure edtPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grdPesquisaDblClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure bntFecharClick(Sender: TObject);
    procedure grdPesquisaTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CarregaDataSource(DataSource:TDataSource; DataSet:TDataSet; DataField:TField);
    procedure PreparaConsulta(Tabela, Coluna, Parametro:String);
    procedure DefineParametro;
  end;

var
  FrmPesquisa: TFrmPesquisa;
  GColuna, Gtabela, GParametro : String;

implementation

{$R *.dfm}

procedure TFrmPesquisa.bntFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPesquisa.btnPesquisaClick(Sender: TObject);
begin
  PreparaConsulta(GTabela, GColuna, GParametro);
end;

procedure TfrmPesquisa.CarregaDataSource(DataSource:TDataSource; DataSet:TDataSet; DataField:TField);
begin
  grdPesquisa.DataSource := DataSource;
end;

procedure TfrmPesquisa.PreparaConsulta(Tabela, Coluna, Parametro:String);
var
  Ativo: String;
begin
  if chkAtivo.Checked then
    Ativo := (''''+ 'T' + '''')
  else
    Ativo := (''''+ 'F' + '''');

  if edtPesquisa.Text <> '' then
    DefineParametro;

  if DM.qryGeral.Active then
    DM.qryGeral.Close;
  with DM.qryGeral.SQL do
  begin
    Clear;
    add(' SELECT ' + Coluna);
    add(' FROM ' + Tabela);
    if Tabela = 'VENDA' then
      add(' WHERE PAGO = ' + Ativo)
    else
    add(' WHERE ATIVO = ' + Ativo);
    if Parametro <> '' then
      add(' AND ' + Parametro + ' LIKE ' + '''' + '%' + trim(UpperCase(edtPesquisa.Text)) + '%' + '''');
  end;
  DM.qryGeral.open;

  GTabela := Tabela;
  GColuna := Coluna;
  GParametro := Parametro;
end;

procedure TfrmPesquisa.DefineParametro;
begin
  if GTabela = 'USUARIO' then
    GParametro := 'NOME';
  if GTabela = 'CLIENTE' then
    GParametro := 'NOME';
  if GTabela = 'EMPRESA' then
    GParametro := 'NOMEFANTASIA';
  if GTabela = 'PRODUTO' then
    GParametro := 'NOMEPRODUTO';
  if GTabela = 'VENDA' then
    GParametro := 'IDVENDA';
  if GTabela = 'CONTA' then
    GParametro := 'NOMECONTA';
end;

procedure TFrmPesquisa.edtPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtPesquisa.Text <> '' then
    DefineParametro;

  if Key = VK_RETURN then
  begin
    PreparaConsulta(GTabela, GColuna, GParametro);
  end;
end;

procedure TFrmPesquisa.grdPesquisaDblClick(Sender: TObject);
begin
  FrmPesquisa.Close;
end;

procedure TFrmPesquisa.grdPesquisaTitleClick(Column: TColumn);
begin
  with DM.qryGeral do
  begin
    if IndexFieldNames = Column.FieldName + ':D' then
      IndexFieldNames := Column.FieldName + ':A'
    else
      IndexFieldNames := Column.FieldName + ':D';
  end;

end;

end.
