object FRM_Perse: TFRM_Perse
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Programa Emergencial de Retomada do Setor de Eventos (Perse)'
  ClientHeight = 289
  ClientWidth = 495
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 98
    Width = 108
    Height = 13
    Caption = 'Total CST 06 Servi'#231'os:'
  end
  object Label2: TLabel
    Left = 80
    Top = 131
    Width = 103
    Height = 13
    Caption = 'Total CST 06 Vendas:'
  end
  object Label3: TLabel
    Left = 80
    Top = 163
    Width = 65
    Height = 13
    Caption = 'Total CST 06:'
  end
  object Bevel1: TBevel
    Left = 32
    Top = 200
    Width = 425
    Height = 9
    Shape = bsTopLine
  end
  object Label4: TLabel
    Left = 56
    Top = 215
    Width = 172
    Height = 13
    Caption = 'Total de Cr'#233'ditos de PIS removidos:'
  end
  object Label5: TLabel
    Left = 34
    Top = 247
    Width = 194
    Height = 13
    Caption = 'Total de Cr'#233'ditos de COFINS removidos:'
  end
  object Button1: TButton
    Left = 120
    Top = 8
    Width = 241
    Height = 25
    Caption = 'Processar CST 06 - Natureza da Receita 920'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 240
    Top = 96
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 240
    Top = 128
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 240
    Top = 160
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'Edit3'
  end
  object GroupBox1: TGroupBox
    Left = 56
    Top = 32
    Width = 401
    Height = 58
    Caption = ' Registros a serem processados '
    TabOrder = 4
    object Cumulativo: TCheckBox
      Left = 40
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Servi'#231'os A100'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object NaoCumulativo: TCheckBox
      Left = 159
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Vendas C100'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object Creditos: TCheckBox
      Left = 272
      Top = 24
      Width = 97
      Height = 17
      Caption = 'Zerar Cr'#233'ditos'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
  end
  object Edit4: TEdit
    Left = 240
    Top = 212
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'Edit4'
  end
  object Edit5: TEdit
    Left = 240
    Top = 244
    Width = 121
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'Edit5'
  end
end
