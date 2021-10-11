unit frmuDoci;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls, ExtCtrls, ImgList, ComCtrls, ToolWin, Grids, ValEdit, Menus,
  ActnList, uMain, uConsts;

type
  TfrmDoci = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Doci: TValueListEditor;
    ActionList: TActionList;
    aAddDoc: TAction;
    aEditDoc: TAction;
    aDelDoc: TAction;
    ToolButton4: TToolButton;
    ImageList1: TImageList;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aAddDocExecute(Sender: TObject);
    procedure aEditDocExecute(Sender: TObject);
    procedure aDelDocExecute(Sender: TObject);
    procedure DociDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateDocs;
  public
    { Public declarations }
  end;

var
  frmDoci: TfrmDoci;

implementation

uses frmuDoc;

{$R *.dfm}

procedure TfrmDoci.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDoci.FormShow(Sender: TObject);
begin
  UpdateDocs;
  if frmMain.Options.ActiveDoc > 0
    then Doci.Row := frmMain.Options.ActiveDoc - 1
    else Doci.Row := 0;
end;

procedure TfrmDoci.UpdateDocs;
var
  Index: integer;
  s: string;
  f: boolean;
begin
  Doci.Strings.Clear;
  if Length(frmMain.Options.Docs) > 0 then
    for Index := 0 to Length(frmMain.Options.Docs) - 1 do
      begin
        s := frmMain.Options.Docs[Index].Name + '=' + frmMain.Options.Docs[Index].Adress;
        Doci.Strings.Add(s);
      end;
  f := Doci.Strings.Count > 0;
  aEditDoc.Enabled := f;
  aDelDoc.Enabled := f;
end;

procedure TfrmDoci.aAddDocExecute(Sender: TObject);
var
  name,
  adress: string;
  i: integer;
begin
  i := 0;
  name := '';
  adress := NNM_Doc_Adress_Pref + NNM_Doc_Adress_Suf;
  try
    if not Assigned(frmDoc)
      then frmDoc:=TfrmDoc.Create(Application);
    if frmDoc.ShowDoc(name, adress) then
      begin
        i := Length(frmMain.Options.Docs);
        Setlength(frmMain.Options.Docs, i + 1);
        frmMain.Options.Docs[i].Name := name;
        frmMain.Options.Docs[i].Adress := adress;
      end;
    UpdateDocs;
    Doci.Row := i;
  finally
    if Assigned(frmDoc)
      then frmDoc.Free;
    frmDoc := nil;
  end;
end;

procedure TfrmDoci.aEditDocExecute(Sender: TObject);
var
  name,
  adress: string;
  i: integer;
begin
  i := Doci.Row;
  try
    if not Assigned(frmDoc)
      then frmDoc := TfrmDoc.Create(Application);
    name := frmMain.Options.Docs[i].Name;
    adress := frmMain.Options.Docs[i].Adress;
    if frmDoc.ShowDoc(name, adress) then
      begin
        frmMain.Options.Docs[i].Name := name;
        frmMain.Options.Docs[i].Adress := adress;
      end;
    UpdateDocs;
  finally
    if Assigned(frmDoc)
      then frmDoc.Free;
    frmDoc := nil;
    Doci.Row := i;
  end;
end;

procedure TfrmDoci.aDelDocExecute(Sender: TObject);
begin
  if MessageBox(Application.Handle,
                PAnsiChar(strDeleteDocQuestion + #13 + #13 + '"' +
                Doci.Cells[1, Doci.Row] + '" (' + Doci.Cells[0, Doci.Row] + ')' + #13 + #13 +
                strOnListQuestion), strDeleteDocCaption, MB_OkCancel + MB_ICONQUESTION) = ID_OK then
    begin
      frmMain.DeleteDoc(Doci.Row);
      UpdateDocs;
    end;
end;

procedure TfrmDoci.DociDblClick(Sender: TObject);
begin
  aEditDoc.Execute;
end;

end.
