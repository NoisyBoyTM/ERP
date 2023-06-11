object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  ActiveControl = pcPrincipal
  Caption = 'ERP'
  ClientHeight = 395
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenuPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 534
    Height = 395
    ActivePage = Venda
    Align = alClient
    TabOrder = 0
    OnChange = pcPrincipalChange
    object Conta: TTabSheet
      Caption = 'Conta'
      ImageIndex = 4
      DesignSize = (
        526
        367)
      object btnPesquisaConta: TButton
        Left = 3
        Top = 346
        Width = 0
        Height = 25
        Anchors = [akLeft, akRight]
        Caption = 'Pesquisar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnPesquisaContaClick
      end
      object pnlContasBottom: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          526
          41)
        object Button1: TButton
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
          TabOrder = 0
        end
        object Button2: TButton
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
          TabOrder = 1
        end
        object Button3: TButton
          Left = 436
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
          TabOrder = 2
        end
        object Button4: TButton
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
          TabOrder = 3
        end
        object Button5: TButton
          Left = 92
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object Button6: TButton
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
          TabOrder = 5
        end
        object Button7: TButton
          Left = 324
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
        end
      end
      object pnlContas: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        Caption = 'Em Breve'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object Seguranca: TTabSheet
      Caption = 'Seguran'#231'a'
      ImageIndex = 7
      object grdSeguranca: TDBGrid
        Left = 0
        Top = 0
        Width = 526
        Height = 367
        Align = alClient
        DataSource = DM.dsSeguranca
        GradientEndColor = clGray
        GradientStartColor = clGray
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = grdSegurancaDblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'IDUSUARIO'
            Title.Alignment = taCenter
            Title.Caption = '#'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 20
            Visible = True
          end
          item
            ButtonStyle = cbsNone
            DropDownRows = 0
            Expanded = False
            FieldName = 'NOME'
            Title.Caption = 'Nome'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CREDENCIAL'
            Title.Alignment = taCenter
            Title.Caption = 'N'#237'vel'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'VENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Vendas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PRODUTO'
            Title.Alignment = taCenter
            Title.Caption = 'Produtos'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Clientes'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMPRESA'
            Title.Alignment = taCenter
            Title.Caption = 'Empresas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONTA'
            Title.Alignment = taCenter
            Title.Caption = 'Contas'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'USUARIO'
            Title.Alignment = taCenter
            Title.Caption = 'Usu'#225'rios'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RELATORIO'
            Title.Alignment = taCenter
            Title.Caption = 'Relat'#243'rios'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = [fsBold]
            Width = 65
            Visible = True
          end>
      end
    end
    object Usuario: TTabSheet
      Caption = 'Usu'#225'rios'
      ImageIndex = 5
      object Panel2: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          526
          41)
        object btnUsuarioProximo: TButton
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
          TabOrder = 0
          OnClick = btnUsuarioProximoClick
        end
        object btnUsuarioAnterior: TButton
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
          TabOrder = 1
          OnClick = btnUsuarioAnteriorClick
        end
        object btnUsuarioExcluir: TButton
          Left = 436
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
          TabOrder = 2
          OnClick = btnUsuarioExcluirClick
        end
        object btnUsuarioInserir: TButton
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
          TabOrder = 3
          OnClick = btnUsuarioInserirClick
        end
        object btnUsuarioSalvar: TButton
          Left = 92
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnUsuarioSalvarClick
        end
        object btnUsuarioPesquisa: TButton
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
          TabOrder = 5
          OnClick = btnUsuarioPesquisaClick
        end
        object btnUsuarioCancelar: TButton
          Left = 324
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = btnUsuarioCancelarClick
        end
      end
      object pnlUsuario: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        TabOrder = 1
        object lblUsuarioObs: TLabel
          Left = 10
          Top = 206
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
        object lblUsuarioBairro: TLabel
          Left = 10
          Top = 156
          Width = 39
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioUf: TLabel
          Left = 10
          Top = 108
          Width = 14
          Height = 16
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioTelefone: TLabel
          Left = 10
          Top = 59
          Width = 55
          Height = 16
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioId: TLabel
          Left = 10
          Top = 10
          Width = 14
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioNome: TLabel
          Left = 50
          Top = 10
          Width = 35
          Height = 16
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioSenha: TLabel
          Left = 186
          Top = 10
          Width = 42
          Height = 16
          Caption = 'SENHA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioCpf: TLabel
          Left = 322
          Top = 10
          Width = 22
          Height = 16
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioSexo: TLabel
          Left = 460
          Top = 59
          Width = 31
          Height = 16
          Caption = 'Sexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioDtNascimento: TLabel
          Left = 322
          Top = 59
          Width = 109
          Height = 16
          Caption = 'Data Nascimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioEmail: TLabel
          Left = 142
          Top = 59
          Width = 32
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioCidade: TLabel
          Left = 53
          Top = 108
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioRua: TLabel
          Left = 244
          Top = 108
          Width = 87
          Height = 16
          Caption = 'LOGRADOURO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioNumero: TLabel
          Left = 460
          Top = 108
          Width = 52
          Height = 16
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioCep: TLabel
          Left = 389
          Top = 156
          Width = 23
          Height = 16
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblUsuarioComplemento: TLabel
          Left = 244
          Top = 156
          Width = 92
          Height = 16
          Caption = 'COMPLEMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MemoUsuarioObs: TDBMemo
          Tag = 1
          Left = 10
          Top = 228
          Width = 500
          Height = 89
          DataField = 'OBSERVACAO'
          DataSource = DM.dsUsuario
          TabOrder = 0
        end
        object edtUsuarioBairro: TDBEdit
          Left = 10
          Top = 176
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DM.dsUsuario
          TabOrder = 1
        end
        object edtUsuarioUf: TDBEdit
          Left = 10
          Top = 128
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = DM.dsUsuario
          TabOrder = 2
          OnChange = edtUsuarioUfChange
        end
        object edtUsuarioTelefone: TDBEdit
          Tag = 1
          Left = 10
          Top = 79
          Width = 121
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DM.dsUsuario
          TabOrder = 3
          OnChange = edtUsuarioTelefoneChange
        end
        object EdtUsuarioId: TDBEdit
          Tag = 1
          Left = 10
          Top = 32
          Width = 30
          Height = 21
          DataField = 'IDUSUARIO'
          DataSource = DM.dsUsuario
          ReadOnly = True
          TabOrder = 4
        end
        object edtUsuarioNome: TDBEdit
          Tag = 1
          Left = 50
          Top = 32
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DM.dsUsuario
          TabOrder = 5
        end
        object edtUsuarioSenha: TDBEdit
          Tag = 1
          Left = 186
          Top = 32
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SENHA'
          DataSource = DM.dsUsuario
          PasswordChar = '*'
          TabOrder = 6
        end
        object edtUsuarioCpf: TDBEdit
          Tag = 1
          Left = 322
          Top = 32
          Width = 121
          Height = 21
          DataField = 'CPF'
          DataSource = DM.dsUsuario
          TabOrder = 7
          OnChange = edtUsuarioCpfChange
        end
        object cbxUsuarioAtivo: TCheckBox
          Left = 457
          Top = 34
          Width = 69
          Height = 17
          Caption = 'ATIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = cbxUsuarioAtivoClick
        end
        object edtUsuarioSexo: TDBEdit
          Left = 460
          Top = 79
          Width = 50
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = DM.dsUsuario
          TabOrder = 9
          OnChange = edtUsuarioSexoChange
        end
        object edtUsuarioDtNascimento: TDBEdit
          Tag = 1
          Left = 322
          Top = 79
          Width = 121
          Height = 21
          DataField = 'DTNASCIMENTO'
          DataSource = DM.dsUsuario
          TabOrder = 10
          OnChange = edtUsuarioDtNascimentoChange
        end
        object edtUsuarioEmail: TDBEdit
          Left = 142
          Top = 79
          Width = 165
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DM.dsUsuario
          TabOrder = 11
        end
        object edtUsuarioCidade: TDBEdit
          Left = 53
          Top = 128
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DM.dsUsuario
          TabOrder = 12
        end
        object edtUsuarioRua: TDBEdit
          Left = 244
          Top = 128
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RUA'
          DataSource = DM.dsUsuario
          TabOrder = 13
        end
        object edtUsuarioNumero: TDBEdit
          Left = 460
          Top = 128
          Width = 50
          Height = 21
          DataField = 'NUMERO'
          DataSource = DM.dsUsuario
          TabOrder = 14
          OnChange = edtUsuarioNumeroChange
        end
        object edtUsuarioCep: TDBEdit
          Tag = 1
          Left = 389
          Top = 176
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DM.dsUsuario
          TabOrder = 15
          OnChange = edtUsuarioCepChange
        end
        object edtUsuarioComplemento: TDBEdit
          Left = 244
          Top = 176
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DM.dsUsuario
          TabOrder = 16
        end
      end
    end
    object Empresa: TTabSheet
      Caption = 'Empresa'
      ImageIndex = 3
      object pnlEmpresaBottom: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          526
          41)
        object btnEmpresaProximo: TButton
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
          TabOrder = 0
          OnClick = btnEmpresaProximoClick
        end
        object btnEmpresaAnterior: TButton
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
          TabOrder = 1
          OnClick = btnEmpresaAnteriorClick
        end
        object btnEmpresaExcluir: TButton
          Left = 437
          Top = 6
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
          TabOrder = 2
          OnClick = btnEmpresaExcluirClick
        end
        object btnEmpresaInserir: TButton
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
          TabOrder = 3
          OnClick = btnEmpresaInserirClick
        end
        object btnEmpresaSalvar: TButton
          Left = 92
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnEmpresaSalvarClick
        end
        object btnEmpresaPesquisa: TButton
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
          TabOrder = 5
          OnClick = btnEmpresaPesquisaClick
        end
        object btnEmpresaCancelar: TButton
          Left = 324
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = btnEmpresaCancelarClick
        end
      end
      object pnlEmpresa: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        TabOrder = 1
        object Label18: TLabel
          Left = 8
          Top = 233
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
        object Label8: TLabel
          Left = 10
          Top = 191
          Width = 12
          Height = 16
          Caption = 'IE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 148
          Width = 39
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 8
          Top = 100
          Width = 14
          Height = 16
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 51
          Top = 100
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 49
          Width = 32
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 8
          Top = 2
          Width = 14
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 48
          Top = 2
          Width = 103
          Height = 16
          Caption = 'NOME FANTASIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 242
          Top = 2
          Width = 96
          Height = 16
          Caption = 'RAZ'#195'O SOCIAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 369
          Top = 47
          Width = 30
          Height = 16
          Caption = 'CNPJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 242
          Top = 49
          Width = 55
          Height = 16
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 242
          Top = 100
          Width = 87
          Height = 16
          Caption = 'LOGRADOURO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 458
          Top = 100
          Width = 52
          Height = 16
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 387
          Top = 148
          Width = 23
          Height = 16
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 242
          Top = 148
          Width = 92
          Height = 16
          Caption = 'COMPLEMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object memoEmpresaObs: TDBMemo
          Tag = 1
          Left = 8
          Top = 251
          Width = 500
          Height = 58
          DataField = 'OBSERVACAO'
          DataSource = DM.dsEmpresa
          TabOrder = 0
        end
        object edtEmpresaIe: TDBEdit
          Tag = 1
          Left = 8
          Top = 208
          Width = 139
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = DM.dsEmpresa
          TabOrder = 1
          OnChange = edtClienteCpfChange
        end
        object edtEmpresaBairro: TDBEdit
          Left = 8
          Top = 168
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DM.dsEmpresa
          TabOrder = 2
        end
        object edtEmpresaEstado: TDBEdit
          Left = 8
          Top = 120
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = DM.dsEmpresa
          TabOrder = 3
          OnChange = edtClienteEstadoChange
        end
        object edtEmpresaCidade: TDBEdit
          Left = 51
          Top = 120
          Width = 175
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DM.dsEmpresa
          TabOrder = 4
        end
        object edtEmpresaEmail: TDBEdit
          Left = 8
          Top = 69
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DM.dsEmpresa
          TabOrder = 5
        end
        object edtEmpresaId: TDBEdit
          Tag = 1
          Left = 8
          Top = 22
          Width = 30
          Height = 21
          DataField = 'IDEMPRESA'
          DataSource = DM.dsEmpresa
          ReadOnly = True
          TabOrder = 6
        end
        object edtEmpresaFantasia: TDBEdit
          Tag = 1
          Left = 48
          Top = 22
          Width = 178
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEFANTASIA'
          DataSource = DM.dsEmpresa
          TabOrder = 7
        end
        object edtEmpresaSocial: TDBEdit
          Tag = 1
          Left = 242
          Top = 22
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAOSOCIAL'
          DataSource = DM.dsEmpresa
          TabOrder = 8
        end
        object cbxEmpresaAtivo: TCheckBox
          Left = 445
          Top = 24
          Width = 67
          Height = 17
          Caption = 'ATIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = cbxEmpresaAtivoClick
        end
        object edtEmpresaCnpj: TDBEdit
          Tag = 1
          Left = 369
          Top = 69
          Width = 139
          Height = 21
          DataField = 'CNPJ'
          DataSource = DM.dsEmpresa
          TabOrder = 10
          OnChange = edtClienteCpfChange
        end
        object edtEmpresaTelefone: TDBEdit
          Tag = 1
          Left = 242
          Top = 69
          Width = 121
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DM.dsEmpresa
          TabOrder = 11
          OnChange = edtClienteTelefoneChange
        end
        object edtEmpresaRua: TDBEdit
          Left = 242
          Top = 120
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RUA'
          DataSource = DM.dsEmpresa
          TabOrder = 12
        end
        object edtEmpresaNumero: TDBEdit
          Left = 458
          Top = 120
          Width = 50
          Height = 21
          DataField = 'NUMERO'
          DataSource = DM.dsEmpresa
          TabOrder = 13
          OnChange = edtClienteNumeroChange
        end
        object edtEmpresaCep: TDBEdit
          Tag = 1
          Left = 387
          Top = 168
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DM.dsEmpresa
          TabOrder = 14
          OnChange = edtClienteCepChange
        end
        object edtEmpresaComplemento: TDBEdit
          Left = 242
          Top = 168
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DM.dsEmpresa
          TabOrder = 15
        end
      end
    end
    object Cliente: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          526
          41)
        object btnClienteProximo: TButton
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
          TabOrder = 0
          OnClick = btnClienteProximoClick
        end
        object btnClienteAnterior: TButton
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
          TabOrder = 1
          OnClick = btnClienteAnteriorClick
        end
        object btnClienteExcluir: TButton
          Left = 436
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
          TabOrder = 2
          OnClick = btnClienteExcluirClick
        end
        object btnClientePesquisa: TButton
          Left = 173
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
          TabOrder = 3
          OnClick = btnClientePesquisaClick
        end
        object btnClienteSalvar: TButton
          Left = 91
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnClienteSalvarClick
        end
        object btnClienteInserir: TButton
          Left = 8
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
          TabOrder = 5
          OnClick = btnClienteInserirClick
        end
        object btnClienteCancelar: TButton
          Left = 327
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = btnClienteCancelarClick
        end
      end
      object pnlClientes: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        TabOrder = 1
        object lblClienteNumero: TLabel
          Left = 459
          Top = 105
          Width = 52
          Height = 16
          Caption = 'N'#218'MERO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteRua: TLabel
          Left = 246
          Top = 105
          Width = 27
          Height = 16
          Caption = 'RUA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteDtNascimento: TLabel
          Left = 246
          Top = 54
          Width = 109
          Height = 16
          Caption = 'Data Nascimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteSexo: TLabel
          Left = 396
          Top = 54
          Width = 31
          Height = 16
          Caption = 'Sexo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteTelefone: TLabel
          Left = 324
          Top = 7
          Width = 55
          Height = 16
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteCPF: TLabel
          Left = 188
          Top = 7
          Width = 22
          Height = 16
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteNome: TLabel
          Left = 52
          Top = 7
          Width = 35
          Height = 16
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteId: TLabel
          Left = 12
          Top = 7
          Width = 14
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteEmail: TLabel
          Left = 12
          Top = 54
          Width = 32
          Height = 16
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteCidade: TLabel
          Left = 55
          Top = 105
          Width = 48
          Height = 16
          Caption = 'CIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteEstado: TLabel
          Left = 12
          Top = 105
          Width = 14
          Height = 16
          Caption = 'UF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteObs: TLabel
          Left = 12
          Top = 203
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
        object lblClienteBairro: TLabel
          Left = 12
          Top = 153
          Width = 39
          Height = 16
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteComplemento: TLabel
          Left = 246
          Top = 153
          Width = 92
          Height = 16
          Caption = 'COMPLEMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblClienteCep: TLabel
          Left = 391
          Top = 153
          Width = 23
          Height = 16
          Caption = 'CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtClienteCep: TDBEdit
          Tag = 1
          Left = 391
          Top = 173
          Width = 121
          Height = 21
          DataField = 'CEP'
          DataSource = DM.dsCliente
          TabOrder = 0
          OnChange = edtClienteCepChange
        end
        object edtClienteNumero: TDBEdit
          Left = 459
          Top = 125
          Width = 50
          Height = 21
          DataField = 'NUMERO'
          DataSource = DM.dsCliente
          TabOrder = 1
          OnChange = edtClienteNumeroChange
        end
        object edtClienteRua: TDBEdit
          Left = 246
          Top = 125
          Width = 199
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RUA'
          DataSource = DM.dsCliente
          TabOrder = 2
        end
        object edtClienteDtNascimento: TDBEdit
          Tag = 1
          Left = 246
          Top = 74
          Width = 121
          Height = 21
          DataField = 'DTNASCIMENTO'
          DataSource = DM.dsCliente
          TabOrder = 3
          OnChange = edtClienteDtNascimentoChange
        end
        object edtClienteSexo: TDBEdit
          Left = 396
          Top = 74
          Width = 46
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = DM.dsCliente
          TabOrder = 4
          OnChange = edtClienteSexoChange
        end
        object cbxClienteAtivo: TCheckBox
          Left = 451
          Top = 29
          Width = 67
          Height = 17
          Caption = 'ATIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = cbxClienteAtivoClick
        end
        object edtClienteTelefone: TDBEdit
          Tag = 1
          Left = 324
          Top = 27
          Width = 121
          Height = 21
          DataField = 'TELEFONE'
          DataSource = DM.dsCliente
          TabOrder = 6
          OnChange = edtClienteTelefoneChange
        end
        object edtClienteCpf: TDBEdit
          Tag = 1
          Left = 188
          Top = 27
          Width = 121
          Height = 21
          DataField = 'CPF'
          DataSource = DM.dsCliente
          TabOrder = 7
          OnChange = edtClienteCpfChange
        end
        object edtClienteNome: TDBEdit
          Tag = 1
          Left = 52
          Top = 27
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DM.dsCliente
          TabOrder = 8
        end
        object edtClienteId: TDBEdit
          Tag = 1
          Left = 12
          Top = 27
          Width = 30
          Height = 21
          DataField = 'IDCLIENTE'
          DataSource = DM.dsCliente
          ReadOnly = True
          TabOrder = 9
        end
        object edtClienteEmail: TDBEdit
          Left = 12
          Top = 74
          Width = 223
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DM.dsCliente
          TabOrder = 10
        end
        object edtClienteCidade: TDBEdit
          Left = 55
          Top = 125
          Width = 180
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CIDADE'
          DataSource = DM.dsCliente
          TabOrder = 11
        end
        object edtClienteEstado: TDBEdit
          Left = 12
          Top = 125
          Width = 30
          Height = 21
          CharCase = ecUpperCase
          DataField = 'ESTADO'
          DataSource = DM.dsCliente
          TabOrder = 12
          OnChange = edtClienteEstadoChange
        end
        object memoClienteObs: TDBMemo
          Tag = 1
          Left = 12
          Top = 225
          Width = 500
          Height = 89
          DataField = 'OBSERVACAO'
          DataSource = DM.dsCliente
          TabOrder = 13
        end
        object edtClienteBairro: TDBEdit
          Left = 12
          Top = 173
          Width = 218
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DM.dsCliente
          TabOrder = 14
        end
        object edtClienteComplemento: TDBEdit
          Left = 246
          Top = 173
          Width = 130
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DM.dsCliente
          TabOrder = 15
        end
      end
    end
    object Produto: TTabSheet
      Caption = 'Produto'
      ImageIndex = 1
      object pnlProdutosBottom: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          526
          41)
        object btnProdutoCancelar: TButton
          Left = 324
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnClick = btnProdutoCancelarClick
        end
        object btnProdutosProximo: TButton
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
          OnClick = btnProdutosProximoClick
        end
        object btnProdutosAnterior: TButton
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
          OnClick = btnProdutosAnteriorClick
        end
        object btnProdutoPesquisa: TButton
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
          OnClick = btnProdutoPesquisaClick
        end
        object btnProdutosSalvar: TButton
          Left = 93
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = btnProdutoSalvar
        end
        object btnProdutoInserir: TButton
          Left = 11
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
          OnClick = btnProdutoInserirClick
        end
        object btnProdutoExcluir: TButton
          Left = 436
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
          OnClick = btnProdutoExcluirClick
        end
      end
      object pnlProdutos: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        TabOrder = 1
        object lblProdutoId: TLabel
          Left = 11
          Top = 5
          Width = 14
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoNome: TLabel
          Left = 71
          Top = 3
          Width = 35
          Height = 16
          Caption = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoDtEntrada: TLabel
          Left = 410
          Top = 52
          Width = 80
          Height = 16
          Caption = 'DT ENTRADA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoQuantidade: TLabel
          Left = 318
          Top = 52
          Width = 82
          Height = 16
          Caption = 'QUANTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoCodigo: TLabel
          Left = 11
          Top = 52
          Width = 48
          Height = 16
          Caption = 'C'#211'DIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoCusto: TLabel
          Left = 11
          Top = 100
          Width = 40
          Height = 16
          Caption = 'CUSTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoMargemLucro: TLabel
          Left = 123
          Top = 100
          Width = 56
          Height = 16
          Caption = 'MARGEM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoPreco: TLabel
          Left = 205
          Top = 100
          Width = 41
          Height = 16
          Caption = 'PRE'#199'O'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoFornecedor: TLabel
          Left = 318
          Top = 100
          Width = 81
          Height = 16
          Caption = 'FORNECEDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoPersonalizado4: TLabel
          Left = 392
          Top = 152
          Width = 114
          Height = 16
          Caption = 'PERSONALIZADO4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoPersonalizado3: TLabel
          Left = 264
          Top = 152
          Width = 114
          Height = 16
          Caption = 'PERSONALIZADO3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoPersonalizado2: TLabel
          Left = 138
          Top = 152
          Width = 114
          Height = 16
          Caption = 'PERSONALIZADO2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblProdutoPersonalizado1: TLabel
          Left = 11
          Top = 152
          Width = 114
          Height = 16
          Caption = 'PERSONALIZADO1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 11
          Top = 201
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
        object lblProdutoNcm: TLabel
          Left = 205
          Top = 52
          Width = 27
          Height = 16
          Caption = 'NCM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtProdutoId: TDBEdit
          Tag = 1
          Left = 11
          Top = 25
          Width = 50
          Height = 21
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'IDPRODUTO'
          DataSource = DM.dsProduto
          ReadOnly = True
          TabOrder = 14
        end
        object edtProdutoNome: TDBEdit
          Tag = 1
          Left = 71
          Top = 25
          Width = 370
          Height = 21
          CharCase = ecUpperCase
          DataField = 'NOMEPRODUTO'
          DataSource = DM.dsProduto
          TabOrder = 0
        end
        object cbxProdutoAtivo: TCheckBox
          Left = 458
          Top = 27
          Width = 65
          Height = 17
          Caption = 'ATIVO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 15
          OnClick = cbxProdutoAtivoClick
        end
        object edtProdutoDtEntrada: TDBEdit
          Tag = 1
          Left = 410
          Top = 73
          Width = 96
          Height = 21
          DataField = 'DTENTRADA'
          DataSource = DM.dsProduto
          ReadOnly = True
          TabOrder = 4
          OnChange = edtProdutoDtEntradaChange
        end
        object edtProdutoQuantidade: TDBEdit
          Tag = 1
          Left = 318
          Top = 73
          Width = 82
          Height = 21
          DataField = 'QUANTIDADE'
          DataSource = DM.dsProduto
          TabOrder = 3
          OnChange = edtProdutoQuantidadeChange
        end
        object edtProdutoCodigo: TDBEdit
          Tag = 1
          Left = 11
          Top = 73
          Width = 182
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DM.dsProduto
          TabOrder = 1
        end
        object edtProdutoCusto: TDBEdit
          Tag = 1
          Left = 17
          Top = 122
          Width = 100
          Height = 21
          DataField = 'CUSTO'
          DataSource = DM.dsProduto
          TabOrder = 5
          OnChange = edtProdutoCustoChange
          OnExit = edtProdutoCustoExit
        end
        object edtProdutoMargem: TDBEdit
          Tag = 1
          Left = 123
          Top = 122
          Width = 70
          Height = 21
          DataField = 'MARGEMLUCRO'
          DataSource = DM.dsProduto
          TabOrder = 6
          OnClick = edtProdutoMargemClick
          OnExit = edtProdutoMargemExit
        end
        object edtProdutoPreco: TDBEdit
          Tag = 1
          Left = 205
          Top = 122
          Width = 100
          Height = 21
          DataField = 'PRECO'
          DataSource = DM.dsProduto
          TabOrder = 7
          OnClick = edtProdutoPrecoClick
        end
        object edtProdutoFornecedor2: TDBLookupComboBox
          Left = 318
          Top = 122
          Width = 188
          Height = 21
          DataField = 'FORNECEDOR'
          DataSource = DM.dsProduto
          DropDownRows = 15
          KeyField = 'IDEMPRESA'
          ListField = 'RAZAOSOCIAL'
          ListSource = DM.dsEmpresa
          NullValueKey = 16430
          TabOrder = 8
        end
        object cbProdutoPersonalizado4: TDBLookupComboBox
          Left = 392
          Top = 174
          Width = 114
          Height = 21
          DataField = 'CDPERSONALIZADO4'
          DataSource = DM.dsProduto
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'CDPERSONALIZADO4'
          ListField = 'NMPERSONALIZADO4'
          ListSource = DM.dsProdutoPersonalizado4
          ParentFont = False
          TabOrder = 12
        end
        object cbProdutoPersonalizado3: TDBLookupComboBox
          Left = 264
          Top = 174
          Width = 114
          Height = 21
          DataField = 'CDPERSONALIZADO3'
          DataSource = DM.dsProduto
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'CDPERSONALIZADO3'
          ListField = 'NMPERSONALIZADO3'
          ListSource = DM.dsProdutoPersonalizado3
          ParentFont = False
          TabOrder = 11
        end
        object cbProdutoPersonalizado2: TDBLookupComboBox
          Left = 138
          Top = 174
          Width = 114
          Height = 21
          DataField = 'CDPERSONALIZADO2'
          DataSource = DM.dsProduto
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'CDPERSONALIZADO2'
          ListField = 'NMPERSONALIZADO2'
          ListSource = DM.dsProdutoPersonalizado2
          ParentFont = False
          TabOrder = 10
        end
        object cbProdutoPersonalizado1: TDBLookupComboBox
          Left = 11
          Top = 174
          Width = 114
          Height = 21
          DataField = 'CDPERSONALIZADO1'
          DataSource = DM.dsProduto
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'CDPERSONALIZADO1'
          ListField = 'NMPERSONALIZADO1'
          ListSource = DM.dsProdutoPersonalizado1
          ParentFont = False
          TabOrder = 9
        end
        object memoProdutoObs: TDBMemo
          Tag = 1
          Left = 11
          Top = 223
          Width = 500
          Height = 89
          DataField = 'OBSERVACAO'
          DataSource = DM.dsProduto
          TabOrder = 13
        end
        object edtProdutoNcm: TDBEdit
          Tag = 1
          Left = 205
          Top = 73
          Width = 100
          Height = 21
          DataField = 'NCM'
          DataSource = DM.dsProduto
          TabOrder = 2
          OnChange = edtProdutoQuantidadeChange
        end
      end
    end
    object Venda: TTabSheet
      Caption = 'Venda'
      object pnlVendaBottom: TPanel
        Left = 0
        Top = 326
        Width = 526
        Height = 41
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          526
          41)
        object btnVendaCancelar: TButton
          Left = 324
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Cancelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnClick = btnVendaCancelarClick
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
          TabOrder = 1
          OnClick = btnVendaProximoClick
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
          TabOrder = 2
          OnClick = btnVendaAnteriorClick
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
          TabOrder = 3
          OnClick = btnVendaPesquisaClick
        end
        object btnVendaSalvar: TButton
          Left = 93
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnVendaSalvarClick
        end
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
          TabOrder = 5
          OnClick = btnVendaInserirClick
        end
        object btnVendaExcluir: TButton
          Left = 436
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
      end
      object pnlVenda: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 326
        Align = alClient
        TabOrder = 1
        object Label6: TLabel
          Left = 9
          Top = 6
          Width = 14
          Height = 16
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 57
          Top = 6
          Width = 45
          Height = 16
          Caption = 'SUFIXO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 9
          Top = 53
          Width = 85
          Height = 16
          Caption = 'FUNCIONARIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 202
          Top = 53
          Width = 63
          Height = 16
          Caption = 'DT VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 123
          Top = 99
          Width = 44
          Height = 16
          Caption = 'VALOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 9
          Top = 147
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
        object Label32: TLabel
          Left = 117
          Top = 6
          Width = 60
          Height = 16
          Caption = 'EMPRESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 316
          Top = 6
          Width = 49
          Height = 16
          Caption = 'CLIENTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 9
          Top = 99
          Width = 81
          Height = 16
          Caption = 'FORMA PGTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 408
          Top = 53
          Width = 53
          Height = 16
          Caption = 'DT VCTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 316
          Top = 53
          Width = 59
          Height = 16
          Caption = 'PARCELA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 222
          Top = 99
          Width = 65
          Height = 16
          Caption = 'DESCONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtVendaId: TDBEdit
          Tag = 1
          Left = 9
          Top = 26
          Width = 40
          Height = 21
          CharCase = ecUpperCase
          DataField = 'IDVENDA'
          DataSource = DM.dsVenda
          ReadOnly = True
          TabOrder = 0
        end
        object edtVendaSufixo: TDBEdit
          Tag = 1
          Left = 57
          Top = 26
          Width = 54
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SUFIXO'
          DataSource = DM.dsVenda
          ReadOnly = True
          TabOrder = 1
        end
        object edtVendaDtVenda: TDBEdit
          Tag = 1
          Left = 202
          Top = 72
          Width = 103
          Height = 21
          CharCase = ecUpperCase
          DataField = 'DTVENDA'
          DataSource = DM.dsVenda
          TabOrder = 2
        end
        object edtVendaValor: TDBEdit
          Tag = 1
          Left = 123
          Top = 117
          Width = 93
          Height = 21
          DataField = 'VALORTOTAL'
          DataSource = DM.dsVenda
          TabOrder = 3
        end
        object memoVendaObs: TDBMemo
          Tag = 1
          Left = 9
          Top = 169
          Width = 500
          Height = 144
          DataField = 'OBSERVACAO'
          DataSource = DM.dsVenda
          TabOrder = 4
        end
        object edtVendaEmpresa: TDBLookupComboBox
          Left = 117
          Top = 26
          Width = 188
          Height = 21
          DataField = 'IDEMPRESA'
          DataSource = DM.dsVenda
          DropDownRows = 15
          KeyField = 'IDEMPRESA'
          ListField = 'RAZAOSOCIAL'
          ListSource = DM.dsEmpresa
          NullValueKey = 16430
          TabOrder = 5
        end
        object edVendaCliente: TDBLookupComboBox
          Left = 316
          Top = 26
          Width = 188
          Height = 21
          DataField = 'IDCLIENTE'
          DataSource = DM.dsVenda
          DropDownRows = 15
          KeyField = 'IDCLIENTE'
          ListField = 'NOME'
          ListSource = DM.dsCliente
          NullValueKey = 16430
          TabOrder = 6
        end
        object edtVendaUsuario: TDBLookupComboBox
          Left = 9
          Top = 72
          Width = 182
          Height = 21
          DataField = 'IDFUNCIONARIO'
          DataSource = DM.dsVenda
          DropDownRows = 15
          KeyField = 'IDUSUARIO'
          ListField = 'NOME'
          ListSource = DM.dsUsuario
          NullValueKey = 16430
          TabOrder = 7
        end
        object cbVendaFormaPagamento: TDBLookupComboBox
          Left = 9
          Top = 117
          Width = 108
          Height = 21
          DataField = 'IDFORMAPAGAMENTO'
          DataSource = DM.dsVenda
          DropDownRows = 15
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          KeyField = 'IDPAGAMENTO'
          ListField = 'NMPAGAMENTO'
          ListSource = DM.dsFormaPagamento
          ParentFont = False
          TabOrder = 8
        end
        object edtVendaVencimento: TDBEdit
          Tag = 1
          Left = 408
          Top = 72
          Width = 96
          Height = 21
          DataField = 'DTVENCIMENTO'
          DataSource = DM.dsVenda
          TabOrder = 9
        end
        object cbVendaParcela: TDBComboBox
          Left = 316
          Top = 72
          Width = 86
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PARCELA'
          DataSource = DM.dsVenda
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
          TabOrder = 10
          OnClick = cbVendaParcelaClick
        end
        object cbxVendaPago: TCheckBox
          Left = 408
          Top = 119
          Width = 86
          Height = 17
          Caption = 'Finalizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = cbxVendaPagoClick
        end
        object edtVendaDesconto: TDBEdit
          Tag = 1
          Left = 222
          Top = 117
          Width = 83
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DM.dsVenda
          TabOrder = 12
          OnKeyDown = edtVendaDescontoKeyDown
        end
      end
    end
    object Home: TTabSheet
      Caption = 'In'#237'cio'
      ImageIndex = 6
      object pnlHome: TPanel
        Left = 0
        Top = 0
        Width = 526
        Height = 367
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        VerticalAlignment = taAlignTop
      end
    end
  end
  object MainMenuPrincipal: TMainMenu
    Left = 492
    object Config: TMenuItem
      Caption = 'Configura'#231#245'es'
      object Backup1: TMenuItem
        Caption = 'Backup'
        OnClick = Backup1Click
      end
      object Tema: TMenuItem
        Caption = 'Temas'
        object Glow1: TMenuItem
          Caption = 'Glow'
          OnClick = Glow1Click
        end
        object TabletDark1: TMenuItem
          Caption = 'Tablet Dark'
          OnClick = TabletDark1Click
        end
        object Windows10SlateGray1: TMenuItem
          Caption = 'Windows10 SlateGray'
          OnClick = Windows10SlateGray1Click
        end
        object AmethystKamri1: TMenuItem
          Caption = 'Amethyst Kamri'
          OnClick = AmethystKamri1Click
        end
        object Auric1: TMenuItem
          Caption = 'Auric'
          OnClick = Auric1Click
        end
        object CharcoalDarkSlate1: TMenuItem
          Caption = 'Charcoal Dark Slate'
          OnClick = CharcoalDarkSlate1Click
        end
        object EmeraldLightSlate1: TMenuItem
          Caption = 'Emerald Light Slate'
          OnClick = EmeraldLightSlate1Click
        end
        object Light1: TMenuItem
          Caption = 'Light'
          OnClick = Light1Click
        end
        object OnyxBlue1: TMenuItem
          Caption = 'Onyx Blue'
          OnClick = OnyxBlue1Click
        end
        object RubyGraphite1: TMenuItem
          Caption = 'Ruby Graphite'
          OnClick = RubyGraphite1Click
        end
        object SapphireKamri1: TMenuItem
          Caption = 'Sapphire Kamri'
          OnClick = SapphireKamri1Click
        end
        object SmokeyQuartzKamri1: TMenuItem
          Caption = 'Smokey Quartz Kamri'
          OnClick = SmokeyQuartzKamri1Click
        end
        object IcebergClassico1: TMenuItem
          Caption = 'Iceberg Classico'
          OnClick = IcebergClassico1Click
        end
      end
      object Outros: TMenuItem
        Caption = 'Outros'
        object Sufixo: TMenuItem
          Caption = 'Sufixo'
          OnClick = SufixoClick
        end
        object VendaSemItens: TMenuItem
          Caption = 'Permitir Venda Sem Itens'
          OnClick = VendaSemItensClick
        end
      end
    end
    object Sobre: TMenuItem
      Caption = 'Sobre'
      object V101: TMenuItem
        Caption = 'V 1.0'
      end
      object Atalhos: TMenuItem
        Caption = 'Atalhos'
        object F1: TMenuItem
          Caption = 'F1 - Inserir'
        end
        object F2: TMenuItem
          Caption = 'F2 - Salvar'
        end
        object F3: TMenuItem
          Caption = 'F3 - Pesquisar'
        end
        object F4: TMenuItem
          Caption = 'F4 - Cancelar'
        end
        object F5: TMenuItem
          Caption = 'F5 - Editar'
        end
        object LEFT: TMenuItem
          Caption = '< - Anterior'
        end
        object RIGHT: TMenuItem
          Caption = '> - Pr'#243'ximo'
        end
        object QTD: TMenuItem
          Caption = 'CTRL + ALT - Quantidade'
        end
      end
    end
  end
  object tmrHoraAtual: TTimer
    OnTimer = tmrHoraAtualTimer
    Left = 460
  end
end
