object frmDoc: TfrmDoc
  Left = 318
  Top = 292
  BorderStyle = bsDialog
  Caption = #1044#1086#1082
  ClientHeight = 104
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 353
    Height = 57
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 80
      Height = 13
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1086#1082#1072':'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 61
      Height = 13
      Caption = #1040#1076#1088#1077#1089' '#1076#1086#1082#1072':'
    end
    object Edit1: TEdit
      Left = 96
      Top = 4
      Width = 249
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 96
      Top = 28
      Width = 249
      Height = 21
      TabOrder = 1
      OnChange = Edit2Change
      OnKeyPress = Edit2KeyPress
    end
  end
  object Button1: TButton
    Left = 208
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1082
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 288
    Top = 72
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    TabOrder = 2
    OnClick = Button2Click
  end
end
