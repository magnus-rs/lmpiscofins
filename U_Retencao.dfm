object FRM_Retencao: TFRM_Retencao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Terra'#231'o (CST01)'
  ClientHeight = 167
  ClientWidth = 798
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
    Width = 798
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
      Width = 796
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
          FieldName = 'Orgao'
          Width = 355
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
          FieldName = 'ValorRetido'
          Width = 100
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
          FieldName = 'ValorCofins'
          Width = 100
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 0
      Top = 146
      Width = 796
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
      Width = 796
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
  object FDQ_Orgaos: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from OrgaosRet')
    Left = 209
    Top = 72
    object FDQ_OrgaosChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_OrgaosNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDQ_OrgaosCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 50
    end
  end
  object DS1: TDataSource
    DataSet = FDQ_Orgaos
    Left = 273
    Top = 72
  end
  object FDQ_Retencao: TFDQuery
    Active = True
    BeforePost = FDQ_RetencaoBeforePost
    AfterPost = FDQ_RetencaoAfterPost
    AfterDelete = FDQ_RetencaoAfterDelete
    Connection = DataModule1.FDConnection1
    Transaction = FDTransaction1
    UpdateTransaction = FDTransaction1
    UpdateObject = FDUpdateSQL1
    SQL.Strings = (
      'select * from Retencao'
      '')
    Left = 488
    Top = 80
    object FDQ_RetencaoChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_RetencaoidMesRef: TIntegerField
      FieldName = 'idMesRef'
      Origin = 'idMesRef'
      Required = True
    end
    object FDQ_RetencaoidOrgao: TStringField
      FieldName = 'idOrgao'
      Origin = 'idOrgao'
      Required = True
      Size = 50
    end
    object FDQ_RetencaoOrgao: TStringField
      DisplayLabel = 'Nome do Org'#227'o'
      FieldKind = fkLookup
      FieldName = 'Orgao'
      LookupDataSet = FDQ_Orgaos
      LookupKeyFields = 'CNPJ'
      LookupResultField = 'Nome'
      KeyFields = 'idOrgao'
      Size = 100
      Lookup = True
    end
    object FDQ_RetencaoValorTotal: TBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'ValorTotal'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorRetido: TBCDField
      DisplayLabel = 'Valor Retido'
      FieldName = 'ValorRetido'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorPis: TBCDField
      DisplayLabel = 'Valor Pis'
      FieldName = 'ValorPis'
      Required = True
      currency = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorCofins: TBCDField
      DisplayLabel = 'Valor Cofins'
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
    DataSet = FDQ_Retencao
    Left = 640
    Top = 81
  end
  object FDUpdateSQL1: TFDUpdateSQL
    Connection = DataModule1.FDConnection1
    InsertSQL.Strings = (
      'INSERT INTO LMPISCOFINSDBA.dbo.Retencao'
      '(idMesRef, idOrgao, ValorTotal, ValorRetido, '
      '  ValorPis, ValorCofins)'
      
        'VALUES (:NEW_idMesRef, :NEW_idOrgao, :NEW_ValorTotal, :NEW_Valor' +
        'Retido, '
      '  :NEW_ValorPis, :NEW_ValorCofins);'
      'SELECT SCOPE_IDENTITY() AS Chave')
    ModifySQL.Strings = (
      'UPDATE LMPISCOFINSDBA.dbo.Retencao'
      
        'SET idMesRef = :NEW_idMesRef, idOrgao = :NEW_idOrgao, ValorTotal' +
        ' = :NEW_ValorTotal, '
      '  ValorRetido = :NEW_ValorRetido, ValorPis = :NEW_ValorPis, '
      '  ValorCofins = :NEW_ValorCofins'
      'WHERE Chave = :OLD_Chave;'
      'SELECT Chave'
      'FROM LMPISCOFINSDBA.dbo.Retencao'
      'WHERE Chave = :NEW_Chave')
    DeleteSQL.Strings = (
      'DELETE FROM LMPISCOFINSDBA.dbo.Retencao'
      'WHERE Chave = :OLD_Chave')
    FetchRowSQL.Strings = (
      
        'SELECT Chave, idMesRef, idOrgao, ValorTotal, ValorRetido, ValorP' +
        'is, '
      '  ValorCofins'
      'FROM ('
      'select * from Retencao'
      ') '
      'WHERE Chave = :OLD_Chave')
    Left = 416
    Top = 80
  end
end
