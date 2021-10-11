object frmPost: TfrmPost
  Left = 205
  Top = 135
  Width = 705
  Height = 480
  Caption = #1055#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1086#1090#1087#1088#1072#1074#1082#1072' '#1085#1072' NoNaMe'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  DesignSize = (
    697
    446)
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 8
    Top = 420
    Width = 97
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = #1055#1088#1086#1094#1077#1089#1089' '#1086#1090#1087#1088#1072#1074#1082#1080':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label4: TLabel
    Left = 112
    Top = 420
    Width = 409
    Height = 13
    Anchors = [akLeft, akRight, akBottom]
    AutoSize = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object GroupBox: TGroupBox
    Left = 8
    Top = 80
    Width = 682
    Height = 329
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = #1055#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088' '#1079#1072#1087#1080#1089#1080
    TabOrder = 0
    object Browser: TEmbeddedWB
      Left = 2
      Top = 15
      Width = 678
      Height = 312
      Align = alClient
      TabOrder = 0
      DownloadOptions = [DLCTL_DLIMAGES, DLCTL_VIDEOS, DLCTL_BGSOUNDS]
      UserInterfaceOptions = [FLAT_SCROLLBAR, DIV_BLOCKDEFAULT]
      PrintOptions.Margins.Left = 19.050000000000000000
      PrintOptions.Margins.Right = 19.050000000000000000
      PrintOptions.Margins.Top = 19.050000000000000000
      PrintOptions.Margins.Bottom = 19.050000000000000000
      PrintOptions.Header = '&w&b'#1057#1090#1088'. &p '#1080#1079' &P'
      PrintOptions.HTMLHeader.Strings = (
        '<HTML></HTML>')
      PrintOptions.Orientation = poPortrait
      UserAgent = 'NoNaMe Editor Post'
      ReplaceCaption = True
      EnableDDE = False
      fpExceptions = True
      ControlData = {
        4C00000025450000B02700000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126209000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object Button1: TButton
    Left = 537
    Top = 416
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 614
    Top = 416
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1047#1072#1082#1088#1099#1090#1100
    ModalResult = 2
    TabOrder = 2
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 681
    Height = 69
    Anchors = [akLeft, akTop, akRight]
    Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 20
      Width = 24
      Height = 13
      Caption = #1044#1086#1082':'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 40
      Height = 13
      Caption = #1056#1072#1079#1076#1077#1083':'
    end
    object DocLabel: TLabel
      Left = 56
      Top = 20
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RazdelLabel: TLabel
      Left = 56
      Top = 44
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
