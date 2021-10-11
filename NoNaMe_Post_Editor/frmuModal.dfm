object frmNewLink: TfrmNewLink
  Left = 344
  Top = 410
  BorderStyle = bsDialog
  Caption = #1057#1089#1099#1083#1082#1072
  ClientHeight = 87
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 42
    Height = 13
    Caption = #1057#1089#1099#1083#1082#1072':'
  end
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 53
    Height = 13
    Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
  end
  object Edit1: TEdit
    Left = 64
    Top = 4
    Width = 345
    Height = 21
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 64
    Top = 28
    Width = 345
    Height = 21
    TabOrder = 1
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 256
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    Enabled = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 336
    Top = 56
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 3
    OnClick = Button2Click
  end
end
