object frmDaoTanque: TfrmDaoTanque
  Left = 0
  Top = 0
  Caption = 'frmDaoTanque'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object qryAcao: TADOQuery
    Connection = frmConecta.Conexao
    Parameters = <>
    Left = 64
    Top = 40
  end
end
