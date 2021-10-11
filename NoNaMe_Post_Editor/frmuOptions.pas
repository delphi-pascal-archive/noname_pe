unit frmuOptions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsts, ComCtrls, StdCtrls, ToolWin, ImgList, Mask, ExtCtrls,
  ActnList, Buttons, ShellApi, ShlObj;

type
  TfrmOptions = class(TForm)
    ApplyButton: TButton;
    CloseButton: TButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    ToolBar1: TToolBar;
    ImageList1: TImageList;
    GlobalOptions: TToolButton;
    ConnectOptions: TToolButton;
    SignOptions: TToolButton;
    Autorization: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edLogin: TEdit;
    edPassword: TMaskEdit;
    chSaveData: TCheckBox;
    chViewPass: TCheckBox;
    Proxy: TGroupBox;
    chProxyActive: TCheckBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edProxyServer: TEdit;
    edProxyPort: TEdit;
    edProxyLogin: TEdit;
    edProxyPass: TEdit;
    Timeout: TGroupBox;
    Label7: TLabel;
    edTimeout: TEdit;
    Panel1: TPanel;
    MainOptions: TGroupBox;
    chEnableSplash: TCheckBox;
    Signature: TGroupBox;
    chSignatureEnable: TCheckBox;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ToolBar2: TToolBar;
    SignMemo: TMemo;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ImageList2: TImageList;
    ActionList1: TActionList;
    aBold: TAction;
    aItalic: TAction;
    aUnderline: TAction;
    aStrike: TAction;
    aMore: TAction;
    aImage: TAction;
    aLink: TAction;
    aDoc: TAction;
    aCode: TAction;
    Label8: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure OptionsClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure ClickUpdates(Sender: TObject);
    procedure PressUpdates(Sender: TObject; var Key: Char);
    procedure ApplyButtonClick(Sender: TObject);
    procedure edTimeoutKeyPress(Sender: TObject; var Key: Char);
    procedure edProxyPortChange(Sender: TObject);
    procedure SignMemoChange(Sender: TObject);
    procedure aBoldUpdate(Sender: TObject);
    procedure aBoldExecute(Sender: TObject);
    procedure aItalicExecute(Sender: TObject);
    procedure aUnderlineExecute(Sender: TObject);
    procedure aStrikeExecute(Sender: TObject);
    procedure aItalicUpdate(Sender: TObject);
    procedure aUnderlineUpdate(Sender: TObject);
    procedure aStrikeUpdate(Sender: TObject);
    procedure aDocUpdate(Sender: TObject);
    procedure aCodeUpdate(Sender: TObject);
    procedure aDocExecute(Sender: TObject);
    procedure aCodeExecute(Sender: TObject);
    procedure aMoreExecute(Sender: TObject);
    procedure aLinkExecute(Sender: TObject);
    procedure aLinkUpdate(Sender: TObject);
    procedure aImageExecute(Sender: TObject);
    procedure aMoreUpdate(Sender: TObject);
    procedure aImageUpdate(Sender: TObject);
  private
    { Private declarations }
    procedure Updates;
    function GetEnable(AOpenTag, ACloseTag: string): Boolean;
    procedure SetTag(AOpenTag, ACloseTag: string);
  public
    { Public declarations }
    procedure Open(Index: Integer);
  end;

var
  frmOptions: TfrmOptions;

implementation

uses
	uMain,
	frmuModal,
  frmuNewImage,
  uStr;

{$R *.dfm}

procedure TfrmOptions.CloseButtonClick(Sender: TObject);
begin
  if ApplyButton.Enabled then
    if MessageBox(Self.Handle, 'Настройки программы были изменены.' + #13 +
      'Сохранить настройки?', 'Внимание', MB_YESNO + MB_ICONQUESTION
      + MB_APPLMODAL) = IDYES then ApplyButtonClick(Sender);
  Close;
end;

procedure TfrmOptions.Open(Index: Integer);
begin
  PageControl1.ActivePageIndex := Index;
  GlobalOptions.Down := False;
  ConnectOptions.Down := False;
  SignOptions.Down := False;
  case Index of
  	0: GlobalOptions.Down := True;
    1: ConnectOptions.Down := True;
    2: SignOptions.Down := True;
  end;
  ShowModal;
end;

procedure TfrmOptions.FormShow(Sender: TObject);
begin
//  ShowWindow(Application.Handle, sw_Hide);
	chEnableSplash.Checked := frmMain.Options.ActiveSplash;
	edLogin.Text := frmMain.Options.Login;
  edPassword.Text := frmMain.Options.Password;
  chSaveData.Checked := frmMain.Options.Member_Pass;
  chViewPass.Checked := frmMain.Options.Visual_Pass;
  chProxyActive.Checked := frmMain.Options.Proxy.ProxyActive;
  edProxyLogin.Text := frmMain.Options.Proxy.ProxyLogin;
  edProxyPass.Text := frmMain.Options.Proxy.ProxyPassword;
  edProxyPort.Text := IntToStr(frmMain.Options.Proxy.ProxyPort);
  edProxyServer.Text := frmMain.Options.Proxy.ProxyHost;
  edTimeout.Text := IntToStr(frmMain.Options.Timeout);
	chSignatureEnable.Checked := frmMain.Options.ActiveSign;
  SignMemo.Clear;
//  SignMemo.WordWrap := False;
  SignMemo.Lines.Text := frmMain.Options.Signature;
//  SignMemo.WordWrap := True;
  Updates;
end;

procedure TfrmOptions.OptionsClick(Sender: TObject);
begin
	if not (Sender is TToolButton) then Exit;
  PageControl1.ActivePageIndex := TToolButton(Sender).Tag;
end;

procedure TfrmOptions.TabSheet1Show(Sender: TObject);
begin
{	chEnableSplash.Checked := frmMain.Options.ActiveSplash;
  chEnableAutoLogs.Checked := frmMain.Options.AutoLogs;
  chEnableAutoSave.Checked := frmMain.Options.AutoSave;
  edHistoryPath.Text := ExtractFilePath(ParamStr(0)) + HistoryPath;
  edLogsPath.Text := ExtractFilePath(ParamStr(0)) + AppLogs; }
  Updates;
end;

procedure TfrmOptions.TabSheet3Show(Sender: TObject);
begin
{	chSignatureEnable.Checked := frmMain.Options.ActiveSign;
  SignMemo.Clear;
  SignMemo.WordWrap := False;
  SignMemo.Lines.Text := frmMain.Options.Signature;
  SignMemo.WordWrap := True;}
  Updates;
end;

procedure TfrmOptions.TabSheet2Show(Sender: TObject);
begin
{	edLogin.Text := frmMain.Options.Login;
  edPassword.Text := frmMain.Options.Password;
  chSaveData.Checked := frmMain.Options.Member_Pass;
  chViewPass.Checked := frmMain.Options.Visual_Pass;
  chProxyActive.Checked := frmMain.Options.Proxy.ProxyActive;
  edProxyLogin.Text := frmMain.Options.Proxy.ProxyLogin;
  edProxyPass.Text := frmMain.Options.Proxy.ProxyPassword;
  edProxyPort.Text := IntToStr(frmMain.Options.Proxy.ProxyPort);
  edProxyServer.Text := frmMain.Options.Proxy.ProxyHost;
  edTimeout.Text := IntToStr(frmMain.Options.Timeout); }
  Updates;
end;

procedure TfrmOptions.Updates;
var
	f: boolean;
  tm, pp: integer;
begin
	if chViewPass.Checked
  	then edPassword.PasswordChar := #0
    else edPassword.PasswordChar := PassChar;
  f := chProxyActive.Checked;
  Label3.Enabled := f;
  Label4.Enabled := f;
  Label5.Enabled := f;
  Label6.Enabled := f;
  edProxyServer.Enabled := f;
  edProxyPort.Enabled := f;
  edProxyLogin.Enabled := f;
  edProxyPass.Enabled := f;
  if edTimeout.Text = ''
  	then tm := 1
    else tm := StrToInt(edTimeout.Text);
  if tm < 1 then tm := 1;
  if tm > 3600 then tm := 3600;
  if edProxyPort.Text = ''
  	then pp := 0
    else pp := StrToInt(edProxyPort.Text);
  if pp < 0 then pp := 0;
  if pp > 65535 then pp := 65535;
  ApplyButton.Enabled := (chEnableSplash.Checked <> frmMain.Options.ActiveSplash) or
                         (edLogin.Text <> frmMain.Options.Login) or
                         (edPassword.Text <> frmMain.Options.Password) or
                         (chSaveData.Checked <> frmMain.Options.Member_Pass) or
                         (chViewPass.Checked <> frmMain.Options.Visual_Pass) or
                         (tm <> frmMain.Options.Timeout) or
                         (chProxyActive.Checked <> frmMain.Options.Proxy.ProxyActive) or
                         (chSignatureEnable.Checked <> frmMain.Options.ActiveSign) or
                         (SignMemo.Lines.Text <> frmMain.Options.Signature);
  if chProxyActive.Checked then
  	ApplyButton.Enabled := ApplyButton.Enabled or
                         (edProxyServer.Text <> frmMain.Options.Proxy.ProxyHost) or
                         (pp <> frmMain.Options.Proxy.ProxyPort) or
                         (edProxyLogin.Text <> frmMain.Options.Proxy.ProxyLogin) or
                         (edProxyPass.Text <> frmMain.Options.Proxy.ProxyPassword);
  if chSignatureEnable.Checked then
  	begin
    	SignMemo.Enabled := True;
      SignMemo.Color := clWindow;
    end else
    	begin
      	SignMemo.Enabled := False;
        SignMemo.Color := clBtnFace;
      end;
end;

procedure TfrmOptions.ClickUpdates(Sender: TObject);
begin
	Updates;
end;

procedure TfrmOptions.PressUpdates(Sender: TObject; var Key: Char);
begin
	Updates;
end;

procedure TfrmOptions.ApplyButtonClick(Sender: TObject);
begin
	SignMemo.WordWrap := False;
	if chSignatureEnable.Checked and (Length(SignMemo.Lines.Text) > 300)then
  	if MessageBox(Self.Handle, 'Превышено ограничение на длину подписи.' + #13#10 +
    		'Текст, превышающий 300 символов будет удален.' + #13#10 +
        'Продолжить?', 'Внимание', MB_YESNO + MB_ICONWARNING + MB_APPLMODAL +
        MB_SYSTEMMODAL + MB_TASKMODAL	+ MB_TOPMOST) = IDNO then Exit;
	frmMain.Options.ActiveSplash := chEnableSplash.Checked;
  frmMain.Options.Login := edLogin.Text;
  frmMain.Options.Password := edPassword.Text;
  frmMain.Options.Member_Pass := chSaveData.Checked;
  frmMain.Options.Visual_Pass := chViewPass.Checked;
  frmMain.Options.Proxy.ProxyActive := chProxyActive.Checked;
  frmMain.Options.Proxy.ProxyLogin := edProxyLogin.Text;
  frmMain.Options.Proxy.ProxyPassword := edProxyPass.Text;
  frmMain.Options.Proxy.ProxyHost := edProxyServer.Text;
  if edProxyPort.Text = '' then edProxyPort.Text := '80';
  frmMain.Options.Proxy.ProxyPort := StrToInt(edProxyPort.Text);
  if edTimeout.Text = '' then edTimeout.Text := '10';
  frmMain.Options.Timeout := StrToInt(edTimeout.Text);
  frmMain.Options.ActiveSign := chSignatureEnable.Checked;
  if frmMain.Options.Login <> 'aktuba'
		then frmMain.Options.Signature := Copy(SignMemo.Lines.Text, 1, 300)
  	else frmMain.Options.Signature := SignMemo.Lines.Text;
  ApplyButton.Enabled := False;
  SignMemo.WordWrap := True;
end;

procedure TfrmOptions.edTimeoutKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
    '0'..'9': ;
    #8, #37, #39, #46: ;
    else key := #0;
  end;
end;

procedure TfrmOptions.edProxyPortChange(Sender: TObject);
begin
	Updates;
end;

procedure TfrmOptions.SignMemoChange(Sender: TObject);
begin
	if Length(SignMemo.Lines.Text) > 300
  	then Label8.Caption := 'Внимание: превышено ограничение в 300 символов.'
    else Label8.Caption := '';
	Updates;
end;

procedure TfrmOptions.aBoldUpdate(Sender: TObject);
begin
	aBold.Enabled := GetEnable('[b]', '[/b]');
end;

function TfrmOptions.GetEnable(AOpenTag, ACloseTag: string): Boolean;
var
	Found: Boolean;
  Str: String;
  Index: Integer;
begin
	if not chSignatureEnable.Checked then
  	begin
    	Result := False;
      Exit;
    end;
	Str := SignMemo.Lines.Text;
  if Length(Str) <= 0 then
  	begin
    	Result := True;
      Exit;
    end;
	Found := False;
  Index := 1;
  AOpenTag := LowerCase(AOpenTag);
  ACloseTag := LowerCase(ACloseTag);
  while Index <= SignMemo.SelStart do
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

procedure TfrmOptions.aBoldExecute(Sender: TObject);
begin
	SetTag('[b]', '[/b]');
end;

procedure TfrmOptions.aItalicExecute(Sender: TObject);
begin
	SetTag('[i]', '[/i]');
end;

procedure TfrmOptions.aUnderlineExecute(Sender: TObject);
begin
	SetTag('[u]', '[/u]');
end;

procedure TfrmOptions.aStrikeExecute(Sender: TObject);
begin
	SetTag('[s]', '[/s]');
end;

procedure TfrmOptions.aItalicUpdate(Sender: TObject);
begin
	aItalic.Enabled := GetEnable('[i]', '[/i]');
end;

procedure TfrmOptions.aUnderlineUpdate(Sender: TObject);
begin
	aUnderline.Enabled := GetEnable('[u]', '[/u]');
end;

procedure TfrmOptions.aStrikeUpdate(Sender: TObject);
begin
	aStrike.Enabled := GetEnable('[s]', '[/s]');
end;

procedure TfrmOptions.aDocUpdate(Sender: TObject);
begin
	aDoc.Enabled := GetEnable('[doc]', '[/doc]');
end;

procedure TfrmOptions.aCodeUpdate(Sender: TObject);
begin
	aCode.Enabled := GetEnable('[code]', '[/code]');
end;

procedure TfrmOptions.aDocExecute(Sender: TObject);
begin
	SetTag('[doc]', '[/doc]');
end;

procedure TfrmOptions.SetTag(AOpenTag, ACloseTag: string);
var
	SelStart, SelLength: Integer;
begin
	SelStart := SignMemo.SelStart;
  SelLength := SignMemo.SelLength;
	SignMemo.SelText := AOpenTag + SignMemo.SelText + ACloseTag;
  SignMemo.SelStart := SelStart + Length(AOpenTag);
  SignMemo.SelLength := SelLength;
end;

procedure TfrmOptions.aCodeExecute(Sender: TObject);
begin
	SetTag('[code]', '[/code]');
end;

procedure TfrmOptions.aMoreExecute(Sender: TObject);
begin
	SignMemo.SelText := '[cut]';
end;

procedure TfrmOptions.aLinkExecute(Sender: TObject);
begin
	frmNewLink := TfrmNewLink.Create(Application);
  try
  	frmNewLink.Edit1.Text := 'http://';
    frmNewLink.Edit2.Text := SignMemo.SelText;
    if frmNewLink.ShowModal = mrOk then
    	SignMemo.SelText :=  '[url=' + frmNewLink.Edit1.Text + ']' +
                                frmNewLink.Edit2.Text + '[/url]';
  finally
  	if Assigned(frmNewLink) then frmNewLink.Free;
    frmNewLink := nil;
  end;
end;

procedure TfrmOptions.aLinkUpdate(Sender: TObject);
begin
	aLink.Enabled := GetEnable('[url=', '[/url]');
end;

procedure TfrmOptions.aImageExecute(Sender: TObject);
var
	Comment: String;
  ImageListName: TStringList;
  Index: Integer;
  Str: String;
begin
	if Assigned(frmNewImage) then frmNewImage.Free;
  frmNewImage:=TfrmNewImage.Create(Application);
  ImageListName:=TStringList.Create;
  try
  	if frmNewImage.ShowModal=mrOk then
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
              	Comment := frmNewImage.ImageComment.Values[ImageListName[Index]];;
            		Str := Str + '[img="' + ImageListName[Index] + '"]' + #13#10;
                if Comment <> ''
                	then Str := Str + Comment + #13#10;
              end;
            InsImg(Str);
            SignMemo.SelText := Str;
          end;
      end;
  finally
  	if Assigned(ImageListName) then ImageListName.Free;
  	if Assigned(frmNewImage) then frmNewImage.Free;
    frmNewImage := nil;
  end;
end;

procedure TfrmOptions.aMoreUpdate(Sender: TObject);
begin
	aMore.Enabled := chSignatureEnable.Checked;
end;

procedure TfrmOptions.aImageUpdate(Sender: TObject);
begin
	aImage.Enabled := chSignatureEnable.Checked;
end;

end.
