object FrmRelatorio: TFrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Consulta e Relat'#243'rio'
  ClientHeight = 681
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PcProcura: TPageControl
    Left = 0
    Top = 0
    Width = 1224
    Height = 681
    ActivePage = Relatório
    Align = alClient
    TabOrder = 0
    object Procura: TTabSheet
      Caption = 'Procura'
    end
    object Relatório: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 1
      object dbGridRelatorio: TDBGrid
        Left = 0
        Top = 0
        Width = 1216
        Height = 653
        Align = alClient
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
end
