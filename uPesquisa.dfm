object FrmPesquisa: TFrmPesquisa
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 300
  ClientWidth = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  DesignSize = (
    600
    300)
  PixelsPerInch = 96
  TextHeight = 13
  object grdPesquisa: TDBGrid
    Left = 10
    Top = 42
    Width = 582
    Height = 250
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DM.dsGeral
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = grdPesquisaDblClick
    OnTitleClick = grdPesquisaTitleClick
  end
  object chkAtivo: TCheckBox
    Left = 542
    Top = 10
    Width = 50
    Height = 17
    Anchors = [akTop, akRight]
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object edtPesquisa: TEdit
    Left = 10
    Top = 8
    Width = 330
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    OnKeyDown = edtPesquisaKeyDown
  end
  object btnPesquisa: TButton
    Left = 364
    Top = 8
    Width = 80
    Height = 21
    Caption = 'Pesquisar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnPesquisaClick
  end
  object bntFechar: TButton
    Left = 450
    Top = 8
    Width = 80
    Height = 21
    Caption = 'Fechar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = bntFecharClick
  end
end
