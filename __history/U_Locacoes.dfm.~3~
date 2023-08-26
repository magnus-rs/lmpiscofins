object FRM_Locacoes: TFRM_Locacoes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cr'#233'ditos Loca'#231#245'es (CST50)'
  ClientHeight = 167
  ClientWidth = 908
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 167
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 25
      Width = 906
      Height = 121
      Align = alClient
      DataSource = DS2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CodPart'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Participante'
          Width = 240
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorTotal'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValRateio'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BaseCalculo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercentPis'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorPis'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PercentCofins'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ValorCofins'
          Width = 100
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 146
      Width = 906
      Height = 19
      Panels = <
        item
          Width = 150
        end
        item
          Alignment = taCenter
          Width = 200
        end
        item
          Alignment = taCenter
          Width = 200
        end
        item
          Alignment = taCenter
          Width = 200
        end>
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 906
      Height = 25
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      TabOrder = 2
      object Label1: TLabel
        Left = 16
        Top = 5
        Width = 93
        Height = 13
        Caption = 'Mes de Referencia:'
      end
      object CB_MesRef: TComboBox
        Left = 120
        Top = 2
        Width = 145
        Height = 21
        TabOrder = 0
        Text = 'CB_MesRef'
        OnChange = CB_MesRefChange
      end
    end
  end
  object FDQ_MesRef: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from Planilhas')
    Left = 32
    Top = 72
    object FDQ_MesRefChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_MesRefMes_Ref: TStringField
      FieldName = 'Mes_Ref'
      Origin = 'Mes_Ref'
      Required = True
      EditMask = '!99/0000;0;_'
      Size = 6
    end
  end
  object FDQ_Participantes: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from participantes')
    Left = 209
    Top = 72
    object FDQ_ParticipantesChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ParticipantesCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      Size = 50
    end
    object FDQ_ParticipantesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDQ_ParticipantesCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 14
    end
    object FDQ_ParticipantesCod_Pais: TStringField
      FieldName = 'Cod_Pais'
      Origin = 'Cod_Pais'
      Required = True
    end
    object FDQ_ParticipantesCod_Municipio: TStringField
      FieldName = 'Cod_Municipio'
      Origin = 'Cod_Municipio'
      Required = True
    end
    object FDQ_ParticipantesSuframa: TStringField
      FieldName = 'Suframa'
      Origin = 'Suframa'
    end
    object FDQ_ParticipantesLogradouro: TStringField
      FieldName = 'Logradouro'
      Origin = 'Logradouro'
      Size = 100
    end
    object FDQ_ParticipantesNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
    end
    object FDQ_ParticipantesComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 50
    end
    object FDQ_ParticipantesBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 100
    end
  end
  object DS1: TDataSource
    DataSet = FDQ_Participantes
    Left = 273
    Top = 72
  end
  object FDQ_Locacoes: TFDQuery
    Active = True
    BeforePost = FDQ_LocacoesBeforePost
    AfterPost = FDQ_LocacoesAfterPost
    AfterDelete = FDQ_LocacoesAfterDelete
    Connection = DataModule1.FDConnection1
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    UpdateOptions.AutoIncFields = 'Chave'
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from locacoes')
    Left = 488
    Top = 80
    object FDQ_LocacoesChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_LocacoesidMesRef: TIntegerField
      FieldName = 'idMesRef'
      Origin = 'idMesRef'
      Required = True
    end
    object FDQ_LocacoesidCodPart: TIntegerField
      FieldName = 'idCodPart'
      Origin = 'idCodPart'
      Required = True
    end
    object FDQ_LocacoesCodPart: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CodPart'
      Origin = 'CodPart'
      Required = True
      OnChange = FDQ_LocacoesCodPartChange
      Size = 50
    end
    object FDQ_LocacoesParticipante: TStringField
      FieldKind = fkLookup
      FieldName = 'Participante'
      LookupDataSet = FDQ_Participantes
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'CodPart'
      Size = 50
      Lookup = True
    end
    object FDQ_LocacoesValorTotal: TBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
      Required = True
      OnChange = FDQ_LocacoesValorTotalChange
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_LocacoesValRateio: TBCDField
      DisplayLabel = 'Rateio'
      FieldName = 'ValRateio'
      Required = True
      OnChange = FDQ_LocacoesValRateioChange
      DisplayFormat = '% #0.00'
      Precision = 10
      Size = 2
    end
    object FDQ_LocacoesBaseCalculo: TBCDField
      DisplayLabel = 'Base de C'#225'lculo'
      FieldName = 'BaseCalculo'
      Required = True
      OnChange = FDQ_LocacoesBaseCalculoChange
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_LocacoesPercentPis: TFloatField
      DisplayLabel = '% PIS'
      FieldName = 'PercentPis'
      Origin = 'PercentPis'
      Required = True
      DisplayFormat = '% #0.00'
    end
    object FDQ_LocacoesValorPis: TBCDField
      DisplayLabel = 'Valor de Pis'
      FieldName = 'ValorPis'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_LocacoesPercentCofins: TFloatField
      DisplayLabel = '% COFINS'
      FieldName = 'PercentCofins'
      Origin = 'PercentCofins'
      Required = True
      DisplayFormat = '% #0.00'
    end
    object FDQ_LocacoesValorCofins: TBCDField
      DisplayLabel = 'Valor de Cofins'
      FieldName = 'ValorCofins'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
  end
  object FDTransaction1: TFDTransaction
    Connection = DataModule1.FDConnection1
    Left = 568
    Top = 81
  end
  object DS2: TDataSource
    DataSet = FDQ_Locacoes
    Left = 640
    Top = 81
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DataModule1.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO LMPISCOFINSDBA.dbo.locacoes'
      '(idMesRef, idCodPart, CodPart, ValorTotal, '
      '  ValRateio, BaseCalculo, PercentPis, ValorPis, '
      '  PercentCofins, ValorCofins)'
      
        'VALUES (:NEW_idMesRef, :NEW_idCodPart, :NEW_CodPart, :NEW_ValorT' +
        'otal, '
      
        '  :NEW_ValRateio, :NEW_BaseCalculo, :NEW_PercentPis, :NEW_ValorP' +
        'is, '
      '  :NEW_PercentCofins, :NEW_ValorCofins);'
      'SELECT SCOPE_IDENTITY() AS Chave')
    ModifySQL.Strings = (
      'UPDATE LMPISCOFINSDBA.dbo.locacoes'
      
        'SET idMesRef = :NEW_idMesRef, idCodPart = :NEW_idCodPart, CodPar' +
        't = :NEW_CodPart, '
      '  ValorTotal = :NEW_ValorTotal, ValRateio = :NEW_ValRateio, '
      '  BaseCalculo = :NEW_BaseCalculo, PercentPis = :NEW_PercentPis, '
      '  ValorPis = :NEW_ValorPis, PercentCofins = :NEW_PercentCofins, '
      '  ValorCofins = :NEW_ValorCofins'
      'WHERE Chave = :OLD_Chave;'
      'SELECT Chave'
      'FROM LMPISCOFINSDBA.dbo.locacoes'
      'WHERE Chave = :NEW_Chave')
    DeleteSQL.Strings = (
      'DELETE FROM LMPISCOFINSDBA.dbo.locacoes'
      'WHERE Chave = :OLD_Chave')
    FetchRowSQL.Strings = (
      
        'SELECT Chave, idMesRef, idCodPart, CodPart, ValorTotal, ValRatei' +
        'o, '
      '  BaseCalculo, PercentPis, ValorPis, PercentCofins, ValorCofins'
      'FROM ('
      'select * from locacoes'
      ') '
      'WHERE Chave = :OLD_Chave')
    Left = 416
    Top = 80
  end
end
