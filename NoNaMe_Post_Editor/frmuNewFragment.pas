unit frmuNewFragment;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, ToolWin, ImgList, ActnList;

type
  TfrmNewFragment = class(TForm)
    Panel1: TPanel;
    btnOk: TButton;
    btnCancel: TButton;
    ledtCaption: TLabeledEdit;
    Panel2: TPanel;
    Label1: TLabel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    FragMemo: TMemo;
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
    procedure aBoldUpdate(Sender: TObject);
    procedure aItalicUpdate(Sender: TObject);
    procedure aUnderlineExecute(Sender: TObject);
    procedure aStrikeUpdate(Sender: TObject);
    procedure aLinkUpdate(Sender: TObject);
    procedure aDocExecute(Sender: TObject);
    procedure aCodeUpdate(Sender: TObject);
    procedure aBoldExecute(Sender: TObject);
    procedure aItalicExecute(Sender: TObject);
    procedure aUnderlineUpdate(Sender: TObject);
    procedure aStrikeExecute(Sender: TObject);
    procedure aMoreExecute(Sender: TObject);
    procedure aImageExecute(Sender: TObject);
    procedure aLinkExecute(Sender: TObject);
    procedure aDocUpdate(Sender: TObject);
    procedure aCodeExecute(Sender: TObject);
    procedure UpdateEdits(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    OldCaption, OldText: string;
    procedure Updates;
    function GetEnable(AOpenTag, ACloseTag: string): Boolean;
    procedure SetTag(AOpenTag, ACloseTag: string);
  public
    { Public declarations }
  end;

  function NewFragment(var ACaption, AText: string): Boolean;

var
  frmNewFragment: TfrmNewFragment;

implementation

uses
	frmuNewImage,
  frmuModal,
  uStr;

{$R *.dfm}

function NewFragment(var ACaption, AText: string): Boolean;
begin
	Result := False;
  frmNewFragment := TfrmNewFragment.Create(Application);
  try
  	frmNewFragment.OldCaption := ACaption;
  	frmNewFragment.ledtCaption.Text := ACaption;
    frmNewFragment.FragMemo.WordWrap := False;
    frmNewFragment.FragMemo.Text := AText;
    frmNewFragment.FragMemo.WordWrap := True;
    frmNewFragment.OldText := frmNewFragment.FragMemo.Text;
    if frmNewFragment.ShowModal = mrOk then
    	begin
        ACaption := frmNewFragment.ledtCaption.Text;
        frmNewFragment.FragMemo.WordWrap := False;
        AText := frmNewFragment.FragMemo.Text;
      	Result := True;
      end;
  finally
  	frmNewFragment.Free;
    frmNewFragment := nil;
  end;
end;

{ TfrmNewFragment }

function TfrmNewFragment.GetEnable(AOpenTag, ACloseTag: string): Boolean;
var
	Found: Boolean;
  Str: String;
  Index: Integer;
begin
	Str := FragMemo.Lines.Text;
  if Length(Str) <= 0 then
  	begin
    	Result := True;
      Exit;
    end;
	Found := False;
  Index := 1;
  AOpenTag := LowerCase(AOpenTag);
  ACloseTag := LowerCase(ACloseTag);
  while Index <= FragMemo.SelStart do
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

procedure TfrmNewFragment.SetTag(AOpenTag, ACloseTag: string);
var
	SelStart, SelLength: Integer;
begin
	SelStart := FragMemo.SelStart;
  SelLength := FragMemo.SelLength;
	FragMemo.SelText := AOpenTag + FragMemo.SelText + ACloseTag;
  FragMemo.SelStart := SelStart + Length(AOpenTag);
  FragMemo.SelLength := SelLength;
end;

procedure TfrmNewFragment.Updates;
begin
	btnOk.Enabled := ((ledtCaption.Text <> '') and (FragMemo.Text <> '')) and
  			((ledtCaption.Text <> OldCaption) or (FragMemo.Text <> OldText));
end;

procedure TfrmNewFragment.aBoldUpdate(Sender: TObject);
begin
	aBold.Enabled := GetEnable('[b]', '[/b]');
end;

procedure TfrmNewFragment.aItalicUpdate(Sender: TObject);
begin
	aItalic.Enabled := GetEnable('[i]', '[/i]');
end;

procedure TfrmNewFragment.aUnderlineExecute(Sender: TObject);
begin
	SetTag('[u]', '[/u]');
end;

procedure TfrmNewFragment.aStrikeUpdate(Sender: TObject);
begin
	aStrike.Enabled := GetEnable('[s]', '[/s]');
end;

procedure TfrmNewFragment.aLinkUpdate(Sender: TObject);
begin
	aLink.Enabled := GetEnable('[url=', '[/url]');
end;

procedure TfrmNewFragment.aDocExecute(Sender: TObject);
begin
	SetTag('[doc]', '[/doc]');
end;

procedure TfrmNewFragment.aCodeUpdate(Sender: TObject);
begin
	aCode.Enabled := GetEnable('[code]', '[/code]');
end;

procedure TfrmNewFragment.aBoldExecute(Sender: TObject);
begin
	SetTag('[b]', '[/b]');
end;

procedure TfrmNewFragment.aItalicExecute(Sender: TObject);
begin
	SetTag('[i]', '[/i]');
end;

procedure TfrmNewFragment.aUnderlineUpdate(Sender: TObject);
begin
	aUnderline.Enabled := GetEnable('[u]', '[/u]');
end;

procedure TfrmNewFragment.aStrikeExecute(Sender: TObject);
begin
	SetTag('[s]', '[/s]');
end;

procedure TfrmNewFragment.aMoreExecute(Sender: TObject);
begin
	FragMemo.SelText := '[cut]';
end;

procedure TfrmNewFragment.aImageExecute(Sender: TObject);
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
            InsImg(str);
            FragMemo.SelText := Str;
          end;
      end;
  finally
  	if Assigned(ImageListName) then ImageListName.Free;
  	if Assigned(frmNewImage) then frmNewImage.Free;
    frmNewImage := nil;
  end;
end;

procedure TfrmNewFragment.aLinkExecute(Sender: TObject);
begin
	frmNewLink := TfrmNewLink.Create(Application);
  try
  	frmNewLink.Edit1.Text := 'http://';
    frmNewLink.Edit2.Text := FragMemo.SelText;
    if frmNewLink.ShowModal = mrOk then
    	FragMemo.SelText :=  '[url=' + frmNewLink.Edit1.Text + ']' +
                                frmNewLink.Edit2.Text + '[/url]';
  finally
  	if Assigned(frmNewLink) then frmNewLink.Free;
    frmNewLink := nil;
  end;
end;

procedure TfrmNewFragment.aDocUpdate(Sender: TObject);
begin
	aDoc.Enabled := GetEnable('[doc]', '[/doc]');
end;

procedure TfrmNewFragment.aCodeExecute(Sender: TObject);
begin
	SetTag('[code]', '[/code]');
end;

procedure TfrmNewFragment.UpdateEdits(Sender: TObject);
begin
	Updates;
end;

procedure TfrmNewFragment.FormShow(Sender: TObject);
begin
	Updates;
end;

end.
