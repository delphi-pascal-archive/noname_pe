unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, ToolWin, ActnList, StdActns, ImgList, ExtActns,
  SHDocVw, OleCtrls, StdCtrls, MSHTML_TLB, ActiveX, EmbeddedWB, ExtCtrls,
  BrowMsg, uConsts, uParser, Buttons, uCrypt, frmuModal, uStr;

type
  TfrmMain = class(TForm)   
    StatusBar1: TStatusBar;
    MainPanel: TPanel;
    CoolBar1: TCoolBar;
    tbMenu: TToolBar;
    tbFile: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    tbFormat: TToolBar;
    BoldButton: TToolButton;
    ItalicButton: TToolButton;
    UnderlineButton: TToolButton;
    StrikeButton: TToolButton;
    tbInsert: TToolBar;
    ToolButton1: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    ToolButton37: TToolButton;
    ToolButton38: TToolButton;
    DocButton: TToolButton;
    CodeButton: TToolButton;
    tbPost: TToolBar;
    tbpPreview: TToolButton;
    tbCopyPaste: TToolBar;
    ToolButton2: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    tbActiveDoc: TToolBar;
    cbDocs: TComboBox;
    btnDoci: TToolButton;
    PageControl: TPageControl;
    WisiwygPage: TTabSheet;
    Panel2: TPanel;
    CodePage: TTabSheet;
    MainMenu1: TMainMenu;
    mmFile: TMenuItem;
    mfNew: TMenuItem;
    N11: TMenuItem;
    mfOpen: TMenuItem;
    mfSave: TMenuItem;
    mfSaveAs: TMenuItem;
    N13: TMenuItem;
    mfExit: TMenuItem;
    mmEdit: TMenuItem;
    N16: TMenuItem;
    N25: TMenuItem;
    meCut: TMenuItem;
    meCopy: TMenuItem;
    mePaste: TMenuItem;
    N10: TMenuItem;
    meSelectAll: TMenuItem;
    mmFormat: TMenuItem;
    mfrBold: TMenuItem;
    mfrItalic: TMenuItem;
    mfrUnder: TMenuItem;
    N3: TMenuItem;
    N27: TMenuItem;
    miCut: TMenuItem;
    N6: TMenuItem;
    miImage: TMenuItem;
    miLink: TMenuItem;
    N8: TMenuItem;
    miDoc: TMenuItem;
    N15: TMenuItem;
    mmView: TMenuItem;
    mvpMain: TMenuItem;
    mvpFormat: TMenuItem;
    N17: TMenuItem;
    miTema: TMenuItem;
    miActiveDoc: TMenuItem;
    miPost: TMenuItem;
    N19: TMenuItem;
    miRegim: TMenuItem;
    mirWisywig: TMenuItem;
    mirHtml: TMenuItem;
    mmService: TMenuItem;
    msOptionDoc: TMenuItem;
    msOptionProg: TMenuItem;
    N12: TMenuItem;
    msPost: TMenuItem;
    mmHelp: TMenuItem;
    mhHelp: TMenuItem;
    N2: TMenuItem;
    mhAbout: TMenuItem;
    alFileEdit: TActionList;
    aEditUndo: TEditUndo;
    aFileNew: TAction;
    aFileSave: TAction;
    aFileSaveAs: TAction;
    aEditCut: TEditCut;
    aEditCopy: TEditCopy;
    aEditPaste: TEditPaste;
    aEditSelectAll: TEditSelectAll;
    aFileOpen: TAction;
    ilFile: TImageList;
    alFormat: TActionList;
    aFormatStrike: TAction;
    alInsert: TActionList;
    aInsertImage: TAction;
    aInsertLink: TAction;
    aInsertCut: TAction;
    aInsertDoc: TAction;
    aInsertCode: TAction;
    alView: TActionList;
    aViewPanelMain: TAction;
    aViewPanelFormat: TAction;
    aViewPanelInsert: TAction;
    aViewTema: TAction;
    aViewActiveDoc: TAction;
    aViewPostPreview: TAction;
    aViewWISYWIG: TAction;
    aViewHtml: TAction;
    alService: TActionList;
    aServiceOptionsDocs: TAction;
    aServiceOptionsProgs: TAction;
    alHelp: TActionList;
    aHelpAbout: TAction;
    aHelpContents: TAction;
    ilFormat: TImageList;
    alCustom: TActionList;
    aPreviewPost: TAction;
    aIndex: TAction;
    aChangePage: TAction;
    aEditMode: TAction;
    ilCustom: TImageList;
    ilInsert: TImageList;
    PopupMenu1: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    PopupMenuWebBrowser: TPopupMenu;
    j1: TMenuItem;
    N29: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N28: TMenuItem;
    N26: TMenuItem;
    N30: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N31: TMenuItem;
    N37: TMenuItem;
    N38: TMenuItem;
    SaveDialog: TSaveDialog;
    OpenDialog: TOpenDialog;
    CoolBar2: TCoolBar;
    tbCategory: TPanel;
    CheckBox2: TCheckBox;
    cbCategory: TComboBox;
    tbInLink: TPanel;
    Label4: TLabel;
    InLink: TEdit;
    tbTema: TPanel;
    Label1: TLabel;
    edTema: TEdit;
    aFormatBold: TAction;
    aFormatItalic: TAction;
    aFormatUnderline: TAction;
    ImageList1: TImageList;
    N18: TMenuItem;
    tbFragments: TToolBar;
    FragmentButton: TToolButton;
    FragmentMenu: TPopupMenu;
    aInsertFragment: TAction;
    ToolButton7: TToolButton;
    ToolButton10: TToolButton;
    aNewFragment: TAction;
    WebBrowser: TEmbeddedWB;
    N1: TMenuItem;
    aServiceOptionsFragments: TAction;
    N14: TMenuItem;
    N20: TMenuItem;
    Code: TMemo;
    procedure LoadDataFile(AFileName: string);
    procedure LoadPostFromDirectory(AFileName: string);
    function  LoadPostData(AFileName: string): TPostData;
    procedure LoadPost(AFileName: string);
    function  Save(FileName: string): integer;
    procedure SavePostToDirectory(AFileName: string);
    procedure SavePostDataToFile(AFileName: string; APostData: TPostData);
    procedure DeleteTemps;
    procedure GetDocs(data: TStrings);
    procedure DeleteDoc(index: integer);
    procedure SaveOptions;
    procedure LoadOptions;
    procedure SetDefaultOptions;
    procedure MyMessageHandler(var Msg: TMsg; var Handled: Boolean);
    procedure FormatDocCode;
    procedure OnCutCode;
    procedure SetImgs;
    procedure RegEvent(tag: IHTMLElement);
    procedure KeyEvent(EventObject: IHTMLEventObj; EventType: string);
    procedure WebBrowserDocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure FormCreate(Sender: TObject);
    procedure aFormatBoldExecute(Sender: TObject);
    procedure aFormatItalicExecute(Sender: TObject);
    procedure aFormatUnderlineExecute(Sender: TObject);
    procedure aInsertImageExecute(Sender: TObject);
    procedure aInsertCutExecute(Sender: TObject);
    procedure aInsertLinkExecute(Sender: TObject);
    procedure aInsertDocExecute(Sender: TObject);
    procedure aInsertCodeExecute(Sender: TObject);
    procedure aIndexExecute(Sender: TObject);
    procedure aChangePageExecute(Sender: TObject);
    procedure aFormatStrikeExecute(Sender: TObject);
    procedure aViewWISYWIGExecute(Sender: TObject);
    procedure aViewHtmlExecute(Sender: TObject);
    procedure aViewPanelMainExecute(Sender: TObject);
    procedure aViewPanelFormatExecute(Sender: TObject);
    procedure aViewPanelInsertExecute(Sender: TObject);
    procedure aViewTemaExecute(Sender: TObject);
    procedure aViewActiveDocExecute(Sender: TObject);
    procedure aViewPostPreviewExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function WebBrowserShowContextMenu(const dwID: Cardinal;
      const ppt: PPoint; const pcmdtReserved: IInterface;
      const pdispReserved: IDispatch): HRESULT;
    procedure aEditCopyExecute(Sender: TObject);
    procedure aEditCutExecute(Sender: TObject);
    procedure aEditPasteExecute(Sender: TObject);
    procedure aEditSelectAllExecute(Sender: TObject);
    procedure CodeChange(Sender: TObject);
    procedure CodeEnter(Sender: TObject);
    procedure aHelpAboutExecute(Sender: TObject);
    procedure aServiceOptionsProgsExecute(Sender: TObject);
    procedure aServiceOptionsDocsExecute(Sender: TObject);
    procedure aPreviewPostExecute(Sender: TObject);
    procedure aFileNewExecute(Sender: TObject);
    procedure aFileSaveAsExecute(Sender: TObject);
    procedure aFileSaveExecute(Sender: TObject);
    procedure aFileOpenExecute(Sender: TObject);
    procedure aEditUndoExecute(Sender: TObject);
    procedure cbDocsChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aEditModeExecute(Sender: TObject);
    procedure CodeKeyPress(Sender: TObject; var Key: Char);
    procedure CodeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PopupMenuWebBrowserPopup(Sender: TObject);
    procedure tbPostEndDock(Sender, Target: TObject; X, Y: Integer);
    procedure mfExitClick(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure aEditPasteUpdate(Sender: TObject);
    procedure aFormatBoldUpdate(Sender: TObject);
    procedure aFormatItalicUpdate(Sender: TObject);
    procedure aFormatUnderlineUpdate(Sender: TObject);
    procedure aFormatStrikeUpdate(Sender: TObject);
    procedure aInsertDocUpdate(Sender: TObject);
    procedure aInsertCodeUpdate(Sender: TObject);
    procedure FragmentMenuPopup(Sender: TObject);
    procedure aInsertFragmentExecute(Sender: TObject);
    procedure aInsertFragmentUpdate(Sender: TObject);
    procedure aNewFragmentExecute(Sender: TObject);
    procedure aNewFragmentUpdate(Sender: TObject);
    procedure aServiceOptionsFragmentsExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Editor_Mode: Boolean;
    Edit_Mode: Boolean;
    FileNNM: string;
    FOldData: string;
    FWindowState: TWindowState;
    function GetEnable(AOpenTag, ACloseTag: string): Boolean;
    function GetWinControl(name: string): TWinControl;
    procedure WriteStreamToStream(ToStream,InStream: TStream);
    procedure ReadStreamFromStream(InStream: TStream; var ToStream: TMemoryStream);
    procedure ShowProgHint(Sender: TObject);
  public
    { Public declarations }
    Options: TNewsOptions;
    Fragments: TFragments;
    procedure SelectFragment(Sender: TObject);
  end;

var
  frmMain: TfrmMain;
  Disp: IDispatch;
  Editor: IHTMLDocument2;
  FOleInPlaceActiveObject: IOleInPlaceActiveObject;
  SaveMessageHandler: TMessageEvent;
  EventHandler: THTMLEvent;
  
implementation

uses
	frmuNewImage,
  frmuAbout,
  frmuDoci,
  frmuPost,
  frmuOptions,
  frmuSplash,
  frmuPostLink,
  frmuWizard,
  uClipboard,
  frmuNewInetImage,
  frmuNewFragment,
  frmuFragments,
  uMD5;

{$R *.dfm}

procedure TfrmMain.WebBrowserDocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  CurrentWB: IWebBrowser;
  sl: TStringList;
  V: OleVariant;
begin
  Disp := pDisp;
  CurrentWB := Disp as IWebBrowser;
  Editor := (CurrentWB.Document as IHTMLDocument2);
  Editor.DesignMode := 'On';
  Editor.execCommand('FontName', false, 'Tahoma, Verdana, Arial');
  WebBrowser.SetFocusToDoc;
  if ExtractFileExt(ParamStr(1)) = '.nnm' then
    begin
      sl := TStringList.Create;
      sl.LoadFromFile(ParamStr(1));
      V := VarArrayCreate([0,0],varVariant);
      V[0] := BodyStyleDiv + HTMLtoWYSIWYG(sl.Text) + '</div></body>';
      Editor.Write(PSafeArray(TVarData(v).VArray));
      Editor.Close;
      SetAttributes(Editor);
      WebBrowser.SetFocusToDoc;
      sl.Free;
    end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
	Wizard: TfrmWizard;
begin
	FOldData := '';
  WebBrowser.Navigate(EmptyPage);
  PageControl.ActivePageIndex := 0;
  Editor_Mode := true;
  aViewWISYWIG.Checked := true;
  filennm := '';
  Edit_Mode := false;
  Application.OnHint := ShowProgHint;
  LoadOptions;
  if Options.ActiveSplash then
    begin
      frmSplash := TfrmSplash.Create(Application);
      frmSplash.ShowModal;
    end;
  if not FileExists(ExtractFilePath(Application.ExeName) + OptionsMain) then
  	begin
    	Wizard := TfrmWizard.Create(Self);
      Wizard.ShowModal;
    end;
  Width := Width - 5;
  Width := Width + 5;
  WindowState := FWindowState;
end;

procedure TfrmMain.aFormatBoldExecute(Sender: TObject);
var
  SelectLength: Integer;
begin
  if Editor_Mode then
    begin
      Editor.ExecCommand(Format_Bold, false, EmptyParam);
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[b]' + Code.SelText + '[/b]';
        if SelectLength=0
          then Code.SelStart := Code.SelStart - 4;
        Code.SelLength := 0;
        aFormatBold.Checked := false;
        BoldButton.Down := false;
      end;
end;

procedure TfrmMain.aFormatItalicExecute(Sender: TObject);
var
  SelectLength: Integer;
begin
  if Editor_Mode then
    begin
      Editor.ExecCommand(Format_Italic, false, EmptyParam);
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[i]' + Code.SelText + '[/i]';
        if SelectLength=0
          then Code.SelStart := Code.SelStart - 4;
        Code.SelLength := 0;
        aFormatItalic.Checked := false;
        ItalicButton.Down := false;
      end;
end;

procedure TfrmMain.aFormatStrikeExecute(Sender: TObject);
var
  SelectLength: Integer;
begin
  if Editor_Mode then
    begin
      Editor.ExecCommand(Format_Strike, false, EmptyParam);
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[s]' + Code.SelText + '[/s]';
        if SelectLength = 0
          then Code.SelStart := Code.SelStart - 4;
        Code.SelLength := 0;
        aFormatStrike.Checked := false;
        StrikeButton.Down := false;
      end;
end;

procedure TfrmMain.aFormatUnderlineExecute(Sender: TObject);
var
  SelectLength: Integer;
begin
  if Editor_Mode then
    begin
      Editor.ExecCommand(Format_Underline, false, EmptyParam);
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[u]' + Code.SelText + '[/u]';
        if SelectLength = 0
          then Code.SelStart := Code.SelStart - 4;
        Code.SelLength := 0;
        aFormatUnderline.Checked := false;
        UnderlineButton.Down := false;
      end;
end;

procedure TfrmMain.aInsertImageExecute(Sender: TObject);
var
  CtrlRange: IHTMLControlRange;
  TextRange: IHTMLTxtRange;
  ImageListName: TStringList;
  Index: Integer;
  Comment: String;
  Str: String;
begin
  if Assigned(frmNewImage) then frmNewImage.Free;
  frmNewImage:=TfrmNewImage.Create(Application);
  try
    if frmNewImage.ShowModal=mrOk then
      begin
        ImageListName:=TStringList.Create;
        ImageListName.Clear;
        CutString(frmNewImage.Edit1.Text, ';', ImageListName);
        if ImageListName.Count > 0 then
        	begin
            for Index := 0 to ImageListName.Count - 1 do
              ImageListName[Index] := Trim(ImageListName[Index]);
              if Editor_Mode then
                begin
                  if Editor.Selection.Type_ = 'Control' then
                    begin
                      CtrlRange := (Editor.Selection.CreateRange as IHTMLControlRange);
                      for Index := 0 to ImageListName.Count - 1 do
                        begin
													if Options.OptionsNewImages.AutoNumber
                          	then Comment := IntToStr(Index + 1) + '. '
                            else Comment := '';
                        	if Options.OptionsNewImages.CommentPosition = positionTop then
                          	begin
                              if frmNewImage.ImageComment.IndexOfName(ImageListName[Index]) >= 0 then
                                Comment := Comment + frmNewImage.ImageComment.Values[ImageListName[Index]];
                             	CtrlRange.execCommand('InsertParagraph', False, Comment);
                            end;
                          CtrlRange.execCommand('InsertImage', false, ImageListName[Index]);
                          if Options.OptionsNewImages.CommentPosition = positionBottom then
                          	begin
                              if frmNewImage.ImageComment.IndexOfName(ImageListName[Index]) >= 0 then
                                Comment := Comment + frmNewImage.ImageComment.Values[ImageListName[Index]];
                              CtrlRange.execCommand('InsertParagraph', False, Comment);
                            end;
                        end;
                        SetImgs;
                    end else
                      begin
                        TextRange := (Editor.Selection.CreateRange as IHTMLTxtRange);
                        for Index := 0 to ImageListName.Count - 1 do
                          begin
                          	if Options.OptionsNewImages.AutoNumber
                            	then Comment := IntToStr(Index + 1) + '. '
                              else Comment := '';
                          	if Options.OptionsNewImages.CommentPosition = positionTop then
                            	begin
                                if Assigned(frmNewImage) and Assigned(frmNewImage.ImageComment) and
                                   (frmNewImage.ImageComment.Count > 0) and (frmNewImage.ImageComment.IndexOfName(ImageListName[Index]) >= 0) then
                                  Comment := Comment + frmNewImage.ImageComment.Values[ImageListName[Index]];
                                TextRange.execCommand('InsertParagraph', False, Comment);
                              end;
                            TextRange.ExecCommand('InsertImage', false, ImageListName[Index]);
                            if Options.OptionsNewImages.CommentPosition = positionBottom then
                            	begin
                                if Assigned(frmNewImage) and Assigned(frmNewImage.ImageComment) and
                                   (frmNewImage.ImageComment.Count > 0) and (frmNewImage.ImageComment.IndexOfName(ImageListName[Index]) >= 0) then
                                  Comment := Comment + frmNewImage.ImageComment.Values[ImageListName[Index]];
                                TextRange.execCommand('InsertParagraph', False, Comment);
                              end;
                          end;
                        SetImgs;
                      end;
                    WebBrowser.SetFocusToDoc;
                 end else
                  begin
                    ImageListName.Clear;
                    CutString(frmNewImage.Edit1.Text, ';', ImageListName);
                    if ImageListName.Count > 0 then
                      begin
                        for Index := 0 to ImageListName.Count - 1 do
                          ImageListName[Index] := Trim(ImageListName[Index]);
                        Str := '';
                        for Index := 0 to ImageListName.Count - 1 do
                          begin
                          	if Options.OptionsNewImages.AutoNumber
                            	then Comment := IntToStr(Index + 1) + '. '
                              else Comment := '';
                            Comment := Comment + frmNewImage.ImageComment.Values[ImageListName[Index]];
                            if (Comment <> '') and (frmMain.Options.OptionsNewImages.CommentPosition = positionTop)
                              then Str := Str + Comment + #13#10;
                            Str := Str + '[img="' + ImageListName[Index] + '"]' + #13#10;
                            if (Comment <> '') and (frmMain.Options.OptionsNewImages.CommentPosition = positionBottom)
                              then Str := Str + Comment + #13#10;
                          end;
                        Code.SelText := Str;
                      end;
                  end;
          	aInsertLink.Enabled := false;
          end;
      end;
  finally
  	GetComments(Editor);
    if Assigned(frmNewImage) then frmNewImage.Free;
    frmNewImage := nil;
  end;
end;

procedure TfrmMain.aInsertCutExecute(Sender: TObject);
begin
  if Editor_Mode then
    begin
      Editor.ExecCommand('InsertHorizontalRule', false, EmptyParam);
//      aInsertCut.Enabled := false;
    end else
      begin
        Code.SelText := '[cut]';
        Code.SelLength := 0;
      end;
end;

procedure TfrmMain.aInsertLinkExecute(Sender: TObject);
var
  Range: IHTMLTxtRange;
  str: string;
begin
	if Assigned(frmNewLink) then frmNewLink.Free;
  frmNewLink := TfrmNewLink.Create(Application);
  if not aInsertLink.Checked then
  begin
    frmNewLink.Edit1.Text := 'http://';
    frmNewLink.Edit2.Text := '';
    if Editor_Mode then
      begin
      // Вставка выделенного текста в форму
        Range := Editor.Selection.CreateRange as IHTMLTxtRange;
        frmNewLink.Edit2.Text := Range.text;
      end else
        if Code.SelLength > 0
          then frmNewLink.Edit2.Text := Code.SelText;
    try
      if frmNewLink.ShowModal = mrOk then
        if Editor_Mode then
          begin
            str := frmNewLink.Edit2.Text;
            Range := Editor.Selection.CreateRange as IHTMLTxtRange;
            Range.text := str;
            Range.moveStart('character', -Length(str));
            Range.select;
            Editor.execCommand('CreateLink', false, frmNewLink.Edit1.Text);
            Range.moveStart('character', Length(str));
            Editor.Selection.Empty;
          end
          else Code.SelText := '[url=' + frmNewLink.Edit1.Text + ']' +
                                frmNewLink.Edit2.Text + '[/url]';
    finally
      if Assigned(frmNewLink)
        then frmNewLink.Free;
      frmNewLink := nil;
    end;
  end else // Удаление ссылки
     if Editor_Mode then
      begin
        Range := Editor.Selection.CreateRange as IHTMLTxtRange;
        Range.execCommand('Unlink', false, EmptyParam);
      end else
        begin
        // Code режим
        end;
end;

procedure TfrmMain.aInsertDocExecute(Sender: TObject);
var
  SelectLength: Integer;
begin
  if Editor_Mode then
    begin
    	FormatDocCode;
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[doc]' + Code.SelText + '[/doc]';
        if SelectLength = 0
          then Code.SelStart := Code.SelStart - 6;
        Code.SelLength := 0;
        aInsertDoc.Checked := false;
        DocButton.Down := false;
      end;
end;

procedure TfrmMain.aInsertCodeExecute(Sender: TObject);
var
  SelectLength: integer;
begin
  if Editor_Mode then
    begin
      FormatDocCode;
    end else
      begin
        SelectLength := Code.SelLength;
        Code.SelText := '[code]' + Code.SelText + '[/code]';
        if SelectLength = 0
          then Code.SelStart := Code.SelStart - 7;
        Code.SelLength := 0;
        aInsertCode.Checked := false;
        CodeButton.Down := false;
      end;
end;

procedure TfrmMain.aIndexExecute(Sender: TObject);
begin
  cbCategory.Enabled := aIndex.Checked;
end;

procedure TfrmMain.aChangePageExecute(Sender: TObject);
var
  V: OleVariant;
begin
	aFormatBold.Enabled := True;
  aFormatItalic.Enabled := True;
  aFormatUnderline.Enabled := True;
  aFormatStrike.Enabled := True;
  aInsertCut.Enabled := True;
  aInsertImage.Enabled := True;
  aInsertLink.Enabled := True;
  aInsertDoc.Enabled := True;
  aInsertCode.Enabled := True;
  aInsertDoc.Checked := false;
  ainsertCode.Checked := false;
  DocButton.Down := false;
  CodeButton.Down := false;
  aFormatBold.Checked := false;
  BoldButton.Down := false;
  aFormatItalic.Checked := false;
  ItalicButton.Down := false;
  aFormatUnderline.Checked := false;
  UnderlineButton.Down := false;
  aFormatStrike.Checked := false;
  StrikeButton.Down := false;
  aViewWISYWIG.Checked := false;
  aViewHtml.Checked := false;
  case PageControl.ActivePageIndex of
    0:  if Editor_Mode = false then
          begin
            // HTML to WYSIWYG
            aViewWISYWIG.Checked := true;
            V := VarArrayCreate([0,0], varVariant);
            Code.WordWrap := False;
            V[0] := BodyStyleDiv + HTMLtoWYSIWYG(Code.Lines.Text) + '</div></body>';
            Code.WordWrap := True;
            Editor.Write(PSafeArray(TVarData(v).VArray));
            Editor.Close;
            Editor_Mode := true;
            SetAttributes(Editor);
            WebBrowser.SetFocusToDoc;
          end;
    1:  if Editor_Mode then
          begin
            // WYSIWYG to HTML
            aViewHtml.Checked := true;
            Code.Clear;
            DeleteAttributes(Editor);
            Code.Font.Name := 'Verdana';
            Code.Font.Size := 8;
            Code.Text := WYSIWYGtoHTML(Editor);
            Editor_Mode := false;
            SetStylesBrowser(Editor);
          end;
  end;
end;

procedure TfrmMain.aViewWISYWIGExecute(Sender: TObject);
begin
  aViewHtml.Checked := false;
  PageControl.ActivePageIndex := 0;
end;

procedure TfrmMain.aViewHtmlExecute(Sender: TObject);
begin
  aViewWISYWIG.Checked := false;
  pageControl.ActivePageIndex := 1;
end;

procedure TfrmMain.aViewPanelMainExecute(Sender: TObject);
begin
  tbFile.Visible := aViewPanelMain.Checked;
end;

procedure TfrmMain.aViewPanelFormatExecute(Sender: TObject);
begin
  tbFormat.Visible := aViewPanelFormat.Checked;
end;

procedure TfrmMain.aViewPanelInsertExecute(Sender: TObject);
begin
  tbInsert.Visible := aViewPanelInsert.Checked;
end;

procedure TfrmMain.aViewTemaExecute(Sender: TObject);
begin
  tbTema.Visible := aViewTema.Checked;
end;

procedure TfrmMain.aViewActiveDocExecute(Sender: TObject);
begin
  tbActiveDoc.Visible := aViewActiveDoc.Checked;
end;

procedure TfrmMain.aViewPostPreviewExecute(Sender: TObject);
begin
  tbPost.Visible := aViewPostPreview.Checked;
end;

procedure TfrmMain.MyMessageHandler(var Msg: TMsg; var Handled: Boolean);
var
  iOIPAO: IOleInPlaceActiveObject;
  Dispatch: IDispatch;
  Range: IHTMLTxtRange;
  CtrlRange: IHTMLControlRange;
  tag: IHTMLElement;
  s: string;
  isBold,
  isItalic,
  isUnderline,
  isStrike,
  isDoc,
  isCode,
  isLink: Boolean;
  Color: OleVariant;
begin
  if Editor_Mode then
    begin
      if WebBrowser = nil then
       begin
         Handled := False;
         Exit;
       end;
    Handled := (IsDialogMessage(WebBrowser.Handle,Msg)=true);
    if (Handled) and (not WebBrowser.Busy) then
      begin
        if FOleInPlaceActiveObject = nil then
          begin
            Dispatch := WebBrowser.Application;
            if Dispatch <> nil then
              begin
                Dispatch.QueryInterface(IOleInPlaceActiveObject, iOIPAO);
                if iOIPAO <> nil then FOleInPlaceActiveObject := iOIPAO;
              end;
          end;
        if FOleInPlaceActiveObject <> nil then
          begin
            FOleInPlaceActiveObject.TranslateAccelerator(Msg);
            if ((Msg.message = WM_LBUTTONDOWN) or
                (Msg.message = WM_LBUTTONUP) or
                (Msg.message = WM_MOUSEMOVE) or
               ((Msg.message = WM_KEYDOWN) or
                (Msg.message = WM_KEYUP))) then
            if (Editor.Selection.Type_ = 'Text')
                or (Editor.selection.type_ = 'None') then //Text
            begin
              aInsertLink.Enabled := true;
              aFormatBold.Checked := Editor.queryCommandValue(Format_Bold);
              aFormatItalic.Checked := Editor.queryCommandValue(Format_Italic);
              aFormatUnderline.Checked := Editor.queryCommandValue(Format_Underline);
              aFormatStrike.Checked := Editor.queryCommandValue(Format_Strike);

              Range := (editor.selection.createRange as IHTMLTxtRange);
              if Editor.selection.type_ = 'Text'
              	then aNewFragment.Enabled := Length(Range.htmlText) > 0
								else aNewFragment.Enabled := False;
              tag := Range.parentElement;
              if tag = nil then
                begin
                  aInsertDoc.Checked := false;
                  aInsertCode.Checked := false;
                end else
                if LowerCase(tag.tagName) = 'font' then
                  begin
                    color := tag.getAttribute('color', 0);
                    if LowerCase(color) = LowerCase(dc_color) then
                      begin
                        aInsertDoc.Checked := true;
                        aInsertCode.Checked := true;
                      end else
                        begin
                          aInsertDoc.Checked := LowerCase(color) = LowerCase(doc_color);
                          aInsertCode.Checked := LowerCase(color) = LowerCase(code_color);
                        end;
                  end else
                    begin
                      //aInsertDoc.Checked := false;
                      //aInsertCode.Checked := false;
                    end;
              if Length(Range.text) > 0 then
                begin
                  aEditCopy.Enabled := true;
                  aEditCut.Enabled := true;
                  isBold := false;//aFormatBold.Checked;
                  isItalic := false;//aFormatItalic.Checked;
                  isUnderline := false;//aFormatUnderline.Checked;
                  isStrike := false;//aFormatStrike.Checked;
                  isDoc := false;//aInsertDoc.Checked;
                  isCode := false;//aInsertCode.Checked;
                  isLink := false;//aInsertLink.Checked;
                  while tag <> nil do
                    begin
                      s := LowerCase(tag.tagName);
                      if s = 'strong' then isBold := true;
                      if s = 'em' then isItalic := true;
                      if s = 'u' then isUnderline := true;
                      if s = 'strike' then isStrike := true;
                      if s = 'a' then isLink := true;
                      if s = 'font' then
                        begin
                          Color := tag.getAttribute('color', 0);
                          if LowerCase(color)=LowerCase(doc_color) then isDoc := true;
                          if LowerCase(color)=LowerCase(code_color) then isCode := true;
                          if LowerCase(color)=LowerCase(dc_color) then
                            begin
                              isDoc := true;
                              isCode := true;
                            end;
                        end;
                      tag := tag.parentElement;
                    end;
                  aFormatBold.Checked := isBold;
                  aFormatItalic.Checked := isItalic;
                  aFormatUnderline.Checked := isUnderline;
                  aFormatStrike.Checked := isStrike;
                  aInsertDoc.Checked := isDoc;
                  aInsertCode.Checked := isCode;
                  aInsertLink.Checked := isLink;
                end else
                  begin
                    aEditCopy.Enabled := false;
                    aEditCut.Enabled := false;
                  end;
            end else if Editor.Selection.Type_ = 'Control' then
              begin
              // Object
              	aNewFragment.Enabled := False;
                aEditCopy.Enabled := true;
                aEditCut.Enabled := true;
                aInsertLink.Enabled := false;
                CtrlRange := (editor.selection.createRange as IHTMLControlRange);
                tag := CtrlRange.commonParentElement;
                if LowerCase(tag.tagName) = 'hr' then RegEvent(tag);
                if LowerCase(tag.tagName) = 'img' then
                  begin
                    RegEvent(tag);
                    SetImgs;
                  end;
              end else
                begin
                  aEditCopy.Enabled := false;
                  aEditCut.Enabled := false;
                end;
            s := LowerCase(Editor.body.outerHTML);
            //if Pos('<hr>', s) <> 0
            //  then aInsertCut.Enabled := false
            //  else aInsertCut.Enabled := true;
            aEditPaste.Enabled := Editor.queryCommandEnabled('Paste');
            aEditUndo.Enabled := Editor.queryCommandEnabled('Undo');
            s := Editor.body.outerText;
            aEditSelectAll.Enabled := Length(s) <> 0;
          end;
      end;
    end; 
end;

procedure TfrmMain.FormActivate(Sender: TObject);
begin
  SaveMessageHandler := Application.OnMessage;
  Application.OnMessage := MyMessageHandler;
end;

procedure TfrmMain.FormDeactivate(Sender: TObject);
begin
  Application.OnMessage := SaveMessageHandler;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	DeleteTemps;
  Application.OnMessage := SaveMessageHandler;
  FOleInPlaceActiveObject := nil;
  SaveOptions;
end;

function TfrmMain.WebBrowserShowContextMenu(const dwID: Cardinal;
  const ppt: PPoint; const pcmdtReserved: IInterface;
  const pdispReserved: IDispatch): HRESULT;
begin
  PopupMenuWebBrowser.Popup(Mouse.CursorPos.x, Mouse.CursorPos.y);
  Result := S_OK;
end;

procedure TfrmMain.FormatDocCode;
var
  Color: string;
begin
  Color := none_color;
  if aInsertDoc.Checked then Color := doc_color;
  if aInsertCode.Checked then Color := code_color;
  if aInsertDoc.Checked and aInsertCode.Checked then Color := dc_color;
  Editor.execCommand('ForeColor', false, Color);
//  if aInsertCode.Checked
//    then Editor.execCommand('FontName', false, 'Courier')
//    else Editor.execCommand('FontName', false, 'Verdana');
end;

procedure TfrmMain.aEditCopyExecute(Sender: TObject);
begin
	if Assigned(frmPostLink) then
  	begin
    	if frmPostLink.Edit1.Focused then
				frmPostLink.Edit1.CopyToClipboard;
    end else
  if edTema.Focused then edTema.CopyToClipboard else
  if InLink.Focused then InLink.CopyToClipboard else
  if Editor_Mode then
    begin
      if not Assigned(Editor) then Exit;
      Editor.execCommand('Copy', false, EmptyParam);
    end else Code.CopyToClipboard;
end;

procedure TfrmMain.aEditCutExecute(Sender: TObject);
begin
	if Assigned(frmPostLink) then
  	begin
    	if frmPostLink.Edit1.Focused then
				frmPostLink.Edit1.CutToClipboard;
    end else
  if edTema.Focused then edTema.CutToClipboard else
  if InLink.Focused then InLink.CutToClipboard else
  if Editor_Mode then
    begin
      if not Assigned(Editor) then Exit;
      Editor.execCommand('Cut', false, EmptyParam);
    end else Code.CutToClipboard;
end;

procedure TfrmMain.aEditPasteExecute(Sender: TObject);
var
	Stream: TMemoryStream;
begin
	if Assigned(frmPostLink) then
  	begin
    	if frmPostLink.Edit1.Focused then
				frmPostLink.Edit1.PasteFromClipboard;
    end else
  if edTema.Focused then edTema.PasteFromClipboard else
  if InLink.Focused then InLink.PasteFromClipboard else
  if Editor_Mode then
    begin
      if not Assigned(Editor) then Exit;
      Stream := TMemoryStream.Create;
      try
      	SaveClipboard(Stream);
      	SetTextClipboard;
        Editor.execCommand('Paste', false, EmptyParam);
      finally
      	if Stream.Size > 0 then
        	begin
          	Stream.Position := 0;
            LoadClipboard(Stream);
          end;
        Stream.Free;
      end;
      WebBrowser.SetFocusToDoc;
    end else
    	begin
      	Code.PasteFromClipboard;
        Code.Update;
      end;
end;

procedure TfrmMain.aEditSelectAllExecute(Sender: TObject);
begin
	if Assigned(frmPostLink) then
  	begin
    	if frmPostLink.Edit1.Focused then
				frmPostLink.Edit1.SelectAll;
    end else
  if edTema.Focused then edTema.SelectAll else
  if InLink.Focused then InLink.SelectAll else
  if Editor_Mode then
    begin
      if not Assigned(Editor) then Exit;
      Editor.execCommand('SelectAll', false, EmptyParam);
    end else Code.SelectAll;
end;

procedure TfrmMain.OnCutCode;
//var s: string;
begin
//	Code.WordWrap := False;
//  s := Code.Lines.Text;
//	Code.WordWrap := True;
//  s := StringReplace(s, '[cut]', '[cut]', [rfReplaceAll, rfIgnoreCase]);
//  aInsertCut.Enabled := Pos('[cut]', s) = 0;
end;

procedure TfrmMain.CodeChange(Sender: TObject);
begin
  OnCutCode;
end;

procedure TfrmMain.CodeEnter(Sender: TObject);
begin
  OnCutCode;
end;

procedure TfrmMain.aHelpAboutExecute(Sender: TObject);
begin
  if not Assigned(frmAbout)
    then frmAbout := TfrmAbout.Create(Application);
  try
    frmAbout.ShowModal;
  finally
    if Assigned(frmAbout)
      then frmAbout.Free;
    frmAbout := nil;
  end;
end;

procedure TfrmMain.aServiceOptionsProgsExecute(Sender: TObject);
begin
  frmOptions.Open(0);
end;

procedure TfrmMain.aServiceOptionsDocsExecute(Sender: TObject);
var
  Index: Integer;
begin
  Index := cbDocs.ItemIndex;
  if Index < 0 then Index := 0;
  if not Assigned(frmDoci)
    then frmDoci:=TfrmDoci.Create(Application);
  try
    frmDoci.ShowModal;
    SaveOptions;
    GetDocs(cbDocs.Items);
    Options.ActiveDoc := Index + 1;
  	if Length(Options.Docs) = 1 then Options.ActiveDoc := 1;
    if Length(Options.Docs) = 0 then Options.ActiveDoc := 0;
    cbDocs.ItemIndex := Options.ActiveDoc;
  finally
    if Assigned(frmDoci)
      then frmDoci.Free;
    frmDoci:=nil;
  end;
end;

procedure TfrmMain.aPreviewPostExecute(Sender: TObject);
var
  Adress: String;
  PostData: TPostData;
  Doc: TDoc;
begin
  Adress := NNM_Adress;
  if Options.ActiveDoc > 0
    then adress := Options.Docs[Options.ActiveDoc - 1].Adress;
  if not Assigned(frmPost)
    then frmPost := TfrmPost.Create(Application);
  try
    PostData.Title := edTema.Text;
    PostData.Category := cbCategory.Text;
    Code.WordWrap := False;
    if Editor_Mode
      then PostData.Text := WYSIWYGtoHTML(Editor)
      else PostData.Text := Code.Lines.Text;
    SetStylesBrowser(Editor);
    Code.WordWrap := True;
    PostData.InLink := InLink.Text;
    Doc.Name := 'Без дока';
    Doc.Adress := '';
    if Options.ActiveDoc > 0
      then PostData.Doc := Options.Docs[Options.ActiveDoc - 1]
      else PostData.Doc := Doc;
    PostData.IsCat := CheckBox2.Checked;
    if Length(Trim(PostData.Title)) > 3 then
      begin
        if frmPost.ShowForm(PostData, Options) = mrOk then
					;
      end else
        begin
          MessageBox(Application.Handle, strNewNews, strErrorCaption, MB_OK + MB_ICONWARNING + MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TASKMODAL + MB_TOPMOST);
          edTema.SetFocus;
        end;
  finally
  	SetStylesBrowser(Editor);
    if Assigned(frmPost)
      then frmPost.Free;
    frmPost := nil;
  end;
end;

procedure TfrmMain.aFileNewExecute(Sender: TObject);
var
  V: OleVariant;
begin
  if MessageBox(Application.Handle, strClearForNewPost,
                strNewPostCaption, MB_OKCANCEL) = ID_OK then
    begin
      V := VarArrayCreate([0,0], varVariant);
      V[0] := BodyStyleDiv + '</div></body>';
      Editor.Write(PSafeArray(TVarData(v).VArray));
      Editor.Close;
      PageControl.ActivePageIndex := 0;
      Editor_Mode := true;
      aViewWISYWIG.Checked := true;
      filennm := '';
      frmMain.Caption := title;
      Code.Clear;
      edTema.Clear;
      InLink.Clear;
      WebBrowser.SetFocusToDoc;
    end;
end;

procedure TfrmMain.aFileSaveAsExecute(Sender: TObject);
begin
  if SaveDialog.Execute then Save(SaveDialog.FileName);
  if Editor_Mode
    then WebBrowser.SetFocusToDoc
    else Code.SetFocus;
end;

procedure TfrmMain.aFileSaveExecute(Sender: TObject);
begin
  if Length(filennm) = 0
    then aFileSaveAsExecute(Sender)
    else Save(filennm);
end;

procedure TfrmMain.aFileOpenExecute(Sender: TObject);
var
  DataText: string;
  CanClose: Boolean;
begin
	CanClose := True;
	if Editor_Mode then
      begin
        DeleteAttributes(Editor);
        DataText := WYSIWYGtoHTML(Editor);
        SetStylesBrowser(Editor);
      end else
      	begin
        	Code.WordWrap := False;
          DataText := Code.Lines.Text;
          Code.WordWrap := True;
        end;
  if CompareStr(DataText, FOldData) <> 0 then
  case MessageBox(Application.Handle, 'Сохранить изменения в новости?', 'Внимание',
    	MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONQUESTION	 + MB_YESNOCANCEL) of
  	IDYES: begin
             if Length(FileNNM) > 0
             	 then Save(FileNNM)
               else aFileSaveAs.Execute;
             CanClose := True;
        	 end;
    IDNO: CanClose := True;
    IDCANCEL: CanClose := False;
  end;
  if not CanClose then Exit;

  if OpenDialog.Execute then
    begin
      LoadDataFile(OpenDialog.FileName);
      frmMain.Caption := title + ' - [' + ExtractFileName(filennm)+ ']';
    end;
end;

procedure TfrmMain.RegEvent(tag: IHTMLElement);
begin
  EventHandler := THTMLEvent.Create(Editor);
  EventHandler.OnEvent := KeyEvent;
  (tag as IHTMLElement3).onresizestart := EventHandler as IDispatch;
end;

procedure TfrmMain.KeyEvent(EventObject: IHTMLEventObj; EventType: string);
begin
  EventObject.cancelBubble := true;
  EventObject.returnValue := false
end;

procedure TfrmMain.aEditUndoExecute(Sender: TObject);
begin
  if Sender is TEdit then TEdit(Sender).Undo else
  if Editor_Mode then
    begin
      Editor.execCommand('Undo', false, EmptyParam);
    end else Code.Undo;
end;

procedure TfrmMain.SetImgs;
var
  Index: Integer;
  tag: IHTMLElement;
begin
	SetStylesBrowser(Editor);
	if Editor.images.length <= 0 then Exit;
  for Index := 0 to Editor.Images.Length - 1 do
    begin
    	tag := IHTMLElement(Editor.images.item(Index, 0));
      SetImage(tag);
      RegEvent(tag);
    end;
end;

procedure TfrmMain.cbDocsChange(Sender: TObject);
begin
  Options.ActiveDoc := cbDocs.ItemIndex;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  GetDocs(cbDocs.Items);
  cbDocs.ItemIndex := Options.ActiveDoc;
end;

procedure TfrmMain.aEditModeExecute(Sender: TObject);
begin
  Edit_Mode := aEditMode.Checked;
  Editor.execCommand('OverWrite', false, Edit_Mode);
  if Edit_Mode
    then StatusBar1.Panels[1].Text := fmtReplace
    else StatusBar1.Panels[1].Text := fmtInsert;
end;

procedure TfrmMain.CodeKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Code.SelLength = 0) and Edit_Mode)
    then Code.SelLength := 1;
end;

procedure TfrmMain.CodeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_INSERT) and (Shift = [])
    then aEditMode.Execute;
end;

procedure TfrmMain.ShowProgHint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
end;

procedure TfrmMain.SaveOptions;
var
  MemoryStream: TMemoryStream;
  FileStream: TFileStream;
  size,i,coun: integer;
  str: string;
begin
  str := ExtractFilePath(Application.ExeName) + OptionsMain;
  if not FileExists(str) then
    CreateDir(ExtractFilePath(str));
  MemoryStream := TMemoryStream.Create;
  FileStream := TFileStream.Create(str, fmCreate);
  try
    try
      coun := NewsOptionsVersion;
      size := SizeOf(coun);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(coun, size);
      str := EnCrypt(Options.Login);
      size := Length(str);
      MemoryStream.Write(size, SizeOf(size));
      if size > 0 then MemoryStream.Write(str[1], size);
      if Options.Member_Pass
        then str := EnCrypt(Options.Password)
        else str := '';
      size := Length(str);
      MemoryStream.Write(size, SizeOf(size));
      if size > 0 then MemoryStream.Write(str[1], size);
      size := SizeOf(Options.Member_Pass);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.Member_Pass, size);
      size := SizeOf(Options.Visual_Pass);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.Visual_Pass, size);
      size := SizeOf(Options.Timeout);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.Timeout, size);
      size := SizeOf(Options.ActiveSplash);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.ActiveSplash, size);
      size := Sizeof(Options.ActiveSign);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.ActiveSign, size);
      size := Length(Options.TempPath);
      MemoryStream.Write(size, SizeOf(size));
      if size > 0 then
      	MemoryStream.Write(Options.TempPath[1], size);
      size := Length(Options.Signature);
      MemoryStream.Write(size, SizeOf(size));
      if size > 0 then
      	MemoryStream.Write(Options.Signature[1], size);
      size := SizeOf(Options.Proxy.ProxyActive);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.Proxy.ProxyActive, size);
      if Options.Proxy.ProxyActive then
      	begin
        	size := Length(Options.Proxy.ProxyHost);
      		MemoryStream.Write(size, SizeOf(size));
      		if size > 0 then
      			MemoryStream.Write(Options.Proxy.ProxyHost[1], size);
          size := SizeOf(Options.Proxy.ProxyPort);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Options.Proxy.ProxyPort, size);
          size := Length(Options.Proxy.ProxyLogin);
      		MemoryStream.Write(size, SizeOf(size));
      		if size > 0 then
      			MemoryStream.Write(Options.Proxy.ProxyLogin[1], size);
          size := Length(Options.Proxy.ProxyPassword);
      		MemoryStream.Write(size, SizeOf(size));
      		if size > 0 then
      			MemoryStream.Write(Options.Proxy.ProxyPassword[1], size);
        end;
      size := SizeOf(Options.OptionsNewImages);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(Options.OptionsNewImages, size);
      size := Length(Options.Docs);
      MemoryStream.Write(size, SizeOf(size));
      coun := size;
      if coun > 0 then
        begin
          for i := 0 to coun - 1 do
            begin
              size := Length(Options.Docs[i].Name);
              MemoryStream.Write(size, SizeOf(size));
              if size > 0 then
                MemoryStream.Write(Options.Docs[i].Name[1], size);
              size := Length(Options.Docs[i].Adress);
              MemoryStream.Write(size, SizeOf(size));
              if size > 0 then
                MemoryStream.Write(Options.Docs[i].Adress[1], size);
            end;
          size := SizeOf(Options.ActiveDoc);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Options.ActiveDoc, size);
        end;
      size := SizeOf(WindowState);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(WindowState, size);
      if WindowState <> wsMaximized then
        begin
          size := SizeOf(Left);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Left, size);
          size := SizeOf(Top);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Top, size);
          size := SizeOf(Width);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Width, size);
          size := SizeOf(Height);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(Height, size);
          size := SizeOf(PageControl.TabPosition);
          MemoryStream.Write(size, SizeOf(size));
          MemoryStream.Write(PageControl.TabPosition, size);
        end;
      coun := CoolBar1.Bands.Count - 1;
      size := SizeOf(coun);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(coun, size);
      if coun >= 0 then
        for i := 0 to coun do
          with CoolBar1 do
            begin
              size := Length(Bands[i].Control.Name);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Control.Name[1], size);
              size := SizeOf(Bands[i].Control.Left);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Control.Left, size);
              size := SizeOf(Bands[i].Control.Top);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Control.Top, size);
              size := SizeOf(Bands[i].Control.Width);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Control.Width, size);
              size := SizeOf(Bands[i].MinWidth);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].MinWidth, size);
              size := SizeOf(Bands[i].Break);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Break, size);
              size := sizeOf(Bands[i].Control.Visible);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Control.Visible, size);
              size := sizeOf(Bands[i].Width);
              MemoryStream.Write(size, SizeOf(size));
              MemoryStream.Write(Bands[i].Width, size);
            end;
      coun := CoolBar2.Bands.Count - 1;
      size := SizeOf(coun);
      MemoryStream.Write(size, SizeOf(size));
      MemoryStream.Write(coun, size);
      if coun >= 0 then
      for i := 0 to coun do
        with CoolBar2 do
          begin
            size := Length(Bands[i].Control.Name);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Control.Name[1], size);
            size := SizeOf(Bands[i].Control.Left);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Control.Left, size);
            size := SizeOf(Bands[i].Control.Top);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Control.Top, size);
            size := SizeOf(Bands[i].Control.Width);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Control.Width, size);
            size := SizeOf(Bands[i].MinWidth);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].MinWidth, size);
            size := SizeOf(Bands[i].Break);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Break, size);
            size := sizeOf(Bands[i].Control.Visible);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Control.Visible, size);
            size := sizeOf(Bands[i].Width);
            MemoryStream.Write(size, SizeOf(size));
            MemoryStream.Write(Bands[i].Width, size);
          end;
      WriteStreamToStream(FileStream, MemoryStream);
    finally
      if Assigned(FileStream)
        then FileStream.Free;
      if Assigned(MemoryStream)
        then MemoryStream.Free;
    end;

    MemoryStream := nil;
  	FileStream := nil;
    try
      str := ExtractFilePath(Application.ExeName) + FragmentsFile;
      if not FileExists(str) then
        CreateDir(ExtractFilePath(str));
      MemoryStream := TMemoryStream.Create;
      FileStream := TFileStream.Create(str, fmCreate);
      // Сохранить фрагменты
      size := Length(Fragments);
      MemoryStream.Write(size, SizeOf(size));
      coun := size;
      if coun > 0 then
        begin
          for i := 0 to coun - 1 do
            begin
              size := Length(Fragments[i].Captions);
              MemoryStream.Write(size, SizeOf(size));
              if size > 0 then
                MemoryStream.Write(Fragments[i].Captions[1], size);
              size := Length(Fragments[i].Text);
              MemoryStream.Write(size, SizeOf(size));
              if size > 0 then
                MemoryStream.Write(Fragments[i].Text[1], size);
            end;
        end;

      WriteStreamToStream(FileStream, MemoryStream);
    finally
    	if Assigned(MemoryStream) then MemoryStream.Free;
      if Assigned(FileStream) then FileStream.Free;
    end;
  except
    ShowMessage(strErrorSaveOptions);
  end;
end;

procedure TfrmMain.LoadOptions;
var
  MemoryStream: TMemoryStream;
  FileStream: TFileStream;
  size, data, i: integer;
  ws: TWindowState;
  tp: TTabPosition;
  str: string;
  bl: boolean;
  WinControl: TWinControl;
  Version: Integer;
begin
  SetDefaultOptions;
  MemoryStream := nil;
  FileStream := nil;
  try
  	str := ExtractFilePath(Application.ExeName) + OptionsMain;
    if FileExists(str) then
      begin
        FileStream := TFileStream.Create(str, fmOpenRead);
        MemoryStream := TMemoryStream.Create;
        ReadStreamFromStream(FileStream, MemoryStream);
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Version, size);
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
          begin
            SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Options.Login := DeCrypt(str);
          end else Options.Login := '';
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
          begin
            SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Options.Password := DeCrypt(str);
          end else Options.Password := '';
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.Member_Pass, size);
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.Visual_Pass, size);
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.Timeout, size);
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.ActiveSplash, size);
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.ActiveSign, size);
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(Options.TempPath, size);
            MemoryStream.Read(Options.TempPath[1], size);
          end;
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
          begin
            SetLength(Options.Signature, size);
            MemoryStream.Read(Options.Signature[1], size);
          end;
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.Proxy.ProxyActive, size);
        if Options.Proxy.ProxyActive then
        	begin
          	MemoryStream.Read(size, SizeOf(size));
            if size > 0 then
              begin
                SetLength(Options.Proxy.ProxyHost, size);
                MemoryStream.Read(Options.Proxy.ProxyHost[1], size);
              end;
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(Options.Proxy.ProxyPort, size);
            MemoryStream.Read(size, SizeOf(size));
            if size > 0 then
              begin
                SetLength(Options.Proxy.ProxyLogin, size);
                MemoryStream.Read(Options.Proxy.ProxyLogin[1], size);
              end;
            MemoryStream.Read(size, SizeOf(size));
            if size > 0 then
              begin
                SetLength(Options.Proxy.ProxyPassword, size);
                MemoryStream.Read(Options.Proxy.ProxyPassword[1], size);
              end;
          end;
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(Options.OptionsNewImages, size);
        MemoryStream.Read(size, SizeOf(size));
        SetLength(Options.Docs, size);
        if size > 0 then
          begin
            data := size;
            if data > 0 then
              for i := 0 to data - 1 do
                begin
                  MemoryStream.Read(size, SizeOf(size));
                  if size > 0 then
                    begin
                      SetLength(Options.Docs[i].Name, size);
                      MemoryStream.Read(Options.Docs[i].Name[1], size);
                    end;
                  MemoryStream.Read(size, SizeOf(size));
                  if size > 0 then
                    begin
                      SetLength(Options.Docs[i].Adress, size);
                      MemoryStream.Read(Options.Docs[i].Adress[1], size);
                    end;
                end;
              MemoryStream.Read(size, SizeOf(size));
              MemoryStream.Read(Options.ActiveDoc, size);
          end;
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(ws, size);
        FWindowState := ws;
        if ws <> wsMaximized then
          begin
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(data, size);
            Left := data;
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(data, size);
            Top := data;
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(data, size);
            Width := data;
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(data, size);
            Height := data;
            MemoryStream.Read(size, SizeOf(size));
            MemoryStream.Read(tp, size);
            PageControl.TabPosition := tp;
          end;
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(data, size);
        if data >= 0 then
          begin
            CoolBar1.Bands.Clear;
            for i := 0 to data do
              begin
                CoolBar1.Bands.Add;
                CoolBar1.Bands[i].Control := nil;
                MemoryStream.Read(size, SizeOf(size));
                SetLength(str, size);
                MemoryStream.Read(str[1], size);
                WinControl := GetWinControl(str);
                if WinControl <> nil
                  then CoolBar1.Bands[i].Control := WinControl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Left := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Top := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Width := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if Version = NewsOptionsVersion then
                	CoolBar1.Bands[i].MinWidth := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(bl, size);
                CoolBar1.Bands[i].Break := bl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(bl, size);
                if WinControl <> nil
                  then WinControl.Visible := bl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                Coolbar1.Bands[i].Width := data;
              end;
          end;
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(data, size);
        if data >= 0 then
          begin
            CoolBar2.Bands.Clear;
            for i := 0 to data do
              begin
                CoolBar2.Bands.Add;
                CoolBar2.Bands[i].Control := nil;
                MemoryStream.Read(size, SizeOf(size));
                SetLength(str, size);
                MemoryStream.Read(str[1], size);
                WinControl := GetWinControl(str);
                if WinControl <> nil
                  then CoolBar2.Bands[i].Control := WinControl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Left := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Top := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                if WinControl <> nil
                  then WinControl.Width := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                CoolBar2.Bands[i].MinWidth := data;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(bl, size);
                CoolBar2.Bands[i].Break := bl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(bl, size);
                if WinControl <> nil
                  then WinControl.Visible := bl;
                MemoryStream.Read(size, SizeOf(size));
                MemoryStream.Read(data, size);
                Coolbar2.Bands[i].Width := data;
              end;
          end;
      end;
  finally
    if Assigned(MemoryStream)
      then MemoryStream.Free;
    if Assigned(FileStream)
      then FileStream.Free;
  end;

  MemoryStream := nil;
  FileStream := nil;
  try
  	str := ExtractFilePath(Application.ExeName) + FragmentsFile;
    if FileExists(str) then
      begin
      	FileStream := TFileStream.Create(str, fmOpenRead);
        MemoryStream := TMemoryStream.Create;
        ReadStreamFromStream(FileStream, MemoryStream);
        // Загрузить фрагменты
        MemoryStream.Read(size, SizeOf(size));
        SetLength(Fragments, size);
        if size > 0 then
          begin
            data := size;
            if data > 0 then
              for i := 0 to data - 1 do
                begin
                  MemoryStream.Read(size, SizeOf(size));
                  if size > 0 then
                    begin
                      SetLength(Fragments[i].Captions, size);
                      MemoryStream.Read(Fragments[i].Captions[1], size);
                    end;
                  MemoryStream.Read(size, SizeOf(size));
                  if size > 0 then
                    begin
                      SetLength(Fragments[i].Text, size);
                      MemoryStream.Read(Fragments[i].Text[1], size);
                    end;
                end;
          end;
      end;
  finally
  	if Assigned(MemoryStream) then MemoryStream.Free;
    if Assigned(FileStream) then FileStream.Free;
  end;
end;

procedure TfrmMain.SetDefaultOptions;
begin
  with Options do
    begin
      Login           := '';
      Password        := '';
      Member_Pass     := False;
      Visual_Pass     := False;
      Timeout         := 10;
      SetLength(Docs, 0);
      ActiveDoc       := 0;
      ActiveSplash    := True;
      Signature				:= '';
      ActiveSign			:= False;
      Proxy.ProxyHost := '';
      Proxy.ProxyPort := 0;
      Proxy.ProxyLogin := '';
      Proxy.ProxyPassword := '';
      Proxy.ProxyActive := False;
      DefaultExt 			:= '.npd';
      OptionsNewImages.CommentPosition := positionBottom;
      OptionsNewImages.AutoNumber := False;
    end;
  SetLength(Fragments, 0);
end;

procedure TfrmMain.WriteStreamToStream(ToStream, InStream: TStream);
var
  size: integer;
  buffer: array of byte;
begin
  size := InStream.Size;
  ToStream.Write(size, Sizeof(size));
  if size < 1 then Exit;
  SetLength(buffer, size);
  InStream.Seek(0, sofromBeginning);
  InStream.Read(buffer[0], size);
  ToStream.Write(buffer[0], size);
  SetLength(buffer, 0);
end;

procedure TfrmMain.ReadStreamFromStream(InStream: TStream;
  var ToStream: TMemoryStream);
var
  size: integer;
  buffer: array of byte;
begin
  InStream.Read(size, SizeOf(size));
  ToStream.Clear;
  if size < 1 then Exit;
  SetLength(buffer, size);
  InStream.Read(buffer[0], size);
  ToStream.Write(buffer[0], size);
  ToStream.Seek(0, soFromBeginning);
  SetLength(buffer, 0);
end;

function TfrmMain.GetWinControl(name: string): TWinControl;
var
  Index: Integer;
begin
  Result := nil;
  if name = '' then Exit;

  for Index := 0 to ComponentCount - 1 do
    if Components[Index] is TWinControl then
      if TWinControl(Components[Index]).Name = name then
        begin
          Result := TWinControl(Components[Index]);
          Exit;
        end;
end;

procedure TfrmMain.GetDocs(Data: TStrings);
var
  Index: integer;
begin
  Data.Clear;
  Data.Add(strNoneDoc);
  if Length(Options.Docs) > 0 then
    for Index := 0 to Length(Options.Docs) - 1 do
      Data.Add(Options.Docs[Index].Name);
end;

procedure TfrmMain.DeleteDoc(index: integer);
var
  Temp: TDocs;
  i,t,size: integer;
begin
  Temp := Options.Docs;
  size := Length(Options.Docs);
  SetLength(Options.Docs, size - 1);
  i := 0;
  t := 0;
  while i <= size - 1 do
    begin
      if i <> index then
        begin
          Options.Docs[t] := Temp[i];
          Inc(t);
        end;
      Inc(i);
    end;
end;

procedure TfrmMain.PopupMenuWebBrowserPopup(Sender: TObject);
begin
  N32.Enabled := aFormatBold.Enabled;
  N33.Enabled := aFormatItalic.Enabled;
  N34.Enabled := aFormatUnderline.Enabled;
  N35.Enabled := aFormatStrike.Enabled;
  N31.Enabled := aInsertLink.Enabled;
  N37.Enabled := aInsertDoc.Enabled;
  N38.Enabled := aInsertCode.Enabled;
end;

procedure TfrmMain.tbPostEndDock(Sender, Target: TObject; X, Y: Integer);
var
  Index: integer;
begin
  if (Target <> CoolBar1) and
     (Target <> CoolBar2) then tbPost.Parent := CoolBar1;
  for Index := 0 to (tbPost.Parent as TCoolBar).Bands.Count - 1 do
    if  (tbPost.Parent as TCoolBar).Bands[Index].Control = tbPost
      then (tbPost.Parent as TCoolBar).Bands[Index].MinWidth := 145;
end;

procedure TfrmMain.mfExitClick(Sender: TObject);
begin
  SaveOptions;
  Application.Terminate;
end;

procedure TfrmMain.N21Click(Sender: TObject);
var
	ListImage: TStringList;
  CtrlRange: IHTMLControlRange;
  TextRange: IHTMLTxtRange;
  Comment: String;
  Index: Integer;
  Str: String;
begin
	ListImage := GetInetImage;
  try
  if (not Assigned(ListImage)) or (ListImage.Count <= 0) then Exit;
  if Editor_Mode then
  	begin
    	if Editor.Selection.Type_ = 'Control' then
        begin
          CtrlRange := (Editor.Selection.CreateRange as IHTMLControlRange);
          for Index := 0 to ListImage.Count - 1 do
            begin
              if Options.OptionsNewImages.AutoNumber
                then Comment := IntToStr(Index + 1) + '. '
                else Comment := '';
              if Options.OptionsNewImages.CommentPosition = positionTop then
              	CtrlRange.execCommand('InsertParagraph', False, Comment);;
              CtrlRange.execCommand('InsertImage', false, ListImage[Index]);
              if Options.OptionsNewImages.CommentPosition = positionBottom then
              	CtrlRange.execCommand('InsertParagraph', False, Comment);
            end;
            SetImgs;
        end else
          begin
            TextRange := (Editor.Selection.CreateRange as IHTMLTxtRange);
            for Index := 0 to ListImage.Count - 1 do
              begin
                if Options.OptionsNewImages.AutoNumber
                  then Comment := IntToStr(Index + 1) + '. '
                  else Comment := '';
                if Options.OptionsNewImages.CommentPosition = positionTop then
                	TextRange.execCommand('InsertParagraph', False, Comment);
                TextRange.ExecCommand('InsertImage', false, ListImage[Index]);
                if Options.OptionsNewImages.CommentPosition = positionBottom then
                	TextRange.execCommand('InsertParagraph', False, Comment);
              end;
            SetImgs;
          end;
        WebBrowser.SetFocusToDoc;
    end else
    	begin
      	for Index := 0 to ListImage.Count - 1 do
          ListImage[Index] := Trim(ListImage[Index]);
        Str := '';
        for Index := 0 to ListImage.Count - 1 do
          begin
            if Options.OptionsNewImages.AutoNumber
              then Comment := IntToStr(Index + 1) + '. '
              else Comment := '';
            if (Comment <> '') and (Options.OptionsNewImages.CommentPosition = positionTop)
              then Str := Str + Comment + #13#10;
            Str := Str + '[img="' + ListImage[Index] + '"]' + #13#10;
            if (Comment <> '') and (Options.OptionsNewImages.CommentPosition = positionBottom)
              then Str := Str + Comment + #13#10;
          end;
        Code.SelText := Str;
      end;
  finally
  	GetComments(Editor);
  	if Assigned(ListImage) then ListImage.Free;
  end;
end;

procedure TfrmMain.aEditPasteUpdate(Sender: TObject);
begin
	aEditPaste.Enabled := IsUnicodeInClipboard;
end;

function TfrmMain.GetEnable(AOpenTag, ACloseTag: string): Boolean;
var
	Found: Boolean;
  Str: String;
  Index: Integer;
begin
	Str := Code.Lines.Text;
  if Length(Str) <= 0 then
  	begin
    	Result := True;
      Exit;
    end;
	Found := False;
  Index := 1;
  AOpenTag := LowerCase(AOpenTag);
  ACloseTag := LowerCase(ACloseTag);
  while Index <= Code.SelStart do
  	begin
    	if LowerCase(Copy(Str, Index, Length(AOpenTag))) = AOpenTag then
      	begin
        	Found := True;
          Inc(Index, Length(AOpenTag) - 1);
        end;
      if LowerCase(Copy(Str, Index, Length(ACloseTag))) = ACloseTag then
      	begin
        	Found := False;
          Inc(Index, Length(ACloseTag) - 1);
        end;
      Inc(Index);
    end;
  Result := not Found;
end;

procedure TfrmMain.aFormatBoldUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aFormatBold.Enabled := GetEnable('[b]', '[/b]');
end;

procedure TfrmMain.aFormatItalicUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aFormatItalic.Enabled := GetEnable('[i]', '[/i]');
end;

procedure TfrmMain.aFormatUnderlineUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aFormatUnderline.Enabled := GetEnable('[u]', '[/u]');
end;

procedure TfrmMain.aFormatStrikeUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aFormatStrike.Enabled := GetEnable('[s]', '[/s]');
end;

procedure TfrmMain.aInsertDocUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aInsertDoc.Enabled := GetEnable('[doc]', '[/doc]');
end;

procedure TfrmMain.aInsertCodeUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aInsertCode.Enabled := GetEnable('[code]', '[/code]');
end;

procedure TfrmMain.FragmentMenuPopup(Sender: TObject);
var
	Index: Integer;
  mItem: TMenuItem;
begin
	// Заполнение меню
  while FragmentMenu.Items.Count > 0 do
  	FragmentMenu.Items[0].Free;
  if Length(Fragments) <= 0 then Exit;
  Index := 0;
  while (Index < Length(Fragments)) and (Index < 11) do
  	begin
    	mItem := TMenuItem.Create(FragmentMenu);
      mItem.OnClick := SelectFragment;
      mItem.Caption := Fragments[Index].Captions;
      mItem.Tag := Index;
      FragmentMenu.Items.Add(mItem);
      Inc(Index);
    end;
  if Length(Fragments) > 11 then
  	begin
    	mItem := TMenuItem.Create(FragmentMenu);
      mItem.Caption := '-';
      FragmentMenu.Items.Add(mItem);
      mItem := TMenuItem.Create(FragmentMenu);
      mItem.Caption := 'Все фрагменты...';
      mItem.Action := aServiceOptionsFragments;
      FragmentMenu.Items.Add(mItem);
    end;
end;

procedure TfrmMain.aInsertFragmentExecute(Sender: TObject);
var
	lPoint: TPoint;
begin
	with FragmentButton do
  	lPoint := ClientToScreen(Point(0, Height));
  FragmentMenu.Popup(lPoint.X, lPoint.Y);
end;

procedure TfrmMain.aInsertFragmentUpdate(Sender: TObject);
begin
//	if Editor_Mode then Exit;
	aInsertFragment.Enabled := Length(Fragments) > 0;
end;

procedure TfrmMain.aNewFragmentExecute(Sender: TObject);
var
	lCaption, lText, Str: String;
  Range: IHTMLTxtRange;
  len: Integer;
begin
	lCaption := '';
  if Editor_Mode then
  	begin
    	Range := Editor.Selection.CreateRange as IHTMLTxtRange;
      Str := Range.htmlText;
      DeleteAttrsText(Str);
      lText := WYSIWYGtoHTMLText(Str);
    end else lText := Code.SelText;
  InsImg(lText);
  SetStylesBrowser(Editor);
  if NewFragment(lCaption, lText) then
  	begin
    	len := Length(Fragments);
    	SetLength(Fragments, len + 1);
      Fragments[len].Captions := lCaption;
      Fragments[len].Text := lText;
    end; 
end;

procedure TfrmMain.aNewFragmentUpdate(Sender: TObject);
begin
	if Editor_Mode then Exit;
  aNewFragment.Enabled := Code.SelLength > 0;
end;

procedure TfrmMain.aServiceOptionsFragmentsExecute(Sender: TObject);
begin
	frmFragments := TfrmFragments.Create(Self);
  try
  	frmFragments.ShowModal;
  finally
  	frmFragments.Free;
    frmFragments := nil;
  end;
end;

procedure TfrmMain.SelectFragment(Sender: TObject);
var
	Index: Integer;
  Range: IHTMLTxtRange;
  txt: string;
begin
	if not (Sender is TMenuItem) then Exit;
  Index := TMenuItem(Sender).Tag;
  if Index >= 0 then
  	begin
    	txt := Fragments[TMenuItem(Sender).Tag].Text;
      InsImg(txt);
      if Editor_Mode then
        begin
          Range := (Editor.Selection.CreateRange as IHTMLTxtRange);
          Range.pasteHTML(HTMLtoWYSIWYG(txt));
        end else Code.SelText := txt;
		end;
end;

function TfrmMain.Save(FileName: string): integer;
var
	ext: string;
  PostData: TPostData;
  DataText: string;
begin
	ext := LowerCase(ExtractFileExt(FileName));
  if (ext <> '.nnm') and (ext <> '.npf') and (ext <> '.npd') then
  	begin
  		FileName := FileName + Options.DefaultExt;
      ext := Options.DefaultExt;
    end else Options.DefaultExt := ext;
  filennm := FileName;
  if ext = '.nnm' then
		begin
      if Editor_Mode then
        begin
          Code.Clear;
          DeleteAttributes(Editor);
          DataText := WYSIWYGtoHTML(Editor);
          SetStylesBrowser(Editor);
        end else
      	begin
        	Code.WordWrap := False;
          DataText := Code.Lines.Text;
          Code.WordWrap := True;
        end;
      PostData.Title := EdTema.Text;
      PostData.Text := DataText;
      PostData.Category := cbCategory.Text;
      PostData.InLink := InLink.Text;
      PostData.IsCat := CheckBox2.Checked;
      PostData.Doc.Name := '';
      PostData.Doc.Adress := '';
			SavePostDataToFile(FileName, PostData);
  	end;
  if ext = '.npd' then SavePostToDirectory(FileName);
  frmMain.Caption := title + ' - [' + ExtractFileName(filennm) + ']';
  Result := ok_file;
end;

function CopyFile(ASource, ADest: string): Boolean;
var
	lSourceStream, lDestStream: TFileStream;
begin
	Result := False;
	if not FileExists(ASource) then Exit;
  if FileExists(ADest) then
  	begin
    	Result := True;
    	Exit;
    end;
  lSourceStream := TFileStream.Create(ASource, fmOpenRead );
 	try
  	lDestStream := TFileStream.Create(ADest, fmOpenWrite or fmCreate);
    try
      lDestStream.CopyFrom(lSourceStream, lSourceStream.Size ) ;
      FileSetDate(lDestStream.Handle, FileGetDate(lSourceStream.Handle));
    	Result := True;
    finally
      lDestStream.Free;
    end;
 	finally
  	lSourceStream.Free;
 	end;
end;

function GetNewName(AName, APath: string): string;
var
	ext: string;
  lMD5, oMD5: TMD5Digest;
  SR: TSearchRec;
begin
	ext := ExtractFileExt(AName);
  lMD5 := MD5File(AName);
  if FindFirst(APath + '*' + ext, faAnyFile, SR) = 0 then
    begin
      try
        repeat
          oMD5 := MD5File(SR.Name);
          if MD5DigestCompare(lMD5, oMD5) then
            begin
              Result := SR.Name;
              Break;
            end;
        until FindNext(SR) <> 0
      finally
        FindClose(SR);
      end;
    end;
  Result := APath + MD5DigestToStr(lMD5) + ext;
end;

function GetMDFile(AName: string): string;
begin
  Result := MD5DigestToStr(MD5File(AName)) + ExtractFileExt(AName);;
end;

procedure TfrmMain.SavePostToDirectory(AFileName: string);
var
	DataText: string;
  sl, newsl: TStringList;
  Index: Integer;
  str, newstr, path: string;
  NotCopy: Boolean;
  Data: TPostData;
begin
  sl := nil;
  newsl := nil;
  try
    if Editor_Mode then
      begin
        DeleteAttributes(Editor);
        DataText := WYSIWYGtoHTML(Editor);
        SetStylesBrowser(Editor);
      end else
      	begin
        	Code.WordWrap := False;
          DataText := Code.Lines.Text;
          Code.WordWrap := True;
        end;
    path := ExtractFilePath(AFileName);
    sl := GetAllImages(DataText);
    NotCopy := False;
    if Assigned(sl) and (sl.Count > 0) then
    	for Index := 0 to sl.Count - 1 do
      	begin
        	str := Copy(sl[Index], Length(C_IMG) + 1, Length(sl[Index]) - Length(C_IMG) - 1);
          str := StringReplace(str, '"', '', [rfReplaceAll, rfIgnoreCase]);
          str := StringReplace(str, '''', '', [rfReplaceAll, rfIgnoreCase]);
          //str := StringReplace(str, ' ', '_', [rfReplaceAll, rfIgnoreCase]);
          newstr := GetNewName(str, path);
          if newstr <> '' then
          	begin
            	if not Assigned(newsl) then
              	newsl := TStringList.Create;
          		if CopyFile(str, newstr)
              	then newsl.Add(newstr) else
                	begin
                  	NotCopy := True;
                    newsl.Add(str);
                  end;
            end;
        end;
    if NotCopy then
    	MessageBox(Application.Handle, 'Не все изображения были скопированны.' + #13#10 +
      					 'Ссылки на них не изменятся', 'Внимание',
                 MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONWARNING + MB_OK);
    if Assigned(sl) and (sl.Count > 0) then
    	for Index := 0 to sl.Count - 1 do
      	DataText := StringReplace(DataText, sl[Index], C_IMG + '"' + newsl[Index] + '"]', [rfReplaceAll, rfIgnoreCase]);
    Data.Title := edTema.Text;
    Data.Text := DataText;
    Data.Category := cbCategory.Text;
    Data.InLink := InLink.Text;
    Data.IsCat := CheckBox2.Checked;
    Data.Doc.Name := '';
    Data.Doc.Adress := '';
    SavePostDataToFile(AFileName, Data);
  finally
  	newsl.Free;
  	sl.Free;
  end;
end;

procedure TfrmMain.SavePostDataToFile(AFileName: string;
  APostData: TPostData);
var
	MemoryStream: TMemoryStream;
	FileStream: TFileStream;
  size: Integer;
begin
	if AFileName = '' then Exit;
  MemoryStream := TMemoryStream.Create;
  FileStream := TFileStream.Create(AFileName, fmCreate);
  try
  	size := Length(npd_version);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(npd_version[1], size);
    size := Length(APostData.Title);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.Title[1], size);
    size := Length(APostData.Text);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.Text[1], size);
    size := Length(APostData.Category);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.Category[1], size);
    size := Length(APostData.InLink);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.InLink[1], size);
    size := SizeOf(APostData.IsCat);
    MemoryStream.Write(size, SizeOf(size));
    MemoryStream.Write(APostData.IsCat, size);
    size := Length(APostData.Doc.Name);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.Doc.Name[1], size);
    size := Length(APostData.Doc.Adress);
    MemoryStream.Write(size, SizeOf(size));
    if size > 0 then
    	MemoryStream.Write(APostData.Doc.Adress[1], size);
    WriteStreamToStream(FileStream, MemoryStream);
    FOldData := APostData.Text;
  finally
  	MemoryStream.Free;
  	FileStream.Free;
  end;
end;

procedure TfrmMain.LoadDataFile(AFileName: string);
var
	ext: string;
begin
	ext := ExtractFileExt(AFileName);
  if ext = '.npd' then LoadPostFromDirectory(AFileName) else
  	LoadPost(AFileName);
end;

function TfrmMain.LoadPostData(AFileName: string): TPostData;
var
	MemoryStream: TMemoryStream;
  FileStream: TFileStream;
  str: string;
  size: Integer;
  f: Boolean;
begin
	if not FileExists(AFileName) then
  	begin
      MessageBox(Application.Handle, 'Файл не найден', 'Ошибка', MB_APPLMODAL	+
      	MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONWARNING + MB_OK);
    	Exit;
    end;
	MemoryStream := TMemoryStream.Create;
  FileStream := TFileStream.Create(AFileName, fmOpenRead);
  try
  	ReadStreamFromStream(FileStream, MemoryStream);
  	MemoryStream.Read(size, SizeOf(size));
    if size > 0 then
    	begin
      	SetLength(str, size);
        MemoryStream.Read(str[1], size);
      end;
    if str = npd_version then
    	begin
      	MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.Title := str;
          end else Result.Title := '';
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.Text := str;
          end else Result.Text := '';
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.Category := str;
          end else Result.Category := '';
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.InLink := str;
          end else Result.InLink := '';
        MemoryStream.Read(size, SizeOf(size));
        MemoryStream.Read(f, size);
        Result.IsCat := f;
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.Doc.Name := str;
          end else Result.Doc.Name := '';
        MemoryStream.Read(size, SizeOf(size));
        if size > 0 then
        	begin
          	SetLength(str, size);
            MemoryStream.Read(str[1], size);
            Result.Doc.Adress:= str;
          end else Result.Doc.Adress := '';
      end;
  finally
  	InsImg(Result.Text);
  	FileStream.Free;
    MemoryStream.Free;
  end;
end;

procedure TfrmMain.LoadPost(AFileName: string);
var
	PostData: TPostData;
  Index: Integer;
  V: OleVariant;
begin
	PostData := LoadPostData(AFileName);
  edTema.Text := PostData.Title;
  InLink.Text := PostData.InLink;
  CheckBox2.Checked := PostData.IsCat;
  if PostData.Doc.Name <> '' then
  	begin
    	Index := 0;
      while Index < Length(Options.Docs) do
      	if Options.Docs[Index].Name = PostData.Doc.Name
        	then Break
          else Inc(Index);
      if Index < Length(Options.Docs)
      	then cbDocs.ItemIndex := Index + 1
        else cbDocs.ItemIndex := 0;
    end;
  if PostData.Category <> '' then
  	begin
    	Index := cbCategory.Items.IndexOf(PostData.Category);
      if Index < 0 then
      	begin
        	Index := 0;
          CheckBox2.Checked := False;
        end;
      cbCategory.ItemIndex := Index;
    end;
  InsImg(PostData.Text);
  if Editor_Mode then
  	begin
      V := VarArrayCreate([0, 0], varVariant);
      V[0] := BodyStyleDiv + HTMLtoWYSIWYG(PostData.Text) + '</div></body>';
      Editor.Write(PSafeArray(TVarData(v).VArray));
      Editor.Close;
      SetAttributes(Editor);
      WebBrowser.SetFocusToDoc;
    end else
    	begin
      	Code.Clear;
        Code.WordWrap := False;
        Code.Lines.Text := PostData.Text;
        Code.WordWrap := True;
        Code.SetFocus;
      end;
end;

procedure TfrmMain.LoadPostFromDirectory(AFileName: string);
var
	PostData: TPostData;
  Index: Integer;
  V: OleVariant;
begin
	PostData := LoadPostData(AFileName);
  edTema.Text := PostData.Title;
  InLink.Text := PostData.InLink;
  CheckBox2.Checked := PostData.IsCat;
  if PostData.Doc.Name <> '' then
  	begin
    	Index := 0;
      while Index < Length(Options.Docs) do
      	if Options.Docs[Index].Name = PostData.Doc.Name
        	then Break
          else Inc(Index);
      if Index < Length(Options.Docs)
      	then cbDocs.ItemIndex := Index + 1
        else cbDocs.ItemIndex := 0;
    end;
  if PostData.Category <> '' then
  	begin
    	Index := cbCategory.Items.IndexOf(PostData.Category);
      if Index < 0 then
      	begin
        	Index := 0;
          CheckBox2.Checked := False;
        end;
      cbCategory.ItemIndex := Index;
    end;
  InsImg(PostData.Text);
  if Editor_Mode then
  	begin
      V := VarArrayCreate([0, 0], varVariant);
      V[0] := BodyStyleDiv + HTMLtoWYSIWYG(PostData.Text) + '</div></body>';
      Editor.Write(PSafeArray(TVarData(v).VArray));
      Editor.Close;
      SetAttributes(Editor);
      WebBrowser.SetFocusToDoc;
    end else
    	begin
      	Code.Clear;
        Code.WordWrap := False;
        Code.Lines.Text := PostData.Text;
        Code.WordWrap := True;
        Code.SetFocus;
      end;
  filennm := AFileName;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
	DataText: string;
begin
	CanClose := True;
	if Editor_Mode then
      begin
        DeleteAttributes(Editor);
        DataText := WYSIWYGtoHTML(Editor);
        SetStylesBrowser(Editor);
      end else
      	begin
        	Code.WordWrap := False;
          DataText := Code.Lines.Text;
          Code.WordWrap := True;
        end;
  if CompareStr(DataText, FOldData) <> 0 then
  case MessageBox(Application.Handle, 'Сохранить изменения в новости?', 'Внимание',
    	MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONQUESTION	 + MB_YESNOCANCEL) of
  	IDYES: begin
             if Length(FileNNM) = 0
               then aFileSaveAsExecute(Sender)
               else Save(FileNNM);
             CanClose := True;
        	 end;
    IDNO: CanClose := True;
    IDCANCEL: CanClose := False;
  end;
end;

procedure TfrmMain.DeleteTemps;

  procedure DeleteDir(Dir: string);
  var
    Found: integer;
    SearchRec: TSearchRec;
  begin
    ChDir(Dir);
    Found := FindFirst('*.*', faAnyFile, SearchRec);
    while Found = 0 do
    begin
      if (SearchRec.name <> '.') and (SearchRec.name <> '..') then
        if (SearchRec.Attr and faDirectory) <> 0
          then DeleteDir(SearchRec.name)
          else DeleteFile(SearchRec.name);
          Found := FindNext(SearchRec);
        end;
    FindClose(SearchRec);
    ChDir('..');
    RmDir(Dir);
  end;

var
	dir: string;
begin
	dir := ExtractFilePath(Application.ExeName) + TempPath;
  if DirectoryExists(dir) then
  	DeleteDir(dir);
end;

end.
