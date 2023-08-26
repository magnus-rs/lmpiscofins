object FRM_Lanca_Retencao: TFRM_Lanca_Retencao
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Org'#227'os P'#250'blicos '#8211' Contribui'#231#227'o Retida na Fonte'
  ClientHeight = 235
  ClientWidth = 777
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
  object Panel2: TPanel
    Left = 0
    Top = 82
    Width = 777
    Height = 143
    Align = alTop
    TabOrder = 0
    object GroupBox7: TGroupBox
      Left = 1
      Top = 1
      Width = 775
      Height = 141
      Align = alClient
      Caption = ' Registro F600 '
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 771
        Height = 124
        Align = alClient
        DataSource = DSF600
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IND_NAT_RET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_RET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_BC_RET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_RET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_REC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IND_NAT_REC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_RET_PIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_RET_COFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IND_DEC'
            Visible = True
          end>
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 14
      Width = 93
      Height = 13
      Caption = 'M'#234's de Refer'#234'ncia:'
    end
    object Label2: TLabel
      Left = 312
      Top = 14
      Width = 121
      Height = 13
      Caption = 'Empresa de Lan'#231'amento:'
    end
    object CB_MesRef: TComboBox
      Left = 115
      Top = 11
      Width = 145
      Height = 21
      Enabled = False
      TabOrder = 0
      Text = 'CB_MesRef'
    end
    object CB_Empresa: TComboBox
      Left = 439
      Top = 11
      Width = 242
      Height = 21
      Enabled = False
      TabOrder = 1
      Text = 'CB_Empresa'
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 2
    object BTN_ADDSPED: TButton
      Left = 500
      Top = 8
      Width = 209
      Height = 25
      Caption = 'Inseir Registros no SPED'
      Enabled = False
      TabOrder = 0
      OnClick = BTN_ADDSPEDClick
    end
    object BTS_DELF600: TButton
      Left = 285
      Top = 8
      Width = 209
      Height = 25
      Caption = 'Limpar Registro F600'
      Enabled = False
      TabOrder = 1
      OnClick = BTS_DELF600Click
    end
    object BTN_F600: TButton
      Left = 70
      Top = 8
      Width = 209
      Height = 25
      Caption = 'Preencher Registro F600'
      TabOrder = 2
      OnClick = BTN_F600Click
    end
  end
  object FDQ_Retencao: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from Retencao')
    Left = 176
    Top = 156
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
    object FDQ_RetencaoValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorRetido: TBCDField
      FieldName = 'ValorRetido'
      Origin = 'ValorRetido'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorPis: TBCDField
      FieldName = 'ValorPis'
      Origin = 'ValorPis'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_RetencaoValorCofins: TBCDField
      FieldName = 'ValorCofins'
      Origin = 'ValorCofins'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DSF600: TDataSource
    DataSet = CDSF600
    Left = 593
    Top = 156
  end
  object FDQ_Orgaos: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from OrgaosRet')
    Left = 95
    Top = 156
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
  object CDSF600: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 156
    object CDSF600IND_NAT_RET: TStringField
      FieldName = 'IND_NAT_RET'
      Size = 4
    end
    object CDSF600DT_RET: TDateTimeField
      FieldName = 'DT_RET'
    end
    object CDSF600VL_BC_RET: TCurrencyField
      FieldName = 'VL_BC_RET'
    end
    object CDSF600VL_RET: TCurrencyField
      FieldName = 'VL_RET'
    end
    object CDSF600COD_REC: TStringField
      FieldName = 'COD_REC'
      Size = 4
    end
    object CDSF600IND_NAT_REC: TIntegerField
      FieldName = 'IND_NAT_REC'
    end
    object CDSF600CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CDSF600VL_RET_PIS: TCurrencyField
      FieldName = 'VL_RET_PIS'
    end
    object CDSF600VL_RET_COFINS: TCurrencyField
      FieldName = 'VL_RET_COFINS'
    end
    object CDSF600IND_DEC: TIntegerField
      FieldName = 'IND_DEC'
    end
  end
  object CDSF010: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 696
    Top = 4
    object CDSF010CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
  end
  object FDQ_Empresa: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from estabelecimentos')
    Left = 504
    object FDQ_EmpresaChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_EmpresaCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 14
    end
    object FDQ_EmpresaRazao_Social: TStringField
      FieldName = 'Razao_Social'
      Origin = 'Razao_Social'
      Required = True
      Size = 100
    end
    object FDQ_EmpresaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 100
    end
  end
  object FDQ_MesRef: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from Planilhas')
    Left = 192
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
      Size = 6
    end
  end
end
