object frmRelatorioGeral: TfrmRelatorioGeral
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Geral'
  ClientHeight = 384
  ClientWidth = 813
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblCombustivel: TLabel
    Left = 62
    Top = 25
    Width = 62
    Height = 13
    Caption = 'Combust'#237'vel:'
  end
  object lblTanqueBombas: TLabel
    Left = 62
    Top = 50
    Width = 40
    Height = 13
    Caption = 'Tanque:'
  end
  object lblBomba: TLabel
    Left = 62
    Top = 77
    Width = 36
    Height = 13
    Caption = 'Bomba:'
  end
  object Label1: TLabel
    Left = 62
    Top = 102
    Width = 40
    Height = 13
    Caption = 'Per'#237'odo:'
  end
  object Label2: TLabel
    Left = 246
    Top = 102
    Width = 6
    Height = 13
    Caption = #224
  end
  object cbCombustivel: TDBLookupComboBox
    Left = 150
    Top = 22
    Width = 165
    Height = 21
    KeyField = 'ID_COMBUSTIVEL'
    ListField = 'TIPO'
    ListSource = DM.dsCombustiveis
    TabOrder = 0
  end
  object cbTanque: TDBLookupComboBox
    Left = 150
    Top = 47
    Width = 87
    Height = 21
    KeyField = 'ID_TANQUE'
    ListField = 'NUMERO'
    ListSource = DM.dsTanques
    TabOrder = 1
  end
  object cbBomba: TDBLookupComboBox
    Left = 150
    Top = 72
    Width = 87
    Height = 21
    KeyField = 'ID_BOMBA'
    ListField = 'NUMERO'
    ListSource = DM.dsBombas
    TabOrder = 2
  end
  object edDataIni: TMaskEdit
    Left = 150
    Top = 97
    Width = 74
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 3
    Text = '  /  /    '
  end
  object edDataFin: TMaskEdit
    Left = 270
    Top = 97
    Width = 71
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 4
    Text = '  /  /    '
  end
  object btnPesquisar: TButton
    Left = 326
    Top = 140
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 5
    OnClick = btnPesquisarClick
  end
  object grdRelatorioGeral: TDBGrid
    Left = 32
    Top = 184
    Width = 721
    Height = 121
    DataSource = DM.dsRelatorioGeral
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'DATA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COMBUSTIVEL'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BOMBA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TANQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_LIQUIDO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_IMPOSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_TOTAL'
        Visible = True
      end>
  end
  object rgTipo: TRadioGroup
    Left = 376
    Top = 22
    Width = 185
    Height = 60
    Caption = 'Tipo'
    ItemIndex = 0
    Items.Strings = (
      'Anal'#237'tico'
      'Sint'#233'tico')
    TabOrder = 7
  end
  object rpSintetico: TRLReport
    Left = 108
    Top = 44
    Width = 794
    Height = 1123
    DataSource = DM.dsRelatorioGeral
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand4: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel9: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 59
        Align = faClient
        Alignment = taCenter
        Caption = 'Relat'#243'rio Sint'#233'tico'
      end
      object RLLabel10: TRLLabel
        Left = 3
        Top = 37
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLLabel11: TRLLabel
        Left = 83
        Top = 37
        Width = 74
        Height = 16
        Caption = 'Combust'#237'vel'
      end
      object RLLabel12: TRLLabel
        Left = 195
        Top = 37
        Width = 45
        Height = 16
        Caption = 'Bomba'
      end
      object RLLabel13: TRLLabel
        Left = 253
        Top = 37
        Width = 46
        Height = 16
        Caption = 'Tanque'
      end
      object RLLabel14: TRLLabel
        Left = 354
        Top = 37
        Width = 75
        Height = 16
        Caption = 'Valor l'#237'quido'
      end
      object RLLabel15: TRLLabel
        Left = 491
        Top = 37
        Width = 84
        Height = 16
        Caption = 'Valor Imposto'
      end
      object RLLabel16: TRLLabel
        Left = 649
        Top = 37
        Width = 66
        Height = 16
        Caption = 'Valor Total'
      end
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 129
      Width = 718
      Height = 56
      BandType = btSummary
      object RLDBResult5: TRLDBResult
        Left = 422
        Top = 16
        Width = 153
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_IMPOSTO'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Info = riSum
        Text = ''
      end
      object RLDBResult6: TRLDBResult
        Left = 581
        Top = 16
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Info = riSum
        Text = ''
      end
      object RLDBResult4: TRLDBResult
        Left = 284
        Top = 16
        Width = 145
        Height = 16
        Color = clWhite
        DataField = 'VALOR_LIQUIDO'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 32
      object RLDBText12: TRLDBText
        Left = 323
        Top = 6
        Width = 106
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_LIQUIDO'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText13: TRLDBText
        Left = 461
        Top = 3
        Width = 114
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_IMPOSTO'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText14: TRLDBText
        Left = 615
        Top = 6
        Width = 95
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText15: TRLDBText
        Left = 11
        Top = 6
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText16: TRLDBText
        Left = 91
        Top = 6
        Width = 96
        Height = 16
        DataField = 'COMBUSTIVEL'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText17: TRLDBText
        Left = 203
        Top = 6
        Width = 52
        Height = 16
        DataField = 'BOMBA'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText18: TRLDBText
        Left = 261
        Top = 6
        Width = 57
        Height = 16
        DataField = 'TANQUE'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
    end
  end
  object rpAnalitico: TRLReport
    Left = 308
    Top = 284
    Width = 794
    Height = 1123
    DataSource = DM.dsRelatorioGeral
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 59
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 0
        Top = 0
        Width = 718
        Height = 59
        Align = faClient
        Alignment = taCenter
        Caption = 'Relat'#243'rio Anal'#237'tico'
      end
      object RLLabel2: TRLLabel
        Left = 3
        Top = 37
        Width = 31
        Height = 16
        Caption = 'Data'
      end
      object RLLabel3: TRLLabel
        Left = 83
        Top = 37
        Width = 74
        Height = 16
        Caption = 'Combust'#237'vel'
      end
      object RLLabel4: TRLLabel
        Left = 195
        Top = 37
        Width = 45
        Height = 16
        Caption = 'Bomba'
      end
      object RLLabel5: TRLLabel
        Left = 253
        Top = 37
        Width = 46
        Height = 16
        Caption = 'Tanque'
      end
      object RLLabel6: TRLLabel
        Left = 354
        Top = 37
        Width = 75
        Height = 16
        Caption = 'Valor l'#237'quido'
      end
      object RLLabel7: TRLLabel
        Left = 491
        Top = 37
        Width = 84
        Height = 16
        Caption = 'Valor Imposto'
      end
      object RLLabel8: TRLLabel
        Left = 649
        Top = 37
        Width = 66
        Height = 16
        Caption = 'Valor Total'
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 56
      BandType = btSummary
      object RLDBResult2: TRLDBResult
        Left = 422
        Top = 16
        Width = 153
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_IMPOSTO'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Info = riSum
        Text = ''
      end
      object RLDBResult3: TRLDBResult
        Left = 581
        Top = 16
        Width = 134
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Info = riSum
        Text = ''
      end
      object RLDBResult1: TRLDBResult
        Left = 284
        Top = 16
        Width = 145
        Height = 16
        Color = clWhite
        DataField = 'VALOR_LIQUIDO'
        DataSource = DM.dsRelatorioGeral
        DisplayMask = '#,###.####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentColor = False
        ParentFont = False
        Text = ''
      end
    end
    object RLSystemInfo1: TRLSystemInfo
      Left = 574
      Top = 41
      Width = 161
      Height = 16
      Text = ''
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 97
      Width = 718
      Height = 24
      object RLDBText1: TRLDBText
        Left = 3
        Top = 6
        Width = 38
        Height = 16
        DataField = 'DATA'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 83
        Top = 6
        Width = 96
        Height = 16
        DataField = 'COMBUSTIVEL'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 195
        Top = 6
        Width = 52
        Height = 16
        DataField = 'BOMBA'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 253
        Top = 6
        Width = 57
        Height = 16
        DataField = 'TANQUE'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 323
        Top = 6
        Width = 106
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_LIQUIDO'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 461
        Top = 3
        Width = 114
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_IMPOSTO'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 615
        Top = 6
        Width = 95
        Height = 16
        Alignment = taRightJustify
        DataField = 'VALOR_TOTAL'
        DataSource = DM.dsRelatorioGeral
        Text = ''
      end
    end
  end
end
