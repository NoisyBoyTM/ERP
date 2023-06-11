unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, uDM, Data.DB, FireDAC.Comp.Client,
  Vcl.Mask, uAux;

type
  TFrmLogin = class(TForm)
    lblUsuario: TLabel;
    lblSenha: TLabel;
    cbxUsuario: TDBComboBox;
    btnLogin: TButton;
    btnFechar: TButton;
    edtSenha: TMaskEdit;
    procedure btnLoginClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.btnFecharClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmLogin.btnLoginClick(Sender: TObject);
var
  queryTemp, queryTemp2: TFDQuery;
  Senha: String;
begin
  queryTemp := CriaQueryTemp;
  queryTemp2 := CriaQueryTemp;
  try
    queryTemp.SQL.Text := 'SELECT IDUSUARIO, SENHA FROM USUARIO WHERE NOME = ' + QuotedStr(cbxUsuario.Text);
    queryTemp.Open;

    queryTemp2.SQL.Text := 'SELECT CREDENCIAL FROM SEGURANCA WHERE IDUSUARIO = ' + queryTemp.FieldByName('IDUSUARIO').AsString;
    queryTemp2.Open;

    Senha := descriptografar(queryTemp.FieldByName('SENHA').AsString, 7);

    if (edtSenha.Text <> '') then
      begin
        if UpperCase(edtSenha.Text) = Senha then
          begin
            uDM.UsuarioLogadoCredencial := queryTemp2.FieldByName('CREDENCIAL').AsInteger;
            uDM.UsuarioLogadoID := queryTemp.FieldByName('IDUSUARIO').AsInteger;
            uDM.UsuarioLogado := cbxUsuario.Text;

            DM.qryLogin.Close;
            ModalResult := mrOk;
          end
        else
          Messagedlg('Senha Incorreta!', mtInformation, [mbOk], 0);
      end
    else
      Messagedlg('Senha não Preenchida!', mtInformation, [mbOk], 0);

    edtSenha.SetFocus;
    edtSenha.Text := '';
  finally
    FreeAndNil(queryTemp);
    FreeAndNil(queryTemp2);
  end;
end;

procedure TFrmLogin.edtSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnLogin.Click;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
var
hwndHandle : THANDLE;
hMenuHandle : HMenu;
begin
  hwndHandle := Self.Handle;
  if (hwndHandle <> 0) then
    begin
      hMenuHandle := GetSystemMenu(hwndHandle, FALSE);
      if (hMenuHandle <> 0) then
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  DM.qryLogin.Open;
  cbxUsuario.Items.Clear;
  while not DM.qryLogin.Eof do
  begin
    cbxUsuario.Items.Add(DM.qryLogin.FieldByName('NOME').AsString);
    DM.qryLogin.Next;
  end;
  DM.qryLogin.First;
  cbxUsuario.SetFocus;
end;

end.
