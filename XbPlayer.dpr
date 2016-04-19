program XbPlayer;

uses
  Windows,
  Forms,
  Unit1 in 'Unit1.pas' {MainPlay},
  Unit2 in 'Unit2.pas' {PlayList},
  Unit3 in 'Unit3.pas' {LrcShow},
  Unit4 in 'Unit4.pas' {Form4},
  Unit6 in 'Unit6.pas' {SerLrc},
  Unit7 in 'Unit7.pas' {EditLrc},
  Unit8 in 'Unit8.pas' {minilrc},
  Unit10 in 'Unit10.pas' {Form10};

{$R *.res}
var
hAppMutex: THandle;
begin
  Application.Initialize;

   //�����������
hAppMutex := CreateMutex(nil, false, PChar('OnlyOne'));
if (hAppMutex = 0) then
begin
MessageBox(0,PChar('�����������ʧ��!'),PChar('Error'),MB_OK + MB_ICONINFORMATION);
exit;
end;
//�鿴�Ƿ��ǵ�һ�����г���
if ((hAppMutex <> 0) and (GetLastError() = ERROR_ALREADY_EXISTS)) then
begin
MessageBox(0,PChar('�����Ѿ���һ��ʵ��������!'),PChar('OK'),MB_OK + MB_ICONINFORMATION);
//�رջ�������˳�����
exit;
 end;

  Application.CreateForm(TMainPlay, MainPlay);
  Application.CreateForm(TPlayList, PlayList);
  Application.CreateForm(TLrcShow, LrcShow);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TSerLrc, SerLrc);
  Application.CreateForm(TEditLrc, EditLrc);
  Application.CreateForm(Tminilrc, minilrc);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
