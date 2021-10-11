object frmInsertInetImage: TfrmInsertInetImage
  Left = 364
  Top = 233
  BorderStyle = bsDialog
  Caption = #1042#1089#1090#1072#1074#1082#1072' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '#1080#1079' '#1080#1085#1090#1077#1088#1085#1077#1090#1072
  ClientHeight = 293
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    395
    293)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 379
    Height = 249
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 321
      Height = 13
      Caption = #1042#1085#1080#1084#1072#1085#1080#1077': '#1082#1072#1078#1076#1072#1103' '#1089#1089#1099#1083#1082#1072' '#1076#1086#1083#1078#1085#1072' '#1085#1072#1095#1080#1085#1072#1090#1100#1089#1103' '#1089' '#1085#1086#1074#1086#1081' '#1089#1090#1088#1086#1082#1080':'
    end
    object Memo: TMemo
      Left = 8
      Top = 24
      Width = 361
      Height = 217
      ScrollBars = ssBoth
      TabOrder = 0
    end
  end
  object Button1: TButton
    Left = 8
    Top = 264
    Width = 75
    Height = 25
    Anchors = [akLeft, akBottom]
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 264
    Width = 75
    Height = 25
    Action = aApply
    Anchors = [akRight, akBottom]
    TabOrder = 2
  end
  object Button3: TButton
    Left = 312
    Top = 264
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 3
  end
  object ActionList1: TActionList
    Left = 32
    Top = 192
    object aApply: TAction
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      OnExecute = aApplyExecute
    end
  end
end
