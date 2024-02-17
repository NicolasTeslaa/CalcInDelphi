object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'Login'
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
  object lblEmail: TLabel
    Left = 80
    Top = 144
    Width = 29
    Height = 15
    Caption = 'Email'
  end
  object Label2: TLabel
    Left = 80
    Top = 214
    Width = 32
    Height = 15
    Caption = 'Senha'
  end
  object Label1: TLabel
    Left = 80
    Top = 16
    Width = 205
    Height = 54
    Caption = 'Bem Vindo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -40
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 76
    Width = 336
    Height = 37
    Caption = 'Fa'#231'a Login para Continuar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
  end
  object edtEmail: TEdit
    Left = 80
    Top = 165
    Width = 369
    Height = 23
    TabOrder = 0
    TextHint = 'email@gmail.com'
  end
  object BtnLogin: TButton
    Left = 80
    Top = 324
    Width = 97
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = BtnLoginClick
  end
  object EdtSenha: TEdit
    Left = 80
    Top = 235
    Width = 369
    Height = 23
    PasswordChar = '*'
    TabOrder = 2
    TextHint = '*********'
  end
  object BtnSair: TButton
    Left = 352
    Top = 324
    Width = 97
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = BtnSairClick
  end
  object CheckboxRememberMe: TCheckBox
    Left = 312
    Top = 272
    Width = 145
    Height = 17
    Caption = 'Desativa login'
    TabOrder = 4
    OnClick = CheckboxRememberMeClick
  end
  object Opcao: TComboBox
    Left = 80
    Top = 269
    Width = 145
    Height = 23
    AutoCloseUp = True
    TabOrder = 5
    TextHint = 'Escolha a Op'#231#227'o'
    OnChange = OpcaoChange
    Items.Strings = (
      'Ativo'
      'Inativo')
  end
  object RDFechar: TRadioGroup
    Left = 431
    Top = 40
    Width = 185
    Height = 105
    Caption = 'Bot'#227'o Fechar'
    Items.Strings = (
      'Ativo'
      'Inativo')
    TabOrder = 6
    OnClick = RDFecharClick
  end
  object BtnRegistra: TButton
    Left = 541
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Registra'
    TabOrder = 7
    OnClick = BtnRegistraClick
  end
  object BtnClear: TButton
    Left = 152
    Top = 387
    Width = 225
    Height = 46
    Caption = 'Limpar Formul'#225'rios'
    TabOrder = 8
    OnClick = BtnClearClick
  end
  object Button1: TButton
    Left = 440
    Top = 384
    Width = 75
    Height = 25
    Caption = 'LimpaFacil'
    TabOrder = 9
    OnClick = Button1Click
  end
  object BtnCalc: TButton
    Left = 552
    Top = 336
    Width = 75
    Height = 25
    Caption = 'Calculadora'
    TabOrder = 10
    OnClick = BtnCalcClick
  end
end
