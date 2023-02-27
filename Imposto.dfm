object frmImposto: TfrmImposto
  Left = 0
  Top = 0
  Caption = 'Imposto'
  ClientHeight = 98
  ClientWidth = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 26
    Width = 39
    Height = 13
    Caption = 'Imposto'
  end
  object btSalvar: TButton
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = btSalvarClick
  end
  object btSair: TButton
    Left = 96
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 1
    OnClick = btSairClick
  end
  object edtImposto: TJvCalcEdit
    Left = 61
    Top = 23
    Width = 76
    Height = 21
    DisplayFormat = ',0.##%'
    ShowButton = False
    TabOrder = 2
    DecimalPlacesAlwaysShown = False
  end
  object qryImposto: TADOQuery
    Connection = frmConecta.Conexao
    Parameters = <>
    SQL.Strings = (
      'Select Percentual From Imposto')
    Left = 144
    Top = 8
  end
  object qrySalvar: TADOQuery
    Connection = frmConecta.Conexao
    Parameters = <>
    Top = 40
  end
end
