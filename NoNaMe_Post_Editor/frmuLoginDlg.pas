unit frmuLoginDlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ActnList;

type
  TfrmLogin = class(TForm)
    StaticText1: TStaticText;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    MaskEdit1: TMaskEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    Button2: TButton;
    ActionList1: TActionList;
    acViewPass: TAction;
    procedure acViewPassExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
	uConsts, uMain;

{$R *.dfm}

procedure TfrmLogin.acViewPassExecute(Sender: TObject);
begin
	if acViewPass.Checked
  	then MaskEdit1.PasswordChar := #0
    else MaskEdit1.PasswordChar := PassChar;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
	Edit1.Text := frmMain.Options.Login;
  MaskEdit1.Text := frmMain.Options.Password;
  CheckBox1.Checked := frmMain.Options.Member_Pass;
  CheckBox2.Checked := frmMain.Options.Visual_Pass;
  acViewPassExecute(Sender);
end;

procedure TfrmLogin.Button1Click(Sender: TObject);
begin
	if CheckBox1.Checked then
  	begin
    	frmMain.Options.Login := Edit1.Text;
      frmMain.Options.Password := MaskEdit1.Text;
      frmMain.Options.Member_Pass := CheckBox1.Checked;
      frmMain.Options.Visual_Pass := CheckBox2.Checked;
      frmMain.SaveOptions;
    end;
end;

end.
