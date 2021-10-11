unit uNet;

interface

uses
	Classes,
	uConsts,
  IdComponent,
  IdTCPConnection,
  IdTCPClient,
  IdHTTP,
  IdBaseComponent,
  IdCookieManager,
  IdAntiFreeze,
  Dialogs;

type
	TPostingNNM = class
   private
   	FAuth: Boolean;
   	FHTTP: TIdHTTP;
    FCoock: TIdCookieManager;
    FAntiFreeze: TIdAntiFreeze;
    FLogin,
    FPassword: string;
    FTimeout: Integer;

    function DoLogin: TResultPost;
    function PrepareHTTP: Boolean;
    function PrepareData(var APostData: TPostData; AShowProgress: TShowProgress = nil): Boolean;
   public
   	constructor Create(Login, Password: string; Timeout: Integer; AProxy: TProxy);
    destructor Destroy; override;

    function PostImage(ASource, ADoc: string; out ANewSource: string; AShowProgress: TShowProgress = nil): TResultPost;
    function PostNews(APostData: TPostData; AShowProgress: TShowProgress = nil): TResultPost;
   end;

implementation

uses
	SysUtils,
  IdGlobal,
  uParser,
  frmuLoginDlg,
  IdMultiPartFormData,
  Controls,
  IdException;

{ TPostingNNM }

constructor TPostingNNM.Create(Login, Password: string; Timeout: Integer; AProxy: TProxy);
begin
	FAuth := False;
	FHTTP := TIdHTTP.Create(nil);
  FHTTP.Host := NNM_Adress;
  FHTTP.Port := 80;
  if AProxy.ProxyActive then
  	begin
      FHTTP.ProxyParams.ProxyPort := AProxy.ProxyPort;
      FHTTP.ProxyParams.ProxyServer := AProxy.ProxyHost;
      FHTTP.ProxyParams.ProxyUsername := AProxy.ProxyLogin;
      FHTTP.ProxyParams.ProxyPassword := AProxy.ProxyPassword;
  	end else
    	begin
      	FHTTP.ProxyParams.ProxyPort := 0;
        FHTTP.ProxyParams.ProxyServer := '';
        FHTTP.ProxyParams.ProxyUsername := '';
        FHTTP.ProxyParams.ProxyPassword := '';
      end;
  FCoock := TIdCookieManager.Create(nil);
  FHTTP.CookieManager := FCoock;
  FHTTP.HandleRedirects := True;
  FHTTP.ReadTimeout := 1000 * Timeout;
  FHTTP.HTTPOptions := [hoForceEncodeParams];
  FAntiFreeze := TIdAntiFreeze.Create(FHTTP);
  FLogin := Login;
  FPassword := Password;
  FTimeout := 1000 * Timeout;
end;

destructor TPostingNNM.Destroy;
begin
	FAuth := False;
	FLogin := '';
  FPassword := '';
  if Assigned(FAntiFreeze) then FAntiFreeze.Free;
  if Assigned(FCoock) then FCoock.Free;
  if Assigned(FHTTP) then FHTTP.Free;
  FCoock := nil;
  FHTTP := nil;
  FAntiFreeze := nil;
  inherited;
end;

function TPostingNNM.DoLogin: TResultPost;
var
	Data: TStringList;
  ResStr: string;
  FRepeat: Boolean;
begin
	FRepeat := False;
	if FAuth then
  	begin
    	Result := postOk;
      Exit;
    end;
	Result := postNotLogin;
  if not PrepareHTTP then Exit;
	Data := TStringList.Create;
  try
    repeat
    try
      Data.Add(CFLogin + '=' + FLogin);
      Data.Add(CFPassword + '=' + FPassword);
      FHTTP.Connect(FTimeout);
      try
        try
          ResStr := FHTTP.Post(CPLogin, Data);
          if Pos(CSNoLogin, ResStr) <> 0
          	then Result := postNotLogin
            else Result := postOk;
          if Result <> postOk then
            begin
            	frmLogin := TfrmLogin.Create(nil);
              try
                case frmLogin.ShowModal of
                  mrOk:
                    begin
                      FLogin := frmLogin.Edit1.Text;
                      FPassword := frmLogin.MaskEdit1.Text;
                      FRepeat := True;
                    end;
                  mrCancel: FRepeat := False;
                  else FRepeat := False;
                end;
              finally
                if Assigned(frmLogin) then frmLogin.Free;
                frmLogin := nil;
              end;
            end;
        except
          on E: EIdHTTPProtocolException do
          	begin
             if E.ReplyErrorCode = 502
               then Result := postNotServer
               else Result := postNotLogin;
            end else Result := postNotLogin;
        end;
      finally
        FHTTP.Disconnect;
      end;
    finally
    	if Result = postOk
      	then FAuth := True
        else FAuth := False;
      if Result = postOk then FRepeat := False;
    end;
    until not FRepeat;
  finally
  	Data.Free;
  end;
end;

function TPostingNNM.PostImage(ASource, ADoc: string; out ANewSource: string; AShowProgress: TShowProgress): TResultPost;
var
  Data: TIdMultiPartFormDataStream;
  ResStr: string;
  link: string;
  Index, SI: Integer;
begin
	ANewSource := '';
  if Assigned(AShowProgress) then AShowProgress('Подготовка изображения для отправки на сайт: ' + ASource);
	if not PrepareHTTP then
  	begin
    	Result := postNotHTTP;
      Exit;
    end;
  Result := postNotImage;
  if not FileExists(ASource) then Exit;
  if ADoc[Length(ADoc)] <> '/'
  	then link := ADoc + '/' + CPImage
  	else link := ADoc + CPImage;
  if DoLogin = postOk then
    begin
      Result := postOk;
      Data := TIdMultiPartFormDataStream.Create;
      FHTTP.Connect(FTimeout);
      try
      	{if IsUrl(ASource)
        	then Data.AddFormField(CFImageUrl, ASource)
        	else} Data.AddFile(CFImageFile, ASource, GetMIMETypeFromFile(ASource));
        Data.AddFormField('ap', 'post');
        FHTTP.Request.ContentType := Data.RequestContentType;
        try
        	if Assigned(AShowProgress) then AShowProgress('Отправка изображения на сайт: ' + ASource);
          ResStr := FHTTP.Post(link, Data);
          if Pos('[img=', ResStr) <> 0 then
            begin
              Index := Pos('[img=', ResStr) + 5;
              SI := Index;
              while Index <= Length(ResStr) do
                if ResStr[Index] <> ']' then Inc(Index) else
                  begin
                    ANewSource := Copy(ResStr, SI, Index - SI);
                    Break;
                  end;
            end;
          if Assigned(AShowProgress) then AShowProgress('Установка нового адреса изображения в новости');
        except
        	on E: EIdHTTPProtocolException do
          	begin
             if E.ReplyErrorCode = 502
               then Result := postNotServer
               else Result := postErrImage;
            end else Result := postErrImage;
        end;
      finally
      	if Assigned(AShowProgress) then AShowProgress('Завершение отправки изображения на сайт');
        FHTTP.Disconnect;
        Data.Free;
      end;
    end else Result := postNotLogin;
  if Assigned(AShowProgress) then AShowProgress('');
end;

function TPostingNNM.PostNews(APostData: TPostData; AShowProgress: TShowProgress): TResultPost;
var
  link: string;
  Data: TIdMultiPartFormDataStream;
  ResStr: String;
  Index: Integer;
  CodeStr: String;
  f: Boolean;
  Category, s: String;
begin
	if Assigned(AShowProgress) then AShowProgress('Подготовка новости для отправки на сайт');
  if not PrepareData(APostData, AShowProgress) then
  	begin
    	Result := postNotPrepare;
      Exit;
    end;
  if not PrepareHTTP then
  	begin
    	Result := postNotHTTP;
      Exit;
    end;
  if APostData.Doc.Adress[Length(APostData.Doc.Adress)] <> '/'
  	then link := APostData.Doc.Adress + '/' + CPNews
    else link := APostData.Doc.Adress + CPNews;
  if DoLogin = postOk then
    begin
      Data := TIdMultiPartFormDataStream.Create;
      FHTTP.Connect(FTimeout);
      try
        try
        	if Assigned(AShowProgress) then AShowProgress('Проверка существования дока для новости');
          ResStr := FHTTP.Get(link);
          CodeStr := '';
          f := false;
          APostData.IsCat := APostData.IsCat and (Pos('<input type=checkbox name=n_dalee', LowerCase(ResStr)) <> 0);
          Index := Pos('<form method=''post'' name=''form_add_new_std''', ResStr);
          if Index <> 0 then
            while Index <= Length(ResStr) do
              begin
                if f and (ResStr[Index] = '''') then Break;
                if f then CodeStr := CodeStr + ResStr[Index];
                if LowerCase(Copy(ResStr, Index, 7)) = 'value=''' then
                  begin
                    f := true;
                    Inc(Index, 6);
                  end;
                Inc(Index);
              end;
          if CodeStr = '' then
            begin
              Result := postNotDoc;
              Exit;
            end;
          if Assigned(AShowProgress) then AShowProgress('Заполнение формы данными');
          Data.AddFormField('doc', CodeStr);
          Data.AddFormField(CFTitleNews, APostData.Title);
          Data.AddFormField(CFTextNews, APostData.Text);
          Data.AddFormField(CFLinkNews, APostData.InLink);
          if APostData.IsCat then
          	begin
            	Data.AddFormField(CFIsRazdel, '1');
              Category := '';
              s := LowerCase(APostData.Category);
              if s = 'Новости' then Category := '1' else
              if s = 'Железо' then Category := '13' else
              if s = 'Файлы' then Category := '2' else
              if s = 'Обзоры' then Category := '14' else
              if s = 'Мобилы' then Category := '3' else
              if s = 'Творчество' then Category := '15' else
              if s = 'Музыка' then Category := '9' else
              if s = 'Фильмы' then Category := '16' else
              if s = 'PDA' then Category := '10' else
              if s = 'Юмор' then Category := '17'else
              if s = 'Игры' then Category := '12' else
              if s = 'Другое' then Category := '18';
              Data.AddFormField(CFRazdel, Category);
            end else
            	begin
                Data.AddFormField(CFIsRazdel, '');
                Data.AddFormField(CFRazdel, '');
              end;
          Data.AddFormField('vopr', '');
          Data.AddFormField('otv1', '');
          Data.AddFormField('otv2', '');
          Data.AddFormField('otv3', '');
          Data.AddFormField('otv4', '');
          Data.AddFormField('otv5', '');
          Data.AddFormField('otv6', '');
          Data.AddFormField('otv7', '');
          Data.AddFormField('otv8', '');
          Data.AddFormField('otv9', '');
          Data.AddFormField('postn', 'Запостить новость');
          if Assigned(AShowProgress) then AShowProgress('Отправка новости на сайт');
          ResStr := FHTTP.Post(CPPost, Data);
          if Pos('<title> NoNaMe - скачать программы</title>', ResStr) <> 0
            then Result := postNotPost
            else Result := postOk;
        except
        	on E: EIdHTTPProtocolException do
          	begin
             if E.ReplyErrorCode = 502
               then Result := postNotServer
               else Result := postNotPost;
            end else Result := postNotPost;
        end;
      finally
        if Assigned(AShowProgress) then AShowProgress('');
        FHTTP.Disconnect;
        Data.Free;
      end;
    end else Result := postNotLogin;
end;

function TPostingNNM.PrepareData(var APostData: TPostData; AShowProgress: TShowProgress): Boolean;
var
	Text, ImgTxt, NewImg: string;
  Index: Integer;
  fimg: Boolean;
begin
	// Подготовка новости к отправке
  // В частности, отправка изображений и получение нового адреса
	Result := False;
  if APostData.Text = '' then Exit;
  Text := '';
  Index := 1;
  fimg := False;
  ImgTxt := '';
  while Index <= Length(APostData.Text) do
  	begin
    	if fimg
      	then ImgTxt := ImgTxt + APostData.Text[Index]
        else Text := Text + APostData.Text[Index];
    	if fimg and (LowerCase(Copy(APostData.Text, Index, 2)) = '"]') then
      	begin
        	fimg := False;
          ImgTxt := StringReplace(ImgTxt, '"', '', [rfreplaceAll, rfIgnoreCase]);
          if PostImage(ImgTxt, APostData.Doc.Adress, NewImg, AShowProgress) <> postOk then Exit;
          Text := Text + NewImg + ']';
          Inc(Index);
          ImgTxt := '';
        end;
      if LowerCase(Copy(APostData.Text, Index, 6)) = '[img="' then
      	begin
          fimg := True;
          Text := Text + 'img=';
        	Inc(Index, 5);
        end;
    	Inc(Index);
    end;
  APostData.Text := Text;
  Result := True;
end;

function TPostingNNM.PrepareHTTP: Boolean;
begin
	Result := Assigned(FHTTP);
end;

end.
 