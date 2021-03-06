object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 476
  Width = 758
  object Con: TFDConnection
    Params.Strings = (
      'User_Name=sysdba'
      'Password=As#bank.'
      'Database=D:\Posto\POSTO.FDB'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 96
    Top = 16
  end
  object DriverLink: TFDPhysADSDriverLink
    Left = 160
    Top = 16
  end
  object qryUsuarios: TFDQuery
    BeforePost = qryUsuariosBeforePost
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gn_usuarios'
    UpdateOptions.AutoIncFields = 'id_usuario'
    SQL.Strings = (
      'select * from tb_usuarios order by nome')
    Left = 228
    Top = 16
    object qryUsuariosID_USUARIO: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object qryUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object qryUsuariosUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object qryUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object qryUsuariosATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object updUsuarios: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 16
  end
  object dsUsuarios: TDataSource
    DataSet = qryUsuarios
    Left = 296
    Top = 16
  end
  object qryTanques: TFDQuery
    BeforePost = qryUsuariosBeforePost
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GN_TANQUES'
    UpdateOptions.AutoIncFields = 'ID_TANQUE'
    UpdateObject = updTanques
    SQL.Strings = (
      'select * from tb_tanques order by 2')
    Left = 228
    Top = 120
    object qryTanquesID_TANQUE: TIntegerField
      FieldName = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTanquesNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryTanquesID_COMBUSTIVEL: TIntegerField
      DisplayLabel = 'COMBUSTIVEL'
      FieldName = 'ID_COMBUSTIVEL'
      LookupKeyFields = 'ID_COMBUSTIVEL'
      LookupResultField = 'TIPO'
      KeyFields = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      Required = True
    end
    object qryTanquesCAPACIDADE: TBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'CAPACIDADE'
      Required = True
      Precision = 18
    end
    object qryTanquesCOMBUSTIVEL: TStringField
      FieldKind = fkLookup
      FieldName = 'COMBUSTIVEL'
      LookupDataSet = qryCombustiveis
      LookupKeyFields = 'ID_COMBUSTIVEL'
      LookupResultField = 'TIPO'
      KeyFields = 'ID_COMBUSTIVEL'
      Lookup = True
    end
  end
  object updTanques: TFDUpdateSQL
    Connection = Con
    InsertSQL.Strings = (
      'INSERT INTO TB_TANQUES'
      '(ID_TANQUE, NUMERO, ID_COMBUSTIVEL, CAPACIDADE)'
      
        'VALUES (:NEW_ID_TANQUE, :NEW_NUMERO, :NEW_ID_COMBUSTIVEL, :NEW_C' +
        'APACIDADE)')
    ModifySQL.Strings = (
      'UPDATE TB_TANQUES'
      
        'SET ID_TANQUE = :NEW_ID_TANQUE, NUMERO = :NEW_NUMERO, ID_COMBUST' +
        'IVEL = :NEW_ID_COMBUSTIVEL, '
      '  CAPACIDADE = :NEW_CAPACIDADE'
      'WHERE ID_TANQUE = :OLD_ID_TANQUE')
    DeleteSQL.Strings = (
      'DELETE FROM TB_TANQUES'
      'WHERE ID_TANQUE = :OLD_ID_TANQUE')
    FetchRowSQL.Strings = (
      'SELECT ID_TANQUE, NUMERO, ID_COMBUSTIVEL, CAPACIDADE'
      'FROM TB_TANQUES'
      'WHERE ID_TANQUE = :ID_TANQUE')
    Left = 368
    Top = 120
  end
  object dsTanques: TDataSource
    DataSet = qryTanques
    Left = 296
    Top = 120
  end
  object qryBombas: TFDQuery
    BeforePost = qryUsuariosBeforePost
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gn_bombas'
    UpdateOptions.AutoIncFields = 'id_bomba'
    UpdateObject = updBombas
    SQL.Strings = (
      'select * from tb_bombas order by numero')
    Left = 228
    Top = 176
    object qryBombasID_BOMBA: TIntegerField
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBombasNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object qryBombasID_TANQUE: TIntegerField
      DisplayLabel = 'TANQUE'
      FieldName = 'ID_TANQUE'
      LookupDataSet = qryTanques
      LookupKeyFields = 'ID_TANQUE'
      LookupResultField = 'NUMERO'
      KeyFields = 'ID_TANQUE'
      Origin = 'ID_TANQUE'
      Required = True
    end
    object qryBombasTANQUE: TIntegerField
      FieldKind = fkLookup
      FieldName = 'TANQUE'
      LookupDataSet = qryTanques
      LookupKeyFields = 'ID_TANQUE'
      LookupResultField = 'NUMERO'
      KeyFields = 'ID_TANQUE'
      Lookup = True
    end
  end
  object updBombas: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 176
  end
  object dsBombas: TDataSource
    DataSet = qryBombas
    Left = 296
    Top = 176
  end
  object qryAbastecimentos: TFDQuery
    BeforePost = qryUsuariosBeforePost
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gn_abastecimentos'
    UpdateOptions.AutoIncFields = 'id_abastecimento'
    SQL.Strings = (
      'select * from tb_abastecimento order by data desc, hora desc')
    Left = 228
    Top = 224
    object qryAbastecimentosBOMBA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'BOMBA'
      LookupDataSet = qryBombas
      LookupKeyFields = 'ID_BOMBA'
      LookupResultField = 'NUMERO'
      KeyFields = 'ID_BOMBA'
      Lookup = True
    end
    object qryAbastecimentosLITROS: TFMTBCDField
      FieldName = 'LITROS'
      Origin = 'LITROS'
      Required = True
      Precision = 18
      Size = 3
    end
    object qryAbastecimentosVALOR_TOTAL: TBCDField
      DisplayLabel = 'VALOR TOTAL'
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      Required = True
      Precision = 18
    end
    object qryAbastecimentosID_ABASTECIMENTO: TFDAutoIncField
      FieldName = 'ID_ABASTECIMENTO'
      Origin = 'ID_ABASTECIMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryAbastecimentosUSUARIO: TStringField
      FieldKind = fkLookup
      FieldName = 'USUARIO'
      LookupDataSet = qryUsuarios
      LookupKeyFields = 'ID_USUARIO'
      LookupResultField = 'USUARIO'
      KeyFields = 'ID_USUARIO'
      Size = 60
      Lookup = True
    end
    object qryAbastecimentosID_BOMBA: TIntegerField
      DisplayLabel = 'BOMBA'
      FieldName = 'ID_BOMBA'
      Origin = 'ID_BOMBA'
      Required = True
    end
    object qryAbastecimentosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      Required = True
    end
    object qryAbastecimentosVALOR_LIQUIDO: TFMTBCDField
      FieldName = 'VALOR_LIQUIDO'
      Origin = 'VALOR_LIQUIDO'
      Required = True
      Precision = 18
      Size = 3
    end
    object qryAbastecimentosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
      Required = True
    end
    object qryAbastecimentosHORA: TTimeField
      FieldName = 'HORA'
      Origin = 'HORA'
      Required = True
    end
    object qryAbastecimentosVALOR_IMPOSTO: TBCDField
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      Required = True
      Precision = 18
    end
  end
  object updAbastecimentos: TFDUpdateSQL
    Connection = Con
    Left = 368
    Top = 224
  end
  object dsAbastecimentos: TDataSource
    DataSet = qryAbastecimentos
    Left = 296
    Top = 224
  end
  object qryCombustiveis: TFDQuery
    BeforePost = qryUsuariosBeforePost
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gn_combustiveis'
    UpdateOptions.AutoIncFields = 'id_combustivel'
    UpdateObject = updCombustiveis
    SQL.Strings = (
      'select * from tb_combustiveis order by tipo')
    Left = 232
    Top = 72
    object qryCombustiveisID_COMBUSTIVEL: TIntegerField
      DisplayLabel = 'ID'
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCombustiveisTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 60
    end
    object qryCombustiveisVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      DisplayFormat = '0,0000'
      Precision = 18
    end
    object qryCombustiveisVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Required = True
      DisplayFormat = '0,0000'
      Precision = 18
    end
    object qryCombustiveisPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Required = True
      Precision = 18
    end
  end
  object dsCombustiveis: TDataSource
    DataSet = qryCombustiveis
    Left = 296
    Top = 72
  end
  object updCombustiveis: TFDUpdateSQL
    Connection = Con
    Left = 360
    Top = 72
  end
  object qryAcesso: TFDQuery
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'gn_usuarios'
    UpdateOptions.AutoIncFields = 'id_usuario'
    SQL.Strings = (
      'select * from tb_usuarios where UPPER(usuario) = UPPER(:usuario)')
    Left = 500
    Top = 16
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 60
        Value = Null
      end>
    object qryAcessoID_USUARIO: TFDAutoIncField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object qryAcessoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 60
    end
    object qryAcessoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      Required = True
      Size = 60
    end
    object qryAcessoSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Required = True
      Size = 60
    end
    object qryAcessoATIVO: TStringField
      FieldName = 'ATIVO'
      Origin = 'ATIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object qryDadosAbastecimento: TFDQuery
    Connection = Con
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    SQL.Strings = (
      'select c.*, current_date data, current_time hora, '
      '       (c.perc_imposto / 100 * c.valor_venda) valor_imposto,'
      
        '       (c.valor_venda + c.perc_imposto / 100 * c.valor_venda) va' +
        'lor_venda_imposto       '
      'from tb_combustiveis c'
      '   join tb_tanques t on t.id_combustivel = c.id_combustivel'
      '   join tb_bombas b on b.id_tanque = t.id_tanque'
      ' where b.id_bomba = :id_bomba')
    Left = 500
    Top = 72
    ParamData = <
      item
        Name = 'ID_BOMBA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryDadosAbastecimentoID_COMBUSTIVEL: TIntegerField
      FieldName = 'ID_COMBUSTIVEL'
      Origin = 'ID_COMBUSTIVEL'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDadosAbastecimentoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 60
    end
    object qryDadosAbastecimentoVALOR_COMPRA: TBCDField
      FieldName = 'VALOR_COMPRA'
      Origin = 'VALOR_COMPRA'
      Required = True
      Precision = 18
    end
    object qryDadosAbastecimentoVALOR_VENDA: TBCDField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Required = True
      Precision = 18
    end
    object qryDadosAbastecimentoPERC_IMPOSTO: TBCDField
      FieldName = 'PERC_IMPOSTO'
      Origin = 'PERC_IMPOSTO'
      Required = True
      Precision = 18
    end
    object qryDadosAbastecimentoDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryDadosAbastecimentoHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryDadosAbastecimentoVALOR_IMPOSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryDadosAbastecimentoVALOR_VENDA_IMPOSTO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA_IMPOSTO'
      Origin = 'VALOR_VENDA_IMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
  end
  object dsDadosAbastecimento: TDataSource
    DataSet = qryDadosAbastecimento
    Left = 608
    Top = 72
  end
  object qryRelatorioGeral: TFDQuery
    Connection = Con
    SQL.Strings = (
      'select c.tipo combustivel, b.numero bomba, t.numero tanque, '
      '  a.valor_liquido, a.valor_imposto, a.valor_total,'
      '  a.data'
      'from tb_combustiveis c'
      '   join tb_tanques t on t.id_combustivel = c.id_combustivel'
      '   join tb_bombas b on b.id_tanque = t.id_tanque'
      '   join tb_abastecimento a on a.id_bomba = b.id_bomba'
      ' where a.data between :dataini and :datafin')
    Left = 504
    Top = 144
    ParamData = <
      item
        Name = 'DATAINI'
        DataType = ftDate
        ParamType = ptInput
        Value = 44426d
      end
      item
        Name = 'DATAFIN'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object qryRelatorioGeralCOMBUSTIVEL: TStringField
      FieldName = 'COMBUSTIVEL'
      Origin = 'TIPO'
      Required = True
      Size = 60
    end
    object qryRelatorioGeralBOMBA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BOMBA'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryRelatorioGeralTANQUE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TANQUE'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryRelatorioGeralVALOR_LIQUIDO: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_LIQUIDO'
      Origin = 'VALOR_LIQUIDO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object qryRelatorioGeralVALOR_IMPOSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_IMPOSTO'
      Origin = 'VALOR_IMPOSTO'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryRelatorioGeralVALOR_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_TOTAL'
      Origin = 'VALOR_TOTAL'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
    end
    object qryRelatorioGeralDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = '"DATA"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsRelatorioGeral: TDataSource
    DataSet = qryRelatorioGeral
    Left = 608
    Top = 144
  end
end
