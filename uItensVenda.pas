unit uItensVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids, uPesquisa,
  Vcl.DBGrids, Datasnap.DBClient, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, uDM, uAux, FireDAC.Comp.Client,
  Datasnap.Provider, MidasLib, Midas;

type
  TfrmItensVenda = class(TForm)
    pnlBottom: TPanel;
    pnlLeft: TPanel;
    pnlRight: TPanel;
    grdItensVenda: TDBGrid;
    dsItensVenda: TDataSource;
    cdsItensVenda: TClientDataSet;
    cdsItensVendaID: TIntegerField;
    cdsItensVendaPRODUTO: TStringField;
    cdsItensVendaCODIGO: TStringField;
    cdsItensVendaPRECO: TFloatField;
    cdsItensVendaQUANTIDADE: TIntegerField;
    Label6: TLabel;
    edtVendaId: TDBEdit;
    Label7: TLabel;
    edtVendaSufixo: TDBEdit;
    Label20: TLabel;
    cbVendaFormaPagamento: TDBLookupComboBox;
    Label26: TLabel;
    edtItensVendaValor: TDBEdit;
    Label31: TLabel;
    gbLeitura: TGroupBox;
    rbLeituraCodProduto: TRadioButton;
    rbLeituraCodBarras: TRadioButton;
    rbLeituraNomeProduto: TRadioButton;
    edtItensVendaProduto: TEdit;
    Label1: TLabel;
    memoVendaObservacao: TDBMemo;
    Label32: TLabel;
    edtVendaEmpresa: TDBLookupComboBox;
    Label33: TLabel;
    edVendaCliente: TDBLookupComboBox;
    Label19: TLabel;
    edtVendaUsuario: TDBLookupComboBox;
    Label22: TLabel;
    edtVendaDtVenda: TDBEdit;
    Label23: TLabel;
    cbVendaParcela: TDBComboBox;
    Label21: TLabel;
    edtVendaVencimento: TDBEdit;
    btnVendaInserir: TButton;
    btnVendaSalvar: TButton;
    btnVendaPesquisa: TButton;
    btnVendaAnterior: TButton;
    btnVendaProximo: TButton;
    btnVendaCancelar: TButton;
    btnVendaExcluir: TButton;
    btnVendaEditar: TButton;
    Label24: TLabel;
    edtVendaDesconto: TDBEdit;
    cdsItensVendaIDITEMVENDA: TIntegerField;
    procedure btnVendaProximoClick(Sender: TObject);
    procedure btnVendaAnteriorClick(Sender: TObject);
    procedure btnVendaInserirClick(Sender: TObject);
    procedure btnVendaSalvarClick(Sender: TObject);
    procedure btnVendaPesquisaClick(Sender: TObject);
    procedure btnVendaCancelarClick(Sender: TObject);
    procedure btnVendaExcluirClick(Sender: TObject);
    procedure edtItensVendaProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVendaEditarClick(Sender: TObject);
    procedure edtVendaDescontoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure grdItensVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure frmItensVendaInsertMode(Ativo: Boolean);
    procedure CarregaDataSetItensVenda;
    procedure SalvaDataSetItensVenda;
    procedure BaixaEstoque(Prod, Qtd: Integer);
  public
    { Public declarations }
  end;

var
  frmItensVenda: TfrmItensVenda;

implementation

{$R *.dfm}

procedure TfrmItensVenda.btnVendaAnteriorClick(Sender: TObject);
begin
  DM.tbVenda.Prior;
  carregaDataSetItensVenda;
end;

procedure TfrmItensVenda.btnVendaCancelarClick(Sender: TObject);
begin
  if DM.tbVenda.State in [dsEdit, dsInsert] then
  begin
    DM.tbVenda.Cancel;
    frmItensVendaInsertMode(False);
    carregaDataSetItensVenda;
  end;
end;

procedure TfrmItensVenda.btnVendaEditarClick(Sender: TObject);
begin
  if not(DM.tbVenda.State in [dsEdit, dsInsert]) then
  begin
    frmItensVendaInsertMode(True);
    DM.tbVenda.Edit;
  end;
end;

procedure TfrmItensVenda.btnVendaExcluirClick(Sender: TObject);
var
  queryTemp: TFDQuery;
begin
  if Application.MessageBox('O registro será removido permanentemente. Deseja continuar?', 'Atenção!', mb_IconQuestion + MB_DEFBUTTON2 + mb_YesNo) = idNo then
    Exit;

  if DM.tbVendaIDVENDA.AsString <> '0' then
  begin
    if not (DM.tbVenda.State in [dsEdit, dsInsert]) then
    begin
      queryTemp := CriaQueryTemp;
      try
        queryTemp.SQL.Text := 'DELETE FROM ITENSVENDA WHERE IDVENDA = ' + DM.tbVendaIDVENDA.AsString;
        queryTemp.ExecSQL;

        DM.tbVenda.Delete;
        DM.tbVenda.Last;

        carregaDataSetItensVenda;
      finally
        FreeAndNil(queryTemp);
      end;
    end;
  end;
end;

procedure TfrmItensVenda.btnVendaInserirClick(Sender: TObject);
var
  queryTemp: TFDQuery;
  NewIdVenda: Integer;
  Sufixo: String;
begin
  frmItensVendaInsertMode(True);
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'SELECT MAX(IDVENDA) FROM VENDA;';
    queryTemp.Open;
    NewIdVenda := queryTemp.FieldByName('MAX(IDVENDA)').AsInteger + 1;
    queryTemp.Close;

    queryTemp.SQL.Text := 'SELECT SUFIXO FROM CONFIG WHERE IDCONFIG = 1;';
    queryTemp.Open;
    Sufixo := queryTemp.FieldByName('SUFIXO').AsString;

    DM.tbVenda.Append;
    DM.tbVendaIDVENDA.AsInteger := NewIdVenda;
    DM.tbVendaSUFIXO.AsString := Sufixo;
    DM.tbVendaPAGO.AsString := 'T';
    DM.tbVendaDTVENDA.AsString := copy(DateToStr(now), 1, 10);
    DM.tbVendaDTVENCIMENTO.AsString := DM.tbVendaDTVENDA.AsString;
    DM.tbVendaPARCELA.AsInteger := 0;
    DM.tbVendaIDEMPRESA.AsInteger := 0;
    DM.tbVendaIDCLIENTE.AsInteger := 0;
    DM.tbVendaIDFUNCIONARIO.AsInteger := uDM.UsuarioLogadoID;
    DM.tbVendaIDFORMAPAGAMENTO.AsInteger := 1;
  finally
    FreeAndNil(queryTemp);
    carregaDataSetItensVenda;
    edtItensVendaProduto.SetFocus;
  end;
end;

procedure TfrmItensVenda.btnVendaPesquisaClick(Sender: TObject);
begin
  try
    if FrmPesquisa = nil then
      FrmPesquisa := TFrmPesquisa.Create(self);
    FrmPesquisa.PreparaConsulta('VENDA', '*', '');
    FrmPesquisa.ShowModal;

    DM.tbVenda.Locate('IDVENDA', DM.qryGeral.FieldByName('IDVENDA').AsString, []);
    carregaDataSetItensVenda;
  finally
    FreeAndNil(FrmPesquisa);
    DM.qryGeral.Close;
  end;
end;

procedure TfrmItensVenda.btnVendaProximoClick(Sender: TObject);
begin
  DM.tbVenda.Next;
  carregaDataSetItensVenda;
end;

procedure TfrmItensVenda.btnVendaSalvarClick(Sender: TObject);
begin
  if DM.tbVenda.State in [dsEdit, dsInsert] then
  begin
    DM.tbVenda.Post;
    SalvaDataSetItensVenda;
    frmItensVendaInsertMode(False);
  end;
end;

procedure TfrmItensVenda.edtItensVendaProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  queryTemp: TFDQuery;
begin
  if key = VK_RETURN then
  begin
    queryTemp := CriaQueryTemp;
    try
      if rbLeituraCodProduto.Checked then
        queryTemp.SQL.Text := 'SELECT * FROM PRODUTO WHERE IDPRODUTO = ' + edtItensVendaProduto.Text
      else
      if rbLeituraCodBarras.Checked then
        queryTemp.SQL.Text := 'SELECT * FROM PRODUTO WHERE CODIGO = ' + edtItensVendaProduto.Text
      else
      if rbLeituraNomeProduto.Checked then
        queryTemp.SQL.Text := 'SELECT * FROM PRODUTO WHERE NOMEPRODUTO LIKE ' + QuotedStr(edtItensVendaProduto.Text);

      queryTemp.Open;

      cdsItensVenda.Append;
      cdsItensVendaID.AsString := queryTemp.FieldByName('IDPRODUTO').AsString;
      cdsItensVendaCODIGO.AsString := queryTemp.FieldByName('CODIGO').AsString;
      cdsItensVendaPRODUTO.AsString := queryTemp.FieldByName('NOMEPRODUTO').AsString;
      cdsItensVendaPRECO.AsFloat := queryTemp.FieldByName('PRECO').AsFloat;
      cdsItensVendaQUANTIDADE.AsInteger := 1;
      cdsItensVenda.Post;

      if not (DM.tbVenda.State in [dsInsert, dsEdit]) then
        DM.tbVenda.edit;

      DM.tbVendaVALORTOTAL.AsCurrency := DM.tbVendaVALORTOTAL.AsCurrency + queryTemp.FieldByName('PRECO').AsCurrency;
    finally
      FreeAndNil(queryTemp);
      edtItensVendaProduto.Clear;
      edtItensVendaProduto.SetFocus;
    end;
  end;
end;

procedure TfrmItensVenda.edtVendaDescontoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmItensVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(cdsItensVenda);
end;

procedure TfrmItensVenda.FormCreate(Sender: TObject);
begin
  cdsItensVenda.CreateDataSet;
end;

procedure TfrmItensVenda.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DM.tbVenda.State = dsBrowse then
  begin
    if key = VK_F1 then
      btnVendaInserirClick(btnVendaInserir)
    else
    if key = VK_F3 then
      btnVendaPesquisaClick(btnVendaPesquisa)
    else
    if key = VK_F5 then
      btnVendaEditarClick(btnVendaEditar)
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
    else
    if (ssCtrl in Shift) and (key = VK_MENU) then
    begin
      cdsItensVenda.edit;
      cdsItensVendaQUANTIDADE.AsString := InputBox('QUANTIDADE', 'Informe a nova quantidade:', '1');
      cdsItensVenda.Post;

      edtItensVendaProduto.SetFocus;
    end;
  end;
end;

procedure TfrmItensVenda.FormShow(Sender: TObject);
begin
  carregaDataSetItensVenda;
end;

procedure TfrmItensVenda.frmItensVendaInsertMode(Ativo: Boolean);
begin
  grdItensVenda.Enabled := Ativo;

  cbVendaParcela.Enabled := Ativo;
  edtVendaEmpresa.Enabled := Ativo;
  edVendaCliente.Enabled := Ativo;
  edtVendaUsuario.Enabled := Ativo;
  rbLeituraCodProduto.Enabled := Ativo;
  rbLeituraCodBarras.Enabled := Ativo;
  rbLeituraNomeProduto.Enabled := Ativo;
  edtItensVendaProduto.Enabled := Ativo;
  cbVendaFormaPagamento.Enabled := Ativo;
  edtItensVendaValor.Enabled := Ativo;
  memoVendaObservacao.Enabled := Ativo;
  edtVendaDesconto.Enabled := Ativo;

  btnVendaInserir.Enabled := not Ativo;
  btnVendaSalvar.Enabled := Ativo;
  btnVendaEditar.Enabled := not Ativo;
  btnVendaPesquisa.Enabled := not Ativo;
  btnVendaAnterior.Enabled := not Ativo;
  btnVendaProximo.Enabled := not Ativo;
  btnVendaCancelar.Enabled := Ativo;
  btnVendaExcluir.Enabled := not Ativo;
end;

procedure TfrmItensVenda.grdItensVendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DELETE then
  begin
    if not (DM.tbVenda.State in [dsInsert, dsEdit]) then
      DM.tbVenda.edit;
    DM.tbVendaVALORTOTAL.AsCurrency := DM.tbVendaVALORTOTAL.AsCurrency - cdsItensVendaPRECO.AsCurrency;

    if not (cdsItensVenda.State in [dsEdit, dsInsert]) then
      cdsItensVenda.edit;
    cdsItensVenda.Delete;
  end;
end;

procedure TfrmItensVenda.CarregaDataSetItensVenda;
var
  queryTemp: TFDQuery;
  i: Integer;
begin
  if not (cdsItensVenda.Active) then
    cdsItensVenda.Active := True;
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'SELECT * FROM ITENSVENDA WHERE IDVENDA = ' + DM.tbVendaIDVENDA.AsString;
    queryTemp.Open;

    if cdsItensVenda.State in [dsInsert, dsEdit] then
      cdsItensVenda.Cancel;

    queryTemp.First;
    for i := 1 to queryTemp.RecordCount do
    begin
      cdsItensVenda.Append;
      cdsItensVendaIDITEMVENDA.AsString := queryTemp.FieldByName('IDITEMVENDA').AsString;
      cdsItensVendaID.AsString := queryTemp.FieldByName('IDPRODUTO').AsString;
      cdsItensVendaPRODUTO.AsString := queryTemp.FieldByName('NOMEPRODUTO').AsString;
      cdsItensVendaCODIGO.AsString := queryTemp.FieldByName('CODIGOBARRAS').AsString;
      cdsItensVendaPRECO.AsFloat := queryTemp.FieldByName('VALOR').AsFloat;
      cdsItensVendaQUANTIDADE.AsInteger := queryTemp.FieldByName('QUANTIDADE').AsInteger;
      cdsItensVenda.Post;

      queryTemp.Next;
    end;

  finally
    FreeAndNil(queryTemp);
  end;
end;

procedure TfrmItensVenda.SalvaDataSetItensVenda;
var
  queryTemp: TFDQuery;
  IdItemVendaAux, i: Integer;
begin
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'DELETE FROM ITENSVENDA WHERE IDVENDA = ' + DM.tbVendaIDVENDA.AsString;
    queryTemp.ExecSQL;

    cdsItensVenda.First;
    for i := 1 to cdsItensVenda.RecordCount do
    begin
      IdItemVendaAux := cdsItensVendaIDITEMVENDA.AsInteger;
      if not (IdItemVendaAux > 0) then
      begin
        queryTemp.SQL.Text := 'SELECT MAX(IDITEMVENDA) FROM ITENSVENDA;';
        queryTemp.Open;
        IdItemVendaAux := queryTemp.FieldByName('MAX(IDITEMVENDA)').AsInteger + 1;
        queryTemp.Close;
      end;

      queryTemp.SQL.Text := 'INSERT INTO ITENSVENDA VALUES (:IDITEMVENDA, :IDVENDA, :IDPROD, :VALOR, :QUANTIDADE, :NOMEPROD, :CODBARRAS);';
      queryTemp.ParamByName('IDITEMVENDA').AsInteger := IdItemVendaAux;
      queryTemp.ParamByName('IDVENDA').AsString := DM.tbVendaIDVENDA.AsString;
      queryTemp.ParamByName('IDPROD').AsString := cdsItensVendaID.AsString;
      queryTemp.ParamByName('NOMEPROD').AsString := cdsItensVendaPRODUTO.AsString;
      queryTemp.ParamByName('CODBARRAS').AsString := cdsItensVendaCODIGO.AsString;
      queryTemp.ParamByName('VALOR').AsFloat := cdsItensVendaPRECO.AsFloat;
      queryTemp.ParamByName('QUANTIDADE').AsInteger := cdsItensVendaQUANTIDADE.AsInteger;
      queryTemp.ExecSQL;

      BaixaEstoque(cdsItensVendaID.AsInteger, cdsItensVendaQUANTIDADE.AsInteger);

      cdsItensVenda.Next;
    end;

  finally
    FreeAndNil(queryTemp);
  end;
end;

procedure TfrmItensVenda.BaixaEstoque(Prod, Qtd: Integer);
var
  queryTemp: TFDQuery;
  QtdAux: Integer;
begin
  queryTemp := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'SELECT QUANTIDADE FROM PRODUTO WHERE IDPRODUTO = :IDPROD;';
    queryTemp.ParamByName('IDPROD').AsInteger := Prod;
    queryTemp.Open;
    QtdAux := queryTemp.FieldByName('QUANTIDADE').AsInteger;
    queryTemp.Close;

    queryTemp.SQL.Text := 'UPDATE PRODUTO SET QUANTIDADE = :QTD WHERE IDPRODUTO = :IDPROD;';
    queryTemp.ParamByName('QTD').AsInteger := QtdAux - Qtd;
    queryTemp.ParamByName('IDPROD').AsInteger := Prod;
    queryTemp.ExecSQL;
  finally
    FreeAndNil(queryTemp);
  end;
end;

end.
