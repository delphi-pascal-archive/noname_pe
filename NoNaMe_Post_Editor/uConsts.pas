unit uConsts;

interface

uses
  Messages,
  Windows;

Const
	nnm_version = '0.0.3.5';
  npd_version = '0.1';
  npf_version = '0.1';

  title = 'NoNaMe Post Editor';

  BodyStyle 	= '<body style="font-family: tahoma; font-size: 11px;">';
  BodyStyleDiv = BodyStyle + '<div>';
  EmptyPage   = 'about:<head></head><body style="font-family: tahoma; font-size: 11px;"><div></div></body>';
  NNM_Adress  = 'http://www.nnm.ru';
  NNM_Doc_Adress_Pref = 'http://';
  NNM_Doc_Adress_Suf	= '.nnm.ru/';

  PassChar: Char = '*';

// ����
  tagsNNM: array[0..13] of string = ('[b]', '[/b]', '[i]', '[/i]',
                                     '[u]', '[/u]', '[s]', '[/s]',
                                     '[code]', '[/code]', '[doc]',
                                     '[/doc]', '[cut]', '[/url]');
  C_IMG = '[img=';

// ������� Tab-��������
  Tab_Left            = 1;
  Tab_Right           = 2;
  Tab_Top             = 3;
  Tab_Bottom          = 4;

// �������������� ������
  Format_Bold         = 'Bold';
  Format_Italic       = 'Italic';
  Format_Underline    = 'Underline';
  Format_Strike       = 'StrikeThrough';

// ��������� ��� ����� �����
  none_color          = '#000000';
  doc_color           = '#ff0001';
  code_color          = '#666666';
  dc_color            = '#ff01ff';
  format_none         = 0;
  format_doc          = 1;
  format_code         = 2;
  format_doccode      = 3;

// ��������� ��� �������� ���������� ������
  del_Bold            = 1;
  del_Italic          = 2;
  del_Underline       = 3;
  del_Strike          = 4;
  del_Doc             = 5;
  del_Code            = 6;
  del_Link            = 7;

// ��������� ��� ������ � �������
  ok_file             = 0;
  not_filename        = 1;

// ��������� ����� ������������
	TempPath						= 'tmp\';

  OptionsMain         = 'options\npe.cfg';
  FragmentsFile				= 'options\fragments.cfg';
  CSSFile							= 'css\nnm.css';
  NotIdent            = '�� ���������';

// URL
  dom: array[0..16] of string=('.ru', '.com', '.ua', 'org', '.net', '.de', '.uk',
                               '.nl', '.su', '.info', '.name', '.cd', '.tv', '.cc',
                               '.us', '.il', '.cn');

//StrConsts
  fmtReplace          = '������';
  fmtInsert           = '�������';

  strNewNews          = '������� �������� �������.' + #13#10 + '�������� ������� ������ ���� ������� 3-� ��������.';
  strErrorCaption     = '������';
  strClearForNewPost  = '�������� ���� ��� ����� ������?';
  strNewPostCaption   = '����� ������';
  strSaveQuestion     = '��������� ������?';
  strSaveCaption      = '����������';
  strNoneDoc          = '��� ����';
  strDeleteDocQuestion= '������� ���';
  strOnListQuestion   = ' �� ������?';
  strDeleteDocCaption = '�������� ����';
  strErrorSaveOptions = '�� ������� ��������� ��������� ���������.' + #13 + '�������� ��������� ��������� � CD.';

type
	TCommentPosition = (positionTop, positionBottom);
  TResultOptionsImages = record
  	CommentPosition: TCommentPosition;
    AutoNumber: Boolean;
  end;

  TDoc = record
    Name,Adress: string;
  end;

  TDocs = array of TDoc;

	TPostData = record
    Title,
    Text,
    Category,
    InLink: String;
    IsCat: Boolean;
    Doc: TDoc;
  end;

  TProxy = record
  	ProxyHost:	string;
    ProxyPort:  Integer;
    ProxyLogin,
    ProxyPassword: string;
    ProxyActive: Boolean;
  end;

  TNewsOptions = record
    Login: 				String;
    Password: 		String;
    Member_Pass: 	Boolean;
    Visual_Pass: 	Boolean;
    Timeout: 			Integer;
    Docs: 				TDocs;
    ActiveDoc: 		Integer;
    ActiveSplash: Boolean;
    Proxy: 				TProxy;
    TempPath:			String;
    Signature:		String;
    ActiveSign:		Boolean;
    OptionsNewImages: TResultOptionsImages;  
    DefaultExt:		string;
  end;

  TFragment = record
  	Captions: String;
    Text:			String;
  end;

  TFragments = array of TFragment;

type
  TResultPost = (postOk 				= 0,
  							 postNotServer	= 50,
  							 postNotLogin 	= 100,
                 postNotImage		= 200,
                 postErrImage		= 400,
                 postNotDoc			= 500,
                 postNotPost		= 600,
                 postNotPrepare	= 700,
                 postNotHTTP		= 800);

  TShowProgress = procedure (AString: String) of object;

const
	NewsOptionsVersion = 2;

  CFLogin     = 'login';
  CFPassword  = 'passwd';
  CFImageFile = 'file1';
  CFImageUrl	= 'file2';
  CFTitleNews = 'n_zag';
  CFTextNews  = 'n_text';
  CFLinkNews  = 'n_ist';
  CFIsRazdel  = 'n_dalee';
  CFRazdel    = 'nra';

  CPLogin     = 'http://www.nnm.ru/';
  CPImage     = 'html/addimage.php';
  CPNews      = 'addnew';
  CPPost      = 'http://www.nnm.ru/script/addnew.php';

  CSNoLogin   = '<form method="post" name="auth" action="/">';

  messWarning = '��������';

implementation

end.
