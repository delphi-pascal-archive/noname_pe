unit frmuModal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, uConsts;

type
  TfrmNewLink = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewLink: TfrmNewLink;

implementation

{$R *.dfm}

{ TfrmModal }

procedure TfrmNewLink.Edit1Change(Sender: TObject);
function IsUrl(text: string): boolean;
var i: integer;
begin
  Result:=false;
  if LowerCase(Copy(text,1,7))='http://' then Result:=true;
  if LowerCase(Copy(text,1,6))='ftp://' then Result:=true;
  if LowerCase(Copy(text,1,4))='www.' then Result:=true;
  if LowerCase(Copy(text,1,4))='ftp.' then Result:=true;
  if LowerCase(Copy(text,1,7))='mailto:' then Result:=true;
  for i:=0 to Length(dom)-1 do
    if Pos(dom[i],LowerCase(text))>0 then Result:=true;
end;
begin
  if ((Edit1.Text<>'') and (Edit2.Text<>'')) and (IsUrl(Edit1.Text))
    then Button1.Enabled:=true
    else Button1.Enabled:=false;
end;

procedure TfrmNewLink.Edit2Change(Sender: TObject);
begin
  if (Edit1.Text<>'') and (Edit2.Text<>'')
    then Button1.Enabled:=true
    else Button1.Enabled:=false;
end;

procedure TfrmNewLink.Button2Click(Sender: TObject);
begin
  ModalResult:=mrCancel;
end;

procedure TfrmNewLink.Button1Click(Sender: TObject);
procedure GetUrl(var text: string);
var f: boolean;
    i: integer;
begin
  if not ((Copy(LowerCase(text),1,7)='http://') or (Copy(LowerCase(text),1,6)='ftp://'))
    then text:='http://'+text;
  f:=false;
  for i:=0 to Length(dom)-1 do
    if Pos(dom[i],LowerCase(text))>0 then f:=true;
  if not f then text:=text+'.ru';
end;
var s: string;
begin
  s:=Edit1.Text;
  GetUrl(s);
  Edit1.Text:=s;
  ModalResult:=mrOk;
end;

end.
 