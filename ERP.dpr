program ERP;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {FrmPrincipal},
  uDM in 'uDM.pas' {DM: TDataModule},
  uRelatorio in 'uRelatorio.pas' {FrmRelatorio},
  uLogin in 'uLogin.pas' {FrmLogin},
  uPesquisa in 'uPesquisa.pas' {FrmPesquisa},
  uAux in 'uAux.pas',
  Vcl.Themes,
  Vcl.Styles,
  uItensVenda in 'uItensVenda.pas' {frmItensVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sapphire Kamri');
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
