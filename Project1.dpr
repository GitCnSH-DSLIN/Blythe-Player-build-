program Project1;

uses
  Windows,
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit4 in 'Unit4.pas' {Form4};

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
CloseHandle(hAppMutex);
exit;
end;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.

