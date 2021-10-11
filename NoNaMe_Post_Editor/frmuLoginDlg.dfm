object frmLogin: TfrmLogin
  Left = 380
  Top = 241
  BorderStyle = bsToolWindow
  Caption = #1054#1096#1080#1073#1082#1072
  ClientHeight = 165
  ClientWidth = 263
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    263
    165)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 40
    Width = 34
    Height = 13
    Caption = #1051#1086#1075#1080#1085':'
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object StaticText1: TStaticText
    Left = 8
    Top = 8
    Width = 247
    Height = 17
    Alignment = taCenter
    Anchors = [akLeft, akTop, akRight]
    AutoSize = False
    Caption = #1051#1086#1075#1080#1085'/'#1087#1072#1088#1086#1083#1100' '#1085#1077' '#1074#1077#1088#1085#1099'!'
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 56
    Top = 36
    Width = 201
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object MaskEdit1: TMaskEdit
    Left = 56
    Top = 60
    Width = 201
    Height = 21
    TabOrder = 2
    Text = 'MaskEdit1'
  end
  object CheckBox1: TCheckBox
    Left = 56
    Top = 88
    Width = 201
    Height = 17
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1088#1086#1083#1100
    TabOrder = 3
  end
  object CheckBox2: TCheckBox
    Left = 56
    Top = 112
    Width = 201
    Height = 17
    Action = acViewPass
    TabOrder = 4
  end
  object Button1: TButton
    Left = 104
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1082
    ModalResult = 1
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 184
    Top = 136
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 6
  end
  object ActionList1: TActionList
    Left = 8
    Top = 88
    object acViewPass: TAction
      AutoCheck = True
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1087#1072#1088#1086#1083#1100
      OnExecute = acViewPassExecute
    end
  end
end
