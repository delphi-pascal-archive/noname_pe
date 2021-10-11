program nnm;

{%ToDo 'nnm.todo'}

uses
  Windows,
  Consts,
  Forms,
  registry,
  Dialogs,
  uMain in 'uMain.pas' {frmMain},
  frmuNewImage in 'frmuNewImage.pas' {frmNewImage},
  frmuAbout in 'frmuAbout.pas' {frmAbout},
  frmuOptions in 'frmuOptions.pas' {frmOptions},
  frmuDoci in 'frmuDoci.pas' {frmDoci},
  frmuPost in 'frmuPost.pas' {frmPost},
  BrowMsg in 'BrowMsg.pas',
  uConsts in 'uConsts.pas',
  uParser in 'uParser.pas',
  frmuDoc in 'frmuDoc.pas' {frmDoc},
  uNet in 'uNet.pas',
  uCrypt in 'uCrypt.pas',
  frmuSplash in 'frmuSplash.pas' {frmSplash},
  uStr in 'uStr.pas',
  uFirstRun in 'uFirstRun.pas',
  frmuLoginDlg in 'frmuLoginDlg.pas' {frmLogin},
  frmuWizard in 'frmuWizard.pas' {frmWizard},
  frmuModal in 'frmuModal.pas' {frmNewLink},
  uClipboard in 'uClipboard.pas',
  frmuOptionsNewImages in 'frmuOptionsNewImages.pas' {frmOptionsNewImages},
  frmuNewInetImage in 'frmuNewInetImage.pas' {frmInsertInetImage},
  uImages in 'uImages.pas',
  frmuFragments in 'frmuFragments.pas' {frmFragments},
  frmuNewFragment in 'frmuNewFragment.pas' {frmNewFragment},
  uMD5 in 'uMD5.pas';

{$R *.res}

begin
	SetThreadLocale(1049);
  Application.Initialize;
  if FirstHinstanceRunning(1) then Exit;
  Application.Title := 'NoNaMe Post Editor';
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmOptions, frmOptions);
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.Run;
end.
