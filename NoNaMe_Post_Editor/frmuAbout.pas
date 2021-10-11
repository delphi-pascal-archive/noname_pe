unit frmuAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfrmAbout = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel2: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAbout: TfrmAbout;

implementation

uses
	uConsts;

{$R *.dfm}

procedure TfrmAbout.Panel2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  if Msg.CharCode = $1B
    then Close;
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
	Label1.Caption := 'Версия: ' + nnm_version;
end;

end.
