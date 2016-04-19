unit uAbout;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
     Buttons, ExtCtrls, Dialogs, Jpeg, Registry;

const
  KeyPath   = 'SOFTWARE\Microsoft\Windows\CurrentVersion';
  User      = 'RegisteredOwner';
  Company   = 'RegisteredOrganization';
  NTKeyPath = 'SOFTWARE\Microsoft\windows NT\CurrentVersion';
  Ver       = '���˰�';
type
  TfrmAbout = class(TForm)
    Panel1: TPanel;
    ProgramIcon: TImage;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    BitBtn1: TBitBtn;
    Bevel1: TBevel;
    lbl_Os: TLabel;
    lbl_Memory: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Others: TLabel;
    Author: TLabel;
    Bevel2: TBevel;
    lbl_User: TLabel;
    lbl_Company: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  { Private declarations }
    procedure GetOSInfo;     //ϵͳ��Ϣ����
    Procedure GetMemoryInfo; //������Դ����
  public
  { Public declarations }
end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.DFM}

Procedure TfrmAbout.GetMemoryInfo ;//������Դ
var
  MS: TMemoryStatus;
begin
  MS.dwLength := SizeOf(TMemoryStatus);
  GlobalMemoryStatus(MS);
  lbl_Memory.Caption := lbl_Memory.Caption + FormatFloat('#,###" KB"',MS.dwTotalPhys div 1024);
end;

procedure TfrmAbout.GetOSInfo; //��ȡϵͳ��Ϣ
var
  platInfo: string;
  BuildNumber: Integer;
begin
  case Win32Platform of
  VER_PLATFORM_WIN32_WINDOWS:
    begin
      platInfo := 'Windows 95';
      BuildNumber := Win32BuildNumber and $0000FFFF;
    end;

  VER_PLATFORM_WIN32_NT:
    begin
      platInfo := 'Windows NT';
      BuildNumber := Win32BuildNumber;
    end;
    else
    begin
      platInfo := 'Windows';
      BuildNumber := 0;
    end;
  end;

  if(Win32Platform = VER_PLATFORM_WIN32_WINDOWS)
    or(Win32Platform = VER_PLATFORM_WIN32_NT) then
  begin
    if Win32CSDVersion = '' then
      lbl_OS.Caption := lbl_OS.Caption + Format('%s%s          %d.%d (Build %d)', [platInfo, #13, Win32MajorVersion, Win32MinorVersion, BuildNumber])
    else
      lbl_OS.Caption := lbl_OS.Caption + Format('%s%s          %d.%d (Build %d: %s)', [platInfo, #13, Win32MajorVersion, Win32MinorVersion, BuildNumber, Win32CSDVersion]);
  end
  else
    lbl_OS.Caption := lbl_OS.Caption + Format('%s%s          %d.%d', [platInfo, #13, Win32MajorVersion, Win32MinorVersion])
end;

procedure TfrmAbout.FormCreate(Sender: TObject);
begin
  try
    Caption := '����' + Application.Title;
    ProgramIcon.Picture.Icon := Application.Icon;
    ProductName.Caption := ProductName.Caption + Application.Title;
    Version.Caption   := Version.Caption + Ver;
    Copyright.Caption := Copyright.Caption + '�����������������';
    Author.Caption := Author.Caption + '��������';
    Others.Caption := '���棺δ�������κθ��ˡ���λ�������κη�ʽ�Ƿ����������ã�'+
                      '���ǣ�ϵͳ�����й����г��ֵ��κ��������߽������κ��������Σ�'+#13+#13+
                      '����������WinAny��';
    //��ʼ��---------------------------
    GetMemoryInfo;
    GetOsinfo;
  except
    MessageBox(Handle,'�޷�ȡ��ĳЩ��Ϣ','��ʾ',MB_OK);
  end;
end;

procedure TfrmAbout.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmAbout.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure  GetUserInfo(var UserName, CompanyName: string);
var
  MyReg: TRegistry;
begin
  MyReg := TRegistry.Create;
  MyReg.RootKey := HKEY_LOCAL_MACHINE;
  MyReg.OpenKey(KeyPath,False);
  if not MyReg.ValueExists(User) or not MyReg.ValueExists(Company) then begin
    MyReg.CloseKey;
    MyReg.OpenKey(NTKeyPath, False);
  end;
  UserName    := MyReg.ReadString(User);
  CompanyName := MyReg.ReadString(Company);
  MyReg.CloseKey;
  MyReg.Free;
end;

procedure TfrmAbout.FormShow(Sender: TObject);
var
  UserName, CompanyName: string;
begin
  GetUserInfo(UserName,CompanyName);
  lbl_User.Caption    := UserName;
  lbl_Company.Caption := CompanyName;
end;

end.

