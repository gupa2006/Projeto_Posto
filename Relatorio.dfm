object frmRelatorio: TfrmRelatorio
  Left = 0
  Top = 0
  Caption = 'Relatorio'
  ClientHeight = 405
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 56
    Width = 506
    Height = 193
    DataSource = dsRelDia
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tanque'
        Title.Alignment = taCenter
        Width = 182
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bomba'
        Title.Alignment = taCenter
        Width = 87
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Valor'
        Title.Alignment = taCenter
        Width = 98
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 255
    Width = 506
    Height = 141
    DataSource = dsSoma
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Tanque'
        Title.Alignment = taCenter
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bomba'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'ValorTotal'
        Title.Alignment = taCenter
        Width = 156
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 329
    Height = 45
    Caption = 'Per'#237'odo'
    TabOrder = 2
    object Label1: TLabel
      Left = 20
      Top = 21
      Width = 25
      Height = 13
      Caption = 'In'#237'cio'
    end
    object Label2: TLabel
      Left = 176
      Top = 21
      Width = 16
      Height = 13
      Caption = 'Fim'
    end
    object edtInicio: TJvDBDatePickerEdit
      Left = 48
      Top = 18
      Width = 121
      Height = 21
      AllowNoDate = True
      TabOrder = 0
    end
    object edtFim: TJvDBDatePickerEdit
      Left = 197
      Top = 18
      Width = 121
      Height = 21
      AllowNoDate = True
      TabOrder = 1
    end
  end
  object btOk: TButton
    Left = 352
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 3
    OnClick = btOkClick
  end
  object btSair: TButton
    Left = 439
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 4
    OnClick = btSairClick
  end
  object qryRelDia: TADOQuery
    Connection = frmConecta.Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Inicio'
        DataType = ftDateTime
        Precision = 10
        Size = 10
        Value = Null
      end
      item
        Name = 'Fim'
        DataType = ftDateTime
        Precision = 10
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'Select CONVERT(VarChar(10), Data, 103) Data,'
      
        #39'Tanque '#39'+Ltrim(Rtrim(CONVERT(VarChar(3),T.ID_Tanque))) + '#39' - '#39' ' +
        '+ C.Nome Tanque,'
      #39'Bomba '#39'+Ltrim(Rtrim(CONVERT(VarChar(3),B.ID_Bomba))) Bomba,'
      #39'R$ '#39'+'
      'REPLACE('
      ' replace('
      ' replace(convert(varchar, cast(Valor as money), 1),'#39','#39','#39';'#39')'
      ' ,'#39'.'#39','#39','#39')'
      ' ,'#39';'#39','#39'.'#39') Valor'
      'From Abastecimento A'
      'Join Bomba B ON A.ID_Bomba = B.ID_Bomba'
      'Join Tanque T ON B.ID_Tanque = T.ID_Tanque'
      'Join Combustivel C On T.ID_Combustivel = C.ID_Combustivel'
      'Where Data >= :Inicio And Data <= :Fim'
      
        'Order By YEAR(Data), MONTH(Data), DAY(Data), T.ID_Tanque, B.ID_B' +
        'omba')
    Left = 432
    Top = 104
    object qryRelDiaData: TStringField
      FieldName = 'Data'
      ReadOnly = True
      Size = 10
    end
    object qryRelDiaTanque: TStringField
      FieldName = 'Tanque'
      ReadOnly = True
      Size = 43
    end
    object qryRelDiaBomba: TStringField
      FieldName = 'Bomba'
      ReadOnly = True
      Size = 9
    end
    object qryRelDiaValor: TStringField
      FieldName = 'Valor'
      ReadOnly = True
      Size = 8000
    end
  end
  object qrySoma: TADOQuery
    Connection = frmConecta.Conexao
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Inicio'
        Size = -1
        Value = Null
      end
      item
        Name = 'Fim'
        Size = -1
        Value = Null
      end
      item
        Name = 'Inicio'
        Size = -1
        Value = Null
      end
      item
        Name = 'Fim'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      
        'Select Ltrim(Rtrim(CONVERT(VarChar(3),T.ID_Tanque))) + '#39' - '#39' + C' +
        '.Nome Tanque,'
      #39'Bomba '#39'+Ltrim(Rtrim(CONVERT(VarChar(3),B.ID_Bomba))) Bomba, '
      #39'R$ '#39'+'
      'REPLACE('
      ' replace('
      ' replace(convert(varchar, cast(Sum(Valor) as money), 1),'#39','#39','#39';'#39')'
      ' ,'#39'.'#39','#39','#39')'
      ' ,'#39';'#39','#39'.'#39') ValorTotal'
      'From Abastecimento A'
      'Join Bomba B ON A.ID_Bomba = B.ID_Bomba'
      'Join Tanque T ON B.ID_Tanque = T.ID_Tanque'
      'Join Combustivel C On T.ID_Combustivel = C.ID_Combustivel'
      'Where Data Between :Inicio And :Fim'
      'Group By T.ID_Tanque, C.Nome, B.ID_Bomba'
      'Union All'
      'Select '#39'Total'#39' Tanque,'
      #39'--'#39' Bomba, '
      #39'R$ '#39'+'
      'REPLACE('
      ' replace('
      ' replace(convert(varchar, cast(Sum(Valor) as money), 1),'#39','#39','#39';'#39')'
      ' ,'#39'.'#39','#39','#39')'
      ' ,'#39';'#39','#39'.'#39') ValorTotal'
      'From Abastecimento'
      'Where Data Between :Inicio And :Fim'
      '')
    Left = 432
    Top = 312
    object qrySomaTanque: TStringField
      FieldName = 'Tanque'
      ReadOnly = True
      Size = 36
    end
    object qrySomaBomba: TStringField
      FieldName = 'Bomba'
      ReadOnly = True
      Size = 9
    end
    object qrySomaValorTotal: TStringField
      FieldName = 'ValorTotal'
      ReadOnly = True
      Size = 8000
    end
  end
  object dsRelDia: TDataSource
    DataSet = qryRelDia
    Left = 376
    Top = 104
  end
  object dsSoma: TDataSource
    DataSet = qrySoma
    Left = 384
    Top = 312
  end
end
