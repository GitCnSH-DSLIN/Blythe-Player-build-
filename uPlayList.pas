unit uPlayList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IniFiles, MPlayer, ExtCtrls, MMSystem;

type
  TfrmPlayList = class(TForm)
    ListBox_PlayFiles: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    OpenDlg_PlayList: TOpenDialog;
    SaveDlg_PlayList: TSaveDialog;
    AutoPlayTimer: TTimer;
    procedure ListBox_PlayFilesDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AutoPlayTimerTimer(Sender: TObject);
  private
    procedure Init;
    { Private declarations }
  public
    FileIndex: Integer;          // �����ļ�������
    FileCount: Integer;          // �б����ļ�����
    IsFileChange: Boolean;       // ֪ͨ�����ڲ��Ÿ����Ѹ�
    FileLength: Longint;         // �ļ�����
    FilePosition: Longint;       // ��ǰ���ŵ�֡��
    Drive: char;                 // �����̷�
    IsCDOpen: Boolean;           // �����Ƿ��
    FileListName: TIniFile;      // �б��ļ�������
    IsPlayingPause: Boolean;     // ��ͣ����
    procedure PlayMedia;         // ������Ƶ�ļ�
    procedure PlayPause;         // ��ͣ��ǰ�����ļ�
    procedure PlayStop;          // ֹͣ��ǰ�����ļ�
    procedure PlayBack;          // ���˵�ǰ�����ļ�
    procedure PlayStep;          // �����ǰ�����ļ�
    procedure PlayPrev;          // ������һ��Ŀ
    procedure PlayNext;          // ������һ��Ŀ
    procedure AddPlayFile;       // ��Ӳ����б��ļ�
    procedure DelPlayFile;       // ɾ�������б��ļ�
    procedure ClearPlayFile;     // ��ղ����б��ļ�
    procedure CDControl;         // ����CDROM����
    { Public declarations }
  end;

var
  frmPlayList: TfrmPlayList;

implementation

uses uEPlayer, uMovie;

{$R *.dfm}

procedure TfrmPlayList.ListBox_PlayFilesDblClick(Sender: TObject);
var
  Index: Integer;
begin
  Index := ListBox_PlayFiles.ItemIndex;
  if Index < 0 then Exit;
  if Index = FileIndex then Exit;
  frmEPlayer.MediaPlayer.Close;
  FileIndex := Index;
  FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
  PlayMedia;
end;

procedure TfrmPlayList.Button1Click(Sender: TObject);
begin
  AddPlayFile;
end;

procedure TfrmPlayList.Button3Click(Sender: TObject);
begin
  ClearPlayFile;
end;

procedure TfrmPlayList.Button2Click(Sender: TObject);
begin
  DelPlayFile;
end;

procedure TfrmPlayList.Button5Click(Sender: TObject);
begin
  //SavePlayList;
end;

procedure TfrmPlayList.PlayMedia;
var
  ExtName: string;
begin
  with frmEPlayer.MediaPlayer do
  begin
    if Mode = mpOpen then Close;    //������ڲ��ţ���ر�
    FileName := FileListName.ReadString('�ļ��б�', 'No.[' + IntToStr(FileIndex) + ']','');
    try
      Open;
      ExtName := ExtractFileExt(FileName);
      if (StrIComp(PChar(ExtName), '.mpg') = 0) or
         (StrIComp(PChar(ExtName), '.dat') = 0) or
         (StrIComp(PChar(ExtName), '.avi') = 0) or
         (StrIComp(PChar(ExtName), '.asf') = 0) then
      begin
        //frmEPlayer.MediaPlayer.Display := frmMovie.Panel_DisPlay;
        //frmEPlayer.MediaPlayer.DisplayRect := frmMovie.Panel_DisPlay.ClientRect;
        //frmMovie.Visible := True;
      end
      else
        begin
          //frmEPlayer.MediaPlayer.Display := nil;
          //frmMovie.Visible := False;
        end;
        TimeFormat := tfMilliseconds;
        Position := 0;
        IsFileChange := True;
        Play;
        //PlayingPause := False;
    except
      MessageDlg('�޷��򿪻��߲��Ŵ��ļ���',mtError,[mbOK],0);
    end;
  end;
end;
// ������һ��Ŀ
procedure TfrmPlayList.PlayNext;
begin
  if FileIndex >= FileCount - 1 then Exit;
  FileIndex := FileIndex + 1;
  ListBox_PlayFiles.ItemIndex := FileIndex;
  FileListName.WriteInteger ('�����ļ�', '�ļ���', FileIndex);
  PlayMedia;
end;
// ��Ӳ����б��ļ�
procedure TfrmPlayList.AddPlayFile;
var
  I: Integer;
begin
  OpenDlg_PlayList.Filter := '��Ƶ�ļ�(*.WAV,*.MP3,*.WMA,*.MID,*.RMI,*.CDA)|*.WAV;*.MP3;*.WMA;*.MID;*.RMI;*.CDA|��Ƶ�ļ�(*.MPG,*.AVI,*.DAT,*.ASF,*,MPEG)|*.MPG;*.AVI;*.DAT;*.ASF;*.MPEG|�����ļ�(*.*)|*.*';
  if OpenDlg_PlayList.Execute then
  begin
    with OpenDlg_PlayList.Files do
      for I := 0 to Count - 1 do
      begin
        ListBox_PlayFiles.Items.Add(Strings[I]);
        FileListName.WriteString('�ļ��б�', 'No.[' + IntToStr(FileCount + I) + ']', Strings[I]);
      end;
      FileIndex := FileCount;
      ListBox_PlayFiles.ItemIndex := FileIndex;
      //ListBoxScrollar(Sender);
      FileCount := FileCount + OpenDlg_PlayList.Files.Count;
      FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
      FileListName.WriteInteger('�����ļ�', '�ļ���', FileCount);
      PlayMedia;
  end;
end;
// ɾ�������б��ļ�
procedure TfrmPlayList.DelPlayFile;
var
  Index : Integer;
begin
  if FileCount <= 0 then Exit;      // ����б���Ϊ�����˳�
  Index := ListBox_PlayFiles.ItemIndex;
  if Index < 0 then Exit;           // ���û��ѡ�����˳�
  // �����ɾ�����ǵ�ǰ���ڲ��ŵ����֣���ر�����
  if frmEPlayer.MediaPlayer.FileName = ListBox_PlayFiles.Items.Strings[Index] then
  begin
    frmEPlayer.MediaPlayer.Close;
    FileIndex := -1;
    FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
  end;
  // ���б���ɾ��
  ListBox_PlayFiles.Items.Delete(Index);
  // �б��ļ�������һ
  FileCount := FileCount - 1;
  if FileCount = 0 then
  begin
    FileIndex := -1;
    FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
  end;
  if Index = FileCount then
    ListBox_PlayFiles.ItemIndex := 0
  else
    ListBox_PlayFiles.ItemIndex := Index;

  FileListName.WriteInteger('�����ļ�', '�ļ���', FileCount);
  for Index := Index to FileCount - 1 do
  begin
    FileListName.WriteString ('�ļ��б�', 'No.[' + IntToStr(Index) + ']',
    ListBox_PlayFiles.Items.Strings[Index]);
  end;
  //ListBoxScrollar(Sender);
  FileListName.DeleteKey('�ļ��б�', 'No.[' + IntToStr(FileCount) + ']');
end;

procedure TfrmPlayList.Init;
var
  I: Integer;
  TmpName: string;
begin
  FileListName := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'EPlayer.ini');
  // �����б��ļ�����
  FileCount := FileListName.ReadInteger('�����ļ�', '�ļ���', 0);
  for I := 0 to FileCount - 1 do
  begin
    TmpName := FileListName.ReadString('�ļ��б�', 'No.[' + IntToStr(I) + ']', '');
    ListBox_PlayFiles.Items.Add (TmpName);
  end;
  FileIndex :=FileListName.ReadInteger('�����ļ�', '�ļ���', -1);
  ListBox_PlayFiles.ItemIndex := FileIndex;
  //ListBoxScrollar(Sender);
  {for I := Ord('A') to Ord('Z') do
  begin
    Drive := Chr(I);
    if GetDriveType(PChar(Drive + ':\' + #0)) = DRIVE_CDROM  then
      Break;
  end;}
end;
// ��ղ����б��ļ�
procedure TfrmPlayList.ClearPlayFile;
begin
  if FileCount <= 0 then exit; //����б���Ϊ�����˳�
    frmEPlayer.MediaPlayer.Close;
    FileCount := 0;
    FileIndex := -1;
    FileListName.WriteInteger('�����ļ�', '�ļ���', FileCount);
    FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
    FileListName.EraseSection('�ļ��б�');
    ListBox_PlayFiles.Items.Clear;
end;


procedure TfrmPlayList.FormCreate(Sender: TObject);
begin
  Init;
end;

procedure TfrmPlayList.AutoPlayTimerTimer(Sender: TObject);
begin
  if frmEPlayer.MediaPlayer.Mode = mpPlaying then
    if frmEPlayer.MediaPlayer.Position >= frmEPlayer.MediaPlayer.Length - 1000 then
    PlayNext;
end;
// ����CDROM����
procedure TfrmPlayList.CDControl;
begin
  if IsCDOpen then
  begin
    MciSendString('set cdaudio door closed', nil, 0, 0);
    IsCDOpen := False;
  end
  else
  begin
    MciSendString('set cdaudio door open', nil, 0, 0);
    IsCDOpen := True;
  end;
end;
// ���˵�ǰ�����ļ�
procedure TfrmPlayList.PlayBack;
begin
  with frmEPlayer.MediaPlayer do
  begin
    if not(Mode in [mpPlaying]) then Exit;
    Pause;
    Position := Position - 6000;
    Play;
  end;
end;
// ��ͣ��ǰ�����ļ�
procedure TfrmPlayList.PlayPause;
begin
  with frmEPlayer.MediaPlayer do
  begin
    if Mode in [mpOpen, mpPlaying] then Pause
    else if Mode in [mpOpen, mpPaused] then Resume;
  end;
end;
// ������һ��Ŀ
procedure TfrmPlayList.PlayPrev;
begin
  if FileIndex <= 0 then Exit;
  FileIndex := FileIndex - 1;
  ListBox_PlayFiles.ItemIndex := FileIndex;
  FileListName.WriteInteger('�����ļ�', '�ļ���', FileIndex);
  PlayMedia;
end;
// �����ǰ�����ļ�
procedure TfrmPlayList.PlayStep;
begin
  with frmEPlayer.MediaPlayer do
  begin
    if not(Mode in [mpPlaying]) then Exit;
    Pause;
    Position := Position + 6000;
    Play;
  end;
end;
// ֹͣ��ǰ�����ļ�
procedure TfrmPlayList.PlayStop;
begin
  with frmEPlayer.MediaPlayer do
  begin
    if Mode in [mpStopped] then Exit;
    Close;
  end;
end;

end.
