object frmMain: TfrmMain
  Left = 251
  Top = 149
  Width = 660
  Height = 492
  Caption = 'NoNaMe Post Editor'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 439
    Width = 652
    Height = 19
    Enabled = False
    Panels = <
      item
        Width = 400
      end
      item
        Text = #1042#1089#1090#1072#1074#1082#1072
        Width = 50
      end
      item
        Width = 50
      end>
    ParentFont = True
    ParentShowHint = False
    ShowHint = True
    UseSystemFont = False
  end
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 652
    Height = 439
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object CoolBar1: TCoolBar
      Left = 0
      Top = 0
      Width = 652
      Height = 97
      AutoSize = True
      BandMaximize = bmNone
      Bands = <
        item
          Break = False
          Control = tbMenu
          ImageIndex = -1
          MinHeight = 19
          MinWidth = 335
          Width = 648
        end
        item
          Control = tbFile
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 80
          Width = 93
        end
        item
          Break = False
          Control = tbCopyPaste
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 70
          Width = 553
        end
        item
          Control = tbFormat
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 92
          Width = 105
        end
        item
          Break = False
          Control = tbInsert
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 134
          Width = 147
        end
        item
          Break = False
          Control = tbFragments
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 70
          Width = 83
        end
        item
          Break = False
          Control = tbPost
          ImageIndex = -1
          MinHeight = 22
          MinWidth = 145
          Width = 307
        end
        item
          Control = tbTema
          ImageIndex = -1
          MinHeight = 21
          MinWidth = 350
          Width = 453
        end
        item
          Break = False
          Control = tbActiveDoc
          ImageIndex = -1
          MinHeight = 24
          MinWidth = 180
          Width = 193
        end>
      ParentShowHint = False
      ShowHint = True
      object tbMenu: TToolBar
        Left = 9
        Top = 0
        Width = 635
        Height = 19
        ButtonHeight = 19
        ButtonWidth = 59
        Caption = 'tbMenu'
        EdgeBorders = []
        Flat = True
        List = True
        Menu = MainMenu1
        PopupMenu = PopupMenu1
        ShowCaptions = True
        TabOrder = 0
      end
      object tbFile: TToolBar
        Left = 9
        Top = 21
        Width = 80
        Height = 22
        Caption = 'tbFile'
        EdgeBorders = []
        Flat = True
        Images = ilFile
        ParentShowHint = False
        PopupMenu = PopupMenu1
        ShowHint = True
        TabOrder = 1
        object ToolButton3: TToolButton
          Left = 0
          Top = 0
          Action = aFileNew
        end
        object ToolButton4: TToolButton
          Left = 23
          Top = 0
          Width = 8
          Caption = 'ToolButton4'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object ToolButton5: TToolButton
          Left = 31
          Top = 0
          Action = aFileOpen
        end
        object ToolButton6: TToolButton
          Left = 54
          Top = 0
          Action = aFileSave
        end
      end
      object tbFormat: TToolBar
        Left = 9
        Top = 45
        Width = 92
        Height = 22
        Caption = 'tbFormat'
        EdgeBorders = []
        Flat = True
        Images = ilFormat
        PopupMenu = PopupMenu1
        TabOrder = 2
        object BoldButton: TToolButton
          Left = 0
          Top = 0
          Action = aFormatBold
        end
        object ItalicButton: TToolButton
          Left = 23
          Top = 0
          Action = aFormatItalic
        end
        object UnderlineButton: TToolButton
          Left = 46
          Top = 0
          Action = aFormatUnderline
        end
        object StrikeButton: TToolButton
          Left = 69
          Top = 0
          Action = aFormatStrike
        end
      end
      object tbInsert: TToolBar
        Left = 116
        Top = 45
        Width = 134
        Height = 22
        EdgeBorders = []
        Flat = True
        Images = ilInsert
        PopupMenu = PopupMenu1
        TabOrder = 3
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Action = aInsertCut
        end
        object ToolButton35: TToolButton
          Left = 23
          Top = 0
          Width = 8
          Caption = 'ToolButton35'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object ToolButton36: TToolButton
          Left = 31
          Top = 0
          Action = aInsertImage
        end
        object ToolButton37: TToolButton
          Left = 54
          Top = 0
          Action = aInsertLink
          Grouped = True
        end
        object ToolButton38: TToolButton
          Left = 77
          Top = 0
          Width = 8
          Caption = 'ToolButton38'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object DocButton: TToolButton
          Left = 85
          Top = 0
          Action = aInsertDoc
          Grouped = True
        end
        object CodeButton: TToolButton
          Left = 108
          Top = 0
          Action = aInsertCode
          Grouped = True
        end
      end
      object tbPost: TToolBar
        Left = 350
        Top = 45
        Width = 294
        Height = 22
        ButtonWidth = 137
        Caption = 'tbPost'
        DragKind = dkDock
        EdgeBorders = []
        Flat = True
        Images = ilCustom
        List = True
        PopupMenu = PopupMenu1
        ShowCaptions = True
        TabOrder = 4
        OnEndDock = tbPostEndDock
        object tbpPreview: TToolButton
          Left = 0
          Top = 0
          Action = aPreviewPost
          AutoSize = True
        end
      end
      object tbCopyPaste: TToolBar
        Left = 104
        Top = 21
        Width = 540
        Height = 22
        Caption = 'tbCopyPaste'
        EdgeBorders = []
        Flat = True
        Images = ilFile
        PopupMenu = PopupMenu1
        TabOrder = 5
        object ToolButton2: TToolButton
          Left = 0
          Top = 0
          Action = aEditCut
        end
        object ToolButton8: TToolButton
          Left = 23
          Top = 0
          Action = aEditCopy
        end
        object ToolButton9: TToolButton
          Left = 46
          Top = 0
          Action = aEditPaste
        end
      end
      object tbActiveDoc: TToolBar
        Left = 464
        Top = 69
        Width = 180
        Height = 24
        ButtonWidth = 25
        EdgeBorders = []
        Flat = True
        Images = ilCustom
        TabOrder = 6
        object cbDocs: TComboBox
          Left = 0
          Top = 0
          Width = 153
          Height = 21
          Hint = #1044#1086#1082' '#1076#1083#1103' '#1085#1086#1074#1086#1089#1090#1080'.'
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = cbDocsChange
        end
        object btnDoci: TToolButton
          Left = 153
          Top = 0
          Hint = #1042#1099#1073#1086#1088' '#1080' '#1085#1072#1089#1090#1088#1086#1081#1082#1072' '#1076#1086#1082#1072'.'
          Action = aServiceOptionsDocs
          AutoSize = True
        end
      end
      object tbTema: TPanel
        Left = 9
        Top = 70
        Width = 440
        Height = 21
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 7
        DesignSize = (
          440
          21)
        object Label1: TLabel
          Left = 0
          Top = 4
          Width = 101
          Height = 13
          Caption = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1085#1086#1074#1086#1089#1090#1080':'
        end
        object edTema: TEdit
          Left = 105
          Top = 1
          Width = 331
          Height = 21
          Hint = #1047#1072#1075#1086#1083#1086#1074#1086#1082' '#1085#1086#1074#1086#1089#1090#1080
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object tbFragments: TToolBar
        Left = 265
        Top = 45
        Width = 70
        Height = 22
        AutoSize = True
        Caption = #1060#1088#1072#1075#1084#1077#1085#1090#1099
        EdgeBorders = []
        Flat = True
        Images = ilInsert
        TabOrder = 8
        object FragmentButton: TToolButton
          Left = 0
          Top = 0
          Action = aInsertFragment
          DropdownMenu = FragmentMenu
          Style = tbsDropDown
        end
        object ToolButton7: TToolButton
          Left = 36
          Top = 0
          Width = 8
          Caption = 'ToolButton7'
          ImageIndex = 6
          Style = tbsSeparator
        end
        object ToolButton10: TToolButton
          Left = 44
          Top = 0
          Action = aNewFragment
        end
      end
    end
    object PageControl: TPageControl
      Left = 0
      Top = 97
      Width = 652
      Height = 319
      ActivePage = WisiwygPage
      Align = alClient
      Images = ImageList1
      MultiLine = True
      PopupMenu = PopupMenu1
      TabOrder = 1
      TabPosition = tpLeft
      OnChange = aChangePageExecute
      object WisiwygPage: TTabSheet
        Caption = 'WISIWYG'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 625
          Height = 311
          Align = alClient
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          object WebBrowser: TEmbeddedWB
            Left = 2
            Top = 2
            Width = 621
            Height = 307
            Align = alClient
            PopupMenu = PopupMenuWebBrowser
            TabOrder = 0
            OnDocumentComplete = WebBrowserDocumentComplete
            DownloadOptions = [DLCTL_DLIMAGES, DLCTL_SILENT, DLCTL_OFFLINE]
            UserInterfaceOptions = [NO3DBORDER, FLAT_SCROLLBAR, DIV_BLOCKDEFAULT]
            OnShowContextMenu = WebBrowserShowContextMenu
            PrintOptions.Margins.Left = 19.050000000000000000
            PrintOptions.Margins.Right = 19.050000000000000000
            PrintOptions.Margins.Top = 19.050000000000000000
            PrintOptions.Margins.Bottom = 19.050000000000000000
            PrintOptions.Header = '&w&b'#1057#1090#1088'. &p '#1080#1079' &P'
            PrintOptions.HTMLHeader.Strings = (
              'NoNaMe Post Editor')
            PrintOptions.Orientation = poPortrait
            UserAgent = 'NoNaMe Post Editor by Kalinov R.V.'
            ReplaceCaption = True
            EnableDDE = False
            fpExceptions = False
            ControlData = {
              4C0000002F400000BB1F00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126209000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
        end
      end
      object CodePage: TTabSheet
        Caption = 'Code'
        ImageIndex = 1
        object Code: TMemo
          Left = 0
          Top = 0
          Width = 625
          Height = 311
          Align = alClient
          PopupMenu = PopupMenuWebBrowser
          ScrollBars = ssVertical
          TabOrder = 0
          OnChange = CodeChange
          OnEnter = CodeEnter
          OnKeyDown = CodeKeyDown
          OnKeyPress = CodeKeyPress
        end
      end
    end
    object CoolBar2: TCoolBar
      Left = 0
      Top = 416
      Width = 652
      Height = 23
      Align = alBottom
      AutoSize = True
      BandMaximize = bmNone
      Bands = <
        item
          Control = tbInLink
          ImageIndex = -1
          MinHeight = 21
          MinWidth = 240
          Width = 407
        end
        item
          Break = False
          Control = tbCategory
          ImageIndex = -1
          MinHeight = 21
          MinWidth = 230
          Width = 243
        end>
      DockSite = True
      EdgeBorders = [ebTop]
      object tbCategory: TPanel
        Left = 418
        Top = 0
        Width = 230
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object CheckBox2: TCheckBox
          Left = 0
          Top = 2
          Width = 65
          Height = 17
          Action = aIndex
          TabOrder = 0
        end
        object cbCategory: TComboBox
          Left = 60
          Top = 0
          Width = 163
          Height = 21
          Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1076#1077#1083'|'#1042#1099#1073#1077#1088#1080#1090#1077' '#1088#1072#1079#1076#1077#1083
          Style = csDropDownList
          DropDownCount = 12
          Enabled = False
          ItemHeight = 13
          ItemIndex = 11
          TabOrder = 1
          Text = #1044#1088#1091#1075#1086#1077
          Items.Strings = (
            #1053#1086#1074#1086#1089#1090#1080
            #1046#1077#1083#1077#1079#1086
            #1060#1072#1081#1083#1099
            #1054#1073#1079#1086#1088#1099
            #1052#1086#1073#1080#1083#1099
            #1058#1074#1086#1088#1095#1077#1089#1090#1074#1086
            #1052#1091#1079#1099#1082#1072
            #1060#1080#1083#1100#1084#1099
            'PDA'
            #1070#1084#1086#1088
            #1048#1075#1088#1099
            #1044#1088#1091#1075#1086#1077)
        end
      end
      object tbInLink: TPanel
        Left = 9
        Top = 0
        Width = 394
        Height = 21
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        DesignSize = (
          394
          21)
        object Label4: TLabel
          Left = 0
          Top = 4
          Width = 51
          Height = 13
          Caption = #1048#1089#1090#1086#1095#1085#1080#1082':'
        end
        object InLink: TEdit
          Left = 64
          Top = 0
          Width = 324
          Height = 21
          Hint = #1048#1089#1090#1086#1095#1085#1080#1082' '#1085#1086#1074#1086#1089#1090#1080'|'#1048#1089#1090#1086#1095#1085#1080#1082' '#1085#1086#1074#1086#1089#1090#1080
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 336
    object mmFile: TMenuItem
      Caption = #1060#1072#1081#1083
      object mfNew: TMenuItem
        Action = aFileNew
        Hint = #1053#1086#1074#1072#1103' '#1085#1086#1074#1086#1089#1090#1100'|'#1053#1086#1074#1072#1103' '#1085#1086#1074#1086#1089#1090#1100' '#1074' '#1076#1086#1082
      end
      object N11: TMenuItem
        Caption = '-'
      end
      object mfOpen: TMenuItem
        Action = aFileOpen
      end
      object mfSave: TMenuItem
        Action = aFileSave
      end
      object mfSaveAs: TMenuItem
        Action = aFileSaveAs
      end
      object N13: TMenuItem
        Caption = '-'
      end
      object mfExit: TMenuItem
        Caption = #1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        Hint = #1042#1099#1093#1086#1076'|'#1042#1099#1093#1086#1076' '#1080#1079' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        ImageIndex = 43
        OnClick = mfExitClick
      end
    end
    object mmEdit: TMenuItem
      Caption = #1055#1088#1072#1074#1082#1072
      object N16: TMenuItem
        Action = aEditUndo
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object meCut: TMenuItem
        Action = aEditCut
      end
      object meCopy: TMenuItem
        Action = aEditCopy
      end
      object mePaste: TMenuItem
        Action = aEditPaste
      end
      object N10: TMenuItem
        Caption = '-'
      end
      object meSelectAll: TMenuItem
        Action = aEditSelectAll
      end
    end
    object mmFormat: TMenuItem
      Caption = #1060#1086#1088#1084#1072#1090
      object mfrBold: TMenuItem
        Action = aFormatBold
        AutoCheck = True
      end
      object mfrItalic: TMenuItem
        Action = aFormatItalic
        AutoCheck = True
      end
      object mfrUnder: TMenuItem
        Action = aFormatUnderline
        AutoCheck = True
      end
      object N3: TMenuItem
        Action = aFormatStrike
        AutoCheck = True
      end
    end
    object N27: TMenuItem
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      object miCut: TMenuItem
        Action = aInsertCut
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object miImage: TMenuItem
        Action = aInsertImage
      end
      object miLink: TMenuItem
        Action = aInsertLink
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object miDoc: TMenuItem
        Action = aInsertDoc
        AutoCheck = True
      end
      object N15: TMenuItem
        Action = aInsertCode
        AutoCheck = True
      end
    end
    object mmView: TMenuItem
      Caption = #1042#1080#1076
      object mvpMain: TMenuItem
        Action = aViewPanelMain
        AutoCheck = True
      end
      object mvpFormat: TMenuItem
        Action = aViewPanelFormat
        AutoCheck = True
      end
      object N17: TMenuItem
        Action = aViewPanelInsert
        AutoCheck = True
      end
      object miTema: TMenuItem
        Action = aViewTema
        AutoCheck = True
        Visible = False
      end
      object miActiveDoc: TMenuItem
        Action = aViewActiveDoc
        AutoCheck = True
        Visible = False
      end
      object miPost: TMenuItem
        Action = aViewPostPreview
        AutoCheck = True
        Visible = False
      end
      object N19: TMenuItem
        Caption = '-'
      end
      object miRegim: TMenuItem
        Caption = #1056#1077#1078#1080#1084
        Hint = #1042#1099#1073#1086#1088' '#1088#1077#1078#1080#1084#1072' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' '#1085#1086#1074#1086#1089#1090#1080'...'
        object mirWisywig: TMenuItem
          Action = aViewWISYWIG
          AutoCheck = True
        end
        object mirHtml: TMenuItem
          Action = aViewHtml
          AutoCheck = True
        end
      end
    end
    object mmService: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object msOptionProg: TMenuItem
        Action = aServiceOptionsProgs
      end
      object N18: TMenuItem
        Caption = '-'
      end
      object msOptionDoc: TMenuItem
        Action = aServiceOptionsDocs
      end
      object N1: TMenuItem
        Action = aServiceOptionsFragments
      end
      object N12: TMenuItem
        Caption = '-'
      end
      object msPost: TMenuItem
        Action = aPreviewPost
      end
    end
    object mmHelp: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      object mhHelp: TMenuItem
        Action = aHelpContents
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mhAbout: TMenuItem
        Action = aHelpAbout
      end
    end
  end
  object alFileEdit: TActionList
    Images = ilFile
    Left = 40
    Top = 336
    object aEditUndo: TEditUndo
      Category = 'Edit'
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100'|'#1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1086#1089#1083#1077#1076#1085#1077#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
      ImageIndex = 13
      ShortCut = 16474
      OnExecute = aEditUndoExecute
    end
    object aFileNew: TAction
      Category = 'File'
      Caption = #1053#1086#1074#1099#1081'...'
      Hint = #1053#1086#1074#1072#1103' '#1085#1086#1074#1086#1089#1090#1100'|'#1053#1086#1074#1086#1103' '#1085#1086#1074#1086#1089#1090#1100' '#1074' '#1076#1086#1082
      ImageIndex = 0
      ShortCut = 49230
      OnExecute = aFileNewExecute
    end
    object aFileSave: TAction
      Category = 'File'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083'|'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083' '#1085#1072' '#1076#1080#1089#1082
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = aFileSaveExecute
    end
    object aFileSaveAs: TAction
      Category = 'File'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...'
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082'...|'#1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082' '#1092#1072#1081#1083' '#1085#1072' '#1076#1080#1089#1082
      ImageIndex = 6
      ShortCut = 49235
      OnExecute = aFileSaveAsExecute
    end
    object aEditCut: TEditCut
      Category = 'Edit'
      Caption = #1042#1099#1088#1077#1079#1072#1090#1100
      Enabled = False
      Hint = 
        #1042#1099#1088#1077#1079#1072#1090#1100'|'#1042#1099#1088#1077#1079#1072#1090#1100' '#1074#1099#1076#1077#1083#1077#1085#1085#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1080' '#1087#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072 +
        ' Windows'
      ImageIndex = 5
      ShortCut = 16472
      OnExecute = aEditCutExecute
    end
    object aEditCopy: TEditCopy
      Category = 'Edit'
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      Enabled = False
      Hint = 
        #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100'|'#1050#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1080' '#1087#1086#1084#1077#1089#1090#1080#1090#1100' '#1074' '#1073#1091#1092#1077#1088' '#1086#1073#1084#1077#1085#1072' Window' +
        's'
      ImageIndex = 6
      ShortCut = 16451
      OnExecute = aEditCopyExecute
    end
    object aEditPaste: TEditPaste
      Category = 'Edit'
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Enabled = False
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1080#1079' '#1073#1091#1092#1077#1088#1072' '#1086#1073#1084#1077#1085#1072' Windows'
      ImageIndex = 7
      ShortCut = 16470
      OnExecute = aEditPasteExecute
      OnUpdate = aEditPasteUpdate
    end
    object aEditSelectAll: TEditSelectAll
      Category = 'Edit'
      Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
      Enabled = False
      Hint = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077'|'#1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1102' '#1085#1086#1074#1086#1089#1090#1100
      ShortCut = 16449
      OnExecute = aEditSelectAllExecute
    end
    object aFileOpen: TAction
      Category = 'File'
      Caption = #1054#1090#1082#1088#1099#1090#1100'...'
      Hint = #1054#1090#1082#1088#1099#1090#1100'...|'#1054#1090#1082#1088#1099#1090#1100' '#1089#1086#1093#1088#1072#1085#1077#1085#1085#1091#1102' '#1079#1072#1087#1080#1089#1100'...'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = aFileOpenExecute
    end
  end
  object ilFile: TImageList
    Left = 8
    Top = 304
    Bitmap = {
      494C010108000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDE
      DE00DEDEDE00DEDEDE00DEDEDE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007B7B7B0039393900393939005252
      5200525252005252520052525200525252005252520052525200525252005252
      5200424242003939390039393900EFEFEF000000000000000000000000000000
      0000000000008400000084000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084000000840000008400000084000000840000008400
      0000840000008400000084000000840000004A4A4A005A5A5A007B7B7B00CECE
      CE00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBDBD00BDBD
      BD00181818005A5A5A007B7B7B00EFEFEF000000000000000000000000000000
      0000840000000000000000000000840000000000000000000000840000008400
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000840000008400000084000000840000008400
      0000840000008400000084000000840000000000000000000000000000000000
      0000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000004A4A4A005A5A5A007B7B7B00D6D6
      D600C6C6C600C6C6C600C6C6C600A5A5A500C6C6C600C6C6C600C6C6C600C6C6
      C600181818005A5A5A007B7B7B00EFEFEF000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF000000000000000000000000000000
      00000000000000000000FFFFFF00840000004A4A4A006363630084848400DEDE
      DE00CECECE00CECECE00CECECE009C9C9C00CECECE00CECECE00CECECE00CECE
      CE00181818006363630084848400EFEFEF000000000000000000000000000000
      0000840000000000000000000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000004A4A4A006363630084848400E7E7
      E700DEDEDE00DEDEDE00DEDEDE00DEDEDE009C9C9C00DEDEDE00DEDEDE00DEDE
      DE00181818006363630084848400EFEFEF000000000000000000000000000000
      0000000000008400000084000000840000000000000084000000000000000000
      0000840000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00000000000000000000000000FFFF
      FF00840000008400000084000000840000004A4A4A006B6B6B008C8C8C00EFEF
      EF00E7E7E700E7E7E7009C9C9C00DEDEDE00A5A5A500E7E7E700E7E7E700E7E7
      E700181818006B6B6B008C8C8C00EFEFEF000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000840000008400
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF0000000000000000000000
      00000000000000000000FFFFFF00840000000000000000848400848484000084
      8400848484000084840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000004A4A4A00737373008C8C8C00EFEF
      EF00EFEFEF00EFEFEF00E7E7E700A5A5A500C6C6C600EFEFEF00EFEFEF00EFEF
      EF0018181800737373008C8C8C00EFEFEF000000000000000000000000000000
      0000000000000000000000000000840000000000000084000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00840000000000000084848400008484008484
      8400008484008484840084000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000004A4A4A007B7B7B0094949400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00212121007B7B7B0094949400EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF000000000000000000FFFF
      FF00840000008400000084000000840000000000000000848400848484000084
      8400848484000084840084000000840000008400000084000000840000008400
      0000840000000000000000000000000000004A4A4A007B7B7B00949494009494
      9400949494009494940094949400949494009494940094949400949494009494
      9400949494007B7B7B0094949400EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000000000000000000084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0084000000FFFFFF0084000000000000000000000084848400008484008484
      8400008484008484840000848400848484000084840084848400008484008484
      8400008484000000000000000000000000004A4A4A0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400848484009C9C9C00EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0084000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00840000008400000000000000000000000000000000848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400848484000000000000000000000000004A4A4A008C8C8C008C8C8C00B5B5
      B500C6C6C600CECECE00CECECE00CECECE00CECECE00CECECE00C6C6C600B5B5
      B5008C8C8C008C8C8C00A5A5A500EFEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF000000
      000000000000FFFFFF0000000000840000008400000084000000840000008400
      0000840000000000000000000000000000000000000084848400848484000000
      0000000000000000000000000000000000000000000000000000000000008484
      8400008484000000000000000000000000004A4A4A008C8C8C008C8C8C00A5A5
      A500CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00A5A5
      A5008C8C8C0094949400ADADAD00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000848400848484000084
      84000000000000FFFF00000000000000000000FFFF0000000000848484000084
      8400848484000000000000000000000000004A4A4A009494940094949400ADAD
      AD00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00DEDEDE00ADAD
      AD009C9C9C00BDBDBD009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000FFFF0000FFFF000000000000000000000000000000
      0000000000000000000000000000000000004A4A4A009494940094949400ADAD
      AD00EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700EFEFEF00ADAD
      AD00C6C6C6009C9C9C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000052525200CECECE00D6D6D600C6C6
      C600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
      C6009C9C9C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D19B77FFBD6E3DFFB965
      30FFB9642FFFB9642FFFB9642FFFB9632FFFB9632DFFB8632CFF626732FF206A
      36FF186A36FF1F6936FF5F6736FF0000000000000000E2C0A9FFCB8C65FFBE6F
      3EFFBB6935FFBB6935FFB96530FFB96430FFBA642FFFB9642EFFB9642EFFB963
      2EFFB96531FFBB6B3BFFAE673AFF000000000000000000000000000000000000
      00000000000000000000C88960FFC28357FFD38A67FFE18E6FFFDC8C6BFFDA8A
      6CFFD7896DFFCD8A6BFFAA6C43FFA55E2DFF0000000000000000FFFFFF00EFEF
      EF00FFFFFF00000000000000000000000000000000000000000000000000F7F7
      F700F7F7F70000000000000000000000000000000000BA6832FFF7F0E9FFF7EC
      DFFFF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFF85AC8DFF278B52FF63B9
      8CFF94D2B1FF63B98CFF278B52FF5A6939FF00000000BC6C38FFF5EAE1FFF6EB
      DDFFF6EBDEFFF6EADEFFF6EADCFFF6EADCFFFAF3EBFFFAF3EBFFFAF2EAFFFCF7
      F3FFFBF8F4FFFCFEFDFFBC6A38FF00000000E2C0A9FFCB8C65FFBE6F3EFFB965
      2FFFBB6935FFBB6835FFC58254FFEFCEB9FFDDFFFFFF86EEC7FFA1F4D7FFA1F6
      D7FF8BEEC7FFE0FFFFFFDDA184FFAA693DFF00000000FFFFFF00C6C6C6003131
      CE00C6C6C600FFFFFF0000000000000000000000000000000000EFEFEF005A5A
      B5005A5AB500EFEFEF00000000000000000000000000BE7036FFF5EBDFFFFDBE
      67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FF216E39FF61B98AFF5FB9
      86FFFFFFFFFF5FB886FF66BB8EFF1C6936FF00000000C0743DFFF5EBDFFFFDBE
      67FFFCBC66FFFBBD64FFFCBD63FFFCBD63FFFCBC61FFFBBC62FFFBBB60FFFCBD
      5FFFFCBB61FFFDFBF8FFB9652FFF00000000C37B4CFFF8F1EBFFF7ECDFFFF6EA
      DEFFF6EADCFFF6EADCFFC27E50FFEFB599FFEAF3E8FF50BE83FF6EC997FF70C9
      98FF53BE83FFE4F4E9FFDD9B7AFFA96839FFFFFFFF00C6C6C6004A4ACE004A4A
      CE004A4ACE00C6C6C600FFFFFF000000000000000000EFEFEF005A5AB5006363
      D6006363D6005A5AB500EFEFEF000000000000000000BF773BFFF7EDE3FFFDC1
      6DFFFFD89FFFFFD79DFFFFD69AFFFFD797FFFFD695FF307A4BFF9BD4B5FFFFFF
      FFFFFFFFFFFFFFFFFFFF94D2B1FF186A36FF00000000C17A40FFF7EDE3FFFDC1
      6DFFFFD89FFFFFD79DFFFFD69AFFFFD797FFFFD695FFFFD694FFFFD593FFFFD4
      92FFFBBD64FFFBF7F4FFBB6732FF00000000C0753EFFF5EBDFFFFDBE67FFFBBD
      64FFFCBD63FFFCBD63FFC38053FFEAB596FFF3F3EAFFEDF1E6FFEFF1E6FFEFF0
      E6FFEDF1E5FFF3F5EDFFD59B78FFAF6F43FFEFEFEF004A4ACE005252D6004242
      CE005252D6004A4ACE00C6C6C600FFFFFF00EFEFEF005A5AB500636BD6004242
      CE004242CE00636BD6006B6BBD000000000000000000C27B3FFFF7F0E6FFF8B3
      54FFF7B355FFF7B453FFF8B352FFF8B152FFF7B251FF49875CFF8FD3B0FF91D6
      B0FFFFFFFFFF64BB8BFF66BB8EFF1D6A37FF00000000C47E44FFF7F0E6FFF8B3
      54FFF7B355FFF7B453FFF8B352FFF8B152FFF7B251FFF7B251FFF7B150FFF7B1
      4EFFF7B14EFFFCF9F5FFBF6F37FF00000000C17B41FFF7EDE3FFFDC16DFFFFD7
      9DFFFFD69AFFFFD797FFC98A60FFE6B491FFE2A680FFE1A680FFDEA27CFFDCA0
      7AFFDB9E78FFD99D76FFD49972FFBA7D56FF3131CE00525AD600424AD600424A
      D600424AD600525AD6004A4ACE00BDBDBD005A5AB5006B6BDE00424AD600424A
      D600424AD600424AD6006B6BDE000000000000000000C37F40FFF8F1E8FFFEE5
      D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFA5B79AFF60AA80FF94D4
      B3FFB9E6D0FF69BA8EFF2C8E56FF637546FF00000000C58345FFF8F1E8FFFEE5
      D5FFFDE5D3FFFDE5D3FFFCE5D3FFFCE5D3FFFCE4D1FFFCE2CEFFFCE2CCFFFBE0
      C9FFFBE1C8FFFDFAF7FFC0763CFF00000000C47F45FFF7F0E6FFF8B354FFF7B4
      53FFF8B352FFF8B152FFCA8C64FFEAB798FFDDA47DFFDDA57FFFDBA27BFFD99F
      79FFD99F78FFD89E77FFD89D77FFBE835CFF000000005A5AD6007B7BDE005252
      D6004A52D6004A52D6005A63DE004A52D6007373DE004A52D6004A52D6004A52
      D6005A63DE00949CE7008C8CDE000000000000000000C38043FFF8F2EBFFFEE7
      D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4D1FFACBB9EFF5F97
      72FF4E8D65FF498960FF7A7942FF0000000000000000C58448FFF8F2EBFFFEE7
      D6FFFDE7D6FFFDE7D6FFFDE7D6FFFDE6D5FFFDE5D3FFFCE4D1FFFCE2CDFFFBE1
      CBFFFBE1C9FFFBF7F2FFC47C40FF00000000C48144FFF8F2EBFFFEE7D6FFFDE7
      D6FFFDE7D6FFFDE6D5FFC8875CFFEFBEA0FFFDFCFAFFFEFCFBFFFEFDFDFFFEFD
      FCFFFDFBFAFFFDFCFBFFDDA784FFC07E52FF00000000000000006363D6007B84
      E7005A63DE00525ADE00525ADE00525ADE00525ADE00525ADE00525ADE00636B
      DE009C9CEF008C8CDE00000000000000000000000000C48245FFF9F3ECFFFEE8
      D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4D0FFFBE3CCFFFADF
      C7FFFADFC5FFFAF2EAFFC47F40FF0000000000000000C6864AFFF9F3ECFFFEE8
      D6FFFEE8D7FFFDE7D6FFFDE7D6FFFDE7D5FFFDE5D3FFFBE4D0FFFBE3CCFFFADF
      C7FFFADFC5FFFAF2EAFFC58042FF00000000C6864BFFF9F3ECFFFEE8D6FFFDE7
      D6FFFDE7D6FFFDE7D5FFC7855AFFEFBF9DFFFFFFFFFFCC926DFFFFFFFFFFFFFF
      FFFFFFFBF7FFFFF8F1FFE4AE8BFFC78960FF0000000000000000000000006363
      D600848CE700636BDE005A6BDE005A6BDE005A6BDE005A6BDE006B73E7009CA5
      EF008C8CDE0000000000000000000000000000000000C48647FFF9F4EDFFFEE8
      D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1CCFFFAE0C7FFF9DD
      C2FFF8DCC1FFFAF4EDFFC48043FF0000000000000000C68A4CFFF9F4EDFFFEE8
      D8FFFEE8D8FFFEE8D7FFFEE7D6FFFDE5D3FFFCE4D1FFFBE1CCFFFAE0C7FFF9DD
      C2FFF8DCC1FFFAF4EDFFC58246FF00000000C68A4DFFF9F4EDFFFEE8D8FFFEE8
      D7FFFEE7D6FFFDE5D3FFCC8C64FFF3CDAFFFFFFFFFFFE3C7B2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEABEA0FFC9885FFF000000000000000000000000EFEF
      EF005A5AD6006B73E7006B73E7006B73E7006B73E7006B73E7008C94EF007373
      C600FFFFFF0000000000000000000000000000000000C48648FFF9F4EFFFFEE7
      D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADFC7FFF8DCC1FFF6DA
      BCFFF6D8BAFFFAF4EFFFC48144FF0000000000000000C68A4DFFF9F4EFFFFEE7
      D7FFFDE7D6FFFDE7D5FFFDE6D4FFFCE6D2FFFBE1CCFFFADFC7FFF8DCC1FFF6DA
      BCFFF6D8BAFFFAF4EFFFC48145FF00000000C68A4EFFF9F4EFFFFEE7D7FFFDE7
      D5FFFDE6D4FFFCE6D2FFD4966DFFD49D7AFFD09770FFD6A381FFCD8D67FFCD8F
      68FFD09974FFD19872FFC88A61FFEDDBCFFF0000000000000000EFEFEF005A5A
      B5008C9CEF00737BEF00737BEF00737BEF00737BEF00737BEF007B8CEF005A5A
      D600C6C6C600FFFFFF00000000000000000000000000C48749FFF9F4F0FFFCE6
      D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DCC1FFF5D6BAFFF3D4
      B4FFF1D2B2FFF8F4F0FFC28044FF0000000000000000C68B4FFFF9F4F0FFFCE6
      D3FFFCE6D4FFFDE7D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DCC1FFF5D6BAFFF3D4
      B4FFF1D2B2FFF8F4F0FFC4844AFF00000000C68B4FFFF9F4F0FFFCE6D3FFFDE7
      D3FFFCE4D1FFFBE3CDFFFAE0C8FFF8DCC1FFF5D6BAFFF3D4B4FFF1D2B2FFF8F4
      F0FFC4844AFF00000000000000000000000000000000EFEFEF005A5AB50094A5
      F7007B8CEF007B8CEF007B8CEF007B8CEF007B8CEF007B8CEF007B8CEF008494
      EF005A63DE00C6C6C600FFFFFF000000000000000000C48749FFF9F5F1FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2
      ECFFFBF7F3FFF5EFE9FFC07D43FF0000000000000000C68B4FFFF9F5F1FFFCE3
      CFFFFBE4D0FFFCE4CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2
      ECFFFBF7F3FFF5EFE9FFC17F46FF00000000C68B4FFFF9F5F1FFFCE3CFFFFCE4
      CFFFFCE3CDFFFAE1CAFFF9DDC3FFF6D9BBFFF4E9DFFFF7F2ECFFFBF7F3FFF5EF
      E9FFC17F46FF000000000000000000000000F7F7F7005A5AB5009CADF7008494
      F7008494F7008494F7008C9CF700B5C6FF009CADF7008494F7008494F7008494
      F7008C9CF7005A63DE00C6C6C6000000000000000000C5884BFFF9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6
      CDFFFAE5C9FFE2B583FFC58858FF0000000000000000C78C51FFF9F5F1FFFCE3
      CDFFFBE3CEFFFBE3CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6
      CDFFFAE5C9FFE2B583FFD4A783FF00000000C78C51FFF9F5F1FFFCE3CDFFFBE3
      CDFFFBE2CBFFF9E0C8FFF8DCC1FFF5D6B9FFFDFBF8FFFCE6CDFFFAE5C9FFE2B5
      83FFD4A783FF0000000000000000000000008484DE00A5B5FF008C9CF7008C9C
      F7008C9CF70094A5F700BDC6FF008C8CDE006B73DE00A5B5FF008C9CF7008C9C
      F7008C9CF70094A5F700636BDE000000000000000000C3874AFFFAF6F2FFFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8
      B3FFE1AF7CFFDB9063FFF9F5F3FF0000000000000000C88F57FFFAF6F1FFFAE0
      C7FFFBE1C9FFFBE2C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8
      B3FFE1AF7CFFDC9468FFFCFAF9FF00000000C89058FFFAF6F2FFFAE0C7FFFBE2
      C9FFFBE0C8FFF9DFC4FFF8DBC0FFF4D6B7FFFFFBF8FFF6D8B3FFE1AF7CFFDC94
      68FFFCFAF9FF0000000000000000000000008C8CDE00B5C6FF0094ADFF008CA5
      FF0094ADFF00BDCEFF008C8CDE0000000000000000006B73DE00ADBDFF008CA5
      FF008CA5FF00ADBDFF006B6BDE000000000000000000C68951FFF6F1ECFFF8F4
      EEFFF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7CFFDB9364FFF9F5F3FF000000000000000000000000CF9D6FFFF6F1ECFFF8F4
      EEFFF8F4EDFFF8F3EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B1
      7CFFDC976AFFFCFAF9FF0000000000000000D1A073FFF7F2EDFFF8F4EEFFF8F3
      EDFFF8F3EDFFF8F3EDFFF8F2ECFFF7F2ECFFF2E6D7FFE2B17CFFDC976AFFFCFA
      F9FF00000000000000000000000000000000000000008C8CDE00BDCEFF00A5B5
      FF00BDCEFF008C8CDE00000000000000000000000000000000006B73DE00ADC6
      FF00ADC6FF006B73DE00000000000000000000000000C88C59FFC78A4CFFC78A
      4DFFC78B4EFFC78A4DFFC78A4DFFC78B4DFFC88A4DFFC6894DFFC58B4EFFCD8E
      5DFFFBF7F5FF00000000000000000000000000000000CD9766FFC88C4FFFC78A
      4DFFC78B4EFFC78A4EFFC78A4EFFC78B4EFFC88B4EFFC78B4FFFCD9B67FFDCB0
      8EFFFDFBFAFF000000000000000000000000E7CDB8FFD6A97BFFCB9259FFC88B
      4EFFC98E53FFC98F53FFCA8E53FFC88D53FFCD9C68FFDCB08EFFFDFBFAFF0000
      00000000000000000000000000000000000000000000000000008C8CDE00CEDE
      FF008C8CDE000000000000000000000000000000000000000000000000007373
      DE007373DE00000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFF0000F9FFFFFFFC00
      0000F6CFFE0080000000F6B7FE0000000000F6B7FE0000000000F8B780000000
      0000FE8F800000010000FE3F800000030000FF7F800000030000FE3F80010003
      0000FEBF800300030000FC9F80070FC30000FDDF807F00030001FDDF80FF8007
      0003FDDF81FFF87F0007FFFFFFFFFFFF80018001FC00C7E780008001000083C3
      8000800100000181800080010000000180008001000000018000800100008001
      800180010000C003800180010000E007800180010000E007800180010000C003
      8001800100078001800180010007000180018001000700018001800100070181
      80038003000F83C380078007001FC7E700000000000000000000000000000000
      000000000000}
  end
  object alFormat: TActionList
    Images = ilFormat
    Left = 72
    Top = 336
    object aFormatBold: TAction
      Category = 'Format'
      AutoCheck = True
      Caption = #1046#1080#1088#1085#1099#1081
      Hint = #1046#1080#1088#1085#1099#1081
      ImageIndex = 0
      ShortCut = 16450
      OnExecute = aFormatBoldExecute
      OnUpdate = aFormatBoldUpdate
    end
    object aFormatItalic: TAction
      Category = 'Format'
      AutoCheck = True
      Caption = #1050#1091#1088#1089#1080#1074
      Hint = #1050#1091#1088#1089#1080#1074
      ImageIndex = 1
      ShortCut = 16457
      OnExecute = aFormatItalicExecute
      OnUpdate = aFormatItalicUpdate
    end
    object aFormatUnderline: TAction
      Category = 'Format'
      AutoCheck = True
      Caption = #1055#1086#1076#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      Hint = #1055#1086#1076#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      ImageIndex = 2
      ShortCut = 16469
      OnExecute = aFormatUnderlineExecute
      OnUpdate = aFormatUnderlineUpdate
    end
    object aFormatStrike: TAction
      Category = 'Format'
      AutoCheck = True
      Caption = #1055#1077#1088#1077#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      Hint = #1055#1077#1088#1077#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      ImageIndex = 3
      ShortCut = 24659
      OnExecute = aFormatStrikeExecute
      OnUpdate = aFormatStrikeUpdate
    end
  end
  object alInsert: TActionList
    Images = ilInsert
    Left = 104
    Top = 336
    object aInsertImage: TAction
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077'...'
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077'...|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
      ImageIndex = 1
      ShortCut = 24649
      OnExecute = aInsertImageExecute
    end
    object aInsertLink: TAction
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1089#1099#1083#1082#1091'...'
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1089#1099#1083#1082#1091'...|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1089#1099#1083#1082#1091
      ImageIndex = 2
      ShortCut = 24652
      OnExecute = aInsertLinkExecute
    end
    object aInsertCut: TAction
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1088#1072#1079#1088#1099#1074' '#1089#1090#1088#1072#1085#1080#1094#1099
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1088#1072#1079#1088#1099#1074' '#1089#1090#1088#1072#1085#1080#1094#1099'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1088#1072#1079#1088#1099#1074' '#1089#1090#1088#1072#1085#1080#1094#1099
      ImageIndex = 0
      ShortCut = 24654
      OnExecute = aInsertCutExecute
    end
    object aInsertDoc: TAction
      AutoCheck = True
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1082#1088#1099#1090#1099#1081' '#1090#1077#1082#1089#1090
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1082#1088#1099#1090#1099#1081' '#1090#1077#1082#1089#1090'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1089#1082#1088#1099#1090#1099#1081' '#1090#1077#1082#1089#1090
      ImageIndex = 4
      ShortCut = 24644
      OnExecute = aInsertDocExecute
      OnUpdate = aInsertDocUpdate
    end
    object aInsertCode: TAction
      AutoCheck = True
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100' '#1082#1086#1076
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1082#1086#1076'|'#1042#1089#1090#1072#1074#1080#1090#1100' '#1082#1086#1076
      ImageIndex = 3
      ShortCut = 24643
      OnExecute = aInsertCodeExecute
      OnUpdate = aInsertCodeUpdate
    end
    object aInsertFragment: TAction
      Caption = #1060#1088#1072#1075#1084#1077#1085#1090#1099'...'
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100' '#1092#1088#1072#1075#1084#1077#1085#1090
      ImageIndex = 5
      OnExecute = aInsertFragmentExecute
      OnUpdate = aInsertFragmentUpdate
    end
    object aNewFragment: TAction
      Caption = #1053#1086#1074#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      Enabled = False
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1085#1086#1074#1099#1081' '#1092#1088#1072#1075#1084#1077#1085#1090
      ImageIndex = 6
      OnExecute = aNewFragmentExecute
      OnUpdate = aNewFragmentUpdate
    end
  end
  object alView: TActionList
    Left = 136
    Top = 336
    object aViewPanelMain: TAction
      AutoCheck = True
      Caption = #1043#1083#1072#1074#1085#1072#1103
      Checked = True
      Hint = #1043#1083#1072#1074#1085#1072#1103' '#1087#1072#1085#1077#1083#1100'|'#1043#1083#1072#1074#1085#1072#1103' '#1087#1072#1085#1077#1083#1100
      OnExecute = aViewPanelMainExecute
    end
    object aViewPanelFormat: TAction
      AutoCheck = True
      Caption = #1060#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077
      Checked = True
      Hint = #1060#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1077'|'#1055#1072#1085#1077#1083#1100' '#1092#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1085#1080#1103
      OnExecute = aViewPanelFormatExecute
    end
    object aViewPanelInsert: TAction
      AutoCheck = True
      Caption = #1042#1089#1090#1072#1074#1082#1072
      Checked = True
      Hint = #1055#1072#1085#1077#1083#1100' '#1074#1089#1090#1072#1074#1082#1080'|'#1055#1072#1085#1077#1083#1100' '#1074#1089#1090#1072#1074#1082#1080
      OnExecute = aViewPanelInsertExecute
    end
    object aViewTema: TAction
      AutoCheck = True
      Caption = #1058#1077#1084#1072
      Checked = True
      Hint = #1058#1077#1084#1072'|'#1055#1072#1085#1077#1083#1100' '#1090#1077#1084#1099' '#1085#1086#1074#1086#1089#1090#1080
      OnExecute = aViewTemaExecute
    end
    object aViewActiveDoc: TAction
      AutoCheck = True
      Caption = #1040#1082#1090#1080#1074#1085#1099#1081' '#1076#1086#1082
      Checked = True
      Hint = #1040#1082#1090#1080#1074#1085#1099#1081' '#1076#1086#1082'|'#1055#1072#1085#1077#1083#1100' '#1072#1082#1090#1080#1074#1085#1086#1075#1086' '#1076#1086#1082#1072
      OnExecute = aViewActiveDocExecute
    end
    object aViewPostPreview: TAction
      AutoCheck = True
      Caption = #1054#1090#1087#1088#1072#1074#1082#1072'/'#1055#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088
      Checked = True
      Hint = #1054#1090#1087#1088#1072#1074#1082#1072'/'#1087#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088'|'#1055#1072#1085#1077#1083#1100' '#1086#1090#1087#1088#1072#1074#1082#1080'/'#1087#1088#1077#1076#1087#1088#1086#1089#1084#1086#1090#1088#1072' '#1085#1086#1074#1086#1089#1090#1080
      OnExecute = aViewPostPreviewExecute
    end
    object aViewWISYWIG: TAction
      AutoCheck = True
      Caption = 'WISYWIG'
      Checked = True
      Hint = #1056#1077#1078#1080#1084' WISYWIG|'#1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' WISYWIG'
      OnExecute = aViewWISYWIGExecute
    end
    object aViewHtml: TAction
      AutoCheck = True
      Caption = 'CODE'
      Hint = #1056#1077#1078#1080#1084' CODE|'#1056#1077#1078#1080#1084' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1103' CODE'
      OnExecute = aViewHtmlExecute
    end
  end
  object alService: TActionList
    Images = ilCustom
    Left = 168
    Top = 336
    object aServiceOptionsDocs: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1082#1086#1074'...'
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1082#1086#1074'...|'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1086#1082#1086#1074'...'
      ImageIndex = 1
      ShortCut = 117
      OnExecute = aServiceOptionsDocsExecute
    end
    object aServiceOptionsProgs: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'...'
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'...|'#1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1099'...'
      ShortCut = 116
      OnExecute = aServiceOptionsProgsExecute
    end
    object aServiceOptionsFragments: TAction
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1092#1088#1072#1075#1084#1077#1085#1090#1086#1074
      Hint = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1092#1088#1072#1075#1084#1077#1085#1090#1086#1074
      ImageIndex = 2
      ShortCut = 118
      OnExecute = aServiceOptionsFragmentsExecute
    end
  end
  object alHelp: TActionList
    Left = 200
    Top = 336
    object aHelpAbout: TAction
      Category = 'Help'
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...|'#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077'...'
      OnExecute = aHelpAboutExecute
    end
    object aHelpContents: TAction
      Category = 'Help'
      Caption = #1042#1099#1079#1086#1074' '#1089#1087#1088#1072#1074#1082#1080'...'
      Enabled = False
    end
  end
  object ilFormat: TImageList
    Left = 40
    Top = 304
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000063636300000000000000000000000000636363000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006B6B6B0000000000000000000000000000000000000000006363
      6300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000181818000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFF007FFFFFFFFFFFFFFFFFA1FF01FF03FFC1FF9CFF8CFFCBFF9CFFBCF
      F8C7FEBFF9CFFB8FF8CFFE3FF9CFFF1FF81FFF7FF9CFC003F8CFFF3FF9CFFC7F
      F8C7FFBFF9CFF8EFF8CFFF9FF9CFF9EFF01FFF07F087F9CFFFFFFFFFFFFFFC2F
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object alCustom: TActionList
    Images = ilCustom
    Left = 232
    Top = 336
    object aPreviewPost: TAction
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1086#1090#1087#1088#1072#1074#1082#1072
      Hint = 
        #1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1086#1090#1087#1088#1072#1074#1082#1072' '#1085#1072' NoNaMe...|'#1055#1088#1086#1089#1084#1086#1090#1088' '#1080' '#1086#1090#1087#1088#1072#1074#1082#1072' '#1085#1072' NoNaMe..' +
        '.'
      ImageIndex = 0
      ShortCut = 16397
      OnExecute = aPreviewPostExecute
    end
    object aIndex: TAction
      AutoCheck = True
      Caption = #1056#1072#1079#1076#1077#1083
      Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1088#1072#1079#1076#1077#1083'|'#1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1088#1072#1079#1076#1077#1083
      OnExecute = aIndexExecute
    end
    object aChangePage: TAction
      Caption = 'aChangePage'
      OnExecute = aChangePageExecute
    end
    object aEditMode: TAction
      AutoCheck = True
      Caption = 'aEditMode'
      ShortCut = 45
      OnExecute = aEditModeExecute
    end
  end
  object ilCustom: TImageList
    Left = 72
    Top = 304
    Bitmap = {
      494C010103000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000717171FF5B5B
      5BFF00000000000000000000000000000000000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D9B59FFFCFA184FFBF82
      5DFFB97852FFB57650FFB37550FFB0734FFFAC714EFFA9704EFFA76E4DFFA66D
      4CFFA56D4CFFA87555FFB98E75FF00000000DFB391FFD49C73FFD19567FFCE91
      62FFCB8D5DFFC9895AFFC78655FF9E8571FF686868FFAD805DFFA1A1A1FF8A8A
      8AFFA27857FF5C5C5CFF858585FF00000000000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C78F6AFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAB7758FF00000000D7A074FFF8F2EDFFF7F0EAFFF6ED
      E6FFF4EAE2FFF3E7DEFFF1E4DBFF9F9F9FFFC9C9C9FFA4A4A4FFCACACAFFC1C1
      C1FFA0A0A0FFC3C3C3FF6C6C6CFFFDFDFDFF0000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FA
      FDFFF2FAFDFFF2FAFDFFFFFFFFFF062935FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C18157FFFFFFFFFFAE66
      2BFFAC632AFFAC632AFFFFFFFFFFF0E5DEFFF0E5DEFFF0E5DEFFF0E5DEFFF0E5
      DEFFF0E5DEFFFFFFFFFFA66E4DFF00000000D9A379FFF9F3EEFFEBD2BDFFFFFF
      FFFFEBD3BEFFFFFFFFFFF9F9F9FFCDCDCDFFC9C9C9FFBCBCBCFF9B9B9BFF9999
      99FFB4B4B4FFC1C1C1FFA5A5A5FFF4F4F4FF0A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3
      FCFFDCF3FCFFDCF3FCFFFFFFFFFF0A3646FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C38559FFFFFFFFFFAE66
      2BFFCD9E73FFAC632AFFFFFFFFFFF0E5DEFFF6EFEBFFF6EFEBFFF6EFEBFFF6EF
      EBFFF0E5DEFFFFFFFFFFA7704EFF00000000DDA77DFFF9F3EFFFEBD0B9FFEBD0
      BAFFEBD0BAFFEBD0BAFFA4A4A4FFB6B6B6FFE1E1E1FF9B9B9BFFEACDB4FFEACD
      B4FF999998FFD5D5D5FF989898FF646464FF0C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EB
      FAFFC5EBFAFFC5EBFAFFFFFFFFFF0C4256FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C4855AFFFFFFFFFFAE66
      2BFFCD9F74FFAC632AFFFFFFFFFFF0E5DEFFF6EFEBFFF5ECE6FFF5ECE6FFF6EF
      EBFFF0E5DEFFFFFFFFFFAB714FFF00000000DFA981FFF9F3EFFFEACEB6FFFFFF
      FFFFEBD0BAFFFFFFFFFFB3B3B3FFCACACAFFE8E8E8FF858585FFFFFFFFFFFFFF
      FFFF999898FFE2E2E2FFB5B5B5FF868686FF0D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3
      F8FFAEE3F8FFAEE3F8FFFFFFFFFF0D4D64FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C78759FFFFFFFFFFB36D
      32FFD0A47DFFB16B2DFFFFFFFFFFF0E5DEFFF6EFEBFFF5ECE6FFF5ECE6FFF6EF
      EBFFF0E5DEFFFFFFFFFFB17550FF00000000E1AD86FFFAF4F0FFEACBB1FFEACC
      B2FFEACCB2FFEACCB2FFEACCB2FFCEC0B5FFD2D2D2FFAAAAAAFF808080FF8989
      89FFB3B3B3FFCACACAFFBBBBBBFF00000000105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8895AFFFFFFFFFFB675
      3FFFD1A582FFB57237FFFFFFFFFFF0E5DEFFF6EFEBFFF6EFEBFFF6EFEBFFF6EF
      EBFFF0E5DEFFFFFFFFFFB57752FF00000000E3B08BFFFAF6F1FFEAC9ADFFFFFF
      FFFFEAC9AFFFFFFFFFFFFFFFFFFFB9B9B9FFDADADAFFBEBEBEFFD6D6D6FFD8D8
      D8FFB7B7B7FFD4D4D4FF878787FFFAFAFAFF126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CA8B5BFFFFFFFFFFBB7E
      53FFB97C4BFFB97B49FFFFFFFFFFF0E5DEFFF0E5DEFFF0E5DEFFF0E5DEFFF0E5
      DEFFF0E5DEFFFFFFFFFFB87B53FF00000000E5B38EFFFAF6F2FFE9C5A9FFE9C5
      ABFFEAC7ABFFE9C7ACFFE9C9ADFFD5C3B6FFBCBAB9FFDFC4B0FFBFBFBFFFBDBD
      BDFFE0D7D1FFAAA29DFFC7C7C7FF00000000136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CB8D5CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBB7D54FF00000000E7B693FFFBF7F4FFE9C2A5FFFFFF
      FFFFE8C3A8FFFFFFFFFFFFFFFFFFFFFFFFFFE8C7ABFFFFFFFFFFB9B9B9FFB3B3
      B3FFF7F1EBFFCB8E5EFF000000000000000016799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CD9160FFFFFFFFFF499E
      4FFF499E4FFF489D4EFF489C4CFF459A4BFF449849FF429647FF419545FF3F93
      44FF3E9242FFFFFFFFFFBD8056FF00000000E9B997FFFBF7F4FFE9C2A5FFE9C2
      A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2A5FFE9C2
      A5FFFBF7F4FFCE9263FF00000000000000001783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CF9667FFFFFFFFFF4EA3
      54FF5EBD6BFF5EBD6BFF5EBD6BFF5EBD6BFF5EBD6BFF5EBD6BFF5EBD6BFF5EBD
      6BFF3F9344FFFFFFFFFFC08357FF00000000EBBC9AFFFBF7F4FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFBF7F4FFD19669FF0000000000000000198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5A276FFFFFFFFFF54A8
      5AFF52A859FF51A658FF4FA455FF4DA253FF4A9F50FF489C4DFF459A4AFF4297
      47FF409545FFFFFFFFFFC68E64FF00000000ECBE9DFFFBF7F4FF9BD5A4FF97D3
      A0FF93D09CFF8FCE97FF8ACB92FF86C98DFF81C588FF7DC283FF79C07FFF75BD
      7BFFFBF7F4FFD49A6EFF00000000000000001B97C4FFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FFFFFF
      FFFF1B97C4FF1B97C4FF1B97C4FF1B97C4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1BC9DFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD6A988FF00000000EFC4A7FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7
      F4FFFBF7F4FFD8A176FF00000000000000001DA1D1FFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FFFFFF
      FFFF1DA1D1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9CEB7FFE3C1A4FFD7A7
      7EFFCE925EFFCD925EFFCD915EFFCC8F5EFFCD9160FFCD9262FFCB9060FFCE94
      68FFD4A782FFD8AD8AFFD7AB8AFF00000000F7E0D1FFF0C6ABFFEDBF9EFFEBBD
      9CFFEBBB99FFE9B995FFE7B692FFE6B48FFFE4B18BFFE2AE87FFE0AB83FFDDA8
      7FFFDCA47CFFE1B594FF00000000000000001FABDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1FABDDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFCFE000000080010001E0000000
      80010000E0000000800100000000000080010000000000008001000000000000
      8001000100000000800100000000000080010001000000008001000300000000
      8001000300000000800100030000000080010003000000008001000300070000
      8001000300070000FFFFFFFF0007000000000000000000000000000000000000
      000000000000}
  end
  object ilInsert: TImageList
    Left = 104
    Top = 304
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFF05712FFF0571
      2FFF05712FFF05712FFF05712FFF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFF05712FFF4AB6
      74FF4AB674FF4AB674FF4AB674FF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFF05712FFF0571
      2FFF05712FFF05712FFF05712FFF05712FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3
      F8FFAEE3F8FFAEE3F8FFFFFFFFFF0D4D64FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B97C4FFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FF4BC4F2FFFFFF
      FFFF1B97C4FF1B97C4FF1B97C4FF1B97C4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001DA1D1FFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FF2EBCF0FFFFFF
      FFFF1DA1D1FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001FABDDFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF1FABDDFF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF005A
      11FF005A11FF005A11FF000C10FF000C10FF000000000000000000000000000C
      10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C10FF000C
      10FF000C10FF000C10FF000C10FF000C10FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0571
      2FFF6DC277FF05712FFFFFFFFFFF051B24FF000000000000000000000000051B
      24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF051B24FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FA
      FDFFF2FAFDFFF2FAFDFFFFFFFFFF062935FF0000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFF05712FFF05712FFF0571
      2FFF67C076FF05712FFF05712FFF036621FF0000000000000000000000000629
      35FFFFFFFFFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FAFDFFF2FA
      FDFFF2FAFDFFF2FAFDFFFFFFFFFF062935FF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF626262FFA3A3A3FF0000000000000000CBCB
      F8FF4D4DFFFF4D4DFFFFB5B5F5FF000000000A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3
      FCFFDCF3FCFFDCF3FCFFFFFFFFFF0A3646FF0A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFFDCF3FCFFDCF3FCFFDCF3FCFFDCF3FCFF05712FFF5EBD76FF5EBD
      76FF5EBD76FF5EBD76FF6DC277FF046C28FF0A3646FF0A3646FF0A3646FF0A36
      46FFFFFFFFFF05712FFF05712FFF05712FFFDCF3FCFF05712FFF05712FFF0571
      2FFFDCF3FCFF05712FFF05712FFF05712FFF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF8D8D8DFF00000000CBCB
      F8FF4D4DFFFF4D4DFFFFB5B5F5FF000000000C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFFC5EB
      FAFFC5EBFAFFC5EBFAFFFFFFFFFF0C4256FF0C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFC5EBFAFFC5EBFAFFC5EBFAFFC5EBFAFF05712FFF05712FFF0571
      2FFF54B975FF05712FFF05712FFF05712FFF0C4256FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF05712FFF54B975FF05712FFFC5EBFAFF05712FFF54B975FF0571
      2FFFC5EBFAFF05712FFF54B975FF05712FFF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFFCDCDCDFFC3C3C3FF575757FF4D4D4DFF4D4D4DFFDBDBDBFFE3E3
      F9FFA3A3FCFFA3A3FCFFD7D7F7FF000000000D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3
      F8FFAEE3F8FFAEE3F8FFFFFFFFFF0D4D64FF0D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FFAEE3F8FF0571
      2FFF4AB674FF05712FFFFFFFFFFF0D4D64FF0D4D64FFFFFFFFFFF2FAFDFFF2FA
      FDFFFFFFFFFF05712FFF05712FFF05712FFFAEE3F8FF05712FFF05712FFF0571
      2FFFAEE3F8FF05712FFF05712FFF05712FFF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF0000000000000000949494FF4D4D4DFF4D4D4DFFA3A3A3FF0000
      00008D8DFDFF8D8DFDFF0000000000000000105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF0571
      2FFF05712FFF05712FFFFFFFFFFF105973FF105973FFFFFFFFFFDCF3FCFFDCF3
      FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFFFFFFFFF105973FF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF0000000000000000A3A3A3FF4D4D4DFF4D4D4DFFA3A3A3FF0000
      00004D4DFFFF4D4DFFFF0000000000000000126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF126481FFFFFFFFFFC5EBFAFFC5EB
      FAFFD9F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FFFFFFFFFF126481FF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF0000000000000000949494FF4D4D4DFF4D4D4DFFA3A3A3FF0000
      00004D4DFFFF4D4DFFFF0000000000000000136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF136E8EFFFFFFFFFFAEE3F8FFAEE3
      F8FFAEE3F8FFCBEDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FFFFFFFFFF136E8EFF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF0000000000000000626262FF4D4D4DFF4D4D4DFFCDCDCDFFCBCB
      F8FF4D4DFFFF4D4DFFFFBCBCFCFF0000000016799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF16799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF16799CFFFFFFFFFF97DCF7FF97DC
      F7FF97DCF7FF97DCF7FFBDE8F9FFFFFFFFFFFFFFFFFFFFFFFFFF4BC4F2FF4BC4
      F2FF4BC4F2FF4BC4F2FFFFFFFFFF16799CFF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF717171FF00000000CBCB
      F8FF4D4DFFFF4D4DFFFFBCBCFCFF000000001783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF1783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF1783A9FFFFFFFFFF7ED4F5FF7ED4
      F5FF7ED4F5FF7ED4F5FF7ED4F5FFAFE3F8FFFFFFFFFFFFFFFFFF2EBCF0FF2EBC
      F0FF2EBCF0FF2EBCF0FFFFFFFFFF1783A9FF00000000000000004D4D4DFF4D4D
      4DFF4D4D4DFF4D4D4DFF4D4D4DFF4D4D4DFF787878FFE3E3E3FF00000000CBCB
      F8FF4D4DFFFF4D4DFFFFBCBCFCFF00000000198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF198DB6FFFFFFFFFF66CCF3FF66CC
      F3FF66CCF3FF66CCF3FF66CCF3FF66CCF3FFA1DEF8FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF198DB6FF0000000000000000CDCDCDFFCDCD
      CDFFCDCDCDFFCDCDCDFFCDCDCDFFE3E3E3FF0000000000000000000000000000
      0000CBCBF8FFD0D0FDFFEBEBFBFF000000001B97C4FFFFFFFFFF4BC4F2FF4BC4
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
      00000000000000000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF00000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF00000000000000000000000020B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5E9FF20B5
      E9FF20B5E9FF0000000000000000000000006363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFBEBEBEFFBEBEBEFFBEBE
      BEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBEBEFFBEBE
      BEFFBEBEBEFFBEBEBEFFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFF7D7C7CFF787777FF7272
      72FF6C6C6CFF676666FF616161FF5C5C5CFF595959FF5C5C5CFF616161FF6766
      66FF6C6C6CFF727272FF787777FF7D7C7CFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF807F7FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFFFFFFFFFF095016FF0A56
      1DFF0C5C24FF0F5E26FF0F5D24FF0E5E25FF0B5B20FF0B5B20FF0E5D21FF0E5C
      20FF0E5E24FF116229FFFFFFFFFF807F7FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFFFFFFFFFF1A6E3DFF1A6F
      3EFF1A6E3BFF1C703AFF1B7035FF156E30FF166F2FFF1B7234FF1E7537FF1C76
      3BFF227E43FF298550FFFFFFFFFF807F7FFF00000000FCFCFCFFDADADAFF6060
      60FF6A6A6AFF6F6F6FFF6E6E6EFFC1C1C1FFD2D2D2FF727272FF6F6F6FFF6A6A
      6AFF606060FFDADADAFFFCFCFCFF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630063636300807F7FFFFFFFFFFF20702DFF1F73
      30FF24793BFF2A8145FF2E8A54FF339467FF3B9E76FF43AA8BFF50B196FF56B5
      9BFF6EC0ABFF85C5B2FFFFFFFFFF807F7FFF00000000DCDCDCFF686868FF9494
      94FFB0B0B0FFAEAEAEFF979797FF717171FF787878FF979797FFAEAEAEFFB0B0
      B0FF949494FF686868FFDCDCDCFF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FF4D240BFF4D240BFF4D240BFF4D240BFF4D240BFFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000807F7FFFFFFFFFFF47A685FF4DB2
      98FF5CBCA5FF6FC5B4FF83CFC2FF9CD4C9FFB0D5C3FFC1D5BFFFD5D8C0FFE3D9
      BEFFEBD4B4FFEBCFABFFFFFFFFFF807F7FFF00000000A8A8A8FF707070FFCFCF
      CFFF818181FF444444FF464646FF515151FF515151FF464646FF444444FF8181
      81FFCFCFCFFF707070FFA8A8A8FF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF00000000CEA58400CEA58400CEA5
      8400CEA5840000000000CEA58400CEA58400CEA58400CEA5840000000000CEA5
      8400CEA58400CEA58400CEA5840000000000807F7FFFFFFFFFFF9EBA9FFFAFB4
      93FFBBAA81FFC5A476FFCEA06EFFD9A16AFFE9AF77FFF0BD8AFFF1BD89FFEDBE
      8BFFE6B681FFDCAD73FFFFFFFFFF807F7FFF00000000909090FF858585FFD3D3
      D3FFF8F8F8FF484848FFBDBDBDFFCECECEFFC2C2C2FFADADADFF484848FFF8F8
      F8FFD3D3D3FF858585FF909090FF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000807F7FFFFFFFFFFF9F6121FFA160
      1BFFA56723FFAA6D2BFFAF7634FFBE8446FFCF9559FFE1B27DFFECD5B9FFE6CB
      A9FFDEAC74FFCE995FFFFFFFFFFF807F7FFF00000000BFBFBFFF7B7B7BFFD7D7
      D7FF878787FF4D4D4DFF656565FF929292FF797979FF656565FF4D4D4DFF8787
      87FFB2B2B2FF7B7B7BFFBFBFBFFF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FF4D240BFF4D240BFF4D240BFF4D240BFF4D240BFFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630063636300636363006363
      6300636363006363630063636300636363006363630063636300636363006363
      630063636300636363006363630063636300807F7FFFFFFFFFFF894C0CFF8E51
      11FF945616FF9A5D1DFFA06524FFAD7439FFBE844DFFD6A676FFFAF4EEFFF9F2
      ECFFD5A67AFFBA8247FFFFFFFFFF807F7FFF00000000FAFAFAFF9E9E9EFF9191
      91FFE8E8E8FFDDDDDDFFC1C1C1FF919191FF9A9A9AFFDADADAFFDDDDDDFFC4C4
      C4FF919191FF9E9E9EFFFAFAFAFF00000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFFFFFFFFFF7B3C00FF7F40
      04FF85450BFF8B4B11FF915217FF9E6029FFAC713CFFBE8854FFDFB995FFE4C0
      A0FFC28D5CFFA86A2FFFFFFFFFFF807F7FFF0000000000000000F6F6F6FFBABA
      BAFF8D8D8DFF9E9E9EFF8B8B8BFFDFDFDFFFF1F1F1FF8D8D8DFF9E9E9EFF8D8D
      8DFFBABABAFFF6F6F6FF0000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FF4D240BFFEED2C1FF4D240BFFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF807F7FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000063636300807F7FFF807F7FFF807F7FFF807F
      7FFF807F7FFF807F7FFF807F7FFF807F7FFF807F7FFF807F7FFF807F7FFF807F
      7FFF807F7FFF807F7FFF807F7FFF807F7FFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2C1FFEED2
      C1FFEED2C1FFEED2C1FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FFD1B4A3FFD1B4A3FFD1B4
      A3FFD1B4A3FFD1B4A3FFD1B4A3FFD1B4A3FFD1B4A3FFD1B4A3FFD1B4A3FFD1B4
      A3FFD1B4A3FFD1B4A3FFBEBEBEFFFFFFFFFF6363630000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000636363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000828282FF828282FF828282FF8282
      82FF828282FF828282FF828282FF828282FF828282FF828282FF828282FF8282
      82FF828282FF828282FF828282FFFFFFFFFF424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000E000000000000000E000000000000000
      E000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000007000000000000
      00070000000000000007000000000000FFFFE000E000E000FFFFE000E000E000
      FFFFE000E000E000C061000000000000C021000000000000C001000000000000
      C613000000000000C613000000000000C613000000000000C601000000000000
      C021000000000000C021000000000000C0F1000000000000FFFF000700070007
      FFFF000700070007FFFF0007000700077FFEFFFFFFFF00007FFEFFFFFFFF0000
      7FFE0000FFFF00007FFE0000FFFF00007FFE0000FFFF00007FFE000080010000
      0000000080010000FFFF0000800100008421000080010000FFFF000080010000
      00000000800100007FFE0000C00300007FFE0000FFFF00007FFE0000FFFF0000
      7FFEFFFFFFFF00007FFEFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Left = 12
    Top = 270
    object N4: TMenuItem
      Action = aViewPanelMain
      AutoCheck = True
    end
    object N5: TMenuItem
      Action = aViewPanelFormat
      AutoCheck = True
    end
    object N7: TMenuItem
      Action = aViewPanelInsert
      AutoCheck = True
    end
  end
  object PopupMenuWebBrowser: TPopupMenu
    OnPopup = PopupMenuWebBrowserPopup
    Left = 44
    Top = 270
    object j1: TMenuItem
      Action = aEditUndo
      Enabled = False
    end
    object N29: TMenuItem
      Caption = '-'
    end
    object N22: TMenuItem
      Action = aEditCut
    end
    object N23: TMenuItem
      Action = aEditCopy
    end
    object N24: TMenuItem
      Action = aEditPaste
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object N26: TMenuItem
      Action = aEditSelectAll
    end
    object N30: TMenuItem
      Caption = '-'
    end
    object N14: TMenuItem
      Action = aNewFragment
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1092#1088#1072#1075#1084#1077#1085#1090#1099'...'
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object N32: TMenuItem
      AutoCheck = True
      Caption = #1055#1086#1083#1091#1078#1080#1088#1085#1099#1081
      Hint = #1055#1086#1083#1091#1078#1080#1088#1085#1099#1081
      ImageIndex = 0
      ShortCut = 16450
      OnClick = aFormatBoldExecute
    end
    object N33: TMenuItem
      AutoCheck = True
      Caption = #1050#1091#1088#1089#1080#1074
      Hint = #1050#1091#1088#1089#1080#1074
      ImageIndex = 1
      ShortCut = 16457
      OnClick = aFormatItalicExecute
    end
    object N34: TMenuItem
      AutoCheck = True
      Caption = #1055#1086#1076#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      Hint = #1055#1086#1076#1095#1077#1088#1082#1080#1074#1072#1085#1080#1077
      ImageIndex = 2
      ShortCut = 16469
      OnClick = aFormatUnderlineExecute
    end
    object N35: TMenuItem
      Action = aFormatStrike
      AutoCheck = True
    end
    object N36: TMenuItem
      Caption = '-'
    end
    object N31: TMenuItem
      Action = aInsertLink
    end
    object N37: TMenuItem
      Action = aInsertDoc
      AutoCheck = True
    end
    object N38: TMenuItem
      Action = aInsertCode
      AutoCheck = True
    end
  end
  object SaveDialog: TSaveDialog
    DefaultExt = '.npd'
    Filter = 'Full data in directory (*.npd)|*.npd|Text Post (*.nnm)|*.nnm'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
    Left = 12
    Top = 238
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.nnm;*.npd'
    Filter = 
      'NoNaMe Posts (*.nnm, *.npd)|*.nnm;*.npd|Full data in directory (' +
      '*.npd)|*.npd|Text Post (*.nnm)|*.nnm'
    Title = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1087#1080#1089#1100'...'
    Left = 44
    Top = 238
  end
  object ImageList1: TImageList
    Left = 79
    Top = 269
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000E2E2E2FFCBCBCBFFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFCCCCCCFFE2E2E2FF000000000000000000000000E2E2E2FFCBCB
      CBFFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFC9C9C9FFC9C9C9FFCCCCCCFFE2E2E2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CBCBCBFFF9F9F9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFF9F9F9FFCCCCCCFF000000000000000000000000CBCBCBFFF9F9
      F9FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFF9F9F9FFCCCCCCFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFC9C9C9FF0000000000000000FEFEFEFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFF174259FF2A6088FF4B89BDFF6EA7CBFFE0E9F1FFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFCFCFCFFC9C9C9FFFEFEFEFF00000000FEFEFEFFC9C9C9FFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFF2D6684FF93C7F9FF90C9F9FF4084C9FF256AADFFD4E2EEFFFAFAFAFFFAFA
      FAFFFAFAFAFFFCFCFCFFC9C9C9FFFEFEFEFF00000000FEFEFEFFBDC0C9FF5672
      EAFF4561EAFFFCFCFCFF485BEDFF5871ECFFEDF0F9FFFAFAFAFFFAFAFAFFFAFA
      FAFFFAFAFAFFFAFAFAFFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFF4288A9FFE0F2FFFF5399D8FF1979BDFF4897C4FF478DC7FFD8E6F3FFF8F8
      F8FFF8F8F8FFFCFCFCFFC9C9C9FFFEFEFEFF00000000ECEFFBFF4D66E0FF5464
      EEFF4D69EBFFFCFCFCFF5163EFFF5863EFFF5871ECFFEAEEF9FFFAFAFAFFFAFA
      FAFFF8F8F8FFF8F8F8FFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFFA4C2D7FF79B5D5FF8FB6D1FF54C9E4FF5ADFF5FF77D0EDFF509CDDFFDFEB
      F5FFF8F8F8FFFCFCFCFFC9C9C9FFFEFEFEFFADB8F6FF4854F0FF5A64F0FF4F64
      EDFFE2E8F9FFFCFCFCFFE3E7FAFF5261EFFF5A64F0FF4654EDFFA7B8F2FFF9F9
      F9FFF9F9F9FFF8F8F8FFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFFFCFCFCFFB1D5E5FF75B9D7FFC1F6FDFF62DFF7FF5CE2F8FF78D3F0FF4897
      DCFFDEE9F2FFFCFCFCFFC9C9C9FFFEFEFEFF4F52F1FF6A6FF3FF484FEEFFCDD5
      F7FFFCFCFCFFFCFCFCFFFCFCFCFFCED4F8FF4950EFFF666DF0FF4958EFFFF3F5
      F8FFF6F6F6FFF6F6F6FFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFAED4E5FF76CBE7FFC7F7FDFF5DDCF5FF59E1F7FF7AD4
      F1FF4A99DDFFD4E5F5FFC9C9C9FFFEFEFEFFAFB6F8FF4E51F2FF6164F1FF5461
      F2FFE3E7FAFFFCFCFCFFE4E6FAFF565BF2FF6164F1FF4C52F1FFA8B4F2FFF6F6
      F6FFF3F3F3FFF2F2F2FFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFBCE5F2FF78D3EEFFC7F7FDFF5EDCF5FF5AE2
      F7FF79D6F2FF50A1E2FFAFBDC9FFFEFEFEFF00000000EDEFFCFF575FE7FF6265
      F2FF555EF2FFFCFCFCFF595AF4FF6767F3FF626AF3FFE8EAF7FFF5F5F5FFF2F2
      F2FFEFEFEFFFEDEDEDFFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFFBFB
      FBFFFCFCFCFFFCFCFCFFFBFBFBFFF8F8F8FFB9E3F0FF7CD4EEFFC3F6FDFF6BDD
      F6FF6CCAEDFF62A2D7FF649ED1FFE3EDF5FF00000000FEFEFEFFBEBFCAFF6369
      F3FF5152F2FFFCFCFCFF5956F4FF6467F4FFEBECF7FFF5F5F5FFF1F1F1FFECEC
      ECFFEAEAEAFFE6E6E6FFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFF9F9
      F9FFF9F9F9FFF9F9F9FFF7F7F7FFF6F6F6FFF2F2F2FFA7D9E8FF80D6EEFFB1E3
      F9FF8ABFE7FFADD3F6FFC3E0FCFF69A1D4FF00000000FEFEFEFFC9C9C9FFEFF0
      FBFFF9F9F9FFF9F9F9FFF9F9F9FFF7F7F7FFF6F6F6FFF2F2F2FFEBEBEBFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFC9C9C9FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFEFFC9C9C9FFFCFCFCFFF7F7
      F7FFF9F9F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFAEE4F3FF76BD
      E7FFB3D2F0FFE5F3FFFFABD2EFFF5795CCFF00000000FEFEFEFFC9C9C9FFFCFC
      FCFFF7F7F7FFF9F9F9FFF7F7F7FFF7F7F7FFF3F3F3FFF0F0F0FFEAEAEAFFFCFC
      FCFFF6F6F6FFF4F4F4FFC4C4C4FFDFDFDFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C9C9C9FFFBFBFBFFF4F4
      F4FFF5F5F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFCFCFFABD5
      E4FF57A4D8FF84B0DBFF459CD0FFB0D7EEFF0000000000000000C9C9C9FFFBFB
      FBFFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF1F1F1FFEFEFEFFFE9E9E9FFFCFC
      FCFFE7E7E7FFC2C2C2FFDFDFDFFFFDFDFDFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CCCCCCFFF8F8F8FFFBFB
      FBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8F8FFC1C1
      C1FFDFDFDFFFFDFDFDFF00000000000000000000000000000000CCCCCCFFF8F8
      F8FFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFF8F8
      F8FFC1C1C1FFDFDFDFFFFDFDFDFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E3E3E3FFCCCCCCFFC9C9
      C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFDFDF
      DFFFFDFDFDFF0000000000000000000000000000000000000000E3E3E3FFCCCC
      CCFFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9C9FFC9C9
      C9FFDFDFDFFFFDFDFDFF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008001C000000000008001C00000000000
      0001800000000000000080000000000000008000000000000000800000000000
      0000000000000000000000000000000000000000000000000000800000000000
      0000800000000000000080000000000000008000000000008000C00000000000
      8003C001000000008007C0030000000000000000000000000000000000000000
      000000000000}
  end
  object FragmentMenu: TPopupMenu
    OnPopup = FragmentMenuPopup
    Left = 111
    Top = 237
  end
end
