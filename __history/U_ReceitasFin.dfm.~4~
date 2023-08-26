object FRM_ReceitasFin: TFRM_ReceitasFin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Receitas Financeiras (CST02)'
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
          FieldName = 'Nome da Conta'
          Width = 350
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
          Width = 60
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
  object FDQ_ContaCTB: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from Contas')
    Left = 209
    Top = 72
    object FDQ_ContaCTBChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ContaCTBData_Alt: TSQLTimeStampField
      FieldName = 'Data_Alt'
      Required = True
    end
    object FDQ_ContaCTBCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      Size = 50
    end
    object FDQ_ContaCTBNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDQ_ContaCTBTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      Size = 10
    end
    object FDQ_ContaCTBNatureza: TStringField
      FieldName = 'Natureza'
      Origin = 'Natureza'
      Required = True
      Size = 10
    end
    object FDQ_ContaCTBNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'Nivel'
      Required = True
      Size = 10
    end
  end
  object DS1: TDataSource
    DataSet = FDQ_ContaCTB
    Left = 273
    Top = 72
  end
  object FDQ_ReceitasFin: TFDQuery
    Active = True
    BeforePost = FDQ_ReceitasFinBeforePost
    AfterPost = FDQ_ReceitasFinAfterPost
    AfterDelete = FDQ_ReceitasFinAfterDelete
    Connection = DataModule1.FDConnection1
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from ReceitasFin')
    Left = 488
    Top = 80
    object FDQ_ReceitasFinChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ReceitasFinidMesRef: TIntegerField
      FieldName = 'idMesRef'
      Origin = 'idMesRef'
      Required = True
    end
    object FDQ_ReceitasFinidCodCTB: TStringField
      DisplayLabel = 'Codigo CTB'
      FieldName = 'idCodCTB'
      Origin = 'idCodCTB'
      Required = True
      Size = 50
    end
    object FDQ_ReceitasFinNomedaConta: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome da Conta'
      LookupDataSet = FDQ_ContaCTB
      LookupKeyFields = 'Codigo'
      LookupResultField = 'Nome'
      KeyFields = 'idCodCTB'
      Size = 50
      Lookup = True
    end
    object FDQ_ReceitasFinValorTotal: TBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
      Required = True
      OnChange = FDQ_ReceitasFinValorTotalChange
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasFinBaseCalculo: TBCDField
      DisplayLabel = 'Base de C'#225'lculo'
      FieldName = 'BaseCalculo'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasFinPercentPis: TFloatField
      DisplayLabel = '% PIS'
      FieldName = 'PercentPis'
      Origin = 'PercentPis'
      Required = True
      DisplayFormat = '% #0.00'
    end
    object FDQ_ReceitasFinValorPis: TBCDField
      DisplayLabel = 'Valor de Pis'
      FieldName = 'ValorPis'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasFinPercentCofins: TFloatField
      DisplayLabel = '% COFINS'
      FieldName = 'PercentCofins'
      Origin = 'PercentCofins'
      Required = True
      DisplayFormat = '% #0.00'
    end
    object FDQ_ReceitasFinValorCofins: TBCDField
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
    Left = 576
    Top = 81
  end
  object DS2: TDataSource
    DataSet = FDQ_ReceitasFin
    Left = 640
    Top = 81
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DataModule1.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO LMPISCOFINSDBA.dbo.ReceitasFin'
      '(idMesRef, idCodCTB, ValorTotal, BaseCalculo, '
      '  PercentPis, ValorPis, PercentCofins, ValorCofins)'
      
        'VALUES (:NEW_idMesRef, :NEW_idCodCTB, :NEW_ValorTotal, :NEW_Base' +
        'Calculo, '
      
        '  :NEW_PercentPis, :NEW_ValorPis, :NEW_PercentCofins, :NEW_Valor' +
        'Cofins);'
      'SELECT SCOPE_IDENTITY() AS Chave')
    ModifySQL.Strings = (
      'UPDATE LMPISCOFINSDBA.dbo.ReceitasFin'
      
        'SET idMesRef = :NEW_idMesRef, idCodCTB = :NEW_idCodCTB, ValorTot' +
        'al = :NEW_ValorTotal, '
      '  BaseCalculo = :NEW_BaseCalculo, PercentPis = :NEW_PercentPis, '
      '  ValorPis = :NEW_ValorPis, PercentCofins = :NEW_PercentCofins, '
      '  ValorCofins = :NEW_ValorCofins'
      'WHERE Chave = :OLD_Chave;'
      'SELECT Chave'
      'FROM LMPISCOFINSDBA.dbo.ReceitasFin'
      'WHERE Chave = :NEW_Chave')
    DeleteSQL.Strings = (
      'DELETE FROM LMPISCOFINSDBA.dbo.ReceitasFin'
      'WHERE Chave = :OLD_Chave')
    FetchRowSQL.Strings = (
      
        'SELECT Chave, idMesRef, idCodCTB, ValorTotal, BaseCalculo, Perce' +
        'ntPis, '
      '  ValorPis, PercentCofins, ValorCofins'
      'FROM ('
      'select * from ReceitasFin'
      ') '
      'WHERE Chave = :OLD_Chave')
    Left = 408
    Top = 80
  end
end
