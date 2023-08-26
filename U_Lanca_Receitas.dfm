object FRM_Lanca_Receitas: TFRM_Lanca_Receitas
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Receitas Financeiras (CST02)'
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
      Caption = ' Registro F100 '
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 771
        Height = 124
        Align = alClient
        DataSource = DSF100
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
            FieldName = 'IND_OPER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_PART'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_ITEM'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_OPER'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_PIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_BC_PIS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQ_PIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_PIS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CST_COFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_BC_COFINS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALIQ_COFINS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_COFINS'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NAT_BC_CRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IND_ORIG_CRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CCUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_DOC_OPER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_OPER'
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
    object BTS_DELF100: TButton
      Left = 285
      Top = 8
      Width = 209
      Height = 25
      Caption = 'Limpar Registro F100'
      Enabled = False
      TabOrder = 1
      OnClick = BTS_DELF100Click
    end
    object BTN_F100: TButton
      Left = 70
      Top = 8
      Width = 209
      Height = 25
      Caption = 'Preencher Registro F100'
      TabOrder = 2
      OnClick = BTN_F100Click
    end
  end
  object FDQ_Receitas: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * from ReceitasFin')
    Left = 160
    Top = 156
    object FDQ_ReceitasChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ReceitasidMesRef: TIntegerField
      FieldName = 'idMesRef'
      Origin = 'idMesRef'
      Required = True
    end
    object FDQ_ReceitasidCodCTB: TStringField
      FieldName = 'idCodCTB'
      Origin = 'idCodCTB'
      Required = True
      Size = 50
    end
    object FDQ_ReceitasValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Origin = 'ValorTotal'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasBaseCalculo: TBCDField
      FieldName = 'BaseCalculo'
      Origin = 'BaseCalculo'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasPercentPis: TFloatField
      FieldName = 'PercentPis'
      Origin = 'PercentPis'
      Required = True
    end
    object FDQ_ReceitasValorPis: TBCDField
      FieldName = 'ValorPis'
      Origin = 'ValorPis'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_ReceitasPercentCofins: TFloatField
      FieldName = 'PercentCofins'
      Origin = 'PercentCofins'
      Required = True
    end
    object FDQ_ReceitasValorCofins: TBCDField
      FieldName = 'ValorCofins'
      Origin = 'ValorCofins'
      Required = True
      Precision = 10
      Size = 2
    end
  end
  object DSF100: TDataSource
    DataSet = CDSF100
    Left = 593
    Top = 156
  end
  object FDQ_CTB: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from Contas')
    Left = 95
    Top = 156
    object FDQ_CTBChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_CTBData_Alt: TSQLTimeStampField
      FieldName = 'Data_Alt'
      Required = True
    end
    object FDQ_CTBCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      Size = 50
    end
    object FDQ_CTBNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDQ_CTBTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'Tipo'
      Required = True
      Size = 10
    end
    object FDQ_CTBNatureza: TStringField
      FieldName = 'Natureza'
      Origin = 'Natureza'
      Required = True
      Size = 10
    end
    object FDQ_CTBNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'Nivel'
      Required = True
      Size = 10
    end
  end
  object DS0500: TDataSource
    DataSet = CDS0500
    Left = 384
    Top = 164
  end
  object CDS0500: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 306
    Top = 164
    object CDS0500DT_ALT: TDateTimeField
      FieldName = 'DT_ALT'
    end
    object CDS0500COD_NAT_CC: TStringField
      FieldName = 'COD_NAT_CC'
      Size = 2
    end
    object CDS0500IND_CTA: TStringField
      FieldName = 'IND_CTA'
      Size = 1
    end
    object CDS0500NIVEL: TStringField
      FieldName = 'NIVEL'
      Size = 5
    end
    object CDS0500COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Size = 100
    end
    object CDS0500NOME_CTA: TStringField
      FieldName = 'NOME_CTA'
      Size = 60
    end
    object CDS0500COD_CTA_REF: TStringField
      FieldName = 'COD_CTA_REF'
      Size = 60
    end
    object CDS0500CNPJ_EST: TStringField
      FieldName = 'CNPJ_EST'
      Size = 14
    end
  end
  object CDSF100: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 512
    Top = 156
    object CDSF100IND_OPER: TStringField
      FieldName = 'IND_OPER'
      Size = 1
    end
    object CDSF100COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 60
    end
    object CDSF100COD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Size = 60
    end
    object CDSF100VL_OPER: TFloatField
      FieldName = 'VL_OPER'
      currency = True
    end
    object CDSF100CST_PIS: TStringField
      FieldName = 'CST_PIS'
      Size = 2
    end
    object CDSF100VL_BC_PIS: TFloatField
      FieldName = 'VL_BC_PIS'
      currency = True
    end
    object CDSF100ALIQ_PIS: TFloatField
      FieldName = 'ALIQ_PIS'
    end
    object CDSF100VL_PIS: TFloatField
      FieldName = 'VL_PIS'
      currency = True
    end
    object CDSF100CST_COFINS: TStringField
      FieldName = 'CST_COFINS'
      Size = 2
    end
    object CDSF100VL_BC_COFINS: TFloatField
      FieldName = 'VL_BC_COFINS'
      currency = True
    end
    object CDSF100ALIQ_COFINS: TFloatField
      FieldName = 'ALIQ_COFINS'
    end
    object CDSF100VL_COFINS: TFloatField
      FieldName = 'VL_COFINS'
      currency = True
    end
    object CDSF100NAT_BC_CRED: TStringField
      FieldName = 'NAT_BC_CRED'
      Size = 2
    end
    object CDSF100IND_ORIG_CRED: TStringField
      FieldName = 'IND_ORIG_CRED'
      Size = 1
    end
    object CDSF100COD_CTA: TStringField
      FieldName = 'COD_CTA'
      Size = 100
    end
    object CDSF100COD_CCUS: TStringField
      FieldName = 'COD_CCUS'
      Size = 100
    end
    object CDSF100DESC_DOC_OPER: TStringField
      FieldName = 'DESC_DOC_OPER'
      Size = 100
    end
    object CDSF100DT_OPER: TDateField
      FieldName = 'DT_OPER'
    end
  end
  object CDSF010: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 76
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
