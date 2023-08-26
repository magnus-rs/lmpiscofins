object FRM_Lanca_Terraco: TFRM_Lanca_Terraco
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Terra'#231'o (CST01) - Loca'#231#227'o'
  ClientHeight = 599
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 41
    Align = alTop
    TabOrder = 0
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
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 777
    Height = 113
    Align = alTop
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 7
      Top = 3
      Width = 336
      Height = 105
      Caption = ' Lista de Participantes '
      TabOrder = 0
      object ListParticipantes: TListBox
        Left = 2
        Top = 15
        Width = 332
        Height = 88
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object GroupBox2: TGroupBox
      Left = 432
      Top = 3
      Width = 336
      Height = 105
      Caption = ' Participantes Selecionados '
      TabOrder = 1
      object ListSelecionados: TListBox
        Left = 2
        Top = 15
        Width = 332
        Height = 88
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object BTNAdicionar: TBitBtn
      Left = 353
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = BTNAdicionarClick
    end
    object BTNRemover: TBitBtn
      Left = 352
      Top = 63
      Width = 75
      Height = 25
      Caption = 'Remover'
      Enabled = False
      TabOrder = 3
      OnClick = BTNRemoverClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 154
    Width = 777
    Height = 95
    Align = alTop
    Caption = ' Registro 0150 - Participantes '
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 773
      Height = 78
      Align = alClient
      DataSource = DS0150
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_PART'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PAIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_MUN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUFRAMA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COMPL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BAIRRO'
          Visible = True
        end>
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 362
    Width = 777
    Height = 80
    Align = alTop
    Caption = ' Registro 0500  - Contas Cont'#225'beis '
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 773
      Height = 63
      Align = alClient
      DataSource = DS0500
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'DT_ALT'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_NAT_CC'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IND_CTA'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NIVEL'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CTA'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_CTA'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_CTA_REF'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ_EST'
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 249
    Width = 777
    Height = 113
    Align = alTop
    TabOrder = 4
    object GroupBox5: TGroupBox
      Left = 7
      Top = 3
      Width = 336
      Height = 105
      Caption = ' Lista de Contas Cont'#225'beis  '
      TabOrder = 0
      object ListCTB: TListBox
        Left = 2
        Top = 15
        Width = 332
        Height = 88
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object GroupBox6: TGroupBox
      Left = 432
      Top = 3
      Width = 336
      Height = 105
      Caption = ' Contas selecionadas '
      TabOrder = 1
      object ListCTBSelecionadas: TListBox
        Left = 2
        Top = 15
        Width = 332
        Height = 88
        Align = alClient
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object BTN_ADDCTB: TBitBtn
      Left = 352
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = BTN_ADDCTBClick
    end
    object BTN_DELCTB: TBitBtn
      Left = 351
      Top = 63
      Width = 75
      Height = 25
      Caption = 'Remover'
      Enabled = False
      TabOrder = 3
      OnClick = BTN_DELCTBClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 442
    Width = 777
    Height = 39
    Align = alTop
    TabOrder = 5
    object BTN_F100: TButton
      Left = 70
      Top = 6
      Width = 209
      Height = 25
      Caption = 'Preencher Registro F100'
      Enabled = False
      TabOrder = 0
      OnClick = BTN_F100Click
    end
    object BTS_DELF100: TButton
      Left = 285
      Top = 6
      Width = 209
      Height = 25
      Caption = 'Limpar Registro F100'
      Enabled = False
      TabOrder = 1
      OnClick = BTS_DELF100Click
    end
    object BTN_ADDSPED: TButton
      Left = 500
      Top = 6
      Width = 209
      Height = 25
      Caption = 'Inseir Registros no SPED'
      Enabled = False
      TabOrder = 2
      OnClick = BTN_ADDSPEDClick
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 481
    Width = 777
    Height = 104
    Align = alTop
    TabOrder = 6
    object GroupBox7: TGroupBox
      Left = 1
      Top = 1
      Width = 775
      Height = 102
      Align = alClient
      Caption = ' Registro F100 '
      TabOrder = 0
      object DBGrid3: TDBGrid
        Left = 2
        Top = 15
        Width = 771
        Height = 85
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
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_ITEM'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_OPER'
            Width = 60
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
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CCUS'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESC_DOC_OPER'
            Width = 100
            Visible = True
          end>
      end
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
  object FDQ_Participantes: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from Participantes')
    Left = 71
    Top = 76
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
  object CDSF100: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 508
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
  object CDS0500: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 234
    Top = 380
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
  object CDS0150: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 172
    object CDS0150COD_PART: TStringField
      FieldName = 'COD_PART'
      Size = 60
    end
    object CDS0150NOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object CDS0150COD_PAIS: TStringField
      FieldName = 'COD_PAIS'
      Size = 5
    end
    object CDS0150CNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object CDS0150CPF: TStringField
      FieldName = 'CPF'
      Size = 11
    end
    object CDS0150IE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object CDS0150COD_MUN: TStringField
      FieldName = 'COD_MUN'
      Size = 7
    end
    object CDS0150SUFRAMA: TStringField
      FieldName = 'SUFRAMA'
      Size = 9
    end
    object CDS0150END: TStringField
      FieldName = 'END'
      Size = 60
    end
    object CDS0150NUM: TStringField
      FieldName = 'NUM'
      Size = 60
    end
    object CDS0150COMPL: TStringField
      FieldName = 'COMPL'
      Size = 60
    end
    object CDS0150BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
  end
  object DS0150: TDataSource
    DataSet = CDS0150
    Left = 272
    Top = 173
  end
  object DS0500: TDataSource
    DataSet = CDS0500
    Left = 280
    Top = 380
  end
  object FDQ_CTB: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from Contas')
    Left = 47
    Top = 284
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
  object DSF100: TDataSource
    DataSet = CDSF100
    Left = 433
    Top = 508
  end
  object FDQ_Terraco: TFDQuery
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'select * From Terraco')
    Left = 616
    Top = 76
    object FDQ_TerracoChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_TerracoidMesRef: TIntegerField
      FieldName = 'idMesRef'
      Origin = 'idMesRef'
      Required = True
    end
    object FDQ_TerracoidCodPart: TStringField
      FieldName = 'idCodPart'
      Origin = 'idCodPart'
      Required = True
      Size = 50
    end
    object FDQ_TerracoPercentPis: TFloatField
      FieldName = 'PercentPis'
      Origin = 'PercentPis'
      Required = True
    end
    object FDQ_TerracoPercentCofins: TFloatField
      FieldName = 'PercentCofins'
      Origin = 'PercentCofins'
      Required = True
    end
    object FDQ_TerracoValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_TerracoBaseCalculo: TBCDField
      FieldName = 'BaseCalculo'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_TerracoValorPis: TBCDField
      FieldName = 'ValorPis'
      Required = True
      Precision = 10
      Size = 2
    end
    object FDQ_TerracoValorCofins: TBCDField
      FieldName = 'ValorCofins'
      Required = True
      Precision = 10
      Size = 2
    end
  end
end
