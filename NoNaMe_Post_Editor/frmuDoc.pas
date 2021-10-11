unit frmuDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, uConsts;

type
  TfrmDoc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function ShowDoc(var name,adress: string): boolean;
    procedure ButtonEnable;
  end;

var
  frmDoc: TfrmDoc;

implementation

{$R *.dfm}

{ TfrmDoc }

function TfrmDoc.ShowDoc(var name, adress: string): boolean;
begin
  Edit1.Text := name;
  Edit2.Text := adress;
  if Adress = '' then Edit2.Text := NNM_Doc_Adress_Pref + NNM_Doc_Adress_Suf;
  Edit2.SelLength := 0;
  Edit2.SelStart := Length(NNM_Doc_Adress_Pref);
  if ShowModal = mrOk then
    begin
      name := Edit1.Text;
      adress := Edit2.Text;
      Result := true;
    end else Result := false;
end;

procedure TfrmDoc.FormShow(Sender: TObject);
begin
  ButtonEnable;
  Edit1.SetFocus;
end;

procedure TfrmDoc.ButtonEnable;
begin
  if (Length(Edit1.Text) > 0) and (Length(Edit2.Text) > 0)
    then Button1.Enabled := true
    else Button1.Enabled := false;
end;

procedure TfrmDoc.Button1Click(Sender: TObject);
begin
  if Copy(Edit2.Text, Length(Edit2.Text), 1) = '\' then
    Edit2.Text := Copy(Edit2.Text, 1, Length(Edit2.Text) - 1);
  if Length(Trim(Edit1.Text)) = 0
    then Edit1.Text := Edit2.Text;
  ModalResult := mrOk;
end;

procedure TfrmDoc.Button2Click(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TfrmDoc.Edit2Change(Sender: TObject);
var
  s: integer;
begin
  s := Edit2.SelStart;
  if Length(Edit2.Text) <= Length(NNM_Doc_Adress_Pref + NNM_Doc_Adress_Suf) then
    begin
      Edit2.Text:=NNM_Doc_Adress_Pref + NNM_Doc_Adress_Suf;
      s := Length(NNM_Doc_Adress_Pref);
    end;
  if s > Length(Edit2.Text) - Length(NNM_Doc_Adress_Suf) then
  	s := Length(Edit2.Text) - Length(NNM_Doc_Adress_Suf);
{  if Copy(LowerCase(Edit2.Text), 1, Length(NNM_Doc_Adress)) <> NNM_Doc_Adress then
    begin
      if Length(Edit2.Text) > Length(NNM_Doc_Adress) then
        Edit2.Text := NNM_Doc_Adress +
                      Copy(Edit2.Text, Length(NNM_Doc_Adress) + 2,
                      Length(Edit2.Text) - Length(NNM_Doc_Adress));
      s := Length(Edit2.Text) + 1;
    end; }
  if Edit2.Text <= NNM_Doc_Adress_Pref + NNM_Doc_Adress_Suf
    then Button1.Enabled := false
    else Button1.Enabled := true;
  Edit2.SelStart := s;
end;

procedure TfrmDoc.Edit2KeyPress(Sender: TObject; var Key: Char);
var
 	s: Integer;
begin
 	s := Edit2.SelStart;
	if s > Length(Edit2.Text) - Length(NNM_Doc_Adress_Suf) then
  	s := Length(Edit2.Text) - Length(NNM_Doc_Adress_Suf);
  if s < Length(NNM_Doc_Adress_Pref) then s := Length(NNM_Doc_Adress_Pref);
  Edit2.SelStart := s;
end;

end.
