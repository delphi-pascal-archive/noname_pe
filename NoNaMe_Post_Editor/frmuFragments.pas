unit frmuFragments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, EmbeddedWB, ExtCtrls, StdCtrls, ComCtrls,
  ToolWin, ActnList, ImgList, MSHTML_TLB, ActiveX;

type
  TfrmFragments = class(TForm)
    ToolBar1: TToolBar;
    btnNew: TToolButton;
    ListBox1: TListBox;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Browser: TEmbeddedWB;
    ToolButton2: TToolButton;
    btnEdit: TToolButton;
    btnDel: TToolButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    aNew: TAction;
    aEdit: TAction;
    aDel: TAction;
    procedure FormShow(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1KeyPress(Sender: TObject; var Key: Char);
    procedure aNewExecute(Sender: TObject);
    procedure aEditExecute(Sender: TObject);
    procedure aEditUpdate(Sender: TObject);
    procedure aDelUpdate(Sender: TObject);
    procedure aDelExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Updates(AIndex: Integer);
    procedure UpdatePreview;
  public
    { Public declarations }
  end;

var
  frmFragments: TfrmFragments;

implementation

uses
	uMain,
  uParser,
  uConsts,
  uStr,
  frmuNewFragment;

{$R *.dfm}

procedure TfrmFragments.FormShow(Sender: TObject);
begin
	Updates(0);
  ListBox1.ItemIndex := 0;
end;

procedure TfrmFragments.UpdatePreview;
var
	V: OleVariant;
  txt: string;
  s: string;
  Editor: IHTMLDocument2;
begin
	if (ListBox1.ItemIndex < 0) or (ListBox1.Count <= 0)
  	then txt := ''
    else txt := frmMain.Fragments[ListBox1.ItemIndex].Text;
  InsImg(txt);
  if Browser.Document = nil then
  	Browser.Navigate('about:blank');
  while Browser.Document = nil do
  	Application.ProcessMessages;
  Editor := Browser.Document as IHTMLDocument2;
  V := VarArrayCreate([0,0], varVariant);
  s := BodyStyleDiv + HTMLtoWYSIWYG(txt) + '</div></body>';
  V[0] := BodyStyleDiv + s + '</div></body>';
  Editor.Write(PSafeArray(TVarData(v).VArray));
  Editor.Close;
  SetAttributes(Editor);
end;

procedure TfrmFragments.Updates(AIndex: Integer);
var
	OldIndex: Integer;
  Index: Integer;
begin
	OldIndex := ListBox1.ItemIndex;
  ListBox1.Clear;
  if Length(frmMain.Fragments) <= 0 then Exit;
  for Index := 0 to Length(frmMain.Fragments) - 1 do
  	ListBox1.Items.Add(frmMain.Fragments[Index].Captions);
  if AIndex >= 0
  	then ListBox1.ItemIndex := AIndex
  	else ListBox1.ItemIndex := OldIndex;
  UpdatePreview;
end;

procedure TfrmFragments.ListBox1Click(Sender: TObject);
begin
	Updates(-1);
end;

procedure TfrmFragments.ListBox1KeyPress(Sender: TObject; var Key: Char);
begin
	Updates(-1);
end;

procedure TfrmFragments.aNewExecute(Sender: TObject);
var
	lCaption, lText: string;
  len: Integer;
begin
	lCaption := '';
  lText := '';
	if NewFragment(lCaption, lText) then
  	begin
    	len := Length(frmMain.Fragments);
    	SetLength(frmMain.Fragments, len + 1);
      frmMain.Fragments[len].Captions := lCaption;
      frmMain.Fragments[len].Text := lText;
      Updates(len);
    end;
end;

procedure TfrmFragments.aEditExecute(Sender: TObject);
var
	lCaption, lText: string;
begin
	if ListBox1.Count <= 0 then Exit;
	lCaption := frmMain.Fragments[ListBox1.ItemIndex].Captions;
  lText := frmMain.Fragments[ListBox1.ItemIndex].Text;
	if NewFragment(lCaption, lText) then
  	begin
      frmMain.Fragments[ListBox1.ItemIndex].Captions := lCaption;
      frmMain.Fragments[ListBox1.ItemIndex].Text := lText;
      Updates(-1);
    end;
end;

procedure TfrmFragments.aEditUpdate(Sender: TObject);
begin
	aEdit.Enabled := (ListBox1.Count > 0) and (ListBox1.ItemIndex >= 0);
end;

procedure TfrmFragments.aDelUpdate(Sender: TObject);
begin
	aDel.Enabled := (ListBox1.Count > 0) and (ListBox1.ItemIndex >= 0);
end;

procedure TfrmFragments.aDelExecute(Sender: TObject);
var
	Index: Integer;
  str: string;
  len: Integer;
begin
	str := 'Вы действительно хотите удалить фрагмент: ' + frmMain.Fragments[ListBox1.ItemIndex].Captions + '?';
	if MessageBox(Application.Handle, PChar(str), 'Внимание',
      MB_YESNO + MB_ICONQUESTION + MB_APPLMODAL	+ MB_SYSTEMMODAL + MB_TASKMODAL + MB_TOPMOST) = IDYES then
  	begin
    	len := Length(frmMain.Fragments);
			if ListBox1.ItemIndex < Length(frmMain.Fragments) - 1 then
      	for Index := ListBox1.ItemIndex to Length(frmMain.Fragments) - 2 do
        	frmMain.Fragments[Index] := frmMain.Fragments[Index + 1];
      SetLength(frmMain.Fragments, len - 1);
    end;
  Updates(-1);
end;

end.
