object frmItensVenda: TfrmItensVenda
  Left = 0
  Top = 0
  Caption = 'Venda'
  ClientHeight = 681
  ClientWidth = 1244
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBottom: TPanel
    Left = 0
    Top = 640
    Width = 1244
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      1244
      41)
    object btnVendaInserir: TButton
      Left = 9
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnVendaInserirClick
    end
    object btnVendaSalvar: TButton
      Left = 405
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnVendaSalvarClick
    end
    object btnVendaPesquisa: TButton
      Left = 174
      Top = 8
      Width = 80
      Height = 25
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnVendaPesquisaClick
    end
    object btnVendaAnterior: TButton
      Left = 262
      Top = 8
      Width = 25
      Height = 25
      Caption = '<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnVendaAnteriorClick
    end
    object btnVendaProximo: TButton
      Left = 293
      Top = 8
      Width = 25
      Height = 25
      Caption = '>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnVendaProximoClick
    end
    object btnVendaCancelar: TButton
      Left = 324
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnVendaCancelarClick
    end
    object btnVendaExcluir: TButton
      Left = 1156
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnVendaExcluirClick
    end
    object btnVendaEditar: TButton
      Left = 90
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Editar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnVendaEditarClick
    end
  end
  object pnlLeft: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 640
    Align = alLeft
    TabOrder = 1
    object Label6: TLabel
      Left = 9
      Top = 6
      Width = 19
      Height = 20
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 59
      Top = 6
      Width = 61
      Height = 20
      Caption = 'SUFIXO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 9
      Top = 392
      Width = 110
      Height = 20
      Caption = 'FORMA PGTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 125
      Top = 446
      Width = 69
      Height = 24
      Caption = 'VALOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label31: TLabel
      Left = 9
      Top = 504
      Width = 87
      Height = 16
      Caption = 'OBSERVA'#199#195'O'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 331
      Width = 82
      Height = 20
      Caption = 'PRODUTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label32: TLabel
      Left = 9
      Top = 111
      Width = 79
      Height = 20
      Caption = 'EMPRESA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label33: TLabel
      Left = 9
      Top = 163
      Width = 70
      Height = 20
      Caption = 'CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label19: TLabel
      Left = 9
      Top = 214
      Width = 118
      Height = 20
      Caption = 'FUNCIONARIO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 9
      Top = 59
      Width = 85
      Height = 20
      Caption = 'DT VENDA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 125
      Top = 392
      Width = 87
      Height = 20
      Caption = 'PARCELAS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label21: TLabel
      Left = 143
      Top = 59
      Width = 73
      Height = 20
      Caption = 'DT VCTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 9
      Top = 449
      Width = 90
      Height = 20
      Caption = 'DESCONTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtVendaId: TDBEdit
      Tag = 1
      Left = 9
      Top = 26
      Width = 44
      Height = 28
      CharCase = ecUpperCase
      DataField = 'IDVENDA'
      DataSource = DM.dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtVendaSufixo: TDBEdit
      Tag = 1
      Left = 59
      Top = 26
      Width = 78
      Height = 28
      CharCase = ecUpperCase
      DataField = 'SUFIXO'
      DataSource = DM.dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object cbVendaFormaPagamento: TDBLookupComboBox
      Left = 9
      Top = 412
      Width = 110
      Height = 28
      DataField = 'IDFORMAPAGAMENTO'
      DataSource = DM.dsVenda
      DropDownRows = 15
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      KeyField = 'IDPAGAMENTO'
      ListField = 'NMPAGAMENTO'
      ListSource = DM.dsFormaPagamento
      ParentFont = False
      TabOrder = 2
    end
    object edtItensVendaValor: TDBEdit
      Tag = 1
      Left = 125
      Top = 470
      Width = 132
      Height = 27
      CharCase = ecUpperCase
      DataField = 'VALORTOTAL'
      DataSource = DM.dsVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object gbLeitura: TGroupBox
      Left = 9
      Top = 279
      Width = 248
      Height = 42
      Caption = 'Leitura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object rbLeituraCodProduto: TRadioButton
        Left = 10
        Top = 19
        Width = 75
        Height = 17
        Caption = 'C'#243'digo'
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object rbLeituraCodBarras: TRadioButton
        Left = 85
        Top = 19
        Width = 71
        Height = 17
        Margins.Left = 10
        Caption = 'Barras'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rbLeituraNomeProduto: TRadioButton
        Left = 161
        Top = 19
        Width = 65
        Height = 17
        Margins.Left = 10
        Caption = 'Nome'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 20
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object edtItensVendaProduto: TEdit
      Left = 9
      Top = 357
      Width = 248
      Height = 28
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnKeyDown = edtItensVendaProdutoKeyDown
    end
    object memoVendaObservacao: TDBMemo
      Left = 9
      Top = 520
      Width = 248
      Height = 114
      DataField = 'OBSERVACAO'
      DataSource = DM.dsVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object edtVendaEmpresa: TDBLookupComboBox
      Left = 9
      Top = 131
      Width = 248
      Height = 28
      DataField = 'IDEMPRESA'
      DataSource = DM.dsVenda
      DropDownRows = 15
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'IDEMPRESA'
      ListField = 'RAZAOSOCIAL'
      ListSource = DM.dsEmpresa
      NullValueKey = 16430
      ParentFont = False
      TabOrder = 7
    end
    object edVendaCliente: TDBLookupComboBox
      Left = 9
      Top = 180
      Width = 248
      Height = 28
      DataField = 'IDCLIENTE'
      DataSource = DM.dsVenda
      DropDownRows = 15
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'IDCLIENTE'
      ListField = 'NOME'
      ListSource = DM.dsCliente
      NullValueKey = 16430
      ParentFont = False
      TabOrder = 8
    end
    object edtVendaUsuario: TDBLookupComboBox
      Left = 9
      Top = 236
      Width = 248
      Height = 28
      DataField = 'IDFUNCIONARIO'
      DataSource = DM.dsVenda
      DropDownRows = 15
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      KeyField = 'IDUSUARIO'
      ListField = 'NOME'
      ListSource = DM.dsUsuario
      NullValueKey = 16430
      ParentFont = False
      TabOrder = 9
    end
    object edtVendaDtVenda: TDBEdit
      Tag = 1
      Left = 9
      Top = 77
      Width = 128
      Height = 28
      CharCase = ecUpperCase
      DataField = 'DTVENDA'
      DataSource = DM.dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object cbVendaParcela: TDBComboBox
      Left = 125
      Top = 412
      Width = 129
      Height = 28
      CharCase = ecUpperCase
      DataField = 'PARCELA'
      DataSource = DM.dsVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        '0'
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
      ParentFont = False
      TabOrder = 11
    end
    object edtVendaVencimento: TDBEdit
      Tag = 1
      Left = 143
      Top = 77
      Width = 114
      Height = 28
      CharCase = ecUpperCase
      DataField = 'DTVENCIMENTO'
      DataSource = DM.dsVenda
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object edtVendaDesconto: TDBEdit
      Tag = 1
      Left = 9
      Top = 470
      Width = 110
      Height = 28
      DataField = 'DESCONTO'
      DataSource = DM.dsVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnKeyDown = edtVendaDescontoKeyDown
    end
  end
  object pnlRight: TPanel
    Left = 273
    Top = 0
    Width = 971
    Height = 640
    Align = alClient
    TabOrder = 2
    object grdItensVenda: TDBGrid
      Left = 1
      Top = 1
      Width = 969
      Height = 638
      Align = alClient
      DataSource = dsItensVenda
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -19
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnKeyDown = grdItensVendaKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'ID'
          Title.Alignment = taCenter
          Title.Caption = 'COD'
          Width = 56
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CODIGO'
          Title.Alignment = taCenter
          Title.Caption = 'COD BARRAS'
          Width = 136
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Width = 570
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'QUANTIDADE'
          Title.Alignment = taCenter
          Title.Caption = 'QTD'
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Title.Alignment = taCenter
          Title.Caption = 'PRE'#199'O'
          Visible = True
        end>
    end
  end
  object dsItensVenda: TDataSource
    DataSet = cdsItensVenda
    Left = 1185
    Top = 568
  end
  object cdsItensVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 1185
    Top = 520
    object cdsItensVendaID: TIntegerField
      FieldName = 'ID'
    end
    object cdsItensVendaPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Size = 200
    end
    object cdsItensVendaCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsItensVendaPRECO: TFloatField
      FieldName = 'PRECO'
      currency = True
    end
    object cdsItensVendaQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
    end
    object cdsItensVendaIDITEMVENDA: TIntegerField
      FieldName = 'IDITEMVENDA'
    end
  end
end
