object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 182
  ClientWidth = 591
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 591
    Height = 182
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 24
      Width = 339
      Height = 40
      Caption = #193'rea de Gerenciamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lbNomePosto: TLabel
      Left = 120
      Top = 70
      Width = 6
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btAbastecer: TButton
      Left = 40
      Top = 112
      Width = 105
      Height = 25
      Caption = 'Abastecer'
      TabOrder = 0
      OnClick = btAbastecerClick
    end
    object btRelatorio: TButton
      Left = 424
      Top = 112
      Width = 105
      Height = 25
      Caption = 'Relat'#243'rio'
      TabOrder = 1
      OnClick = btRelatorioClick
    end
    object btAtlImposto: TButton
      Left = 168
      Top = 112
      Width = 105
      Height = 25
      Caption = 'Alterar Imposto'
      TabOrder = 2
      OnClick = btAtlImpostoClick
    end
    object btTanque: TButton
      Left = 296
      Top = 112
      Width = 105
      Height = 25
      Caption = 'Gerenciar Tanques'
      TabOrder = 3
      OnClick = btTanqueClick
    end
  end
end
