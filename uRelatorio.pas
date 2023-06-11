unit uRelatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, uDM;

type
  TFrmRelatorio = class(TForm)
    PcProcura: TPageControl;
    Procura: TTabSheet;
    Relatório: TTabSheet;
    dbGridRelatorio: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelatorio: TFrmRelatorio;

implementation

{$R *.dfm}

end.
