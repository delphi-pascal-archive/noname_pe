object frmNewImage: TfrmNewImage
  Left = 264
  Top = 208
  BorderStyle = bsDialog
  Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
  ClientHeight = 319
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 248
    Width = 401
    Height = 33
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 51
      Height = 13
      Caption = #1048#1089#1090#1086#1095#1085#1080#1082':'
    end
    object Edit1: TEdit
      Left = 64
      Top = 4
      Width = 265
      Height = 21
      Enabled = False
      ReadOnly = True
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Button1: TButton
      Left = 336
      Top = 4
      Width = 57
      Height = 20
      Caption = #1054#1073#1079#1086#1088'...'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object btnOk: TButton
    Left = 256
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Ok'
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancel: TButton
    Left = 334
    Top = 288
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    ModalResult = 2
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object TabControl: TTabControl
    Left = 8
    Top = 8
    Width = 401
    Height = 233
    TabOrder = 3
    TabPosition = tpBottom
    OnChange = TabControlChange
    DesignSize = (
      401
      233)
    object Panel2: TPanel
      Left = 8
      Top = 8
      Width = 385
      Height = 201
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object Image: TImage
        Left = 2
        Top = 2
        Width = 381
        Height = 172
        Align = alClient
        AutoSize = True
        Center = True
        Proportional = True
      end
      object DelBtn: TSpeedButton
        Left = 360
        Top = 0
        Width = 23
        Height = 22
        Flat = True
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47E93D3405FD3C8D0D497A8D4
          3354D27E93D3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D44C69D4012BD23354D3C8D0D43354D3012BD3012BD34C69D5C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4BCC7D5405FD6012CD63355D6BCC7D5C8D0D4A3B2D6
          0E36D8012CD8012CD84C6AD7C8D0D4C8D0D4C8D0D4C8D0D4B0BDD5274CDA012D
          DB4C6AD9C8D0D4C8D0D4C8D0D4C8D0D4BCC7D63356DC012DDE012DDE4060DCBC
          C7D6C8D0D4A3B2D70E38DD012EDE4C6ADAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D46580DC012FE3012FE3274DE1718ADB0E38E0012EE14C6BDDC8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4A3B3D81A43E401
          2FE5012FE5012FE54C6CDFC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4C8D0D4C8D0D4C8D0D44C6CE30130EB0130EB0130EBA3B3D9C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4BCC7D7274FE90131EE01
          31EE4C6DE50131F20E3BF0A3B3DAC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
          C8D0D4A3B3DB1A45EE0131F10131F17E95DFC8D0D4A3B3DB2750F00E3DF58AA0
          E0C8D0D4C8D0D4C8D0D4C8D0D4C8D0D497A9DD0E3CF30132F50132F57E95E1C8
          D0D4C8D0D4C8D0D4BCC7D84C6EEC0134FC7E96E4C8D0D4C8D0D4C8D0D47E96E3
          0133FA0133FA0E3DF77E96E3C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D47E96
          E52751F7C8D0D4C8D0D4C8D0D40E3EFA0134FD0E3DF9A3B3DCC8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D46583EB
          335BF4A3B4DDC8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
          D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
          D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
        OnClick = DelBtnClick
      end
      object Panel3: TPanel
        Left = 2
        Top = 174
        Width = 381
        Height = 25
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Edit2: TEdit
          Left = 1
          Top = 2
          Width = 377
          Height = 21
          TabOrder = 0
          Text = #1041#1091#1076#1091#1090' '#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1080' =)'
          OnChange = Edit2Change
        end
      end
    end
  end
  object Button2: TButton
    Left = 8
    Top = 288
    Width = 75
    Height = 25
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080'...'
    TabOrder = 4
    OnClick = Button2Click
  end
  object OpenDialog: TOpenPictureDialog
    Filter = 
      'All (*.png;*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.png;*.g' +
      'if;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf|Portable Network Graphic' +
      's (*.png)|*.png|CompuServe GIF Image (*.gif)|*.gif|JPEG Image Fi' +
      'le (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bitmaps (*.bmp)' +
      '|*.bmp'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 24
    Top = 160
  end
end
