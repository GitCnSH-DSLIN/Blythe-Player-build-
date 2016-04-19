unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, MPlayer, Registry, Mmsystem, FileCtrl,
  Menus, ShellAPI, AppEvnts, Buttons, ImgList, SkyAudioMeter, WinSkinData,
  OBMagnet;
const WM_NID = WM_User + 1000;

type
  TForm1 = class(TForm)
    MediaPlayer1: TMediaPlayer;
    TrackBar1: TTrackBar;
    OpenDialog1: TOpenDialog;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Timer2: TTimer;
    N3: TMenuItem;
    PopupMenu2: TPopupMenu;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    mm1: TMainMenu;
    N9: TMenuItem;
    N10: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    CDDVDROM1: TMenuItem;
    CDDVDROM2: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    btn5: TBitBtn;
    N22: TMenuItem;
    N23: TMenuItem;
    btn6: TBitBtn;
    btn7: TBitBtn;
    N11: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N12: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    lbl2: TLabel;
    stat1: TStatusBar;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    il1: TImageList;
    btn1: TBitBtn;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    SkyAudioMeter1: TSkyAudioMeter;
    TrackBar2: TTrackBar;
    chk1: TCheckBox;
    SpeedButton8: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    lv1: TListView;
    PopupMenu3: TPopupMenu;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N53: TMenuItem;
    N52: TMenuItem;
    N101: TMenuItem;
    N201: TMenuItem;
    N301: TMenuItem;
    N401: TMenuItem;
    N501: TMenuItem;
    N601: TMenuItem;
    N70701: TMenuItem;
    N801: TMenuItem;
    N901: TMenuItem;
    N54: TMenuItem;
    listname: TMenuItem;
    SkinData1: TSkinData;
    N55: TMenuItem;
    QQ1: TMenuItem;
    MSN1: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    IP1: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
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
    N70: TMenuItem;
    N71: TMenuItem;
    Label3: TLabel;
    Timer3: TTimer;
    Timer4: TTimer;
    OBFormMagnet1: TOBFormMagnet;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure TrackBar2Change(Sender: TObject);
    procedure ClearPlaylistClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    {procedure ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);}
    procedure N2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure MediaPlayer1Notify(Sender: TObject);
    procedure TrackBar1Change(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure CDDVDROM1Click(Sender: TObject);
    procedure CDDVDROM2Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure OpenDialog2Close(Sender: TObject);
    procedure SaveDialog1Close(Sender: TObject);
    procedure lv1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure lv1DblClick(Sender: TObject);
    procedure OpenDialog1Close(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N35Click(Sender: TObject);
    procedure N36Click(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure N37Click(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure N101Click(Sender: TObject);
    procedure N201Click(Sender: TObject);
    procedure N301Click(Sender: TObject);
    procedure N401Click(Sender: TObject);
    procedure N501Click(Sender: TObject);
    procedure N601Click(Sender: TObject);
    procedure N70701Click(Sender: TObject);
    procedure N801Click(Sender: TObject);
    procedure N901Click(Sender: TObject);
    procedure QQ1Click(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure MSN1Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure N62Click(Sender: TObject);
    procedure IP1Click(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure N63Click(Sender: TObject);
    procedure N110Click(Sender: TObject);
    procedure N210Click(Sender: TObject);
    procedure N310Click(Sender: TObject);
    procedure N410Click(Sender: TObject);
    procedure N510Click(Sender: TObject);
    procedure N68Click(Sender: TObject);
    procedure N111Click(Sender: TObject);
    procedure N211Click(Sender: TObject);
    procedure N311Click(Sender: TObject);
    procedure N70Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GroupBox1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure GroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N71Click(Sender: TObject);
      private
    procedure DropFiles(var Msg: TMessage); message WM_DropFILES;
    procedure SysCommand(var SysMsg: TMessage); message WM_SYSCOMMAND;
    procedure WMNID(var msg: TMessage); message WM_NID;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Positionchange: boolean;
  Include_SubDir: boolean;
  s: integer;
  NotifyIcon: TNotifyIconData;
  Flnm: string;
  xlist: TListItem;
implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TForm1.SysCommand(var SysMsg: TMessage);
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


procedure TForm1.WMNID(var msg: TMessage);
var
  mousepos: TPoint;
begin
  GetCursorPos(mousepos); //��ȡ���λ��
  case msg.LParam of
    WM_LBUTTONUP: // ����������������
      begin
        Form1.Visible := not Form1.Visible; // ��ʾ���������

        Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ��ʾ�������ɾ����������ͼ��
        SetWindowPos(Application.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW); // ����������ʾ����
      end;

    WM_RBUTTONUP: PopupMenu2.Popup(mousepos.X, mousepos.Y); // �����˵�
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



procedure TForm1.Timer1Timer(Sender: TObject);
begin
  with mediaplayer1 do
    if mode in [mpplaying] then //�������жϲ�����״̬ ��������
    begin
      Trackbar1.Max := mediaplayer1.Length div 1000; //����ȡ���ļ��ĳ��ȣ�������Ϊ��������ֵ��
      TrackBar1.Position := MediaPlayer1.Position div 1000; //�ò������沥�Ž��Ȼ���
    end;

end;

procedure TForm1.DropFiles(var Msg: TMessage);
var i, Count: integer;
  buffer: array[0..1024] of Char;
begin
  inherited;
  Count := DragQueryFile(Msg.WParam, $FFFFFFFF, nil, 256); // ��һ�ε��õõ��Ϸ��ļ��ĸ���
  for i := 0 to Count - 1 do
  begin
    buffer[0] := #0;
    DragQueryFile(Msg.WParam, i, buffer, sizeof(buffer)); // �ڶ��ε��õõ��ļ�����
    if (ExtractFileExt(buffer) <> '.mp3') and (ExtractFileExt(buffer) <> '.wma')and (ExtractFileExt(buffer) <> '.wav') then
    begin
      Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
      Exit;
    end;
    try
      xlist := lv1.Items.Add;
      xlist.Caption := ExtractFileName(buffer);
      xlist.SubItems.add(ExtractFilePath(buffer));
      MediaPlayer1.FileName := ExtractFilePath(buffer) + xlist.Caption;
      MediaPlayer1.Open;
      skyaudiometer1.active:=true;
      listname.caption:=extractfilename(mediaplayer1.filename);
      trackbar1.Enabled:=true;
      timer1.Enabled:=true;
      timer2.Enabled:=true;
      label1.Caption:='״̬:����' ;
      stat1.panels[0].text:=extractfilename(mediaplayer1.filename);
      MediaPlayer1.Play;
      if chk1.Checked=True then Form3.loadlrc(MediaPlayer1.FileName); //���ظ���ļ���
      btn2.Enabled := True;
      btn3.Enabled := true;
      Timer2.Enabled := True;
    except
      on EMCIDeviceError do
        Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    end;
  end;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
label3.Cursor:=crHandPoint;
listname.Caption:='�����ļ�����..';
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;

  DragAcceptFiles(Handle, True);
  PositionChange := False; //���ó�ʼֵ��
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
end;

procedure TForm1.Button8Click(Sender: TObject);
begin //�رչ���

end;

procedure TForm1.ListBox1DblClick(Sender: TObject);
begin
  if lv1.ItemIndex <> -1 then //�����ж��б������Ƿ�Ϊ�գ���Ϊ��ִ����������
  begin
    btn1Click(sender);
  end;

end;

procedure TForm1.TrackBar2Change(Sender: TObject); //��������(����ȫ��������
var
  t, v: Longint;
begin
  t := TrackBar2.Position;
  v := (t shl 8) or (t shl 24);
  waveOutSetVolume(0, v);
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
      for i := 0 to Form1.lv1.Items.Count - 1 do
      begin
        if GetCurrentDir + '\' + s.Name = Form1.Lv1.Items[i].SubItems.Strings[0] + form1.lv1.items[i].Caption then a := True;
      end;
      if a = false then
      begin
        xlist := Form1.lv1.Items.Add;
        xlist.Caption := s.name;
        xlist.SubItems.add(GetCurrentDir + '\');
        form1.btn1.Enabled := true;
      end;

    end;
    MP3 := FindNext(s);
  end;
  result := 1;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  case mediaplayer1.Mode of
    mpplaying:
      begin
        mediaplayer1.Pause;
        label1.Caption:='״̬:��ͣ ';
        label2.Caption:=ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));
        skyaudiometer1.active:=false;
        btn1.Enabled := True;
        btn2.Enabled := False;
      end;
  end;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
label1.Caption:='״̬:ֹͣ ';
        label2.Caption:='00:00';
  skyaudiometer1.active:=false;
  MediaPlayer1.Stop;
  TrackBar1.Position := 0;
  btn1.Enabled := true;
  btn2.Enabled := false;
  btn3.Enabled := false;
  trackbar1.Enabled := false;
  stat1.Panels[0].Text := 'ֹͣ����';
  listname.Caption:='�����ļ�����..';
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;

end;

procedure TForm1.btn4Click(Sender: TObject);
var
  i: Integer;
begin
  if Lv1.ItemIndex = -1 then exit; //����б�Ϊ�գ���ִ�����
  with mediaplayer1 do //ʹ���жϲ�����״̬��䣬������ֱ��ִ��Mediaplayer.stop�����������
    if mode in [mpopen, mpplaying] then
    begin
      for i := 0 to Lv1.Items.Count do
      begin
        if MediaPlayer1.FileName = lv1.Items[i].SubItems.strings[0] + Lv1.Items[i].Caption then //�͵�һ�е�I�бȽ�
        begin
          lv1.ItemIndex := i;
          skyaudiometer1.active:=false;
          Break;
        end;
      end; //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
      if lv1.ItemIndex > 0 then // ��֤�б���������ݣ���ִ��������䣬����Ҳ�����
      begin
        lv1.SetFocus;
        lv1.ItemIndex := lv1.ItemIndex - 1;
        btn1Click(Sender);
      end;
    end
    else
    begin
      if lv1.ItemIndex > 0 then // ��֤�б���������ݣ���ִ��������䣬����Ҳ�����
      begin
        lv1.SetFocus;
        Lv1.ItemIndex := lv1.ItemIndex - 1;
      end;
    end;
end;

procedure TForm1.btn5Click(Sender: TObject);
var
  i: Integer;
begin
  if Lv1.ItemIndex = -1 then exit;
  with mediaplayer1 do
    if mode in [mpopen, mpplaying] then
    begin
      for i := 0 to Lv1.Items.Count - 1 do
      begin
        if MediaPlayer1.FileName = lv1.Items[i].SubItems.strings[0] + Lv1.Items[i].Caption then //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
        begin
          Lv1.ItemIndex := i;
          skyaudiometer1.active:=false;
          Break;
        end;
      end;
      if lv1.ItemIndex <> lv1.Items.count - 1 then //�����ǰ���ŵĲ������һ��
      begin
        lv1.SetFocus;
        Lv1.ItemIndex := lv1.ItemIndex + 1;
        btn1Click(Sender);
      end;
    end
    else
    begin
      if lv1.ItemIndex = lv1.Items.count - 1 then Exit;
      lv1.SetFocus;
      lv1.ItemIndex := lv1.ItemIndex + 1;
    end;
end;


procedure TForm1.N8Click(Sender: TObject);
begin
  N7.Checked := False;
  N8.Checked := True;
  N20.Checked := False;
  N21.Checked := False;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
  N7.Checked := False;
  N8.Checked := False;
  N20.Checked := True;
  N21.Checked := False;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  N7.Checked := False;
  N8.Checked := False;
  N20.Checked := False;
  N21.Checked := True;
end;



procedure TForm1.ClearPlaylistClick(Sender: TObject);
begin
  Lv1.Items.Clear; //��ղ����б�
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  if Lv1.ItemIndex <> -1 then
  begin
    btn1Click(sender);

  end;
end;

{procedure TForm1.ListBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var                      //����Ҽ�ѡ���б���
point:tpoint;
mouseitem:integer;
  begin
  point.X:=x;
  point.Y:=y;
  mouseitem:=Lv1.Items.ItemAtPos(point,true);//��ȡ���λ�����ڵ��б�����
 if mouseitem=-1 then //����������λ��û������
 begin
 N1.Enabled:=False;  //�򲥷Ų˵�������
 N2.Enabled:=False;  //ɾ���˵�����ʹ��
 N3.Enabled:=False;
 end
    else
    begin
    N1.Enabled:=True;
    N2.Enabled:=True;
    N3.Enabled:=True;
   ListBox1.ItemIndex:=mouseitem; //����Ļ��ָ�Ϊ���ź�ɾ���˵����ã���ѡ���б���
   end;
     end;}

procedure TForm1.N2Click(Sender: TObject);
begin
  Lv1.DeleteSelected; //ɾ��ѡ�е��б���
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if MessageBox(Handle, 'ȷʵҪɾ�����ļ���', PChar('ȷ��ɾ��'), MB_yesno + MB_ICONINFORMATION) = idyes then
  begin
    with mediaplayer1 do
      if mode in [mpplaying] then
      begin
        btn3Click(sender); //����ڲ���״̬��ֹͣ����
        deletefile(Lv1.Selected.SubItems.Strings[0] + lv1.Selected.Caption); //ɾ���ļ�
        lv1.DeleteSelected; //ɾ��ѡ�е��б���
      end
      else
      begin
        deletefile(Lv1.Selected.SubItems.Strings[0] + lv1.Selected.Caption); //ɾ���ļ�
        lv1.DeleteSelected; //ɾ��ѡ�е��б���
      end;
  end;
end;



procedure TForm1.N4Click(Sender: TObject);
begin
  Form1.Visible := true; // ��ʾ����
  SetWindowPos(Application.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW);
  Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // ɾ������ͼ��
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  Lv1.Clear;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  with mediaplayer1 do
    if mode in [mpplaying] then
    begin
      TrackBar1.Max := MediaPlayer1.Length div 1000;
      stat1.Panels[2].Text :='ʱ��:'+ ZeroFill(2, IntToStr(TrackBar1.max div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.max mod 60)) + '   ';

      TrackBar1.Position := Position div 1000;
      stat1.Panels[1].Text := ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));
       label2.Caption:=ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));

    end;
end;

procedure TForm1.MediaPlayer1Notify(Sender: TObject);
var
  i: Integer;
begin
  
  with mediaplayer1 do
    if mediaplayer1.Position = mediaplayer1.length then
    begin
      if N7.Checked then //���ѡ����˳�򲥷�
      begin
        for i := 0 to lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = lv1.Items[i].SubItems.strings[0] + Lv1.Items[i].Caption then
          begin
            Lv1.ItemIndex := i;
            Break;
          end;
        end; //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
        if Lv1.ItemIndex = Lv1.Items.Count - 1 then
        begin
          Notify := False;
          btn3Click(Sender); //���֮ǰ���ŵ������һ������ ��ֹͣ����
        end
        else
        begin
          if (IsIconic(Form1.Handle) = False) and (IsZoomed(Form1.Handle) = false) then //�˶γ����Ŀ����������״̬���������Ų������
          begin
            Lv1.ItemIndex := lv1.ItemIndex + 1;
            trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
            btn1Click(Sender);
          end
          else
          begin
            lv1.SetFocus; //ѡ��Ҫ���ŵ��б���
            Lv1.ItemIndex := lv1.ItemIndex + 1;
            trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
            btn1Click(Sender);
          end;

        end;

      end;
      if N8.Checked then //���ѡ����ѭ��
      begin
        mediaplayer1.Position := 0;
        mediaplayer1.Play;
        Notify := true; //��ѭ������ͬһ����Ŀ
      end;
      if N20.Checked then //���ѡ�����б�ѭ������
      begin
        for i := 0 to Lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = lv1.Items[i].SubItems.strings[0] + Lv1.Items[i].Caption then
          begin
            Lv1.ItemIndex := i;
            Break;
          end;
        end; //��ѭ����������жϵ�ǰ���ڲ��ŵ�����һ���б���
        if lv1.ItemIndex = lv1.Items.Count - 1 then lv1.ItemIndex := -1; //�жϵ�ǰ���ŵ����Ƿ������һ��
        if (IsIconic(Form1.Handle) = False) and (IsZoomed(Form1.Handle) = false) then //�˶γ����Ŀ����������״̬���������Ų������
        begin
          Lv1.ItemIndex := lv1.ItemIndex + 1;
          trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
          btn1Click(Sender);
        end
        else
        begin
          lv1.SetFocus; //ѡ��Ҫ���ŵ��б���
          Lv1.ItemIndex := lv1.ItemIndex + 1;
          trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
          btn1Click(Sender);
        end;
      end;
      if N21.Checked then
      begin
        Randomize;
        Lv1.ItemIndex := Random(lv1.Items.Count - 1); //ʹ�����������������Ĳ�����Ŀ
        trackbar1.Position := 0; //�˴�������0,��������ʱ�������̵��ļ��ᴥ��TrackBar1Change���Զ�����ȥ
        btn1Click(Sender);
      end;

    end;

end;





procedure TForm1.TrackBar1Change(Sender: TObject);
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

procedure TForm1.N13Click(Sender: TObject);
var
  i: Integer;
  a: Boolean;
begin
  a := False;
  if opendialog1.Execute then
  begin
    for i := 0 to Lv1.Items.Count - 1 do
    begin
      if OpenDialog1.FileName = lv1.Items[i].SubItems.Strings[0] + lv1.Items[i].Caption then
      begin
        a := True;
        MessageBox(Handle, '�Ѵ����ڲ����б��У�', '��ʾ', MB_OK +
          MB_ICONINFORMATION);
        lv1.SetFocus;
        Lv1.ItemIndex := i; //ѡ���ظ����б���
        exit;
      end;
    end;
    if a = False then
    begin
      Flnm := ExtractFileName(OpenDialog1.FileName);
      xlist := lv1.Items.Add;
      xlist.Caption := Flnm;
      xlist.SubItems.add(ExtractFilePath(OpenDialog1.FileName));
      btn1.Enabled := true;
    end;
  end;
end;


procedure TForm1.N14Click(Sender: TObject);
var //����ļ����е�MP3,wma�ļ�
  dir: string;
  S: TSearchRec;
begin
  if selectdirectory('��ѡ��Ŀ¼', '', dir) then
  begin
    ChDir(Dir); //���õ�ǰ·��Ϊ����Ŀ¼
    AddFormDir('*.mp3');
    AddFormDir('*.wma');
    AddFormDir('*.wav');
  end;
  FindClose(s);
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  form2.ShowModal;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
 form4.Show;
end;

procedure TForm1.CDDVDROM1Click(Sender: TObject);
begin
  mcisendstring('set cdaudio door open wait', nil, 0, handle);
end;

procedure TForm1.CDDVDROM2Click(Sender: TObject);
begin
  mcisendstring('set cdaudio door closed wait', nil, 0, handle);
end;

procedure TForm1.N18Click(Sender: TObject);
var
  buf: Tstrings;
  i: Integer;
  begin
  if opendialog2.Execute then
  begin
    buf := tstringlist.create;
    buf.loadfromfile(OpenDialog2.FileName);
    xlist := lv1.Items.Add;
    for i := 0 to buf.Count - 1 do
    begin
      xlist.Caption := ExtractFileName(buf.Strings[i]);
      xlist.SubItems.add(ExtractFilePath(buf.Strings[i]));
    end;
    buf.free;
    btn1.Enabled := True;
  end;
end;

procedure TForm1.N19Click(Sender: TObject);
var
  plylst: TStrings;
  i: Integer;
begin
  if savedialog1.Execute then
  begin
    plylst := TStringList.Create;
    for i := 0 to lv1.Items.Count - 1 do //����ѭ����䱣��listview�������б�
    begin
      plylst.Add(lv1.Items[i].SubItems.Strings[0] + lv1.Items[i].Caption);
    end;
    plylst.SaveToFile(SaveDialog1.FileName);
    plylst.Free;
  end;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
  N7.Checked := True;
  N8.Checked := False;
  N20.Checked := False;
  N21.Checked := False;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  if Lv1.ItemIndex <> -1 then //�����ж��б�����Ƿ�������
  begin
    mediaplayer1.FileName := Lv1.Selected.SubItems.Strings[0] + lv1.Selected.Caption; //
    if MediaPlayer1.Mode in [mppaused] then
    begin
      MediaPlayer1.Resume;//�ָ�����״̬--���䲥��λ��
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
        mediaplayer1.Notify := true;
        btn1.Enabled := false; //���Ű�ť��Ϊ������
        btn2.Enabled := true;
        btn3.Enabled := true; //��ͣ��ֹͣ��ť��Ϊ����
        timer1.Enabled := true;
        timer2.Enabled := true;
        listname.Caption:=extractfilename(MediaPlayer1.FileName);
        trackbar1.Enabled := true;
        stat1.Panels[0].Text :=  ExtractFileName(mediaplayer1.FileName);
        if chk1.Checked=True then
        begin
        Form3.lst1.Clear;
        Form3.loadlrc(MediaPlayer1.FileName);
        end;
      except
        on EMCIDeviceError do
          MessageBox(Handle, '�޷����ţ�����·�������ļ����Ƿ���ȷ��', '����',
            MB_OK + MB_ICONSTOP);

      end;


    end;
  end;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 + 2000;
    mediaplayer1.play;
  end;
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 - 2000;
    mediaplayer1.play;
  end;
end;

procedure TForm1.N24Click(Sender: TObject);
begin
  if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 + 2000;
    mediaplayer1.play;
  end;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
  if MediaPlayer1.Mode in [mpplaying] then
  begin
    MediaPlayer1.Position := TrackBar1.Position * 1000 - 2000;
    mediaplayer1.play;
  end;
end;

procedure TForm1.OpenDialog2Close(Sender: TObject);
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
end;

procedure TForm1.SaveDialog1Close(Sender: TObject);
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
end;

procedure TForm1.lv1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
  if lv1.ItemIndex = -1 then //�������λ��û������
  begin
    N1.Enabled := False; //�򲥷Ų˵�������
    N2.Enabled := False; //ɾ���˵�����ʹ��
    N3.Enabled := False;
    N11.Enabled:=False;
  end
  else
  begin
    N1.Enabled := True;
    N2.Enabled := True;
    N3.Enabled := True;
    N11.Enabled:=True;
    ; //����Ļ��ָ�Ϊ���ź�ɾ���˵����ã���ѡ���б���
  end;
end;

procedure TForm1.lv1DblClick(Sender: TObject);
begin
  btn1Click(sender);
end;

procedure TForm1.OpenDialog1Close(Sender: TObject);
begin
  if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
  end;
end;

procedure TForm1.chk1Click(Sender: TObject);
begin
  if chk1.Checked = True then
  begin
   form3.show;
  
    if MediaPlayer1.Mode in[mpplaying] then Form3.loadlrc(MediaPlayer1.FileName);
      end;
  if chk1.Checked = False then Form3.Close;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
TrackBar2.Position:=TrackBar2.Position+60;
end;

procedure TForm1.N29Click(Sender: TObject);
begin
TrackBar2.Position:=TrackBar2.Position-60;
end;

procedure TForm1.N32Click(Sender: TObject);
var
  v:LongInt;
begin
  case N32.Checked of
     False:
     begin
    N32.Checked:=True;
    n32.caption:='ȡ������';
    N28.Enabled:=False;
    N29.Enabled:=False;
    n30.Enabled:=false ;
  N31.Enabled:=false;
  N33.Enabled :=false ;
   n30.Checked:=false ;
  N31.Checked:=false;
  N33.Checked :=false ;
  TrackBar2.Enabled:=False;
    v := (0 shl 8) or (0 shl 24);
  waveOutSetVolume(0, v);
  end;
    true:
    begin
    N32.Checked:=False;
    N32.Caption:='����';
    N28.Enabled:=True;
    N29.Enabled:=True;
    n30.Enabled:=true ;
  N31.Enabled:=true;
  N33.Enabled :=true ;
  N33.Checked:=True;
  TrackBar2.Enabled:=true;
    v := (255 shl 8) or (255 shl 24);
  waveOutSetVolume(0, v);

  end;
    end;

end;

procedure TForm1.N30Click(Sender: TObject);
begin
  N30.Checked:=True;
  N31.Checked:=False;
  N33.Checked:=False;
waveoutsetvolume(0, 255 shl 8);
end;

procedure TForm1.N31Click(Sender: TObject);
var
  rv:LongInt;
  begin
    N30.Checked:=false;
  N31.Checked:=true;
  N33.Checked:=False;
    waveoutsetvolume(0, 0 shl 8);
   waveoutgetvolume(0, @rv);
  rv := rv and $0000FFFF or (255 shl 24);
  waveoutsetvolume(0, rv);
  end;

procedure TForm1.N33Click(Sender: TObject);
var
  v:LongInt ;
begin
  N30.Checked:=false;
  N31.Checked:=False;
  N33.Checked:=true;
  v := (255 shl 8) or (255 shl 24);
  waveOutSetVolume(0, v);
end;

procedure TForm1.N11Click(Sender: TObject);  //��ȡ�ļ����ԵĹ���
var
  filename : string;
  sei : TShellExecuteInfo;
begin

        filename:=lv1.Selected.SubItems.Strings[0]+lv1.Selected.Caption;//��ȡ����·�����ļ���
        FillChar(sei,SizeOf(sei),#0);
        sei.cbSize:=SizeOf(sei);
        sei.lpFile:=PChar(filename);
        sei.lpVerb:='properties';
        sei.fMask:=SEE_MASK_INVOKEIDLIST;
        ShellExecuteEx(@sei);


end;

procedure TForm1.N35Click(Sender: TObject);
begin
btn4Click(sender);
end;

procedure TForm1.N36Click(Sender: TObject);
begin
 btn5Click(sender);
end;

{procedure TForm1.N37Click(Sender: TObject);
begin
lv1.Selected.EditCaption;//������

end;

procedure TForm1.lv1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if   Key   =   VK_F2   then   
            Lv1.Selected.EditCaption;
end; }

procedure TForm1.tmr1Timer(Sender: TObject);
begin
Form3.Left:=Form1.Left+form1.Width;
end;

procedure TForm1.N37Click(Sender: TObject);
begin
  N38.Checked:=false;  N37.Checked:=true;
skyaudiometer1.AMStyle:=smsSpectrum; //Ƶ��
end;

procedure TForm1.N38Click(Sender: TObject);
begin
  N37.Checked:=false;  N38.Checked:=true;
skyaudiometer1.AMStyle:=smsOscillograph; //ʾ����
end;

procedure TForm1.N42Click(Sender: TObject);
begin
n42.checked:=true;
n41.checked:=false;
n43.checked:=false;
skyaudiometer1.wavemode:=svmLine;
end;

procedure TForm1.N41Click(Sender: TObject);
begin
n41.checked:=true;
n42.checked:=false;
n43.checked:=false;
skyaudiometer1.wavemode:=svmnubby;
end;

procedure TForm1.N43Click(Sender: TObject);
begin
n43.checked:=true;
n42.checked:=false;
n41.checked:=false;
skyaudiometer1.wavemode:=svmdot;
end;

procedure TForm1.N46Click(Sender: TObject);
begin
N46.Checked:=not N46.Checked;
if n46.Checked then

form1.Height:=206

else

form1.Height:=685;
end;

procedure TForm1.N52Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=255    ;
end;

procedure TForm1.N101Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=230;
end;

procedure TForm1.N201Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=205    ;
end;

procedure TForm1.N301Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=180    ;
end;

procedure TForm1.N401Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=155   ;
end;

procedure TForm1.N501Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=130    ;
end;

procedure TForm1.N601Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=105    ;
end;

procedure TForm1.N70701Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=80   ;
end;

procedure TForm1.N801Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=55    ;
end;

procedure TForm1.N901Click(Sender: TObject);
begin
Form1.AlphaBlendValue:=30    ;
end;

procedure TForm1.QQ1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','http://user.qzone.qq.com/1007136434?ptlang=2052','Qzone',nil, SW_SHOWNORMAL);
end;

procedure TForm1.N56Click(Sender: TObject);
begin
 ShellExecute(handle, 'open','http://blog.sina.com.cn/u/1843375347','SINABLOG',nil, SW_SHOWNORMAL);
end;

procedure TForm1.MSN1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','https://skydrive.live.com/?cid=167e4f5d97555488','MSNSKY',nil, SW_SHOWNORMAL);
end;

procedure TForm1.N59Click(Sender: TObject);
begin
winexec(Pchar('cmd'),sw_Show);//�������
end;

procedure TForm1.N60Click(Sender: TObject);
begin
 winexec(Pchar('RegEdit'),sw_Show);
end;

procedure TForm1.N62Click(Sender: TObject);
begin
winexec(Pchar('notepad'),sw_Show);
end;

procedure TForm1.IP1Click(Sender: TObject);
begin
// ipconfig ִ�н���ۼӵ� c:\2.txt �ļ���
 winexec(pchar('cmd   /c ipconfig >>D:\Ip.txt'),sw_show);
  //���µ�һ�ν�����浽 c:\2.txt �ļ���
  winexec(pchar('cmd   /c ipconfig >D:\Ip.txt'),sw_show);
  ShellExecute(handle, 'open','D:\Ip.txt','IP',nil, SW_SHOWNORMAL);
end;

procedure TForm1.N61Click(Sender: TObject);
begin
winexec(pchar('cmd /c shutdown -s -t 60'),sw_shownormal);
end;

procedure TForm1.N63Click(Sender: TObject);
begin
winexec('shutdown -R -t 0',0);
end;

procedure TForm1.N110Click(Sender: TObject);
begin
n110.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=1;
end;

procedure TForm1.N210Click(Sender: TObject);
begin
n210.Checked:=true;n110.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=2;
end;

procedure TForm1.N310Click(Sender: TObject);
begin
n310.Checked:=true;n210.Checked:=false;n110.Checked:=false;n410.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=3;
end;

procedure TForm1.N410Click(Sender: TObject);
begin
n410.Checked:=true;n210.Checked:=false;n310.Checked:=false;n110.Checked:=false;n510.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=4;
end;

procedure TForm1.N510Click(Sender: TObject);
begin
n510.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n110.Checked:=false;n68.Checked:=false;
skyaudiometer1.FreqWidth:=5;
end;

procedure TForm1.N68Click(Sender: TObject);
begin
n68.Checked:=true;n210.Checked:=false;n310.Checked:=false;n410.Checked:=false;n510.Checked:=false;n110.Checked:=false;
skyaudiometer1.FreqWidth:=6;
end;

procedure TForm1.N111Click(Sender: TObject);
begin
n111.Checked:=true;n211.Checked:=false;n311.Checked:=false;
skyaudiometer1.FreqSpace:=1;
end;

procedure TForm1.N211Click(Sender: TObject);
begin
n211.Checked:=true;n111.Checked:=false;n311.Checked:=false;
skyaudiometer1.FreqSpace:=2;
end;

procedure TForm1.N311Click(Sender: TObject);
begin
     n311.Checked:=true;n211.Checked:=false;n111.Checked:=false;
skyaudiometer1.FreqSpace:=3;
end;

procedure TForm1.N70Click(Sender: TObject);
begin
N70.Checked:=not n70.Checked;
if n70.Checked then

form1.Height:=206

else

form1.Height:=685;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var j:string  ;
begin
case   dayofweek(now)   of
    1:j:= '������ ';
    2:j:= '����һ ';
    3:j:= '���ڶ� ';
    4:j:= '������ ';
    5:j:= '������ ';
    6:j := '������ ';
    7:j:= '������ ';
    end;

 label3.Caption:=formatdatetime(' yyyy-mm-dd  ',now)+j+formatdatetime('hh:nn:ss',now) ;
 label3.Left:=label3.Left-1;
 if label3.Left=0 then
 begin

 timer3.Enabled:=false;
 timer4.Enabled:=true;

 end;

end;

procedure TForm1.Label3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 label3.Font.Color:=clred;
label3.Font.Style:=[fsUnderline];
timer3.Enabled:=false;
timer4.Enabled:=false;
end;

procedure TForm1.Label3MouseLeave(Sender: TObject);
begin
label3.Font.Color:=clgreen;
label3.Font.Style:=[];
timer3.Enabled:=true;

end;

procedure TForm1.Timer4Timer(Sender: TObject);
var j:string  ;
begin
case   dayofweek(now)   of
    1:j:= '������ ';
    2:j:= '����һ ';
    3:j:= '���ڶ� ';
    4:j:= '������ ';
    5:j:= '������ ';
    6:j := '������ ';
    7:j:= '������ ';
    end;

 label3.Caption:=formatdatetime(' yyyy-mm-dd  ',now)+j+formatdatetime('hh:nn:ss',now) ;
 label3.Left:=label3.Left+1;
 if label3.Left=form1.Width-label3.Width  then
 begin
  timer4.Enabled:=false;
  timer3.Enabled:=true;

 end;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
const      //û�б�����  �����϶�����İ취
    sc_dragmove   =   $f012;
begin
if   form1.Top   <=0   then   form1.Top   :=2;
    releasecapture;
    twincontrol(application.mainform).perform(wm_syscommand,sc_dragmove,   0);
end;

procedure TForm1.GroupBox1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
 const
    sc_dragmove   =   $f012;
begin
 if   form1.Top   <=0   then   form1.Top   :=2;
    releasecapture;
    twincontrol(application.mainform).perform(wm_syscommand,sc_dragmove,   0);
end;


procedure TForm1.GroupBox2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
 const
    sc_dragmove   =   $f012;
begin
 if   form1.Top   <=0   then   form1.Top   :=2;
    releasecapture;
    twincontrol(application.mainform).perform(wm_syscommand,sc_dragmove,   0);
end;

procedure TForm1.N71Click(Sender: TObject);
begin
 MessageBox(Handle, '��ø�������Ŀ¼һ�£�������ܼ��ظ�ʴ���~~~~~�������䣺qhdsofeware@163.com~~~~~QQ:654714226', PChar('Powerd BY Bruce��С����~~ 2012~03'), MB_OK);
end;

end.



//==============================����λ���϶�����İ취=======================
const      //û�б�����  �����϶�����İ취
    sc_dragmove   =   $f012;
begin
if   form1.Top   <=0   then   form1.Top   :=2;
    releasecapture;
    twincontrol(application.mainform).perform(wm_syscommand,sc_dragmove,   0);
//===========================================================================

