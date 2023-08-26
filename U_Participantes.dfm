object FRM_Participantes: TFRM_Participantes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro de Participantes'
  ClientHeight = 385
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 762
    Height = 81
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 760
      Height = 79
      Align = alClient
      DataSource = DS1
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          Title.Caption = 'C'#243'digo'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Caption = 'Nome / Raz'#227'o Social'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNPJ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cod_Pais'
          Title.Caption = 'C'#243'digo do Pa'#237's'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Cod_Municipio'
          Title.Caption = 'C'#243'digo do Munic'#237'pio'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Suframa'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Logradouro'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Numero'
          Title.Caption = 'N'#250'mero'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Complemento'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Bairro'
          Width = 300
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 762
    Height = 304
    Align = alClient
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 25
      Height = 302
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object sb_in: TSpeedButton
        Left = 0
        Top = 0
        Width = 25
        Height = 22
        Hint = 'Adicionar'
        Align = alTop
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
          5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
          0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
          6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
          8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
          919DEFFFFFFFE6E8F94F53CE0002AB00009D0000950000975F5FBEF0F0FAFFFF
          FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3B4BDA0000C0161DBEB0
          B4E7A3A5E00A0CA000008F5252B9FFFFFFD9D9E90B0B7F00007A001EF17287F6
          FFFFFF91A1F4000DDA000BD0161DCBF1F4FEDEE1F60508A900009A000093ACAC
          DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F61734ECA0AEF2BABEF1F8
          F9FEF3F4FBB6B8E99799DC0D0EA25A5BBFFFFFFF8487D60000790E3EFEC5CFFE
          FFFFFF3259FE2649F9FAFCFFFFFFFFFFFFFFFFFFFFFFFFFFEBECF91519B14A4F
          C1FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF375CFB586DF4F0
          F3FEE3E6FA4D5ADE3446D20004B7757CD6FFFFFF797DD50000A8103EFFB6C5FF
          FFFFFFC7D2FF032CFF0020FF1739FBF3F6FFE1E5FA071FDC0007CE0C1CCBD9DC
          F5FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF002CFF46
          6AFF4163F8001DE9061CDFA1ACF1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
          DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
          FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
          E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
          FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
          CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
          A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_inClick
        ExplicitTop = 32
        ExplicitWidth = 23
      end
      object sb_edit: TSpeedButton
        Left = 0
        Top = 22
        Width = 25
        Height = 22
        Hint = 'Editar'
        Align = alTop
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
          5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
          0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
          6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
          8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
          919DEFFFFFFFE6E8F95054CE0B0DAF242AC21C1EB20000975F5FBEF0F0FAFFFF
          FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3C4BD91617C43438C312
          14B0171BB1090B9F2323A15E5EBEFFFFFFD9D9E90B0B7F00007A001EF17287F6
          FFFFFF91A1F40A15D70E12B9191DB61114AE2C30BB1D20B210119A2323A3ADAD
          DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F68794F2FDFDFEF3F4FBF2
          F2FAF2F3FAFFFFFFFFFFFF1214A76061C2FFFFFF8487D60000790E3EFEC5CFFE
          FFFFFF3259FE294AF8A7B0F7FFFFFFFFFFFFFFFFFFFFFFFF262DD51320CB8186
          D6FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF173DFDC3C9F8FF
          FFFFFFFFFF1D2DDC0B1ED9303CD68C92DEFEFEFF797DD50000A8103EFFB6C5FF
          FFFFFFC7D2FF032CFF0020FF2C48FEC4CBFA374AE71A2CDE1D29D9222ED1D3D6
          F4FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF012CFF04
          24FF1C3EFB001DE9061CDF9EA9F1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
          DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
          FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
          E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
          FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
          CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
          A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_editClick
        ExplicitLeft = -1
        ExplicitTop = 60
        ExplicitWidth = 23
      end
      object sb_del: TSpeedButton
        Left = 0
        Top = 44
        Width = 25
        Height = 22
        Hint = 'Excluir'
        Align = alTop
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF00007200007200006B000066000065000065FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0001B70001B7050DAC393EB058
          5AB25657AB2E2F9000006F000069000069FF00FFFF00FFFF00FFFF00FFFF00FF
          0016CE0915C66C74D9CED1F2FFFFFFFFFFFFFFFFFFFFFFFFC1C2DF5A5A9F0101
          6900007DFF00FFFF00FFFF00FF0018DF0A1DD3A8B0EDFFFFFFFFFFFFBDBEE98C
          8CD18D8DD0CACAEAFFFFFFFFFFFF8C8CBD010169000072FF00FFFF00FF0018DF
          919DEFFFFFFFE6E8F94F53CE0002AB161DBE1A1CB10000975F5FBEF0F0FAFFFF
          FF6565A6000072FF00FF001EF12743E7FBFBFFF7F8FD3B4BDA0000C0161DBE16
          19B40B0CA1090B9F00008F5252B9FFFFFFD9D9E90B0B7F00007A001EF17287F6
          FFFFFF91A1F4000DDA000BD0161DCB1D1EAE0C0DA00609A700009A000093ACAC
          DDFFFFFF5353AF00007A0023F8A8B8FCFFFFFF4060F61734ECF8F9FEF8F9FEF8
          F9FEF3F4FBF3F4FBF3F4FB0D0EA25A5BBFFFFFFF8487D60000790E3EFEC5CFFE
          FFFFFF3259FE2649F9C5CFFDFFFFFFFFFFFFFFFFFFFFFFFFEBECF91519B14A4F
          C1FFFFFF9094D90000A23C63FFC4D0FFFFFFFF5979FF052EFF123AFE122EEB0D
          24E20719D90F17D10004B70004B7757CD6FFFFFF797DD50000A8103EFFB6C5FF
          FFFFFFC7D2FF032CFF0020FF0829FE1630EB0119E20517D90A11D00C1CCBD9DC
          F5FDFDFE313CC80000A8FF00FF8DA4FFFFFFFFFFFFFF8AA0FF0027FF012CFF04
          24FF1C3EFB001DE9061CDFA1ACF1FFFFFFB4BAED0007BBFF00FFFF00FF718DFF
          DAE1FFFFFFFFFFFFFFB1C0FF3B5DFF1538FF1739FE4966F8C0CAFAFFFFFFEDEF
          FC3041D30007BBFF00FFFF00FFFF00FF88A0FFE6EBFFFFFFFFFFFFFFFDFDFFE2
          E9FFE4EBFFFFFFFFFFFFFFDBE0FA3D50E0000BCCFF00FFFF00FFFF00FFFF00FF
          FF00FF8AA1FFBAC7FEE8ECFFFFFFFFFFFFFFFFFFFFE4E9FE889BF61738E6000B
          CCFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8AA0FF8AA3FF90
          A6FF7993FE4A6BF91A40EFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        OnClick = sb_delClick
        ExplicitTop = 96
        ExplicitWidth = 23
      end
    end
    object Panel3: TPanel
      Left = 25
      Top = 0
      Width = 735
      Height = 302
      Align = alClient
      Enabled = False
      TabOrder = 1
      object sb_save: TSpeedButton
        Left = 258
        Top = 264
        Width = 89
        Height = 22
        Caption = 'Salvar'
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000666666886666666666666666666666666666000066666CC8866666666666
          666888666666666600006666C22C88666666666666888886666666660000666A
          2222C886666666666888888866666666000066A222222C886666666668888888
          86666666000066A222A222C8866666666888688888666666000066A22C8A222C
          866666666888868888866666000066A22C86A22C886666666888866888866666
          0000666A2C666A22C8866666668866668888666600006666AA6666A22C886666
          6666666668888666000066666666666A22C88666666666666688886600006666
          66666666A22C8666666666666668888600006666666666666A2C866666666666
          66668886000066666666666666AC666666666666666668660000666666666666
          6666666666666666666666660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sb_saveClick
      end
      object sb_cancel: TSpeedButton
        Left = 393
        Top = 264
        Width = 89
        Height = 22
        Caption = 'Cancelar'
        Enabled = False
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000010000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          6666666666666666666666660000666668666666666666666666666666666666
          0000666608866666666666666686666666666666000066691086666688666666
          6888666666666666000066691088666008866666688866666886666600006669
          1108869110866666688886668888666600006666911089111066666666888868
          8888666600006666911191110666666666888888888666660000666669111110
          6666666666688888886666660000666666911108866666666666888886666666
          0000666666911110866666666666888888666666000066666911011088666666
          6668888888666666000066666910691108866666666888688886666600006666
          9106669110886666668886668888666600006666910666691108666666888666
          6888866600006666696666669106666666686666668886660000666666666666
          6966666666666666666866660000666666666666666666666666666666666666
          0000}
        NumGlyphs = 2
        OnClick = sb_cancelClick
      end
      object Label1: TLabel
        Left = 16
        Top = 9
        Width = 33
        Height = 13
        Caption = 'Codigo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 143
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Nome'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 48
        Width = 25
        Height = 13
        Caption = 'CNPJ'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 16
        Top = 88
        Width = 44
        Height = 13
        Caption = 'Cod_Pais'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 241
        Top = 89
        Width = 68
        Height = 13
        Caption = 'Cod_Municipio'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 488
        Top = 88
        Width = 40
        Height = 13
        Caption = 'Suframa'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 16
        Top = 128
        Width = 55
        Height = 13
        Caption = 'Logradouro'
        FocusControl = DBEdit7
      end
      object Label8: TLabel
        Left = 16
        Top = 168
        Width = 37
        Height = 13
        Caption = 'Numero'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 282
        Top = 168
        Width = 65
        Height = 13
        Caption = 'Complemento'
        FocusControl = DBEdit9
      end
      object Label10: TLabel
        Left = 16
        Top = 209
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DBEdit10
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 25
        Width = 705
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Codigo'
        DataSource = DS2
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 142
        Top = 64
        Width = 579
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Nome'
        DataSource = DS2
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 64
        Width = 120
        Height = 19
        DataField = 'CNPJ'
        DataSource = DS2
        MaxLength = 18
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 104
        Width = 219
        Height = 19
        DataField = 'Cod_Pais'
        DataSource = DS2
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 241
        Top = 104
        Width = 241
        Height = 19
        DataField = 'Cod_Municipio'
        DataSource = DS2
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 488
        Top = 104
        Width = 233
        Height = 19
        DataField = 'Suframa'
        DataSource = DS2
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 144
        Width = 705
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Logradouro'
        DataSource = DS2
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 184
        Width = 260
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Numero'
        DataSource = DS2
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 282
        Top = 184
        Width = 439
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Complemento'
        DataSource = DS2
        TabOrder = 8
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 224
        Width = 705
        Height = 19
        CharCase = ecUpperCase
        DataField = 'Bairro'
        DataSource = DS2
        TabOrder = 9
      end
    end
  end
  object DS1: TDataSource
    DataSet = FDQ_Part
    Left = 680
    Top = 33
  end
  object FDQ_Part: TFDQuery
    Active = True
    Connection = DataModule1.FDConnection1
    SQL.Strings = (
      'Select * from Participantes')
    Left = 640
    Top = 32
    object FDQ_PartChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_PartCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      Size = 50
    end
    object FDQ_PartNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDQ_PartCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 14
    end
    object FDQ_PartCod_Pais: TStringField
      FieldName = 'Cod_Pais'
      Origin = 'Cod_Pais'
      Required = True
    end
    object FDQ_PartCod_Municipio: TStringField
      FieldName = 'Cod_Municipio'
      Origin = 'Cod_Municipio'
      Required = True
    end
    object FDQ_PartSuframa: TStringField
      FieldName = 'Suframa'
      Origin = 'Suframa'
    end
    object FDQ_PartLogradouro: TStringField
      FieldName = 'Logradouro'
      Origin = 'Logradouro'
      Size = 100
    end
    object FDQ_PartNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
    end
    object FDQ_PartComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 50
    end
    object FDQ_PartBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 100
    end
  end
  object FDT_Part: TFDTable
    Active = True
    IndexFieldNames = 'chave'
    Connection = DataModule1.FDConnection1
    TableName = 'lmpiscofinsdba.dbo.Participantes'
    Left = 640
    Top = 113
    object FDT_PartChave: TFDAutoIncField
      FieldName = 'Chave'
      Origin = 'Chave'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_PartCodigo: TStringField
      FieldName = 'Codigo'
      Origin = 'Codigo'
      Required = True
      Size = 50
    end
    object FDT_PartNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object FDT_PartCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      EditMask = '00\.000\.000\/0000\-00;0;_'
      Size = 14
    end
    object FDT_PartCod_Pais: TStringField
      FieldName = 'Cod_Pais'
      Origin = 'Cod_Pais'
      Required = True
    end
    object FDT_PartCod_Municipio: TStringField
      FieldName = 'Cod_Municipio'
      Origin = 'Cod_Municipio'
      Required = True
    end
    object FDT_PartSuframa: TStringField
      FieldName = 'Suframa'
      Origin = 'Suframa'
    end
    object FDT_PartLogradouro: TStringField
      FieldName = 'Logradouro'
      Origin = 'Logradouro'
      Size = 100
    end
    object FDT_PartNumero: TStringField
      FieldName = 'Numero'
      Origin = 'Numero'
    end
    object FDT_PartComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 50
    end
    object FDT_PartBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 100
    end
  end
  object DS2: TDataSource
    DataSet = FDT_Part
    Left = 680
    Top = 113
  end
end
