unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VsControls, VsSkin, VsImageClip, ComCtrls, SkyAudioMeter,Mmsystem,FileCtrl,
  VsComposer, WinSkinData, Menus,ShellAPI,AppEvnts, OBMagnet, ExtCtrls, MPlayer, StdCtrls,
  VsHotSpot, VsImage, RzTray,  RzCommon, id3v1, VsSlider,StrUtils,
  RzButton, RzRadChk;
 const WM_NID = WM_User + 1000;
type
  TMainPlay = class(TForm)
    VsComposer1: TVsComposer;
    mainskin: TVsSkin;
    SkyAudioMeter1: TSkyAudioMeter;
    SkinData1: TSkinData;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Timer1: TTimer;
    OBFormMagnet1: TOBFormMagnet;
    OpenDialog3: TOpenDialog;
    Timer2: TTimer;
    mainpop: TPopupMenu;
    N81: TMenuItem;
    N70: TMenuItem;
    N53: TMenuItem;
    listname: TMenuItem;
    N80: TMenuItem;
    N85: TMenuItem;
    N79: TMenuItem;
    N83: TMenuItem;
    N82: TMenuItem;
    N84: TMenuItem;
    N50: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    AudioPop: TPopupMenu;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N67: TMenuItem;
    N110: TMenuItem;
    N210: TMenuItem;
    N310: TMenuItem;
    N410: TMenuItem;
    N510: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N111: TMenuItem;
    N211: TMenuItem;
    N311: TMenuItem;
    N15: TMenuItem;
    N22: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    Timer3: TTimer;
    btn4: TVsHotSpot;
    btn1: TVsHotSpot;
    btn2: TVsHotSpot;
    btn3: TVsHotSpot;
    btn5: TVsHotSpot;
    op1: TVsHotSpot;
    VsHotSpot7: TVsHotSpot;
    Label1: TLabel;
    Label2: TLabel;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N11: TMenuItem;
    N13: TMenuItem;
    SinaBlog1: TMenuItem;
    Qzone1: TMenuItem;
    N14: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N44: TMenuItem;
    gundong: TLabel;
    gd: TTimer;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    Ping1: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    RzTray: TRzTrayIcon;
    jzlst: TTimer;
    N33: TMenuItem;
    N34: TMenuItem;
    trackbar2: TVsSlider;
    trackbar1: TVsSlider;
    VsHotSpot1: TVsHotSpot;
    VsHotSpot2: TVsHotSpot;
    qq1: TTimer;
    qq2: TTimer;
    stat1: TStatusBar;
    ballhint1: TMenuItem;
    N36: TMenuItem;
    VsHotSpot3: TVsHotSpot;
    N35: TMenuItem;
    Label4: TLabel;
    appname: TLabel;
    chk1: TRzCheckBox;
    shuffle: TVsHotSpot;
    VsHotSpot4: TVsHotSpot;
    VsHotSpot5: TVsHotSpot;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N81Click(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N310Click(Sender: TObject);
    procedure N410Click(Sender: TObject);
    procedure N510Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N311Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);

    procedure N22Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure VsHotSpot7Click(Sender: TObject);
    procedure op1Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure VsHotSpot1Click(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure N79Click(Sender: TObject);
    procedure N83Click(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure VsHotSpot2Click(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure SinaBlog1Click(Sender: TObject);
    procedure Qzone1Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure gdTimer(Sender: TObject);
    procedure SkyAudioMeter1Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N47Click(Sender: TObject);
    procedure Ping1Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure VsCheckBox1Click(Sender: TObject);
    procedure jzlstTimer(Sender: TObject);
    procedure SkyAudioMeter1DblClick(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure qq1Timer(Sender: TObject);
    procedure qq2Timer(Sender: TObject);
    procedure trackbar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ballhint1Click(Sender: TObject);
    procedure VsHotSpot3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N35Click(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure VsHotlrcClick(Sender: TObject);
    
   
   // procedure soundClick(Sender: TObject);




  private
      function GetFormNameAt(const Pos: TPoint): string;

    { Private declarations }
  public
  procedure DropFiles(var Msg: TMessage); message WM_DropFILES;
      procedure SysCommand(var SysMsg: TMessage); message WM_SYSCOMMAND;
    procedure WMNID(var msg: TMessage); message WM_NID;
    { Public declarations }
  end;

  type            ///------------edited by bruce 2012/9/30/23:33
  
    TID3Tag=packed   record   //   128   �ֽ�
      TAGID:   array[0..2]   of   char;   //   3   �ֽ�:   ������TAG
      Title:   array[0..29]   of   char;   //   30   �ֽ�:   ��������
      Artist:   array[0..29]   of   char;   //   30   �ֽ�:   ������������
      Album:   array[0..29]   of   char;   //   30   �ֽ�:   ����ר��
      Year:   array[0..3]   of   char;   //   4   �ֽ�:   ������
      Comment:   array[0..29]   of   char;   //   30   �ֽ�:   ����
      Genre:   byte;   //   1   �ֽ�:   �����ʶ

    end;


                ///------------edited by bruce 2012/9/30/23:33


var
  MainPlay: TMainPlay;
  Positionchange: boolean;
  Include_SubDir: boolean;
  s: integer;
  NotifyIcon: TNotifyIconData;
  Flnm: string;
  xlist: TListItem;
  sumtime :Integer   ;
  s1,s2,s3 :string;          //s1:����  s2:������    s3:ר��
  list : TStringlist;     //�����ַ���
   ID3v1: TID3v1;

   const   //��ȡ����ϵͳ��Ϣ by bruce 2012.7.28--------
        OsUnknown:integer=-1;
        OsWin95:integer=0;
        OsWin98:integer=1;
        OsWin98SE:integer=2;
        OsWinMe:integer=3;
        OsWinNT:integer=4;
        OsWin2000:integer=5;
        OsWinXP:integer=6;
        OsWinOther:integer=7;
    //--------------------------------------------------
implementation

uses Unit2, Unit5, Unit8, Unit3, Unit6, Unit7, Unit4, Unit9;

{$R *.dfm}

//�ͷ��ڴ���Դ
function clearRAM:String;
begin

if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
end;

end;
//----------------------------------------------��ȡ����ϵͳid���----------
function GetOsVersion:integer;
var
    OsVerInfo:TOsVersionInfo;
    majorVer,minorVer:integer;
begin
      result := OsUnknown;
      OsVerInfo.dwOSVersionInfoSize := sizeof(TOsVersionInfo);
      if GetVersionEx(OsVerInfo) then
      begin
          majorVer:= OsVerInfo.dwMajorVersion ;
          minorVer:= OsVerInfo.dwMinorVersion ;
          case OsVerInfo.dwPlatformId of
              VER_PLATFORM_WIN32_NT:      //NT/2000
              begin
                  if (majorVer <= 4) then
                    result:= OsWinNT
                    else if ((majorVer=5 ) and (minorVer=0)) then
                      result:=OsWin2000
                      else if ((majorVer=5) and (minorVer=1)) then
                        result:= OsWinXP
                        else
                          result:= OsWinOther;
              end;

              VER_PLATFORM_WIN32_WINDOWS:  //9X/ME
              begin
                  if ((majorVer=4) and (minorVer=0)) then
                    result := OsWin95
                    else if ((majorVer=4) and (minorVer=10)) then
                          begin
                            if (OsVerInfo.szCSDVersion[1]='A') then
                                result:= OsWin98SE
                            else
                                result:= OsWin98;
                          end
                        else if ((majorVer=4) and (minorVer=90)) then
                          result:= OsWinMe
                          else
                            Result:= OsUnknown;
              end;
              else            //unknown
                result:= OsUnknown;
              end;         //end case

      end;       //end if
end;
//------------------------------------------------------------------
function GetOsVersionName(OsCode:Integer):String;
begin
    case OsCode of
        -1: result:='Microsoft UnKnown';
        0: result:= 'Windows 95';
        1: result:= 'Windows 98';
        2: result:= 'Windows 98SE';
        3: result:= 'Windows ME';
        4: result:= 'Windows NT';
        5: result:= 'Windows 2000';
        6: result:= 'Windows XP';
        7: result:= 'Windows 7+';
       
        else
          result:= 'UnKnown';
    end;
end;
//----------------------------------��ȡ����ϵͳ����------------------

//*****************************************************************************
 function Tmainplay.GetFormNameAt(const Pos: TPoint): string;
var
  w: TWinControl;
begin
  //�õ����ָ���µ�VCL�������
  w:= FindVclWindow(Pos);
  if (w <> nil) then
  begin
    //��W���ϼ�Parent��Ϊ��ʱ�ͼ���������
    while w.Parent <> nil do
      w:= w.Parent;
    //��󷵻ش��������Name
    Result:= w.Name;
  end
  else
    Result:= '';
end;
//******************************************************************************
procedure Tmainplay.SysCommand(var SysMsg: TMessage);
begin
  case SysMsg.WParam of
    SC_CLOSE: // ���ر�ʱ
      begin
        SetWindowPos(Application.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_HIDEWINDOW);
        Hide; // �����������س���
      // ����������ʾͼ��
        with NotifyIcon do
        begin
          cbSize := SizeOf(TNotifyIconData);
          Wnd := Handle;
          uID := 1;
          uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
          uCallBackMessage := WM_NID;
          hIcon := Application.Icon.Handle;
          szTip := 'С������~�������ʣ�';
        end;

        Shell_NotifyIcon(NIM_ADD, @NotifyIcon); // ����������ʾͼ��
      end;
  else
    inherited;
  end;

end;

//------------------------֧���϶�ģ��---------------------------------------
procedure Tmainplay.DropFiles(var Msg: TMessage);
var i, Count: integer;
  buffer: array[0..1024] of Char;
begin
  inherited;
  Count := DragQueryFile(Msg.WParam, $FFFFFFFF, nil, 256); // ��һ�ε��õõ��Ϸ��ļ��ĸ���
  for i := 0 to Count - 1 do
  begin
    buffer[0] := #0;
    DragQueryFile(Msg.WParam, i, buffer, sizeof(buffer)); // �ڶ��ε��õõ��ļ�����
    if (ExtractFileExt(buffer) <> '.mp3') and (ExtractFileExt(buffer) <> '.wma')and (ExtractFileExt(buffer) <> '.wav')and(ExtractFileExt(buffer) <> '.mp2') then
    begin
     rztray.ShowBalloonHint('','��֧�ֲ��Ŵ����ļ���',bhiinfo,10);
      //Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;
    try
      xlist := playlist.lv1.Items.Add;
      xlist.Caption := ExtractFileName(buffer);
      xlist.SubItems.add(ExtractFilePath(buffer));
      MediaPlayer1.FileName := ExtractFilePath(buffer) + xlist.Caption;
      MediaPlayer1.Open;
      skyaudiometer1.active:=true;
      listname.caption:=extractfilename(mediaplayer1.filename);
      trackbar1.Enabled:=true;
      gd.enabled:=true;
      timer1.Enabled:=true;
      timer2.Enabled:=true;
      label1.Caption:='״̬:����' ;
      stat1.panels[0].text:=extractfilename(mediaplayer1.filename);
      MediaPlayer1.Play;
      if chk1.Checked=True then lrcshow.loadlrc(MediaPlayer1.FileName); //���ظ���ļ���
      btn2.Enabled := True;
      btn3.Enabled := true;
      Timer2.Enabled := True;
    except
      on EMCIDeviceError do
      rztray.ShowBalloonHint('','��֧�ֲ��Ŵ����ļ���',bhiinfo,10);
     //  Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    end;
  end;
end;


///------------------------------------------------------------------------------------


procedure Tmainplay.WMNID(var msg: TMessage);
var
  mousepos: TPoint;
begin
  GetCursorPos(mousepos); //��ȡ���λ��
  case msg.LParam of
    WM_LBUTTONUP: // ����������������
      begin
        mainplay.Visible := not mainplay.Visible; // ��ʾ���������

        Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ��ʾ�������ɾ����������ͼ��
        SetWindowPos(Application.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW); // ����������ʾ����
      end;

    WM_RBUTTONUP: mainpop.Popup(mousepos.X, mousepos.Y); // �����˵�
  end;
end;









function ZeroFill(Size: Integer; s: string): string;
var
  a, b: Integer;
  t: string;
begin
  SetLength(t, Size);
  for a := 1 to Size do
    t[a] := '0';
  b := Size;
  for a := Length(s) downto 1 do
  begin
    t[b] := s[a];
    Dec(b); //�Լ����� b=b-1
  end;
  ZeroFill := t;

  end;

  procedure TMainPlay.TrackBar2Change(Sender: TObject);

var
  t, v: Longint;
begin
  t := TrackBar2.Position;
  v := (t shl 8) or (t shl 24);
  waveOutSetVolume(0, v);
end;





procedure TMainPlay.N81Click(Sender: TObject);
var
  i: Integer;
  a: Boolean;
begin
  a := False;
  if opendialog1.Execute then
  begin
    for i := 0 to playlist.Lv1.Items.Count - 1 do   //  1��forѭ������listview
    begin
      if OpenDialog1.FileName = playlist.lv1.Items[i].SubItems.Strings[0] + playlist.lv1.Items[i].Caption then
      begin
        a := True;
        MessageBox(Handle, '�Ѵ����ڲ����б��У�', '��ʾ', MB_OK +
          MB_IconInformation);
        playlist.lv1.SetFocus;
        playlist.Lv1.ItemIndex := i; //ѡ���ظ����б���
        exit;
      end;
    end;
    if a = False then
    begin
    for i:=0 to opendialog1.Files.Count-1 do   //   2��forѭ������opendialog����
      begin
     // Flnm := ExtractFileName(OpenDialog1.FileName);
      xlist := playlist.lv1.Items.Add;
      xlist.Caption :=ExtractFileName(opendialog1.Files[i]);
      xlist.SubItems.add(ExtractFilePath(opendialog1.Files[i]));
      btn1.Enabled := true;
      playlist.lv1.Items[0].Selected:=true;
       end;
    end;
  end;
end;

procedure Tmainplay.MediaPlayer1Notify(Sender: TObject);
var
  i: Integer;
begin

  with mediaplayer1 do
    if mediaplayer1.Position = mediaplayer1.length then
    begin
      if N2.Checked then //���ѡ����˳�򲥷�
      begin
        for i := 0 to playlist.lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.lv1.Items[i].Caption then
          begin
            playlist.lv1.ItemIndex := i;
            Break;
          end;
        end; //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
        if playlist.lv1.ItemIndex = playlist.lv1.Items.Count - 1 then
        begin
          Notify := False;
          skyaudiometer1.Repaint; //�ػ�һ��..
          vision.am2.Repaint;
         btn3Click(Sender); //���֮ǰ���ŵ������һ������ ��ֹͣ����
        end
        else
        begin
          if (IsIconic(mainplay.Handle) = False) and (IsZoomed(mainplay.Handle) = false) then //�˶γ����Ŀ����������״̬���������Ų������
          begin
            playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
            trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
            skyaudiometer1.Repaint; //�ػ�һ��..
            vision.am2.Repaint;
            btn1Click(Sender);
          end
          else
          begin
            playlist.lv1.SetFocus; //ѡ��Ҫ���ŵ��б���
            playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
            trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
            skyaudiometer1.Repaint; //�ػ�һ��..
            vision.am2.Repaint;
            btn1Click(Sender);
          end;

        end;

      end;
      if N3.Checked then //���ѡ����ѭ��
      begin
        mediaplayer1.Position := 0;
        mediaplayer1.Play;
        Notify := true; //��ѭ������ͬһ����Ŀ
      end;

       if N6.Checked then //���ѡ��������
      begin
        mediaplayer1.Position := 0;
        mediaplayer1.Play;
        Notify :=false; //�򲥷���һ����   ֹͣѭ��
      end;

      if N8.Checked then //���ѡ�����б�ѭ������
      begin
        for i := 0 to playlist.lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.lv1.Items[i].Caption then
          begin
            playlist.lv1.ItemIndex := i;
            Break;
          end;
        end; //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
        if playlist.lv1.ItemIndex = playlist.lv1.Items.Count - 1 then playlist.lv1.ItemIndex := -1; //�жϵ�ǰ���ŵ����Ƿ������һ��
        if (IsIconic(mainplay.Handle) = False) and (IsZoomed(mainplay.Handle) = false) then //�˶γ����Ŀ����������״̬���������Ų������
        begin
          playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
          trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
          skyaudiometer1.Repaint; //�ػ�һ��..
          vision.am2.Repaint;
          btn1Click(Sender);
        end
        else
        begin
          playlist.lv1.SetFocus; //ѡ��Ҫ���ŵ��б���
          playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
          trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
          skyaudiometer1.Repaint; //�ػ�һ��..
          vision.am2.Repaint;
          btn1Click(Sender);
        end;
      end;
      if N7.Checked then  //�������
      begin
        Randomize;
        playlist.lv1.ItemIndex := Random(playlist.lv1.Items.Count - 1); //ʹ�����������������Ĳ�����Ŀ
        trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
        skyaudiometer1.Repaint; //�ػ�һ��..
        vision.am2.Repaint;
        btn1Click(Sender);
      end;

    end;

end;




procedure TMainPlay.FormCreate(Sender: TObject);

begin

label4.Caption:=GetOsVersionName(GetOsversion);
//osinfo:OSVERSIONINFO;
//--------------------------------------------------------


sumtime:=0;       //��ǩ������

listname.Caption:='�����ļ�����..';
DragAcceptFiles(Handle, True);
PositionChange := False; //���ó�ʼֵ��
end;

procedure TMainPlay.FormDestroy(Sender: TObject);
begin
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
skyaudiometer1.free;
rztray.free;

end;

procedure TMainPlay.Timer1Timer(Sender: TObject);

begin
 with mediaplayer1 do
    if mode in [mpplaying] then //�������жϲ�����״̬ ��������
      begin

      Trackbar1.Maxvalue := mediaplayer1.Length div 1000; //����ȡ���ļ��ĳ��ȣ�������Ϊ��������ֵ��
      TrackBar1.Position := MediaPlayer1.Position div 1000; //�ò������沥�Ž��Ȼ���
      rztray.Hint:=mainplay.stat1.Panels[0].Text + chr(13)+'  ~С������,��������ʢ��~  ';    //rz������ʾ��Ϣ
      miniplay.vsskin1.Hint:=mainplay.stat1.Panels[0].Text + chr(13)+'  ~С������,��������ʢ��~  ';

      //-------�Ҽ��˵����ſ����л�-----
      n17.Caption:='��ͣ' ;
      n18.Caption:='ֹͣ' ;

      end
    else if mode in [mppaused] then
      begin
        //-------�Ҽ��˵����ſ����л�-----
      n17.Caption:='����' ;
      n18.Caption:='ֹͣ' ;
      end
    else if mode in [mpstopped] then
      begin
       //-------�Ҽ��˵����ſ����л�-----
      n17.Caption:='����' ;
      n18.enabled:=false;
      end;
end;




function AddFormDir(F: string): integer; //����MP3�ļ��ĺ���
var MP3: integer;
  S: TSearchRec;
  i: Integer;
  a: Boolean;
begin
  mp3 := FindFirst(F, faAnyFile, s); //����*.mp3
  while mp3 = 0 do
  begin
    Application.ProcessMessages;
    if (S.Attr and faDirectory) = 0 then
    begin
      a := False;
      for i := 0 to playlist.lv1.Items.Count - 1 do
      begin
        if GetCurrentDir + '\' + s.Name = playlist.Lv1.Items[i].SubItems.Strings[0] + playlist.lv1.items[i].Caption then a := True;
      end;
      if a = false then
      begin
        xlist := playlist.lv1.Items.Add;
        xlist.Caption := s.name;
        xlist.SubItems.add(GetCurrentDir + '\');
       mainplay.btn1.Enabled := true;
      end;

    end;
    MP3 := FindNext(s);
  end;
  result := 1;
end;

{-------------------------------------------------------------------------------
������:    MakeFileList �����ļ��м����ļ���
����:      SWGWEB
����:      2007.11.25
����:      Path,FileExt:string   1.��Ҫ������Ŀ¼ 2.Ҫ�������ļ���չ��
����ֵ:    TStringList

   Eg��ListBox1.Items:= MakeFileList( 'E:\��Ʒ�ɳ�','.exe') ;
       ListBox1.Items:= MakeFileList( 'E:\��Ʒ�ɳ�','.*') ;
-------------------------------------------------------------------------------}
function MakeFileList(Path,FileExt:string):TStringList ;
var
sch:TSearchrec;

begin
Result:=TStringlist.Create;

if rightStr(trim(Path), 1) <> '\' then
    Path := trim(Path) + '\'
else
    Path := trim(Path);

if not DirectoryExists(Path) then
begin
    Result.Clear;
    exit;
end;

if FindFirst(Path + '*', faAnyfile, sch) = 0 then
begin
    repeat
       Application.ProcessMessages;
       if ((sch.Name = '.') or (sch.Name = '..')) then Continue;
       if DirectoryExists(Path+sch.Name) then
       begin
         Result.AddStrings(MakeFileList(Path+sch.Name,FileExt));
       end
       else
       begin
         if (UpperCase(extractfileext(Path+sch.Name)) = UpperCase(FileExt)) or (FileExt='.*') then
         Result.Add(Path+sch.Name);
       end;
    until FindNext(sch) <> 0;
    SysUtils.FindClose(sch);
end;


end;




procedure TMainPlay.btn1Click(Sender: TObject);
var nowindex:integer;
begin

if playlist.Lv1.ItemIndex <> -1 then //�����ж��б�����Ƿ�������
  begin
    mediaplayer1.FileName := playlist.Lv1.Selected.SubItems.Strings[0] + playlist.lv1.Selected.Caption; //
     ID3v1 := TID3v1.Create;
     id3v1.ReadFromFile(mediaplayer1.FileName);
     s2:=id3v1.Artist;
     s1:=id3v1.Title ;
     s3:=id3v1.Album;
    if MediaPlayer1.Mode in [mppaused] then
    begin
      MediaPlayer1.Resume;//�ָ�����״̬--���䲥��λ��
      label1.Caption:='״̬:���� ';
      skyaudiometer1.Open;
      skyaudiometer1.Active:=true;
      vision.am2.Active:=true;


      btn1.Enabled := False;
      btn2.Enabled := True;
    end
    else
    begin
      try
        mediaplayer1.Open;
        mediaplayer1.Play; //�����б����ѡ����ļ�

        label1.Caption:='״̬:���� ';

        skyaudiometer1.active:=true;
        vision.am2.Active:=true;
        mediaplayer1.Notify := true;
        btn1.Enabled := false; //���Ű�ť��Ϊ������
        btn2.Enabled := true;
        btn3.Enabled := true; //��ͣ��ֹͣ��ť��Ϊ����
        timer1.Enabled := true;
        timer2.Enabled := true;
        gd.Enabled:=true;
        listname.Caption:=extractfilename(MediaPlayer1.FileName);
        trackbar1.Enabled := true;
        stat1.Panels[0].Text := copy(extractfilename(MediaPlayer1.FileName),0,length(extractfilename(MediaPlayer1.FileName))-4);
        if ballhint1.Checked then
        begin
        rztray.ShowBalloonHint(copy(extractfilename(MediaPlayer1.FileName),0,length(extractfilename(MediaPlayer1.FileName))-4),'С���������������ʣ�',bhiinfo,10);
        end;
        if chk1.Checked=True then
        begin
        //lrcshow.lst1.Clear;
        lrcshow.lv1.Clear;
        lrcshow.loadlrc(MediaPlayer1.FileName);
        end;
        //��λ��ʾ���ڲ�����
        if playlist.Showing then   playlist.lv1.Selected.MakeVisible(true);

      except
           begin
             try
                nowindex := playlist.Lv1.ItemIndex;
                rztray.ShowBalloonHint('','not support,removing from playlist',bhiinfo,10);
                playlist.Lv1.DeleteSelected; //ɾ��ѡ�е��б���
                playlist.Lv1.ItemIndex:=nowindex;   //ѡ��һ��
                playlist.lv1DblClick(sender);
             except                            //��֤������������쳣����
             end;

           end;

      end;
      //�ͷ���Դ
      clearRAM;



    end;
  end;

end;



procedure TMainPlay.N5Click(Sender: TObject);
begin
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
rztray.Free;
Application.Terminate;



 
end;

procedure TMainPlay.N37Click(Sender: TObject);
begin
N38.Checked:=false;  N37.Checked:=true;
skyaudiometer1.AMStyle:=smsSpectrum; //Ƶ��
end;

procedure TMainPlay.N38Click(Sender: TObject);
begin
 N37.Checked:=false;  N38.Checked:=true;
skyaudiometer1.AMStyle:=smsOscillograph; //ʾ����
end;

procedure TMainPlay.N41Click(Sender: TObject);
begin
n41.checked:=true;
n42.checked:=false;
n43.checked:=false;
skyaudiometer1.wavemode:=svmnubby;
end;

procedure TMainPlay.N42Click(Sender: TObject);
begin
n42.checked:=true;
n41.checked:=false;
n43.checked:=false;
skyaudiometer1.wavemode:=svmLine;
end;

procedure TMainPlay.N43Click(Sender: TObject);
begin
n43.checked:=true;
n42.checked:=false;
n41.checked:=false;
skyaudiometer1.wavemode:=svmdot;
end;

procedure TMainPlay.N110Click(Sender: TObject);
begin
n110.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=1;
end;

procedure TMainPlay.N210Click(Sender: TObject);
begin
n210.Checked:=true;n110.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=2;
end;

procedure TMainPlay.N310Click(Sender: TObject);
begin
n310.Checked:=true;n210.Checked:=false;n110.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=3;
end;

procedure TMainPlay.N410Click(Sender: TObject);
begin
n410.Checked:=true;n210.Checked:=false;n310.Checked:=false;n110.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=4;
end;

procedure TMainPlay.N510Click(Sender: TObject);
begin
n510.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n110.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=5;
end;

procedure TMainPlay.N68Click(Sender: TObject);
begin
n68.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n110.Checked:=false;
skyaudiometer1.FreqWidth:=6;
end;

procedure TMainPlay.N111Click(Sender: TObject);
begin
n111.Checked:=true;n211.Checked:=false;n311.Checked:=false;
skyaudiometer1.FreqSpace:=1;
end;

procedure TMainPlay.N211Click(Sender: TObject);
begin
n211.Checked:=true;n111.Checked:=false;n311.Checked:=false;
skyaudiometer1.FreqSpace:=2
end;

procedure TMainPlay.N311Click(Sender: TObject);
begin
 n311.Checked:=true;n211.Checked:=false;n111.Checked:=false;
skyaudiometer1.FreqSpace:=3;
end;

procedure TMainPlay.Timer3Timer(Sender: TObject);
var j:string  ;
begin
case   dayofweek(now)   of
    1:j:= '������';
    2:j:= '����һ';
    3:j:= '���ڶ�';
    4:j:= '������';
    5:j:= '������';
    6:j := '������';
    7:j:= '������';
    end;


 playlist.label3.Caption:=formatdatetime('yyyy-mm-dd ',now)+j+formatdatetime(' hh:nn:ss',now) ;
end;


procedure TMainPlay.N22Click(Sender: TObject);
begin
n22.checked:=true;
n72.Checked:=false;
n73.Checked:=false;
skyaudiometer1.ForeColor:=$00A4EE9D;
end;

procedure TMainPlay.N72Click(Sender: TObject);
begin
n72.checked:=true;
n22.Checked:=false;
n73.Checked:=false;
skyaudiometer1.ForeColor:=$000080FF;
end;

procedure TMainPlay.N73Click(Sender: TObject);
begin
n73.checked:=true;
n72.Checked:=false;
n22.Checked:=false;
skyaudiometer1.ForeColor:=$00DBA7F3;
end;




procedure TMainPlay.Timer2Timer(Sender: TObject);
begin
with mediaplayer1 do
    if mode in [mpplaying] then
    begin

      TrackBar1.Maxvalue := MediaPlayer1.Length div 1000;
      stat1.Panels[2].Text := ZeroFill(2, IntToStr(TrackBar1.Maxvalue div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Maxvalue mod 60)) + '   ';

      TrackBar1.Position := Position div 1000;
      stat1.Panels[1].Text := ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));
       label2.Caption:=ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));

    end;
end;

procedure TMainPlay.btn2Click(Sender: TObject);
begin
 case mediaplayer1.Mode of
    mpplaying:
      begin
        mediaplayer1.Pause;
        label1.Caption:='״̬:��ͣ ';
        label2.Caption:=ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));

        skyaudiometer1.active:=false;
        vision.am2.Active:=false;
        btn1.Enabled := True;
        btn2.Enabled := False;
      end;
  end;
end;

procedure TMainPlay.btn3Click(Sender: TObject);
begin
case mediaplayer1.Mode of
    mpplaying:
      begin
        label1.Caption:='״̬:ֹͣ ';
        label2.Caption:='00:00';
        skyaudiometer1.active:=false;
        skyaudiometer1.Repaint;// ��repaint����ʵ��Ƶ�׵��ػ�...... 2012.4.3  edit by bruce
        vision.am2.Active:=false;
        vision.am2.repaint;
        vision.am2.Repaint;
        MediaPlayer1.Stop;
        TrackBar1.Position := 0;
        btn1.Enabled := true;
        btn2.Enabled := false;
        btn3.Enabled := false;
        trackbar1.Enabled := false;
        stat1.Panels[0].Text := 'ֹͣ����';
        listname.Caption:='�����ļ�����..';
    end;
  end;
end;



procedure TMainPlay.btn4Click(Sender: TObject);

begin

  if playlist.Lv1.ItemIndex = -1 then exit; //����б�Ϊ�գ���ִ�����

   if (not playlist.Showing)  then  VsHotSpot7click(sender) ;//�ж��б����Ƿ�������ʾ
   
  with mediaplayer1 do //ʹ���жϲ�����״̬��䣬������ֱ��ִ��Mediaplayer.stop�����������
    if mode in [mpopen, mpplaying] then
    begin
     //ȡ�õ�ǰ�����ļ������
      playlist.lv1.ItemIndex :=   playlist.lv1.Selected.Index    ;

      // ��֤�б����ѡ�еĲ��ǵ�һ��
      if playlist.lv1.ItemIndex > 0 then
      begin
        playlist.lv1.SetFocus;
         //<>�������
              if not n7.Checked   then    playlist.lv1.ItemIndex := playlist.lv1.ItemIndex - 1;
              //�������
              if n7.Checked  then    playlist.lv1.ItemIndex :=random(playlist.lv1.Items.Count-1);

        btn1Click(Sender);
      end
      else//��ǰ���ŵ��ǵ�һ��
      begin
         playlist.lv1.SetFocus;
         playlist.lv1.ItemIndex :=playlist.Lv1.Items.Count -1; //�������һ��
         btn1Click(Sender);
      end;
    end
    else   //��ǰδ����
    begin
      if playlist.lv1.ItemIndex > 0 then // ��֤�б���������ݣ���ִ��������䣬����Ҳ�����
      begin
        playlist.lv1.SetFocus;
        playlist.Lv1.ItemIndex := playlist.lv1.ItemIndex - 1;
      end;
    end;
end;

procedure TMainPlay.VsHotSpot7Click(Sender: TObject);
begin
n70click(sender);

end;

procedure TMainPlay.op1Click(Sender: TObject);
begin
n81click(sender);
end;

procedure TMainPlay.N70Click(Sender: TObject);
begin
n70.Checked := not n70.Checked;
if n70.Checked then
playlist.Hide
else
playlist.Show;
end;

procedure TMainPlay.N2Click(Sender: TObject);
begin
n2.checked:=true;
n3.Checked:=false;
n6.Checked:=false;
n7.Checked :=false ;
n8.Checked :=false;
end;

procedure TMainPlay.N3Click(Sender: TObject);
begin
n3.checked:=true;
n2.Checked:=false;
n6.Checked:=false;
n7.Checked :=false ;
n8.Checked :=false;
end;

procedure TMainPlay.N6Click(Sender: TObject);
begin
n6.checked:=true;
n3.Checked:=false;
n2.Checked:=false;
n7.Checked :=false ;
n8.Checked :=false;
end;

procedure TMainPlay.N7Click(Sender: TObject);
begin
n7.checked:=true;
n3.Checked:=false;
n6.Checked:=false;
n2.Checked :=false;
n8.Checked :=false;
end;

procedure TMainPlay.N8Click(Sender: TObject);
begin
n8.checked:=true;
n3.Checked:=false;
n6.Checked:=false;
n7.Checked :=false ;
n2.Checked :=false;
end;

procedure TMainPlay.N9Click(Sender: TObject);
var //����ļ����е�MP3,wma�ļ�
  dir: string;
  i:integer;
index:integer;
mypath:string;
myfilename:string;
str:string;
result:tstringlist;
begin
  if selectdirectory('��ѡ��Ŀ¼', '', dir) then
  begin
  result:=TStringlist.Create;
    //ChDir(Dir); //���õ�ǰ·��Ϊ����Ŀ¼
   // AddFormDir('*.mp3');
    //AddFormDir('*.wma');
   // AddFormDir('*.wav');
    result:=MakeFileList(dir,'.mp3') ;   //װ�������ļ��ϵ�result
    //result:=result.add(MakeFileList(dir,'.wma')) ;
   // result:=result.add(MakeFileList(dir,'.wav')) ;
     for i := 0 to Result.Count - 1 do     //�������Ϸֱ���ӵ�listview
        begin

              str:=Result[i];
              index:=LastDelimiter('\',str);
              mypath:=copy(str,0,index) ;
              myfilename:=copy(str,index+1,length(str)-index) ;
              xlist := playlist.lv1.Items.Add;
              xlist.Caption := myfilename;
              xlist.SubItems.add(mypath);

        end;



  end;
 // FindClose(s);
end;


procedure TMainPlay.btn5Click(Sender: TObject);
begin

  if playlist.lv1.ItemIndex = -1 then exit;     //δѡ���κ����

  if (not playlist.Showing)  then  VsHotSpot7click(sender) ; ;//�ж��б����Ƿ�������ʾ
  
  with mediaplayer1 do
    if mode in [mpopen, mpplaying] then
    begin
      //ȡ�õ�ǰ�����ļ������
      playlist.lv1.ItemIndex :=   playlist.lv1.Selected.Index    ;

      //��ǰ���ŵĲ������һ��index++
      if playlist.lv1.ItemIndex <> playlist.lv1.Items.count - 1  then //�����ǰ���ŵĲ������һ��
      begin

              playlist.lv1.SetFocus;
              //<>�������
              if not n7.Checked   then    playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
              //�������
              if n7.Checked  then    playlist.lv1.ItemIndex :=random(playlist.lv1.Items.Count-1);
              btn1Click(Sender);

      end
      else//��ǰ���ŵ������һ��
      begin
         playlist.lv1.SetFocus;
         playlist.lv1.ItemIndex :=0;
         btn1Click(Sender);
      end;
    end
    else   //��ǰδ����
    begin
      if playlist.lv1.ItemIndex = playlist.lv1.Items.count - 1 then  exit ;
      playlist.lv1.SetFocus;
      playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
    end;

    
end;

procedure TMainPlay.N52Click(Sender: TObject);
begin
winexec('shutdown -R -t 0',0);
end;



procedure TMainPlay.VsHotSpot1Click(Sender: TObject);
begin
application.Minimize;
if minilrc.Showing then
begin
n79.Checked:=FALSE;
minilrc.close;
n79.Checked:=true;
minilrc.Show;
end;
end;
procedure TMainPlay.N80Click(Sender: TObject);
begin
if MediaPlayer1.Mode in [mpplaying] then
begin
miniplay.vsplay.GraphicName:='pause.bmp';
end
else
begin
miniplay.vsplay.GraphicName:='play.bmp';
end;

mainplay.Left:=screen.Width+1;
playlist.left:=screen.Width+1;  

miniplay.Show;

end;

procedure TMainPlay.N79Click(Sender: TObject);
begin
n79.Checked:=true;
n44.Checked:=false;
if chk1.Checked then   begin
minilrc.Show;
lrcshow.hide;

end
else
begin
chk1.Checked:=true;
lrcshow.Show;
minilrc.show;
lrcshow.hide;

end;
end;

procedure TMainPlay.N83Click(Sender: TObject);
 var
  List: TStringList;
begin
 if MediaPlayer1.Mode in[mpplaying] then
 begin
opendialog3.Filter:='LRC����ļ�|*.LRC'  ;
if opendialog3.Execute then
  begin


        lrcshow.lv1.Items.Clear;
        List := TStringList.Create;
        try
          List.LoadFromFile (opendialog3.FileName);
          List.SaveToFile (ExtractFilePath(mainplay.MediaPlayer1.FileName)+copy(extractfilename(mainplay.MediaPlayer1.FileName),0,length(extractfilename(mainplay.MediaPlayer1.FileName))-4)+'.lrc');  //���浽�ļ�  
        finally
          List.Free;
        end;


 //lrcshow.lst1.Items.LoadFromFile(opendialog3.FileName);
 //lrcshow.lst1.Items.SaveToFile(ExtractFilePath(mainplay.MediaPlayer1.FileName)+copy(extractfilename(mainplay.MediaPlayer1.FileName),0,length(extractfilename(mainplay.MediaPlayer1.FileName))-4)+'.lrc');


          if(mainplay.chk1.Checked) then begin lrcshow.lv1.Clear;lrcshow.loadlrc(mainplay.MediaPlayer1.FileName);end else begin lrcshow.lv1.Clear;mainplay.chk1.Checked:=true;end;//��ǰ�Ǵ򿪵ģ��������+���� ����ǰû�򿪣����ڴ�

  end;
 end else  showmessage('δ����');
end;

procedure TMainPlay.N82Click(Sender: TObject);
begin
serlrc.show;
end;

procedure TMainPlay.N84Click(Sender: TObject);
begin
lrcshow.tmr1.Enabled:=false;
mainplay.chk1.Checked:=false;
editlrc.show;
lrcshow.Close;

end;

procedure TMainPlay.N4Click(Sender: TObject);
begin
mainplay.RzTray.RestoreApp;
 miniplay.close;
 mainplay.Left:=(screen.Width-mainplay.Width) div 2;
 playlist.Left:=(screen.Width-mainplay.Width) div 2 ;
 mainplay.Visible:=true;
  mainplay.show;
//SetWindowPos(Application.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW);
//  Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
end;

procedure TMainPlay.chk1Click(Sender: TObject);
begin
 if chk1.Checked = True then
  begin
   minilrc.Hide;
   lrcshow.show;

    if MediaPlayer1.Mode in[mpplaying] then lrcshow.loadlrc(MediaPlayer1.FileName);
      end;
  if chk1.Checked = False then lrcshow.hide;
end;

procedure TMainPlay.VsHotSpot2Click(Sender: TObject);
begin
n5click(sender);
end;

procedure TMainPlay.TrackBar1Change(Sender: TObject);
begin
 if trackbar1.Position <> mediaplayer1.Position div 1000 then Positionchange := true;
  if positionchange then //��������ô˲����ͱ�������TIMER�¼�����һ�ξʹ������¼��������������ֲ��źܿ���������
  begin
    with mediaplayer1 do
    begin
      if mode in [mpopen, mpplaying] then //�жϲ�����״̬�����Ϊ�򿪻��߲���״̬����ִ����������
      begin
        timer1.Enabled := false;
        position := trackbar1.Position * 1000;
        play;
        timer1.Enabled := true;

      end;
    end;
  end;
  Positionchange := false; //�ָ�ΪFALSE�������������������һ�λ������������ֲ�����
end;

procedure TMainPlay.N11Click(Sender: TObject);
begin
about.show;
end;

procedure TMainPlay.N10Click(Sender: TObject);
begin
MessageBox(Handle, '��ø�������Ŀ¼һ�£�������ܼ��ظ�ʴ���~~~~~�������䣺qhdsoftware@163.com~~~~~QQ:654714226', PChar('Powerd BY Bruce��С����~~ 2012~03'), MB_OK);
end;

procedure TMainPlay.SinaBlog1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','http://northpark.cn/cm/list','buci',nil, SW_SHOWNORMAL);
end;

procedure TMainPlay.Qzone1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','http://blog.northpark.cn/','blog',nil, SW_SHOWNORMAL);
end;



procedure TMainPlay.N17Click(Sender: TObject);
begin
if n17.Caption='����' then
begin
btn1click(sender);
end
else if n17.Caption='��ͣ' then
btn2click(sender);
end;

procedure TMainPlay.N18Click(Sender: TObject);
begin
btn3click(sender);
end;

procedure TMainPlay.N20Click(Sender: TObject);
begin
 if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 + 2000;
    mediaplayer1.play;
  end;
end;

procedure TMainPlay.N21Click(Sender: TObject);
begin
 if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 - 2000;
    mediaplayer1.play;
  end;
end;

procedure TMainPlay.N24Click(Sender: TObject);
begin
btn4click(sender);
end;

procedure TMainPlay.N25Click(Sender: TObject);
begin
btn5click(sender);
end;

procedure TMainPlay.N27Click(Sender: TObject);
begin
 mcisendstring('set cdaudio door open wait', nil, 0, handle);//����
end;

procedure TMainPlay.N28Click(Sender: TObject);
begin
 mcisendstring('set cdaudio door closed wait', nil, 0, handle); //�ر�
end;

procedure TMainPlay.N30Click(Sender: TObject);
begin

TrackBar2.Position:=TrackBar2.Position+60;
end;

procedure TMainPlay.N31Click(Sender: TObject);
begin
TrackBar2.Position:=TrackBar2.Position - 60;
end;

procedure TMainPlay.N32Click(Sender: TObject);
var
  v:LongInt;
begin
  case N32.Checked of
     False:
     begin
    N32.Checked:=True;
    n32.caption:='ȡ������';
    N30.Enabled:=False;  //��������
    N31.Enabled:=False;  //��С...

    TrackBar2.Enabled:=False; //����..
    v := (0 shl 8) or (0 shl 24);
    waveOutSetVolume(0, v);
     end;

      true:
    begin
    N32.Checked:=False;
    N32.Caption:='����';
    N30.Enabled:=True;
    N31.Enabled:=True;



    TrackBar2.Enabled:=true;
    v := (255 shl 8) or (255 shl 24);
    waveOutSetVolume(0, v);

    end;
  end;

end;


procedure TMainPlay.N44Click(Sender: TObject);
begin
chk1.Checked:=true;
n44.Checked:=true;
n79.Checked:=false;
chk1click(sender);
end;

procedure TMainPlay.gdTimer(Sender: TObject);   //��ʱ�� ���Ʊ�ǩ���л�
var
   strTrim:Widestring; //ֻ����ַ�������� WideString ���ɽ��������ĵ������ˡ�--edit by bruce 2012/10/1 0:23
   strScroll:Widestring;
   begin
//ǧǧ�����Ĳ���Ҳ��250
 strScroll:= gundong.Caption;
 strTrim:= copy(strScroll,1,18); //��ȡ��1���ַ�
 Delete(strScroll,1,1);         //����1���ַ�ɾ��
 //gundong.Caption:=strScroll+strTrim;        //��ԭ����1���ַ��ŵ����һλ
 if length( gundong.Caption)>18 then begin
 gundong.Caption:=strScroll+' '+strTrim;                 //���ȳ�����Ź�������ȡ��
 end;
  //��ʾ������

if sumtime mod 64 = 0 then
begin
gundong.caption:='����:'+stat1.Panels[2].Text;
end

else
if sumtime mod 64 = 16 then
begin
gundong.Caption:='����:' + s1;
end

else
if sumtime mod 64 = 32 then
begin
gundong.Caption:='����:' + s2;
end;

if sumtime mod 64 = 48 then
begin
gundong.Caption:='ר��:' + s3 ;
end;
 sumtime:=sumtime + 1;
end;

procedure TMainPlay.SkyAudioMeter1Click(Sender: TObject);
begin
if skyaudiometer1.AMStyle = smsSpectrum then
  begin
  skyaudiometer1.AMStyle := smsOscillograph ;
  n38.Checked:=true;
  n37.Checked:=false ;
  end
  else begin
           skyaudiometer1.AMStyle := smsSpectrum ;
           n38.Checked:=false;
           n37.Checked:=true;
       end;
end;

procedure TMainPlay.N45Click(Sender: TObject);
begin
vshotspot1click(sender);
end;

procedure TMainPlay.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
rztray.free;
skyaudiometer1.free;

end;

procedure TMainPlay.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
rztray.Free;
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
skyaudiometer1.free;

end;



procedure TMainPlay.N47Click(Sender: TObject);
begin
winexec(Pchar('notepad'),sw_Show);
end;

procedure TMainPlay.Ping1Click(Sender: TObject);
begin

 winexec(pchar('cmd   /c ipconfig >>D:\Ip.txt'),sw_show); // ipconfig ִ�н���ۼӵ� c:\2.txt �ļ���
 ShellExecute(handle, 'open','D:\Ip.txt','IP',nil, SW_SHOWNORMAL);
// ShellExecute(handle, 'open','D:\Ip.txt','IP',nil, SW_SHOWNORMAL);
 

end;

procedure TMainPlay.N48Click(Sender: TObject);
begin
winexec(Pchar('cmd'),sw_Show);//�������
end;

procedure TMainPlay.N49Click(Sender: TObject);
begin
 winexec(Pchar('RegEdit'),sw_Show);
end;

procedure TMainPlay.N51Click(Sender: TObject);
begin
winexec(pchar('cmd /c shutdown -s -t 0'),sw_shownormal);
end;



procedure TMainPlay.VsCheckBox1Click(Sender: TObject);
begin
chk1click(sender);
end;

procedure TMainPlay.jzlstTimer(Sender: TObject);
 var
  buf: Tstringlist;
  i: Integer;
  begin

  //ͣ�ó�ʼ��ʱ��
  jzlst.Enabled:=false;


 //��λ�����λ��

 mainplay.height := mainskin.Height;
 mainplay.Width := mainskin.Width;
 mainplay.Left := (screen.width - mainplay.Width) div 2;
 mainplay.Top := (screen.Height -mainplay.Height) div 2;
 playlist.Top := mainplay.Top +mainplay.Height;
 playlist.Left :=mainplay.Left;
 playlist.Show;


//---------------------------�Զ������б�---created by bruce 2012.4.4
 if FileExists(ExtractFilePath(ParamStr(0))+'bruce.log')=true then
 begin
     {AssignFile(F,  ExtractFilePath(ParamStr(0))+'bruce.ini'); //�ж��Ƿ�Ϊ���ı�
        Reset(F);
        if   filesize(F) > 0   then        //���ı��Ƴ�---2012.4.6--by bruce

        begin }
          buf := tstringlist.create;
          buf.loadfromfile(ExtractFilePath(ParamStr(0))+'bruce.log');

          for i := 0 to buf.Count - 1 do
           begin
            xlist := playlist.lv1.Items.Add;//����÷���xlist.Caption ���Ͼ䣬ÿʹ��һ������һ��
            xlist.Caption := ExtractFileName(buf.Strings[i]);
            xlist.SubItems.add(ExtractFilePath(buf.Strings[i]));
           end;
           buf.free;
         //  playlist.lv1.Items[0].Selected;
         btn1.Enabled := True;
       // btn1click(sender);
         end;

        end;








//-------------------------------�Զ������б�---created by bruce 2012.4.4


procedure TMainPlay.SkyAudioMeter1DblClick(Sender: TObject);
var 
    h:THandle; 


begin
if mediaplayer1.Mode in [mpplaying] then
begin
if  SkyAudioMeter1.AMStyle=smsSpectrum then
begin
 vision.am2.AMStyle:=smsSpectrum ; vision.ppfx.Checked:=true; vision.sbq.Checked:=false;
end else begin
vision.am2.AMStyle:=smsOscillograph  ;  vision.ppfx.Checked:=false; vision.sbq.Checked:=true;
end;
 vision.width:=screen.Width;
vision.height:=screen.Height;
vision.am2.active:=true;
vision.Show;
//---------------------------------------
 h:=findwindow( 'Shell_TrayWnd ',nil); 
    showWindow(h,sw_hide);
    //------------------------------------
end;
end;

procedure TMainPlay.N34Click(Sender: TObject);
begin
SkyAudioMeter1dblclick(sender);
end;

{procedure TMainPlay.soundClick(Sender: TObject);
var v:longint;
begin
if sound.GraphicName='sound_on.bmp' then
begin
    N32.Checked:=True;
    n32.caption:='ȡ������';
    N30.Enabled:=False;  //��������
    N31.Enabled:=False;  //��С...

    TrackBar2.Enabled:=False; //����..
    v := (0 shl 8) or (0 shl 24);
    waveOutSetVolume(0, v);
sound.GraphicName:='sound_off.bmp';
sound.Hint:='~ȡ������~';
end  else
begin
N32.Checked:=False;
    N32.Caption:='����';
    N30.Enabled:=True;
    N31.Enabled:=True;
    TrackBar2.Enabled:=true;
    v := (255 shl 8) or (255 shl 24);
    waveOutSetVolume(0, v);
    sound.GraphicName:='sound_on.bmp';
    sound.Hint:='~����~';
end;
 end;
 }
procedure TMainPlay.qq1Timer(Sender: TObject);
var
  winPos: TPoint;
  t: integer;
  b: boolean;
  l: boolean;
begin
  b:= false;
  l:=false;
  if (mainplay.Top <= 3) then
  begin
    b:= true;
    t:= 0;
  end
  else if mainplay.Left + mainplay.Width - Screen.Width >= 0 then
  begin
    b:= true;
    t:= mainplay.Top;
  end
  else if  mainplay.Left<=20 then
  begin
     l:= true;
     t:=mainplay.top;
  end
  else
    t:= mainplay.top;
if b then
  begin
    //�õ���ǰ���ָ�������Ļ�ϵ�����
    GetCursorPos(winPos);
    //�����ָ���µĴ����Name����form1.nameʱ
    if mainplay.Name = GetFormNameAt(winPos)  then
    {�ڴ����ǿ���Ϊform1ȡһ���ر�����ƣ��Է��б�Ĵ�������������ͬ}
    begin
      //ͣ��Timer2
      mainplay.qq2.Enabled:= false;
      //form1��Top����Ļ����
      mainplay.Top:= t;
      if t <> 0 then
        mainplay.Left:= Screen.Width - mainplay.Width;
        playlist.Left:=mainplay.Left;
         playlist.Top:=mainplay.Top+mainplay.Height;
    end
    else if  playlist.name = GetFormNameAt(winPos)   then
     begin
      //ͣ��Timer2
      mainplay.qq2.Enabled:= false;
      //form1��Top����Ļ����
      mainplay.Top:= t;
      if t <> 0 then
        mainplay.Left:= Screen.Width - mainplay.Width;
         playlist.Left:=mainplay.Left;
          playlist.Top:=mainplay.Top+mainplay.Height;
    end
    else begin
      mainplay.qq2.Enabled:= true;
    end;
  end  else
  if l then
  begin
    //�õ���ǰ���ָ�������Ļ�ϵ�����
    GetCursorPos(winPos);
    //�����ָ���µĴ����Name����form1.nameʱ
    if mainplay.Name = GetFormNameAt(winPos)  then
    {�ڴ����ǿ���Ϊform1ȡһ���ر�����ƣ��Է��б�Ĵ�������������ͬ}
    begin
      //ͣ��Timer2
      mainplay.qq2.Enabled:= false;
      //form1��Top����Ļ����
      mainplay.top:= t;
      if t <> 0 then
        mainplay.Left:= 0;
        playlist.Left:=mainplay.Left;
    end  else if playlist.Name = GetFormNameAt(winPos)  then
    {�ڴ����ǿ���Ϊform1ȡһ���ر�����ƣ��Է��б�Ĵ�������������ͬ}
    begin
      //ͣ��Timer2
      mainplay.qq2.Enabled:= false;
      //form1��Top����Ļ����
      mainplay.top:= t;
      if t <> 0 then
        mainplay.Left:= 0;
        playlist.Left:=mainplay.Left;
    end else begin
      mainplay.qq2.Enabled:= true;
    end;
    end;
end;

procedure TMainPlay.qq2Timer(Sender: TObject);
begin

if mainplay.Top <= 5 then
  begin
    //��form1�����ƣ�����Ļ�Ϸ�¶��3����
    mainplay.Top:= -(mainplay.Height + playlist.Height - 3);
    playlist.Top:= -(playlist.Height - 3);
    if (mainplay.Left + mainplay.Width >= Screen.Width) then
      begin
      mainplay.Left:= Screen.Width - mainplay.Width;
       playlist.Left:=mainplay.Left;
       playlist.Top:=mainplay.Top+mainplay.Height;
       end
  end

  // �� left ����Ļ�²� 20 ����ʱ,�Զ�����
  else if mainplay.Left + mainplay.Width - Screen.Width >= -20 then
    //��form1�����ƣ�����Ļ�ҷ�¶��4����
    begin
    mainplay.Left:= Screen.Width - 4;
     playlist.Left:=mainplay.Left;
     end else
       if mainplay.left <=20 then
     begin
    mainplay.Left:= -mainplay.width + 4;
     playlist.Left:=mainplay.Left;
  end;

end;


procedure TMainPlay.trackbar1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
trackbar1.Hint:='����'+ZeroFill(2, IntToStr(x div 60))
        + ':' + ZeroFill(2, IntToStr(y mod 60));
trackbar1.ShowHint:=true;
end;

procedure TMainPlay.ballhint1Click(Sender: TObject);
begin
ballhint1.Checked:=not  ballhint1.Checked;
end;

procedure TMainPlay.VsHotSpot3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
mainpop.popup(Self.Left+VsHotSpot3.Left+VsHotSpot3.Width+10,Self.Top+VsHotSpot3.top+VsHotSpot3.Height-30);
end;

procedure TMainPlay.N35Click(Sender: TObject);
 var
  buf: Tstringlist;
  i:integer;
 begin
          if opendialog2.Execute then
          begin

          buf := tstringlist.create;
          buf.loadfromfile(opendialog2.FileName);

          for i := 0 to buf.Count - 1 do
           begin
            xlist := playlist.lv1.Items.Add;//����÷���xlist.Caption ���Ͼ䣬ÿʹ��һ������һ��
            xlist.Caption := ExtractFileName(buf.Strings[i]);
            xlist.SubItems.add(ExtractFilePath(buf.Strings[i]));
           end;

           buf.free;
          end;
         //  playlist.lv1.Items[0].Selected;
         btn1.Enabled := True;
end;

procedure TMainPlay.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if (msg.CharCode=37) then
n21.click;
if(msg.CharCode=39) then
n20.Click;
if (msg.CharCode=38) then
n30.click;
if(msg.CharCode=40) then
n31.Click;
end;





procedure TMainPlay.VsHotlrcClick(Sender: TObject);
begin


if chk1.Checked = True then
  begin
   chk1.Checked:=false;
   lrcshow.Hide;
  end;
  if chk1.Checked = False then chk1.Checked:=true;;
end;


end.
