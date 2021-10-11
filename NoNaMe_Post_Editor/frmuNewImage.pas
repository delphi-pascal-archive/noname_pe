unit frmuNewImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Jpeg, ExtDlgs, uStr, ComCtrls, uConsts,
  frmuOptionsNewImages, Buttons, GraphicEx;

type
  TfrmNewImage = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    btnOk: TButton;
    btnCancel: TButton;
    TabControl: TTabControl;
    Panel2: TPanel;
    Image: TImage;
    Panel3: TPanel;
    Edit2: TEdit;
    Button2: TButton;
    DelBtn: TSpeedButton;
    OpenDialog: TOpenPictureDialog;
    procedure Edit1Change(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TabControlChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DelBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImageComment: TStringList;
  end;

var
  frmNewImage: TfrmNewImage;

implementation

uses uMain;

{$R *.dfm}

procedure TfrmNewImage.Edit1Change(Sender: TObject);
var
  sl: TStringList;
  i: integer;
begin
  if Length(Edit1.Text) <> 0 then
    begin
      btnOk.Enabled := true;
      sl := TStringList.Create;
      CutString(Edit1.Text, ';', sl);
      for i := 0 to sl.Count - 1 do
        sl[i] := ExtractFileName(sl[i]);
      TabControl.Tabs.Text := sl.Text;
      TabControl.TabIndex := 0;
      sl.Free;
    end else
      begin
        OpenDialog.Files.Clear;
        TabControl.Tabs.Clear;
        TabControl.TabIndex := -1;
        btnOk.Enabled := false;
      end;
  Panel3.Visible := Edit1.Text <> '';
  TabControlChange(Sender);
end;

procedure TfrmNewImage.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmNewImage.btnOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmNewImage.Button1Click(Sender: TObject);
var
  i: integer;
  s: string;
begin
  if OpenDialog.Execute then
    begin
      s := '';
      for i := 0 to OpenDialog.Files.Count - 1 do
        if i < OpenDialog.Files.Count - 1
          then s := s + OpenDialog.Files[i] + ';'
          else s := s + OpenDialog.Files[i];
      Edit1.Text := s;
    end;
end;

procedure TfrmNewImage.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Button1.SetFocus;
end;

procedure TfrmNewImage.TabControlChange(Sender: TObject);
var
  sl: TStringList;
  rec: TSearchRec;
begin
	DelBtn.Visible := TabControl.Tabs.Count > 0;
  try
  if TabControl.TabIndex >= 0 then
    begin
      sl := TStringList.Create;
      CutString(Edit1.Text, ';' ,sl);
      if ImageComment.IndexOfName(sl[TabControl.TabIndex]) >= 0
      	then Edit2.Text := ImageComment.Values[sl[TabControl.TabIndex]]
        else Edit2.Clear;
      if FindFirst(sl[TabControl.TabIndex], faAnyFile,rec) = 0
      	then Image.Picture.LoadFromFile(sl[TabControl.TabIndex])
        else Image.Picture := nil;
      sl.Free;
      Edit2.SelLength := 0;
  		Edit2.SelStart := Length(Edit2.Text);
  		Edit2.SetFocus;
    end else Image.Picture := nil;
  except
    Image.Picture := nil;
  end;
end;

procedure TfrmNewImage.FormCreate(Sender: TObject);
begin
	ImageComment := TStringList.Create;
  ImageComment.Clear;
end;

procedure TfrmNewImage.FormDestroy(Sender: TObject);
begin
	if Assigned(ImageComment) then ImageComment.Free;
  ImageComment := nil;
end;

procedure TfrmNewImage.Edit2Change(Sender: TObject);
var
	sl: TStringList;
  Index: Integer;
begin
  if TabControl.TabIndex >= 0 then
    begin
      sl := TStringList.Create;
      CutString(Edit1.Text, ';' ,sl);
      Index := ImageComment.IndexOfName(sl[TabControl.TabIndex]);
      if Index >= 0
      	then ImageComment[Index] := sl[TabControl.TabIndex] + '=' + Edit2.Text
        else ImageComment.Add(sl[TabControl.TabIndex] + '=' + Edit2.Text);
      sl.Free;
    end;
end;

procedure TfrmNewImage.Button2Click(Sender: TObject);
var
	FOptions: TResultOptionsImages;
begin
	FOptions := frmMain.Options.OptionsNewImages;
	ShowOptionsNewImages(FOptions);
  frmMain.Options.OptionsNewImages := FOptions;
end;

procedure TfrmNewImage.DelBtnClick(Sender: TObject);
var
	ImageList: TStringList;
  Index: Integer;
  i: Integer;
  str: string;
begin
  Index := TabControl.TabIndex;
  if (TabControl.Tabs.Count <= 0) or (Index < 0) then Exit;
	ImageList := TStringList.Create;
  try
  	str := '';
  	CutString(Edit1.Text, ';' ,ImageList);
    for i := 0 to ImageList.Count - 1 do
    	if i <> Index then str := str + ImageList[i] + ';';
    str := Copy(str, 1, Length(str) - 1);
    Edit1.Text := str;
    if TabControl.Tabs.Count > 0 then
    	begin
        Dec(Index);
        if Index < 0 then Index := 0;
        TabControl.TabIndex := Index;
    	end;
  finally
  	if Assigned(ImageList) then ImageList.Free;
  end;
end;

end.
