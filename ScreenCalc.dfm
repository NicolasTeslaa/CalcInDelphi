object FrmCalculadora: TFrmCalculadora
  Left = 0
  Top = 0
  Caption = 'Calculadora'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object LblResult: TLabel
    Left = 295
    Top = 96
    Width = 178
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -67
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EditValue: TEdit
    Left = 120
    Top = 112
    Width = 129
    Height = 45
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = '...'
  end
  object BtnAdd: TButton
    Left = 120
    Top = 191
    Width = 73
    Height = 66
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = BtnAddClick
  end
  object BtnSubtrai: TButton
    Left = 216
    Top = 191
    Width = 73
    Height = 66
    Cancel = True
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BtnSubtraiClick
  end
  object btnDividir: TButton
    Left = 320
    Top = 191
    Width = 65
    Height = 66
    Cancel = True
    Caption = '/'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btnDividirClick
  end
  object BtnMultiplicacao: TButton
    Left = 408
    Top = 191
    Width = 65
    Height = 66
    Cancel = True
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = BtnMultiplicacaoClick
  end
  object BtnResult: TButton
    Left = 120
    Top = 279
    Width = 353
    Height = 66
    Cancel = True
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = BtnResultClick
  end
end
