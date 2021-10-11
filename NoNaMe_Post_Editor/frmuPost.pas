unit frmuPost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, EmbeddedWB, MSHTML_TLB, ActiveX,
  ComCtrls, ToolWin, uConsts, uParser, ExtCtrls, uNet;

type
  TfrmPost = class(TForm)
    GroupBox: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Browser: TEmbeddedWB;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DocLabel: TLabel;
    RazdelLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    function ShowForm(Data: TPostData; Options: TNewsOptions): integer;
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FClose: Boolean;
    FData: TPostData;
    Options: TNewsOptions;
    procedure WMMouseActivate(var Msg: TMessage); message WM_MOUSEACTIVATE;
  public
    { Public declarations }
    procedure ShowProgress(AString: String);
  end;

  function MessageBoxIndirect(const MsgBoxParams: TMsgBoxParams): Integer; stdcall; external user32 name 'MessageBoxIndirectA';

var
  frmPost: TfrmPost;

implementation

{$R *.dfm}

{ TfrmPost }

function TfrmPost.ShowForm(Data: TPostData; Options: TNewsOptions): integer;
var
  Document: IHTMLDocument2;
  V: OleVariant;
  doc: string;
begin
  FData := Data;
  if Options.ActiveSign then FData.Text := FData.Text + #13#10#13#10 + Options.Signature;
  if LowerCase(Copy(FData.Text, 1, 13)) = '[body style="' then
  	FData.Text := Copy(FData.Text, Length(BodyStyle), Length(FData.Text) - Length(BodyStyle) + 1);
	doc := NNMStyle(FData.Text, ExtractFilePath(Application.ExeName), false);
  if Browser.Document = nil
    then Browser.Navigate('about:blank');
  while Browser.Document = nil do
    Application.ProcessMessages;
  Document := Browser.Document as IHtmlDocument2;
  V := VarArrayCreate([0,0],varVariant);
  V[0] := doc;
  Document.Write(PSafeArray(TVarData(v).VArray));
  Document.Close;
  Self.Options := Options;
  DocLabel.Caption := FData.Doc.Name;
  Button1.Enabled := (DocLabel.Caption <> 'Без дока') and (Data.Doc.Adress <> '');
  if FData.IsCat
    then RazdelLabel.Caption := FData.Category
    else RazdelLabel.Caption := 'Не отправлять в раздел';
  SetStylesBrowser(Document);
  Result := self.ShowModal;
end;

procedure TfrmPost.WMMouseActivate(var Msg: TMessage);
begin
  try
    inherited;
    if Msg.LParamHi = 516 then
      Msg.Result := MA_NOACTIVATEANDEAT;
  except
  end;
end;

procedure TfrmPost.Button1Click(Sender: TObject);
var
	NNMPost: TPostingNNM;
  MStr: string;
  FResultPost: TResultPost;
begin
	// Отправка новости на NoNaMe
  Button1.Enabled := False;
  Button2.Enabled := False;
  FClose := False;
  try
  NNMPost := TPostingNNM.Create(Options.Login, Options.Password, 10, Options.Proxy);
  	try
      try
        MStr := '';
        FResultPost := NNMPost.PostNews(FData, ShowProgress);
        case FResultPost of
          postOk: MStr := 'Новость отправлена.';
          postNotServer: MStr := 'Новость НЕ ОТПРАВЛЕНА!' + #13#10 + 'Сервер занят.';
          postNotLogin: MStr := 'Невозможно авторизоваться.';
          postNotImage: MStr := 'Ошибка отправки изображения.' + #13#10 + 'Изображение отсутствует.';
          postErrImage: MStr := 'Ошибка отправки изображения.';
          postNotDoc: MStr := 'Док не найден.';
          postNotPost: MStr := 'Новость НЕ ОТПРАВЛЕНА!' + #13#10 + 'Возможно, ошибка сервера.';
          postNotPrepare: MStr := 'Ошибка подготовки новости для отправки.';
          else MStr := 'Неопознанная ошибка.';
        end;
        if MStr <> ''
          then MessageBox(Handle, PChar(MStr), 'Внимание', MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONWARNING + MB_OK);
        if FResultPost = postOk then ModalResult := mrOk;
      except
      	MessageBox(Handle, 'Неопознанная ошибка.', 'Ошибка', MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TOPMOST + MB_ICONWARNING + MB_OK);
      end;
   	finally
   		if Assigned(NNMPost) then NNMPost.Free;
  	end;
	finally
  	Button1.Enabled := True;
    Button2.Enabled := True;
    FClose := True;
  end;
end;

procedure TfrmPost.ShowProgress(AString: String);
begin
	if AString <> '' then
  	begin
    	Label3.Show;
      Label4.Show;
      Label4.Caption := AString;
    end else
    	begin
      	Label3.Hide;
        Label4.Hide;
      end;
end;

procedure TfrmPost.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
	CanClose := FClose;
  if not FClose then
  	MessageBox(Application.Handle, 'Пожалуйста подождите.' + #13#13 +
    										'Идет отправка новости на сайт.', 'Внимание',
                        MB_OK	+ MB_ICONWARNING + MB_TOPMOST);
end;

procedure TfrmPost.FormCreate(Sender: TObject);
begin
	FClose := True;
end;

end.
