unit frmuNewInetImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uConsts, ActnList;

type
  TfrmInsertInetImage = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Memo: TMemo;
    ActionList1: TActionList;
    aApply: TAction;
    procedure Button1Click(Sender: TObject);
    procedure aApplyExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function GetInetImage: TStringList;

var
  frmInsertInetImage: TfrmInsertInetImage;

implementation

uses
	frmuOptionsNewImages,
  uMain,
  uImages,
  uParser;

{$R *.dfm}

function GetInetImage: TStringList;
var
	Index: Integer;
begin
	Result := nil;
  frmInsertInetImage := TfrmInsertInetImage.Create(Application);
  try
  	if frmInsertInetImage.ShowModal = mrOk then
    	if frmInsertInetImage.Memo.Lines.Count > 0 then
      	for Index := 0 to frmInsertInetImage.Memo.Lines.Count - 1 do
        	if IsUrl(frmInsertInetImage.Memo.Lines[Index]) and
        		 IsImage(frmInsertInetImage.Memo.Lines[Index]) then
          	begin
            	if not Assigned(Result) then Result := TStringList.Create;
              Result.Add(frmInsertInetImage.Memo.Lines[Index]);
            end;
  finally
  	if Assigned(frmInsertInetImage) then frmInsertInetImage.Free;
    frmInsertInetImage := nil;
  end;
end;

procedure TfrmInsertInetImage.Button1Click(Sender: TObject);
var
	FOptions: TResultOptionsImages;
begin
	FOptions := frmMain.Options.OptionsNewImages;
	ShowOptionsNewImages(FOptions);
  frmMain.Options.OptionsNewImages := FOptions;
end;

procedure TfrmInsertInetImage.aApplyExecute(Sender: TObject);
var
	Index: Integer;
  Res: Integer;
begin
	Res := mrOk;
	if Memo.Lines.Count <= 0 then Exit;
  for Index := 0 to Memo.Lines.Count - 1 do
  	if not (IsUrl(Memo.Lines[Index]) and IsImage(Memo.Lines[Index])) then
    	begin
        if MessageBox(Self.Handle, 'В списке присутствуют элементы,' + #13#10 +
        		'не опознанные как ссылки-изображения.' + #13#10 +
            'Эти элементы не будут обработаны!', 'Внимание', MB_OKCANCEL +
            MB_ICONWARNING + MB_APPLMODAL + MB_SYSTEMMODAL + MB_TASKMODAL +
            MB_TOPMOST) = IDOK
        	then Res := mrOk
          else Res := mrNone;
      	Break;
      end;
  ModalResult := Res;
end;

end.
