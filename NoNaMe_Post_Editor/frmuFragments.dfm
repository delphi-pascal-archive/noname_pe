object frmFragments: TfrmFragments
  Left = 282
  Top = 189
  Width = 560
  Height = 418
  Caption = #1060#1088#1072#1075#1084#1077#1085#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 185
    Top = 22
    Height = 362
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 552
    Height = 22
    AutoSize = True
    Caption = 'ToolBar1'
    EdgeBorders = []
    Flat = True
    Images = ImageList1
    TabOrder = 0
    object btnNew: TToolButton
      Left = 0
      Top = 0
      Action = aNew
    end
    object ToolButton2: TToolButton
      Left = 23
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 1
      Style = tbsSeparator
    end
    object btnEdit: TToolButton
      Left = 31
      Top = 0
      Action = aEdit
    end
    object btnDel: TToolButton
      Left = 54
      Top = 0
      Action = aDel
    end
  end
  object ListBox1: TListBox
    Left = 0
    Top = 22
    Width = 185
    Height = 362
    Align = alLeft
    ItemHeight = 13
    TabOrder = 1
    OnClick = ListBox1Click
    OnKeyPress = ListBox1KeyPress
  end
  object Panel1: TPanel
    Left = 188
    Top = 22
    Width = 364
    Height = 362
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
    object Browser: TEmbeddedWB
      Left = 2
      Top = 2
      Width = 360
      Height = 358
      Align = alClient
      TabOrder = 0
      DownloadOptions = [DLCTL_DLIMAGES, DLCTL_VIDEOS, DLCTL_BGSOUNDS]
      UserInterfaceOptions = [FLAT_SCROLLBAR, DIV_BLOCKDEFAULT]
      PrintOptions.HTMLHeader.Strings = (
        '<HTML></HTML>')
      PrintOptions.Orientation = poPortrait
      UserAgent = 'NoNaMe Post Editor'
      ReplaceCaption = True
      EnableDDE = False
      fpExceptions = True
      ControlData = {
        4C00000035250000002500000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object ImageList1: TImageList
    Left = 48
    Top = 32
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      000000000000000000000000000000000000000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF005A
      11FF005A11FF005A11FF000C10FF000C10FF000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0571
      2FFF6DC277FF05712FFFFFFFFFFF051B24FF000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFF05712FFF05712FFF0571
      2FFF67C076FF05712FFF05712FFF036621FF0000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FA
      FDFFF2FAFDFFF2FAFDFFFFFFFFFF062935FF0000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFF05712FFF0571
      2FFF05712FFF05712FFF05712FFF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFF05712FFF5EBD76FF5EBD
      76FF5EBD76FF5EBD76FF6DC277FF046C28FF0A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFF05712FFF05712FFF05712FFFDCF3FCFF05712FFF05712FFF0571
      2FFFDCF3FCFF05712FFF05712FFF05712FFF0A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFF05712FFF4AB6
      74FF4AB674FF4AB674FF4AB674FF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFF05712FFF05712FFF0571
      2FFF54B975FF05712FFF05712FFF05712FFF0C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF05712FFF54B975FF05712FFFC5EBFAFF05712FFF54B975FF0571
      2FFFC5EBFAFF05712FFF54B975FF05712FFF0C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFF05712FFF0571
      2FFF05712FFF05712FFF05712FFF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FF0571
      2FFF4AB674FF05712FFFFFFFFFFF0D4D64FF0D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFF05712FFF05712FFF05712FFFAEE3F8FF05712FFF05712FFF0571
      2FFFAEE3F8FF05712FFF05712FFF05712FFF0D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3
      F8FFAEE3F8FFAEE3F8FFFFFFFFFF0D4D64FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF0571
      2FFF05712FFF05712FFFFFFFFFFF105973FF105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF16799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF16799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF1783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF1783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B97C4FFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FFFFFF
      FFFF1B97C4FF1B97C4FF1B97C4FF1B97C4FF1B97C4FFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FFFFFF
      FFFF1B97C4FF1B97C4FF1B97C4FF1B97C4FF1B97C4FFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FFFFFF
      FFFF1B97C4FF1B97C4FF1B97C4FF1B97C4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001DA1D1FFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FFFFFF
      FFFF1DA1D1FF0000000000000000000000001DA1D1FFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FFFFFF
      FFFF1DA1D1FF0000000000000000000000001DA1D1FFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FFFFFF
      FFFF1DA1D1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001FABDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1FABDDFF0000000000000000000000001FABDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1FABDDFF0000000000000000000000001FABDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1FABDDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020B5E90020B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF00000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF00000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00E000E000E0000000E000E000E0000000
      E000E000E0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007000700070000
      0007000700070000000700070007000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 88
    Top = 32
    object aNew: TAction
      Caption = #1053#1086#1074#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1085#1086#1074#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      ImageIndex = 0
      OnExecute = aNewExecute
    end
    object aEdit: TAction
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      ImageIndex = 1
      OnExecute = aEditExecute
      OnUpdate = aEditUpdate
    end
    object aDel: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      ImageIndex = 2
      OnExecute = aDelExecute
      OnUpdate = aDelUpdate
    end
  end
end
