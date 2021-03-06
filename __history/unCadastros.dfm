object frmCadastros: TfrmCadastros
  Left = 0
  Top = 0
  Caption = 'Cadastros'
  ClientHeight = 430
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgCadastros: TPageControl
    Left = 0
    Top = 0
    Width = 708
    Height = 430
    ActivePage = tsAbastecimento
    Align = alClient
    TabOrder = 0
    object tsUsuarios: TTabSheet
      Caption = 'Usu'#225'rios'
      OnShow = tsUsuariosShow
      object lblIDUsuarios: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNomeUsuarios: TLabel
        Left = 70
        Top = 95
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object lblSenha: TLabel
        Left = 70
        Top = 148
        Width = 34
        Height = 13
        Caption = 'Senha:'
      end
      object suario: TLabel
        Left = 69
        Top = 121
        Width = 40
        Height = 13
        Caption = 'Usu'#225'rio:'
      end
      object nvUsuarios: TDBNavigator
        Left = 70
        Top = 16
        Width = 220
        Height = 25
        DataSource = DM.dsUsuarios
        TabOrder = 5
      end
      object edIDUsuarios: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'ID_USUARIO'
        DataSource = DM.dsUsuarios
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object edNomeUsuarios: TDBEdit
        Left = 158
        Top = 91
        Width = 273
        Height = 21
        DataField = 'NOME'
        DataSource = DM.dsUsuarios
        TabOrder = 0
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edUsuario: TDBEdit
        Left = 158
        Top = 118
        Width = 121
        Height = 21
        DataField = 'USUARIO'
        DataSource = DM.dsUsuarios
        TabOrder = 1
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edSenha: TDBEdit
        Left = 158
        Top = 145
        Width = 121
        Height = 21
        DataField = 'SENHA'
        DataSource = DM.dsUsuarios
        PasswordChar = '*'
        TabOrder = 2
      end
      object cbAtivo: TDBCheckBox
        Left = 158
        Top = 172
        Width = 97
        Height = 17
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DM.dsUsuarios
        TabOrder = 3
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object grdUsuarios: TDBGrid
        Left = 70
        Top = 193
        Width = 593
        Height = 153
        TabStop = False
        DataSource = DM.dsUsuarios
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_USUARIO'
            Title.Caption = 'ID'
            Width = 35
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 309
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USUARIO'
            Width = 174
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SENHA'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ATIVO'
            Visible = True
          end>
      end
    end
    object tsCombustiveis: TTabSheet
      Caption = 'Combust'#237'veis'
      ImageIndex = 2
      OnShow = tsCombustiveisShow
      object lblIDCombustiveis: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblTipoCombustiveis: TLabel
        Left = 70
        Top = 93
        Width = 24
        Height = 13
        Caption = 'Tipo:'
      end
      object lblPercImposto: TLabel
        Left = 70
        Top = 119
        Width = 57
        Height = 13
        Caption = '% Imposto:'
      end
      object lblValorCompra: TLabel
        Left = 70
        Top = 145
        Width = 83
        Height = 13
        Caption = 'Valor de Compra:'
      end
      object lblValorVenda: TLabel
        Left = 70
        Top = 171
        Width = 76
        Height = 13
        Caption = 'Valor de Venda:'
      end
      object edIDCombustiveis: TDBEdit
        Left = 158
        Top = 58
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'ID_COMBUSTIVEL'
        DataSource = DM.dsCombustiveis
        Enabled = False
        TabOrder = 6
      end
      object edTipoCombustiveis: TDBEdit
        Left = 158
        Top = 85
        Width = 273
        Height = 21
        DataField = 'TIPO'
        DataSource = DM.dsCombustiveis
        TabOrder = 0
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object grdCombustiveis: TDBGrid
        Left = 70
        Top = 190
        Width = 611
        Height = 153
        TabStop = False
        DataSource = DM.dsCombustiveis
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_COMBUSTIVEL'
            Title.Caption = 'ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Width = 224
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_IMPOSTO'
            Title.Caption = '% IMPOSTO'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_COMPRA'
            Title.Caption = 'VALOR DE COMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_VENDA'
            Title.Caption = 'VALOR DE VENDA'
            Width = 64
            Visible = True
          end>
      end
      object edPerc_Imposto: TDBEdit
        Left = 158
        Top = 111
        Width = 119
        Height = 21
        DataField = 'PERC_IMPOSTO'
        DataSource = DM.dsCombustiveis
        TabOrder = 1
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValorCompra: TDBEdit
        Left = 158
        Top = 137
        Width = 119
        Height = 21
        DataField = 'VALOR_COMPRA'
        DataSource = DM.dsCombustiveis
        TabOrder = 2
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValorVenda: TDBEdit
        Left = 158
        Top = 163
        Width = 119
        Height = 21
        DataField = 'VALOR_VENDA'
        DataSource = DM.dsCombustiveis
        TabOrder = 3
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object nvCombustiveis: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsCombustiveis
        TabOrder = 5
      end
    end
    object tsTanques: TTabSheet
      Caption = 'Tanques'
      ImageIndex = 1
      OnShow = tsTanquesShow
      object lblIdTanques: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNumero: TLabel
        Left = 70
        Top = 93
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object lblCapacidade: TLabel
        Left = 70
        Top = 119
        Width = 73
        Height = 13
        Caption = 'Capacidade (l):'
      end
      object lblCombustivel: TLabel
        Left = 70
        Top = 145
        Width = 62
        Height = 13
        Caption = 'Combust'#237'vel:'
      end
      object nvTanques: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsTanques
        TabOrder = 4
        TabStop = True
      end
      object edIdTanques: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'ID_TANQUE'
        DataSource = DM.dsTanques
        Enabled = False
        ReadOnly = True
        TabOrder = 5
      end
      object edNumeroTanques: TDBEdit
        Left = 158
        Top = 90
        Width = 65
        Height = 21
        DataField = 'NUMERO'
        DataSource = DM.dsTanques
        TabOrder = 0
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object grdTanques: TDBGrid
        Left = 70
        Top = 169
        Width = 611
        Height = 153
        TabStop = False
        DataSource = DM.dsTanques
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_TANQUE'
            ReadOnly = True
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_COMBUSTIVEL'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'CAPACIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMBUSTIVEL'
            Title.Caption = 'COMBUST'#205'VEL'
            Width = 122
            Visible = True
          end>
      end
      object edCapacidade: TDBEdit
        Left = 158
        Top = 116
        Width = 119
        Height = 21
        DataField = 'CAPACIDADE'
        DataSource = DM.dsTanques
        TabOrder = 1
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object cbCombustivel: TDBLookupComboBox
        Left = 158
        Top = 142
        Width = 145
        Height = 21
        DataField = 'ID_COMBUSTIVEL'
        DataSource = DM.dsTanques
        KeyField = 'ID_COMBUSTIVEL'
        ListField = 'TIPO'
        ListSource = DM.dsCombustiveis
        TabOrder = 2
        OnKeyPress = edNomeUsuariosKeyPress
      end
    end
    object tsBombas: TTabSheet
      Caption = 'Bombas'
      ImageIndex = 3
      OnShow = tsBombasShow
      object lblIdBombas: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblNumeroBombas: TLabel
        Left = 70
        Top = 93
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
      end
      object lblTanqueBombas: TLabel
        Left = 70
        Top = 119
        Width = 40
        Height = 13
        Caption = 'Tanque:'
      end
      object nvBombas: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsBombas
        TabOrder = 0
      end
      object edIdBombas: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'ID_BOMBA'
        DataSource = DM.dsBombas
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edNumeroBombas: TDBEdit
        Left = 158
        Top = 90
        Width = 65
        Height = 21
        DataField = 'NUMERO'
        DataSource = DM.dsBombas
        TabOrder = 2
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object grdBombas: TDBGrid
        Left = 70
        Top = 143
        Width = 611
        Height = 153
        TabStop = False
        DataSource = DM.dsBombas
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_BOMBA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TANQUE'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'TANQUE'
            Visible = True
          end>
      end
      object cbTanque: TDBLookupComboBox
        Left = 158
        Top = 116
        Width = 145
        Height = 21
        DataField = 'ID_TANQUE'
        DataSource = DM.dsBombas
        KeyField = 'ID_TANQUE'
        ListField = 'NUMERO'
        ListSource = DM.dsTanques
        TabOrder = 3
        OnKeyPress = edNomeUsuariosKeyPress
      end
    end
    object tsAbastecimento: TTabSheet
      Caption = 'Abastecimento'
      ImageIndex = 4
      OnShow = tsAbastecimentoShow
      object lblIdAbastecimento: TLabel
        Left = 70
        Top = 67
        Width = 15
        Height = 13
        Caption = 'ID:'
      end
      object lblBomba: TLabel
        Left = 70
        Top = 92
        Width = 36
        Height = 13
        Caption = 'Bomba:'
      end
      object lblQuantidade: TLabel
        Left = 70
        Top = 117
        Width = 30
        Height = 13
        Caption = 'Litros:'
      end
      object lblValor: TLabel
        Left = 70
        Top = 142
        Width = 28
        Height = 13
        Caption = 'Valor:'
      end
      object Label3: TLabel
        Left = 318
        Top = 92
        Width = 23
        Height = 13
        Caption = 'R$/l:'
      end
      object lblValorImporto: TLabel
        Left = 70
        Top = 166
        Width = 85
        Height = 13
        Caption = 'Valor do Imposto:'
      end
      object lblValorTotal: TLabel
        Left = 70
        Top = 190
        Width = 28
        Height = 13
        Caption = 'Valor:'
      end
      object edData: TDBText
        Left = 606
        Top = 102
        Width = 65
        Height = 17
        DataField = 'DATA'
        DataSource = DM.dsAbastecimentos
      end
      object edHora: TDBText
        Left = 606
        Top = 125
        Width = 65
        Height = 17
        DataField = 'HORA'
        DataSource = DM.dsAbastecimentos
      end
      object edUsuarioAbastecimento: TDBText
        Left = 606
        Top = 145
        Width = 65
        Height = 17
        DataField = 'ID_USUARIO'
        DataSource = DM.dsAbastecimentos
      end
      object edPercImposto: TDBText
        Left = 606
        Top = 78
        Width = 65
        Height = 17
        DataField = 'PERC_IMPOSTO'
        DataSource = DM.dsDadosAbastecimento
      end
      object nvAbastecimento: TDBNavigator
        Left = 70
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM.dsAbastecimentos
        TabOrder = 0
      end
      object edIdAbastecimento: TDBEdit
        Left = 158
        Top = 64
        Width = 65
        Height = 21
        TabStop = False
        DataField = 'ID_ABASTECIMENTO'
        DataSource = DM.dsAbastecimentos
        Enabled = False
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object DBGrid1: TDBGrid
        Left = 70
        Top = 215
        Width = 611
        Height = 153
        TabStop = False
        DataSource = DM.dsAbastecimentos
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_ABASTECIMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_BOMBA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_USUARIO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_LIQUIDO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LITROS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HORA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_IMPOSTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR_TOTAL'
            Width = 64
            Visible = True
          end>
      end
      object cbBomba: TDBLookupComboBox
        Left = 158
        Top = 87
        Width = 145
        Height = 21
        DataField = 'ID_BOMBA'
        DataSource = DM.dsAbastecimentos
        KeyField = 'ID_BOMBA'
        ListField = 'NUMERO'
        ListSource = DM.dsBombas
        TabOrder = 3
        OnExit = cbBombaExit
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edLitros: TDBEdit
        Left = 158
        Top = 114
        Width = 65
        Height = 21
        DataField = 'LITROS'
        DataSource = DM.dsAbastecimentos
        TabOrder = 4
        OnExit = edLitrosExit
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValor: TDBEdit
        Left = 158
        Top = 139
        Width = 65
        Height = 21
        DataField = 'VALOR_TOTAL'
        DataSource = DM.dsAbastecimentos
        Enabled = False
        TabOrder = 5
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValorVendaAbastecimento: TDBEdit
        Left = 406
        Top = 89
        Width = 65
        Height = 21
        DataField = 'VALOR_VENDA'
        DataSource = DM.dsDadosAbastecimento
        Enabled = False
        TabOrder = 6
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValorImposto: TDBEdit
        Left = 158
        Top = 163
        Width = 65
        Height = 21
        DataField = 'VALOR_LIQUIDO'
        DataSource = DM.dsAbastecimentos
        Enabled = False
        TabOrder = 7
        OnKeyPress = edNomeUsuariosKeyPress
      end
      object edValorTotal: TDBEdit
        Left = 158
        Top = 187
        Width = 65
        Height = 21
        DataField = 'VALOR_IMPOSTO'
        DataSource = DM.dsAbastecimentos
        TabOrder = 8
        OnKeyDown = edPerc_ImpostoKeyDown
        OnKeyPress = edNomeUsuariosKeyPress
      end
    end
  end
end
