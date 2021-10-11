unit frmuOptionsNewImages;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uConsts, StdCtrls, ExtCtrls;

type
  TfrmOptionsNewImages = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FOptions: TResultOptionsImages;
  public
    { Public declarations }
    procedure Updates;
  end;

  procedure ShowOptionsNewImages(var AOptions: TResultOptionsImages);

var
  frmOptionsNewImages: TfrmOptionsNewImages;

implementation

{$R *.dfm}

procedure ShowOptionsNewImages(var AOptions: TResultOptionsImages);
begin
	frmOptionsNewImages := TfrmOptionsNewImages.Create(Application);
  try
    frmOptionsNewImages.FOptions := AOptions;
  	case AOptions.CommentPosition of
    	positionTop: frmOptionsNewImages.ComboBox1.ItemIndex := 0;
      positionBottom: frmOptionsNewImages.ComboBox1.ItemIndex := 1;
    end;
    frmOptionsNewImages.CheckBox1.Checked := AOptions.AutoNumber;
  	if frmOptionsNewImages.ShowModal = mrOk then AOptions := frmOptionsNewImages.FOptions;
  finally
  	if Assigned(frmOptionsNewImages) then frmOptionsNewImages.Free;
    frmOptionsNewImages := nil;
  end;
end;

procedure TfrmOptionsNewImages.ComboBox1Change(Sender: TObject);
begin
	Updates;
end;

procedure TfrmOptionsNewImages.Updates;
var
	lOptions: TResultOptionsImages;
begin
	case ComboBox1.ItemIndex of
  	0: lOptions.CommentPosition := positionTop;
    1: lOptions.CommentPosition := positionBottom;
  end;
  lOptions.AutoNumber := CheckBox1.Checked;
  Button1.Enabled := (FOptions.CommentPosition <> lOptions.CommentPosition) or
  									 (Foptions.AutoNumber <> lOptions.AutoNumber);
end;

procedure TfrmOptionsNewImages.CheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
	Updates;
end;

procedure TfrmOptionsNewImages.Button1Click(Sender: TObject);
begin
 	case ComboBox1.ItemIndex of
  	0: FOptions.CommentPosition := positionTop;
    1: FOptions.CommentPosition := positionBottom;
  end;
  FOptions.AutoNumber := CheckBox1.Checked;
  Updates;
end;

end.
