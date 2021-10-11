unit frmuWizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, Mask, ToolWin, Grids, ValEdit,
  ImgList, ActnList;

type
  TfrmWizard = class(TForm)
    PageControl1: TPageControl;
    Panel1: TPanel;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    btnBack: TButton;
    btnNext: TButton;
    btnCancel: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edLogin: TEdit;
    edPassword: TMaskEdit;
    chViewPass: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    ToolBar1: TToolBar;
    tbNew: TToolButton;
    vleDocs: TValueListEditor;
    tbEdit: TToolButton;
    ToolButton3: TToolButton;
    tbDel: TToolButton;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    chEnableProxy: TCheckBox;
    Label12: TLabel;
    Label13: TLabel;
    edProxyServer: TEdit;
    edProxyPort: TEdit;
    edProxyLogin: TEdit;
    edProxyPass: TEdit;
    Label14: TLabel;
    mSummary: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    ImageList1: TImageList;
    ActionList: TActionList;
    aAddDoc: TAction;
    aEditDoc: TAction;
    aDelDoc: TAction;
    Label17: TLabel;
    Panel4: TPanel;
    Label18: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure chViewPassKeyPress(Sender: TObject; var Key: Char);
    procedure edProxyPortKeyPress(Sender: TObject; var Key: Char);
    procedure aAddDocExecute(Sender: TObject);
    procedure aEditDocUpdate(Sender: TObject);
    procedure aDelDocUpdate(Sender: TObject);
    procedure aDelDocExecute(Sender: TObject);
    procedure aEditDocExecute(Sender: TObject);
  private
    { Private declarations }
    procedure CheckChange(NewIdx: Integer);
    procedure SetRow(ARow: Integer);
  public
    { Public declarations }
  end;

var
  frmWizard: TfrmWizard;

implementation

uses
	uMain, frmuDoc, uConsts;

{$R *.dfm}

procedure TfrmWizard.CheckChange(NewIdx: Integer);
var
	f: boolean;
  Index: Integer;
begin
	Case NewIdx of
  	0:	begin
        	btnBack.Enabled := False;
          btnNext.Caption := 'Далее >';
          btnNext.Enabled := (edLogin.Text <> '') and (edPassword.Text <> '');
          if chViewPass.Checked
          	then edPassword.PasswordChar := #0
            else edPassword.PasswordChar := '*';
          Label1.Caption := 'Первый запуск программы NoNaMe Post Editor.';
    		end;
    1:	begin
        	btnBack.Enabled := True;
          btnNext.Caption := 'Далее >';
          Label1.Caption := 'Доки - основа сайта NoNaMe.';
    		end;
    2:	begin
        	btnBack.Enabled := True;
          btnNext.Caption := 'Далее >';
          f := chEnableProxy.Checked;
          edProxyServer.Enabled := f;
          edProxyPort.Enabled := f;
          edProxyLogin.Enabled := f;
          edProxyPass.Enabled := f;
          Label13.Enabled := f;
          Label10.Enabled := f;
          Label11.Enabled := f;
          Label12.Enabled := f;
          btnNext.Enabled := not f;
          if f  and (edProxyPort.Text <> '')then
          	begin
              btnNext.Enabled := (edProxyServer.Text <> '') and
              									 (edProxyPort.Text <> '') and
                                 ((StrToInt(edProxyPort.Text) > 0) and
                                 (StrToInt(edProxyPort.Text) < 65536));
            if ((StrToInt(edProxyPort.Text) <= 0) or
               (StrToInt(edProxyPort.Text) >= 65536))
              then Label17.Caption := 'Номер порта должен быть в пределах от 1 до 65535'
              else Label17.Caption := '';
            end;
          Label1.Caption := 'Настройка соединения с сайтом NoNaMe.';
    		end;
    3:	begin
        	btnBack.Enabled := True;
          btnNext.Caption := 'Сохранить';
          mSummary.Lines.Clear;
          with mSummary.Lines do
          	begin
              Add('Логин: ' + edLogin.Text);
              Add('');
              if vleDocs.Strings.Count > 0 then
              	begin
                	Add('Выбранные доки:');
                  for Index := 0 to vleDocs.Strings.Count - 1 do
                  	Add(vleDocs.Keys[Index] + ': ' + vleDocs.Values[vleDocs.Keys[Index]]);
                  Add('');
                end;
              if chEnableProxy.Checked then
              	begin
                	Add('Настройки прокси-сервера:');
                  Add('Адрес сервера: ' + edProxyServer.Text);
                  Add('Порт: ' + edProxyPort.Text);
                  if edProxyLogin.Text <> '' then Add('Логин: ' + edProxyLogin.Text);
                  if edProxyPass.Text <> '' then Add('Пароль: ' + edProxyPass.Text);
                end else Add('Прокси-сервер не используется.');
              Add('');
            end;
          Label1.Caption := 'Проверка введенных данных.';
    		end;
  end;
end;

procedure TfrmWizard.FormCreate(Sender: TObject);
var
	Index: Integer;
begin
	for Index := 0 to PageControl1.PageCount - 1 do
  	PageControl1.Pages[Index].TabVisible := False;
  PageControl1.ActivePageIndex := 0;
  CheckChange(0);
end;

procedure TfrmWizard.btnNextClick(Sender: TObject);
var
	Index: Integer;
  DocIndex: Integer;
begin
	if PageControl1.ActivePageIndex = PageControl1.PageCount - 1 then
  	begin
      with frmMain.Options do
      	begin
        	Login := edLogin.Text;
          Password := edPassword.Text;
          if (Login <> '') and (Password <> '') then
          	Member_Pass := True;
          Proxy.ProxyActive := chEnableProxy.Checked;
          Proxy.ProxyHost := edProxyServer.Text;
          if edProxyPort.Text = '' then edProxyPort.Text := '80';
          Proxy.ProxyPort := StrToInt(edProxyPort.Text);
          if Proxy.ProxyPort < 1 then Proxy.ProxyPort := 1;
          if Proxy.ProxyPort > 65535 then Proxy.ProxyPort := 65535;
          Proxy.ProxyLogin := edProxyLogin.Text;
          Proxy.ProxyPassword := edProxyPass.Text;
          DocIndex := Length(Docs);
          if vleDocs.RowCount > 0 then
          	begin
            	Setlength(Docs, DocIndex + vleDocs.RowCount);
              for Index := 0 to vleDocs.RowCount - 1 do
                begin
                  frmMain.Options.Docs[DocIndex + Index].Name := vleDocs.Keys[Index];
                  frmMain.Options.Docs[DocIndex + Index].Adress := vleDocs.Values[vleDocs.Keys[Index]];
                end;
            end;
        end;
    	ModalResult := mrOk;
      Exit;
    end;
	PageControl1.SelectNextPage(True, False);
end;

procedure TfrmWizard.btnBackClick(Sender: TObject);
begin
	PageControl1.SelectNextPage(False, False);
end;

procedure TfrmWizard.PageControl1Change(Sender: TObject);
begin
	CheckChange(PageControl1.ActivePageIndex);
end;

procedure TfrmWizard.chViewPassKeyPress(Sender: TObject; var Key: Char);
begin
	CheckChange(PageControl1.ActivePageIndex);
end;

procedure TfrmWizard.edProxyPortKeyPress(Sender: TObject; var Key: Char);
begin
	case key of
    '0'..'9': ;
    #8, #37, #39, #46: ;
    else key := #0;
  end;
end;

procedure TfrmWizard.aAddDocExecute(Sender: TObject);
var
	Name, Adress: string;
  Index: Integer;
  f: Boolean;
begin
 	Name := '';
  Adress := '';
  frmDoc := TfrmDoc.Create(Self);
  try
    if frmDoc.ShowDoc(Name, Adress) then
      begin
        f := false;
        if vleDocs.Strings.Count > 0 then
          for Index := 0 to vleDocs.RowCount - 1 do
            if (Adress = vleDocs.Values[vleDocs.Keys[Index]]) or
            	 (Name = vleDocs.Keys[Index]) then
              begin
                f := true;
                Break;
              end;
        if not f then
          begin
          	SetRow(vleDocs.Strings.Add(Name + '=' + Adress));
          end else MessageBox(Self.Handle, 'Док с этим адресом или названием уже присутствует в списке.', 'Внимание', MB_OK + MB_ICONWARNING + MB_APPLMODAL + MB_SYSTEMMODAL	+ MB_TOPMOST);
      end;
  finally
  	if Assigned(frmDoc) then frmDoc.Free;
    frmDoc := nil;
  end;
end;

procedure TfrmWizard.aEditDocUpdate(Sender: TObject);
begin
	aEditDoc.Enabled := (vleDocs.Strings.Count > 0);
end;

procedure TfrmWizard.aDelDocUpdate(Sender: TObject);
begin
	aDelDoc.Enabled := (vleDocs.Strings.Count > 0);
end;

procedure TfrmWizard.aDelDocExecute(Sender: TObject);
var
	lRow: Integer;
begin
	lRow := vleDocs.Row;
	if (lRow < 0) or (lRow > vleDocs.RowCount - 1) then Exit;
	if MessageBox(Application.Handle,
                PAnsiChar(strDeleteDocQuestion + #13#10 + #13#10 + '"' +
                vleDocs.Values[vleDocs.Keys[lRow]] + '" (' +
                vleDocs.Keys[lRow] + ')' + #13#10 + #13#10 +
                strOnListQuestion), strDeleteDocCaption, MB_ICONQUESTION + MB_OkCancel) = ID_OK then
    vleDocs.Strings.Delete(vleDocs.Row);
  SetRow(lRow);
end;

procedure TfrmWizard.aEditDocExecute(Sender: TObject);
var
	Name, Adress: string;
  lRow: Integer;
  f: Boolean;
  Index: Integer;
begin
	lRow := vleDocs.Row;
	Name := vleDocs.Keys[lRow];
  Adress := vleDocs.Values[Name];
  frmDoc := TfrmDoc.Create(Self);
  try
  	if frmDoc.ShowDoc(Name, Adress) then
    	begin
      	f := false;
        if vleDocs.Strings.Count > 0 then
          for Index := 0 to vleDocs.RowCount - 1 do
          	if Index <> lRow then
            if (Adress = vleDocs.Values[vleDocs.Keys[Index]]) or
            	 (Name = vleDocs.Keys[Index]) then
              begin
                f := true;
                Break;
              end;
        if not f then
          begin
            vleDocs.Keys[lRow] := Name;
            vleDocs.Values[Name] := Adress;
          end else MessageBox(Self.Handle, 'Док с этим адресом или названием уже присутствует в списке.', 'Внимание', MB_OK + MB_ICONWARNING + MB_APPLMODAL + MB_SYSTEMMODAL	+ MB_TOPMOST);
      end;
  finally
  	if Assigned(frmDoc) then frmDoc.Free;
    frmDoc := nil;
  end;
  SetRow(lRow);
end;

procedure TfrmWizard.SetRow(ARow: Integer);
begin
	if vleDocs.RowCount <= 0 then Exit;
	if ARow > vleDocs.RowCount - 1 then ARow := vleDocs.RowCount - 1;
  if ARow < 0 then ARow := 0;
  vleDocs.Row := ARow;
end;

end.
