object FRM_Correcoes: TFRM_Correcoes
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Corre'#231#245'es Diversas do Arquivo'
  ClientHeight = 192
  ClientWidth = 419
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 16
    Width = 369
    Height = 113
    Caption = ' Corre'#231#245'es '
    TabOrder = 0
    object CBNatReceita: TCheckBox
      Left = 16
      Top = 32
      Width = 337
      Height = 17
      Caption = 'Separa Receitas Isentas CST 04 por Empresa'
      Checked = True
      State = cbChecked
      TabOrder = 0
    end
    object CBAliquotas: TCheckBox
      Left = 16
      Top = 64
      Width = 350
      Height = 17
      Caption = 'Corrige Erro de Arredondamento das Aliquotas de PIS e COFINS'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
  end
  object BTNCorrecao: TButton
    Left = 120
    Top = 144
    Width = 169
    Height = 25
    Caption = 'Efetuar Corre'#231#245'es'
    TabOrder = 1
    OnClick = BTNCorrecaoClick
  end
end
