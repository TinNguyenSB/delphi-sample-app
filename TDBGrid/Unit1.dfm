object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=TestComplete'
      'DriverID=MySQL'
      'Password=Admin@123456'
      'Server=localhost'
      'User_Name=root')
    Left = 104
    Top = 112
  end
end
