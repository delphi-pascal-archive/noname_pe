object frmOptionsNewImages: TfrmOptionsNewImages
  Left = 306
  Top = 253
  BorderStyle = bsDialog
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1074#1089#1090#1072#1074#1082#1080' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081
  ClientHeight = 129
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    363
    129)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 347
    Height = 82
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 148
      Height = 13
      Caption = #1056#1072#1089#1087#1086#1083#1086#1078#1077#1085#1080#1077' '#1082#1086#1084#1077#1085#1090#1072#1088#1080#1077#1074':'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 24
      Width = 329
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 0
      Text = #1057#1085#1080#1079#1091
      OnChange = ComboBox1Change
      Items.Strings = (
        #1057#1074#1077#1088#1093#1091
        #1057#1085#1080#1079#1091)
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 56
      Width = 329
      Height = 17
      Caption = #1040#1074#1090#1086#1084#1072#1090#1080#1095#1077#1089#1082#1080' '#1085#1091#1084#1077#1088#1086#1074#1072#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
      TabOrder = 1
      OnClick = ComboBox1Change
      OnKeyPress = CheckBox1KeyPress
    end
  end
  object Button1: TButton
    Left = 200
    Top = 97
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Enabled = False
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 97
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 1
    TabOrder = 2
  end
end
