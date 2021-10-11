unit frmuSplash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, Buttons, StdCtrls, ActnList, RxGIF, ComCtrls;

type
  TfrmSplash = class(TForm)
    Image1: TImage;
    Image2: TImage;
    TimerBlend: TTimer;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    ProgressBar: TProgressBar;
    Timer2: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure TimerBlendTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
    FInc: Integer;
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

uses
  uMain,
  ShellApi,
  uConsts;

{$R *.dfm}

procedure TfrmSplash.FormCreate(Sender: TObject);
//var
//  rgn: HRGN;
begin
	Label2.Caption := 'Версия: ' + nnm_version;
  FInc := 10;
  Borderstyle := bsNone;
{  rgn := CreateRoundRectRgn(0, 0, ClientWidth, ClientHeight, 20, 20);
  SetWindowRgn(Handle, rgn, True); }
end;

procedure TfrmSplash.TimerBlendTimer(Sender: TObject);
var
  FAlpha: Integer;
begin
  FAlpha := AlphaBlendValue + FInc;
  if FAlpha >= 255 then
    begin
      FAlpha := 255;
      TimerBlend.Enabled := false;
    end;
  AlphaBlendValue := FAlpha;
end;

procedure TfrmSplash.SpeedButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplash.FormDeactivate(Sender: TObject);
begin
  Close;
end;

procedure TfrmSplash.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
end;

procedure TfrmSplash.CheckBox1Click(Sender: TObject);
begin
  frmMain.Options.ActiveSplash := CheckBox1.Checked;
end;

procedure TfrmSplash.Label1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfrmSplash.FormPaint(Sender: TObject);
begin
  Canvas.Pen.Color := clBlack;
  Canvas.Pen.Width := 1;
  Canvas.Pen.Style := psSolid;
  Canvas.Rectangle(0, 0, Width, Height);
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
	ModalResult := mrYes;
end;

procedure TfrmSplash.Timer2Timer(Sender: TObject);
begin
	ProgressBar.StepIt;
end;

end.
