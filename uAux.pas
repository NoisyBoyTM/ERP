unit uAux;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.Graphics,
  Vcl.StdCtrls, Data.DB, Vcl.Mask, MaskUtils, Vcl.DBCtrls, uDM, FireDAC.Comp.Client;
  //uses System.SysUtils, FMX.Edit, Classes, System.MaskUtils;

function FormatarTelefone(Telefone : String):String;
function FormataData(str : string): string;
function FormataIE(Num, UF: string): string;
function SomenteNumero(str : string) : string;
function Mask(Mascara, Str : string) : string;
function FormataPeso(str : string) : string;
function FormataValor(str : string) : string;
function Formatar(Texto, Formato, Extra : String) : String;
function AtualizaCheckBox(Tabela, Condicao: String) : Boolean;
function CriaQueryTemp: TFDQuery;

//Criptografia
function criptografar(texto:string;chave:integer):String;
Function descriptografar(texto:string;chave:integer):String;
function AsciiToInt(Caracter: Char): Integer;

implementation

function CriaQueryTemp: TFDQuery;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  FDQuery.Connection := DM.FDConnection;
  FDQuery.Connection.Connected := True;
  Result := FDQuery;
end;

function criptografar(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])+chave);
    end;
    result:=retorno;
  end;
end;

Function descriptografar(texto:string;chave:integer):String;
var
  cont:integer;
  retorno:string;
begin
  if (trim(texto)=EmptyStr) or (chave=0) then begin
    result:=texto;
  end else begin
    retorno:='';
    for cont:=1 to length(texto) do begin
      retorno:=retorno+chr(asciitoint(texto[cont])-chave);
    end;
    result:=retorno;
  end;
end;

function AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;

function AtualizaCheckBox(Tabela, Condicao: String) : Boolean;
var
  qryTemp: TFDQuery;
  colunaAtivo: String;
begin
  qryTemp := CriaQueryTemp;

  if qryTemp.Active then
    qryTemp.Close;
  try
    qryTemp.SQL.Text := 'SELECT * FROM ' + Tabela + ' WHERE ' + Condicao;
    qryTemp.Open;

    if Tabela = 'VENDA' then colunaAtivo := 'PAGO' else colunaAtivo := 'ATIVO';
    if qryTemp.FieldByName(colunaAtivo).AsString = 'T' then
      Result := True
    else
      Result := False;
  finally
    qryTemp.Close;
  end;
end;

function Formatar(Texto, Formato, Extra : String) : String;
begin
  if Formato = 'CPF' then
    Texto := Mask('###.###.###-##', SomenteNumero(Texto));

  if Formato = 'CNPJ' then
    Texto := Mask('##.###.###/####-##', SomenteNumero(Texto));

  if Formato = 'TELEFONE' then
    if Length(Texto) > 14 then
      Texto := Mask('(##) #####-####', SomenteNumero(Texto))
    else
      Texto := Mask('(##) ####-####', SomenteNumero(Texto));

  if Formato = 'VALOR' then
    Texto := FormataValor(SomenteNumero(Texto));

  if Formato = 'DINHEIRO' then
    Texto := Extra + ' ' + FormataValor(SomenteNumero(Texto));

  if Formato = 'REAIS' then
    Texto := 'R$ ' + FormataValor(SomenteNumero(Texto));

  if Formato = 'CEP' then
    Texto := Mask('##.###-###', SomenteNumero(Texto));

  if Formato = 'DATA' then
    Texto := FormataData(SomenteNumero(Texto));

  if Formato = 'PESO' then
    Texto := FormataPeso(SomenteNumero(Texto));

  if Extra <> '' then
    if Formato = 'IE' then
      Texto := FormataIE(SomenteNumero(Texto), Extra);

  if Extra <> '' then
    if Formato = '%' then
      Texto := Mask(Extra, SomenteNumero(Texto));

  if Extra <> '' then
    if Formato = 'PERSONALIZADO' then
      Texto := Mask(Extra, SomenteNumero(Texto));

  Result := Texto;
end;

function SomenteNumero(str : string) : string;
var
    x : integer;
begin
  Result := '';
  for x := 0 to Length(str) - 1 do
      if str.Chars[x] In ['0'..'9'] then
        Result := Result + str.Chars[x];
end;

function FormataValor(str : string) : string;
begin
  if Str = '' then
      Str := '0';

  try
      Result := FormatFloat('#,##0.00', strtofloat(str) / 100);
  except
      Result := FormatFloat('#,##0.00', 0);
  end;
end;

function FormataPeso(str : string) : string;
begin
  if Str.IsEmpty then
      Str := '0';

  try
      Result := FormatFloat('#,##0.000', strtofloat(str) / 1000);
  except
      Result := FormatFloat('#,##0.000', 0);
  end;
end;

function Mask(Mascara, Str : string) : string;
var
  x, p : integer;
begin
  p := 0;
  Result := '';

  if Str.IsEmpty then
      exit;

  for x := 0 to Length(Mascara) - 1 do
  begin
      if Mascara.Chars[x] = '#' then
      begin
          Result := Result + Str.Chars[p];
          inc(p);
      end
      else
          Result := Result + Mascara.Chars[x];

      if p = Length(Str) then
          break;
  end;
end;

function FormataIE(Num, UF: string): string;
var
  Mascara : string;
begin
  Mascara := '';
  IF UF = 'AC' Then Mascara := '##.###.###/###-##';
  IF UF = 'AL' Then Mascara := '#########';
  IF UF = 'AP' Then Mascara := '#########';
  IF UF = 'AM' Then Mascara := '##.###.###-#';
  IF UF = 'BA' Then Mascara := '######-##';
  IF UF = 'CE' Then Mascara := '########-#';
  IF UF = 'DF' Then Mascara := '###########-##';
  IF UF = 'ES' Then Mascara := '#########';
  IF UF = 'GO' Then Mascara := '##.###.###-#';
  IF UF = 'MA' Then Mascara := '#########';
  IF UF = 'MT' Then Mascara := '##########-#';
  IF UF = 'MS' Then Mascara := '#########';
  IF UF = 'MG' Then Mascara := '###.###.###/####';
  IF UF = 'PA' Then Mascara := '##-######-#';
  IF UF = 'PB' Then Mascara := '########-#';
  IF UF = 'PR' Then Mascara := '########-##';
  IF UF = 'PE' Then Mascara := '##.#.###.#######-#';
  IF UF = 'PI' Then Mascara := '#########';
  IF UF = 'RJ' Then Mascara := '##.###.##-#';
  IF UF = 'RN' Then Mascara := '##.###.###-#';
  IF UF = 'RS' Then Mascara := '###/#######';
  IF UF = 'RO' Then Mascara := '###.#####-#';
  IF UF = 'RR' Then Mascara := '########-#';
  IF UF = 'SC' Then Mascara := '###.###.###';
  IF UF = 'SP' Then Mascara := '###.###.###.###';
  IF UF = 'SE' Then Mascara := '#########-#';
  IF UF = 'TO' Then Mascara := '###########';

  Result := Mask(mascara, Num);
end;

function FormataData(str : string): string;
begin
  str := Copy(str, 1, 8);

  if Length(str) < 8 then
      Result := Mask('##/##/####', str)
  else
  begin
      try
          str := Mask('##/##/####', str);
          strtodate(str);
          Result := str;
      except
          Result := '';
      end;
  end;
end;

function FormatarTelefone(Telefone : String):String;
  function SomenteNumero(snum : String) : String;
  VAR s1, s2: STRING;
    i: Integer;
  BEGIN
    s1 := snum;
    s2 := '';
    FOR i := 1 TO Length(s1) DO
      IF s1[i] IN ['0'..'9'] THEN
        s2 := s2 + s1[i];
    result := s2;
  End;
var sTel : String;
    bZero : Boolean;
    iDigitos : Integer;
begin
   //Obs: mascara prevê tratamento apenas para números brasileiros
   //Obs2: Esta função não leva em conta o código do país (Ex: 55, ou +55)

   sTel := SomenteNumero(Telefone); //Remove qualquer formatação que o usuário possa ter colocado.
   if sTel='' then
    Result := ''
   else
   begin
     if sTel[1]='0' then //Verifica se foi adicionado o 0 no início do número
     begin
       bZero:= True;
       sTel := Trim( copy(sTel,2,Length(sTel)) ); //Remove para fazer a formatação depois adiciona
     end
     else
       bZero := False;
     iDigitos := Length(sTel);
     //Formata de acordo com a quantidade de números encontrados.
     case iDigitos of
       8 : Result := FormatMaskText('9999-9999;0;_',sTel); //8 digitos SEM DDD (ex: 34552318)
       9 : Result := FormatMaskText('9 9999-9999;0;_',sTel); //9 digitos SEM DDD (ex: 991916889)
      10 : Result := FormatMaskText('(99) 9999-9999;0;_',sTel); //8 Digitos (convencional, ex: 7734552318)
      11 : Result := FormatMaskText('(99) 9 9999-9999;0;_',sTel); //9 Digitos (novos números, ex: 77991916889)
      12 : Result := FormatMaskText('99(99)9999-9999;0;_',sTel); //Se foram 12 digitos possívelmente digitou a operadora também
      13 : Result := FormatMaskText('99(99)9 9999-9999;0;_',sTel); //Se foram 13 digitos possívelmente digitou a operadora também
     else
       Result := Telefone; //Mantém na forma que o usuário digitou
     end;
     if bZero then //Para ficar com a preferência do usuário, se ele digitou o "0" eu mantenho.
       Result := '0'+Result;
   end;
end;

end.
