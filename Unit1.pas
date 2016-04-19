unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VsControls, VsSkin, VsImageClip, ComCtrls, SkyAudioMeter,Mmsystem,FileCtrl,
  VsComposer, WinSkinData, Menus,ShellAPI,AppEvnts, OBMagnet, ExtCtrls, MPlayer, StdCtrls,
  VsHotSpot, VsImage, RzTray,  RzCommon,Registry, VsCheckBox, VsImageText;
 const WM_NID = WM_User + 1000;
type
  TMainPlay = class(TForm)
    VsComposer1: TVsComposer;
    mainskin: TVsSkin;
    SkyAudioMeter1: TSkyAudioMeter;
    TrackBar2: TTrackBar;
    TrackBar1: TTrackBar;
    SkinData1: TSkinData;
    Label3: TLabel;
    MediaPlayer1: TMediaPlayer;
    OpenDialog1: TOpenDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Timer1: TTimer;
    yhcpu: TTimer;
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
    N78: TMenuItem;
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
    Timer4: TTimer;
    stat1: TStatusBar;
    btn4: TVsHotSpot;
    btn1: TVsHotSpot;
    btn2: TVsHotSpot;
    btn3: TVsHotSpot;
    btn5: TVsHotSpot;
    op1: TVsHotSpot;
    VsHotSpot7: TVsHotSpot;
    Label1: TLabel;
    Label2: TLabel;
    chk1: TCheckBox;
    StartUpTimer: TTimer;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    VsHotSpot1: TVsHotSpot;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    SinaBlog1: TMenuItem;
    Qzone1: TMenuItem;
    MSNLite1: TMenuItem;
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
    sound: TVsHotSpot;
    VsHotSpot2: TVsHotSpot;
    vskbps: TLabel;
    vshz: TLabel;
    mi: TVsHotSpot;
    milrc: TVsHotSpot;
    cicle: TVsHotSpot;
    cicletoend: TVsHotSpot;
    openlist: TVsHotSpot;
    VsHotSpot3: TVsHotSpot;
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
    procedure Label3MouseEnter(Sender: TObject);
    procedure Label3MouseLeave(Sender: TObject);
    procedure Timer4Timer(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N72Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure StartUpTimerTimer(Sender: TObject);
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
    procedure MSNLite1Click(Sender: TObject);
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
    procedure yhcpuTimer(Sender: TObject);
    procedure VsCheckBox1Click(Sender: TObject);
    procedure jzlstTimer(Sender: TObject);
    procedure SkyAudioMeter1DblClick(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure soundClick(Sender: TObject);
    procedure miClick(Sender: TObject);
    procedure milrcClick(Sender: TObject);
    procedure openlistClick(Sender: TObject);
    procedure VsHotSpot3Click(Sender: TObject);
    procedure cicleClick(Sender: TObject);
    procedure cicletoendClick(Sender: TObject);




  private


    { Private declarations }
  public
  procedure DropFiles(var Msg: TMessage); message WM_DropFILES;
      procedure SysCommand(var SysMsg: TMessage); message WM_SYSCOMMAND;
    procedure WMNID(var msg: TMessage); message WM_NID;
    { Public declarations }
  end;




var
  MainPlay: TMainPlay;
  Positionchange: boolean;
  Include_SubDir: boolean;
  s: integer;
  NotifyIcon: TNotifyIconData;
  Flnm: string;
  xlist: TListItem;
  sumtime :Integer   ;
  s1,s2,gs :string;          //s1:歌手  s2:歌曲名     gs:歌曲格式
  list : TStringlist;     //分离字符串

implementation

uses Unit2, Unit5, Unit8, Unit3, Unit6, Unit7, Unit4, Unit9;

{$R *.dfm}

procedure Tmainplay.SysCommand(var SysMsg: TMessage);
begin
  case SysMsg.WParam of
    SC_CLOSE: // 当关闭时
      begin
        SetWindowPos(Application.Handle, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_HIDEWINDOW);
        Hide; // 在任务栏隐藏程序
      // 在托盘区显示图标
        with NotifyIcon do
        begin
          cbSize := SizeOf(TNotifyIconData);
          Wnd := Handle;
          uID := 1;
          uFlags := NIF_ICON or NIF_MESSAGE or NIF_TIP;
          uCallBackMessage := WM_NID;
          hIcon := Application.Icon.Handle;
          szTip := '小步静听~静听精彩！';
        end;

        Shell_NotifyIcon(NIM_ADD, @NotifyIcon); // 在托盘区显示图标
      end;
  else
    inherited;
  end;

end;

//------------------------支持拖动模块---------------------------------------
procedure Tmainplay.DropFiles(var Msg: TMessage);
var i, Count: integer;
  buffer: array[0..1024] of Char;
begin
  inherited;
  Count := DragQueryFile(Msg.WParam, $FFFFFFFF, nil, 256); // 第一次调用得到拖放文件的个数
  for i := 0 to Count - 1 do
  begin
    buffer[0] := #0;
    DragQueryFile(Msg.WParam, i, buffer, sizeof(buffer)); // 第二次调用得到文件名称
    if (ExtractFileExt(buffer) <> '.mp3') and (ExtractFileExt(buffer) <> '.wma')and (ExtractFileExt(buffer) <> '.wav')and(ExtractFileExt(buffer) <> '.mp2') then
    begin
      Application.MessageBox('不支持播放此类文件！', '错误', MB_OK + MB_ICONSTOP + MB_TOPMOST);
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
      label1.Caption:='状态:播放' ;
      stat1.panels[0].text:=extractfilename(mediaplayer1.filename);
      MediaPlayer1.Play;
      if chk1.Checked=True then lrcshow.loadlrc(MediaPlayer1.FileName); //加载歌词文件！
      btn2.Enabled := True;
      btn3.Enabled := true;
      Timer2.Enabled := True;
    except
      on EMCIDeviceError do
        Application.MessageBox('不支持播放此类文件！', '错误', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    end;
  end;
end;


///------------------------------------------------------------------------------------


procedure Tmainplay.WMNID(var msg: TMessage);
var
  mousepos: TPoint;
begin
  GetCursorPos(mousepos); //获取鼠标位置
  case msg.LParam of
    WM_LBUTTONUP: // 在托盘区点击左键后
      begin
        mainplay.Visible := not mainplay.Visible; // 显示主窗体与否

        Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 显示主窗体后删除托盘区的图标
        SetWindowPos(Application.Handle, HWND_TOP, 0, 0, 0, 0, SWP_SHOWWINDOW); // 在任务栏显示程序
      end;

    WM_RBUTTONUP: mainpop.Popup(mousepos.X, mousepos.Y); // 弹出菜单
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
    Dec(b); //自减函数 b=b-1
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
    for i := 0 to playlist.Lv1.Items.Count - 1 do   //  1重for循环控制listview
    begin
      if OpenDialog1.FileName = playlist.lv1.Items[i].SubItems.Strings[0] + playlist.lv1.Items[i].Caption then
      begin
        a := True;
        MessageBox(Handle, '已存在于播放列表中！', '提示', MB_OK +
          MB_IconInformation);
        playlist.lv1.SetFocus;
        playlist.Lv1.ItemIndex := i; //选定重复的列表项
        exit;
      end;
    end;
    if a = False then
    begin
    for i:=0 to opendialog1.Files.Count-1 do   //   2重for循环控制opendialog个数
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
      if N2.Checked then //如果选择了顺序播放
      begin
        for i := 0 to playlist.lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.lv1.Items[i].Caption then
          begin
            playlist.lv1.ItemIndex := i;
            Break;
          end;
        end; //此循环语句用于判断当前正在播放的是哪一个列表项
        if playlist.lv1.ItemIndex = playlist.lv1.Items.Count - 1 then
        begin
          Notify := False;
          skyaudiometer1.Repaint; //重绘一次..
          vision.am2.Repaint;
         btn3Click(Sender); //如果之前播放的是最后一首音乐 则停止播放
        end
        else
        begin
          if (IsIconic(mainplay.Handle) = False) and (IsZoomed(mainplay.Handle) = false) then //此段程序的目的是在托盘状态下连续播放不会出错
          begin
            playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
            trackbar1.Position := 0; //此处必须置0,否则遇到时间比自身短的文件会触发TrackBar1Change会自动跳过去
            skyaudiometer1.Repaint; //重绘一次..
            vision.am2.Repaint;
            btn1Click(Sender);
          end
          else
          begin
            playlist.lv1.SetFocus; //选中要播放的列表项
            playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
            trackbar1.Position := 0; //此处必须置0,否则遇到时间比自身短的文件会触发TrackBar1Change会自动跳过去
            skyaudiometer1.Repaint; //重绘一次..
            vision.am2.Repaint;
            btn1Click(Sender);
          end;

        end;

      end;
      if N3.Checked then //如果选择单曲循环
      begin
        mediaplayer1.Position := 0;
        mediaplayer1.Play;
        Notify := true; //则循环播放同一首曲目
      end;

       if N6.Checked then //如果选择单曲播放
      begin
        mediaplayer1.Position := 0;
        mediaplayer1.Play;
        Notify :=false; //则播放完一曲后   停止循环
      end;

      if N8.Checked then //如果选择了列表循环播放
      begin
        for i := 0 to playlist.lv1.Items.Count do
        begin
          if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.lv1.Items[i].Caption then
          begin
            playlist.lv1.ItemIndex := i;
            Break;
          end;
        end; //此循环语句用于判断当前正在播放的是哪一个列表项
        if playlist.lv1.ItemIndex = playlist.lv1.Items.Count - 1 then playlist.lv1.ItemIndex := -1; //判断当前播放的项是否是最后一行
        if (IsIconic(mainplay.Handle) = False) and (IsZoomed(mainplay.Handle) = false) then //此段程序的目的是在托盘状态下连续播放不会出错
        begin
          playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
          trackbar1.Position := 0; //此处必须置0,否则遇到时间比自身短的文件会触发TrackBar1Change会自动跳过去
          skyaudiometer1.Repaint; //重绘一次..
          vision.am2.Repaint;
          btn1Click(Sender);
        end
        else
        begin
          playlist.lv1.SetFocus; //选中要播放的列表项
          playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
          trackbar1.Position := 0; //此处必须置0,否则遇到时间比自身短的文件会触发TrackBar1Change会自动跳过去
          skyaudiometer1.Repaint; //重绘一次..
          vision.am2.Repaint;
          btn1Click(Sender);
        end;
      end;
      if N7.Checked then  //随机播放
      begin
        Randomize;
        playlist.lv1.ItemIndex := Random(playlist.lv1.Items.Count - 1); //使用随机函数生成随机的播放项目
        trackbar1.Position := 0; //此处必须置0,否则遇到时间比自身短的文件会触发TrackBar1Change会自动跳过去
        skyaudiometer1.Repaint; //重绘一次..
        vision.am2.Repaint;
        btn1Click(Sender);
      end;

    end;

end;




procedure TMainPlay.FormCreate(Sender: TObject);

begin


//--------------------------------------------------------

sumtime:=0;       //标签计数器
label3.Cursor:=crHandPoint;  //鼠标形状
listname.Caption:='暂无文件播放..';
DragAcceptFiles(Handle, True);
PositionChange := False; //设置初始值；
end;

procedure TMainPlay.FormDestroy(Sender: TObject);
begin
skyaudiometer1.free;
rztray.free;
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 删除托盘图标
end;

procedure TMainPlay.Timer1Timer(Sender: TObject);
var k:integer;
begin
 with mediaplayer1 do
    if mode in [mpplaying] then //必须先判断播放器状态 否则会出错！
      begin
      Trackbar1.Max := mediaplayer1.Length div 1000; //首先取得文件的长度，并设置为滑块的最大值！
      TrackBar1.Position := MediaPlayer1.Position div 1000; //让播放器随播放进度滑动
      rztray.Hint:=mainplay.stat1.Panels[0].Text + chr(13)+'  ~小步静听,享受音乐盛宴~  ';    //rz托盘提示信息
      miniplay.vsskin1.Hint:=mainplay.stat1.Panels[0].Text + chr(13)+'  ~小步静听,享受音乐盛宴~  ';

      //分离出歌曲名-歌手 等 信息--------------


      k:= pos('-',stat1.Panels[0].Text);       //先用pos语句判断歌曲名里有没有'-' 否则会出错--edit by bruce 2012.4.3
      if  k>0   then
      begin
      list := TStringlist.Create;
      list.Delimiter :='-' ;
      //list.DelimitedText :=stat1.Panels[0].Text;
      list.DelimitedText :=StringReplace(stat1.Panels[0].Text,' ','',[rfReplaceAll]);//去除空格;
      s1:=list.strings[0];
      s2:= list.Strings[1];
      end else  begin
      s2:= stat1.Panels[0].Text;
      s1:='未知';
      end;
      //-------右键菜单播放控制切换-----
      n17.Caption:='暂停' ;
      n18.Caption:='停止' ;

      end
    else if mode in [mppaused] then
      begin
        //-------右键菜单播放控制切换-----
      n17.Caption:='播放' ;
      n18.Caption:='停止' ;
      end
    else if mode in [mpstopped] then
      begin
       //-------右键菜单播放控制切换-----
      n17.Caption:='播放' ;
      n18.enabled:=false;
      end;
end;




function AddFormDir(F: string): integer; //查找MP3文件的函数
var MP3: integer;
  S: TSearchRec;
  i: Integer;
  a: Boolean;
begin
  mp3 := FindFirst(F, faAnyFile, s); //查找*.mp3
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



procedure TMainPlay.btn1Click(Sender: TObject);
 var i:integer;
begin
if playlist.Lv1.ItemIndex <> -1 then //首先判断列表框中是否有内容
  begin
    mediaplayer1.FileName := playlist.Lv1.Selected.SubItems.Strings[0] + playlist.lv1.Selected.Caption; //
    if MediaPlayer1.Mode in [mppaused] then
    begin
      MediaPlayer1.Resume;//恢复播放状态--记忆播放位置
      label1.Caption:='状态:播放 ';
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
        mediaplayer1.Play; //播放列表框中选择的文件
        label1.Caption:='状态:播放 ';
        skyaudiometer1.active:=true;
        vision.am2.Active:=true;
        mediaplayer1.Notify := true;
        btn1.Enabled := false; //播放按钮变为不可用
        btn2.Enabled := true;
        btn3.Enabled := true; //暂停和停止按钮变为可用
        timer1.Enabled := true;
        timer2.Enabled := true;
        gd.Enabled:=true;
        playlist.xingxing.Enabled:=true;
        playlist.fangxiang.Enabled:=true;
        listname.Caption:=extractfilename(MediaPlayer1.FileName);
        trackbar1.Enabled := true;
        stat1.Panels[0].Text :=  ExtractFileName(mediaplayer1.FileName);
        rztray.ShowBalloonHint(extractfilename(MediaPlayer1.FileName),'小步静听，静听精彩！',bhiinfo,10);
        if chk1.Checked=True then
        begin
        lrcshow.lst1.Clear;
        lrcshow.loadlrc(MediaPlayer1.FileName);
        end;
      except
        on EMCIDeviceError do
          MessageBox(Handle, '无法播放，请检查路径或者文件名是否正确！', '错误',
            MB_OK + MB_ICONSTOP);

      end;


    end;
  end;
end;

procedure TMainPlay.N5Click(Sender: TObject);
begin
skyaudiometer1.Close;
skyaudiometer1.Free;
rztray.Destroy;
  rztray.Free;
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 删除托盘图标
  Application.Terminate;
  close;
end;

procedure TMainPlay.N37Click(Sender: TObject);
begin
N38.Checked:=false;  N37.Checked:=true;
skyaudiometer1.AMStyle:=smsSpectrum; //频谱
end;

procedure TMainPlay.N38Click(Sender: TObject);
begin
 N37.Checked:=false;  N38.Checked:=true;
skyaudiometer1.AMStyle:=smsOscillograph; //示波器
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
    1:j:= '星期天 ';
    2:j:= '星期一 ';
    3:j:= '星期二 ';
    4:j:= '星期三 ';
    5:j:= '星期四 ';
    6:j := '星期五 ';
    7:j:= '星期六 ';
    end;

 label3.Caption:=formatdatetime(' yy-mm-dd  ',now)+j+formatdatetime('hh:nn:ss',now) ;
 label3.Left:=label3.Left-1;
 if label3.Left=6 then
 begin

 timer3.Enabled:=false;
 timer4.Enabled:=true;

 end;

end;


procedure TMainPlay.Label3MouseEnter(Sender: TObject);
begin
 label3.Font.Color:=clwhite;
 label3.Font.Size:=12;
label3.Font.Style:=[fsUnderline];
timer3.Enabled:=false;
timer4.Enabled:=false;
end;

procedure TMainPlay.Label3MouseLeave(Sender: TObject);
begin
label3.Font.Color:=clAqua;
 label3.Font.Size:=10;
label3.Font.Style:=[];
timer3.Enabled:=true;
end;

procedure TMainPlay.Timer4Timer(Sender: TObject);
var j:string  ;
begin
case   dayofweek(now)   of
    1:j:= '星期天 ';
    2:j:= '星期一 ';
    3:j:= '星期二 ';
    4:j:= '星期三 ';
    5:j:= '星期四 ';
    6:j := '星期五 ';
    7:j:= '星期六 ';
    end;

 label3.Caption:=formatdatetime(' yy-mm-dd  ',now)+j+formatdatetime('hh:nn:ss',now) ;
 label3.Left:=label3.Left+1;
 if label3.Left=mainskin.Width-label3.Width -6  then
 begin
  timer4.Enabled:=false;
  timer3.Enabled:=true;

 end;
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

procedure TMainPlay.StartUpTimerTimer(Sender: TObject);
 
begin
 StartupTimer.Enabled := False;
 

 mainplay.height := mainskin.Height;
 mainplay.Width := mainskin.Width;
 mainplay.Left := (screen.width - mainplay.Width) div 2;
 mainplay.Top := (screen.Height -mainplay.Height) div 2;
 playlist.Top := mainplay.Top +mainplay.Height;
 playlist.Left :=mainplay.Left;
 playlist.Show;


end;


procedure TMainPlay.Timer2Timer(Sender: TObject);
begin
with mediaplayer1 do
    if mode in [mpplaying] then
    begin

      TrackBar1.Max := MediaPlayer1.Length div 1000;
      stat1.Panels[2].Text :='时长:'+ ZeroFill(2, IntToStr(TrackBar1.max div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.max mod 60)) + '   ';

      TrackBar1.Position := Position div 1000;
      stat1.Panels[1].Text := ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));

       label2.Caption:=ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));

        playlist.Label6.Caption:= ZeroFill(2, IntToStr(TrackBar1.Position div 60))
        + ':' + ZeroFill(2, IntToStr(TrackBar1.Position mod 60));
    end;
end;

procedure TMainPlay.btn2Click(Sender: TObject);
begin
 case mediaplayer1.Mode of
    mpplaying:
      begin
        mediaplayer1.Pause;
        label1.Caption:='状态:暂停 ';
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
        label1.Caption:='状态:停止 ';
        label2.Caption:='00:00';
        playlist.label6.Caption:='00:00';
        playlist.xingxing.Enabled:=false;
        playlist.fangxiang.Enabled:=false;
        skyaudiometer1.active:=false;
        skyaudiometer1.Repaint;// 用repaint方法实现频谱的重绘...... 2012.4.3  edit by bruce
        vision.am2.Active:=false;
        vision.am2.repaint;
        vision.am2.Repaint;
        MediaPlayer1.Stop;
        TrackBar1.Position := 0;
        btn1.Enabled := true;
        btn2.Enabled := false;
        btn3.Enabled := false;
        trackbar1.Enabled := false;
        stat1.Panels[0].Text := '停止播放';
        listname.Caption:='暂无文件播放..';
    end;
  end;
end;



procedure TMainPlay.btn4Click(Sender: TObject);
var
  i: Integer;
begin
  if playlist.Lv1.ItemIndex = -1 then exit; //如果列表为空，则不执行语句
  with mediaplayer1 do //使用判断播放器状态语句，不至于直接执行Mediaplayer.stop，那样会出错！
    if mode in [mpopen, mpplaying] then
    begin
      for i := 0 to playlist.Lv1.Items.Count do
      begin
        if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.Lv1.Items[i].Caption then //和第一列第I行比较
        begin
          playlist.lv1.ItemIndex := i;
          skyaudiometer1.active:=false;
          Break;
        end;
      end; //此循环语句用于判断当前正在播放的是哪一个列表项
      if playlist.lv1.ItemIndex > 0 then // 保证列表框中有内容，才执行下面语句，否则也会出错！
      begin
        playlist.lv1.SetFocus;
        playlist.lv1.ItemIndex := playlist.lv1.ItemIndex - 1;
        btn1Click(Sender);
      end;
    end
    else
    begin
      if playlist.lv1.ItemIndex > 0 then // 保证列表框中有内容，才执行下面语句，否则也会出错！
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
var //添加文件夹中的MP3,wma文件
  dir: string;
  S: TSearchRec;
begin
  if selectdirectory('请选择目录', '', dir) then
  begin
    ChDir(Dir); //设置当前路径为搜索目录
    AddFormDir('*.mp3');
    AddFormDir('*.wma');
    AddFormDir('*.wav');
  end;
  FindClose(s);
end;

procedure TMainPlay.btn5Click(Sender: TObject);
var
  i: Integer;
begin
  if playlist.lv1.ItemIndex = -1 then exit;
  with mediaplayer1 do
    if mode in [mpopen, mpplaying] then
    begin
      for i := 0 to playlist.lv1.Items.Count - 1 do
      begin
        if MediaPlayer1.FileName = playlist.lv1.Items[i].SubItems.strings[0] + playlist.lv1.Items[i].Caption then //此循环语句用于判断当前正在播放的是哪一个列表项
        begin
          playlist.lv1.ItemIndex := i;
          skyaudiometer1.active:=false;
          Break;
        end;
      end;
      if playlist.lv1.ItemIndex <> playlist.lv1.Items.count - 1 then //如果当前播放的不是最后一首
      begin
        
        playlist.lv1.SetFocus;
        playlist.lv1.ItemIndex := playlist.lv1.ItemIndex + 1;
        btn1Click(Sender);
      end;
    end
    else
    begin
      if playlist.lv1.ItemIndex = playlist.lv1.Items.count - 1 then Exit;
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
lrcshow.hide;
minilrc.Show;
end
else
begin
chk1.Checked:=true;
lrcshow.Show;
lrcshow.hide;
minilrc.show;
end;
end;

procedure TMainPlay.N83Click(Sender: TObject);
begin
opendialog3.Filter:='LRC歌词文件|*.LRC'  ;
if opendialog3.Execute then

 lrcshow.lst1.Items.LoadFromFile(opendialog3.FileName);
lrcshow.lst1.Items.SaveToFile(ExtractFilePath(mainplay.MediaPlayer1.FileName)+copy(extractfilename(mainplay.MediaPlayer1.FileName),0,length(extractfilename(mainplay.MediaPlayer1.FileName))-4)+'.lrc');
 mainplay.chk1.Checked:=false;//初始化它..
 mainplay.chk1.Checked:=true;
 mainplay.chk1.Checked:=false;//重新加载它..
 mainplay.chk1.Checked:=true;

end;

procedure TMainPlay.N82Click(Sender: TObject);
begin
serlrc.show;
end;

procedure TMainPlay.N84Click(Sender: TObject);
begin
lrcshow.tmr1.Enabled:=false;
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
//  Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 删除托盘图标
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
  if positionchange then //如果不设置此布尔型变量，则TIMER事件发生一次就触发本事件发生，会令音乐播放很卡，不连续
  begin
    with mediaplayer1 do
    begin
      if mode in [mpopen, mpplaying] then //判断播放器状态，如果为打开或者播放状态，则执行下面的语句
      begin
        timer1.Enabled := false;
        position := trackbar1.Position * 1000;
        play;
        timer1.Enabled := true;

      end;
    end;
  end;
  Positionchange := false; //恢复为FALSE，如果不这样做，拖拉一次滑块后，则会让音乐不连续
end;

procedure TMainPlay.N11Click(Sender: TObject);
begin
form4.show;
end;

procedure TMainPlay.N10Click(Sender: TObject);
begin
MessageBox(Handle, '最好歌曲与歌词目录一致，否则可能加载歌词错误！~~~~~反馈邮箱：qhdsofeware@163.com~~~~~QQ:654714226', PChar('Powerd BY Bruce（小布）~~ 2012~03'), MB_OK);
end;

procedure TMainPlay.SinaBlog1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','http://blog.sina.com.cn/u/1843375347','SINABLOG',nil, SW_SHOWNORMAL);
end;

procedure TMainPlay.Qzone1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','http://user.qzone.qq.com/654714226?ptlang=2052','Qzone',nil, SW_SHOWNORMAL);
end;

procedure TMainPlay.MSNLite1Click(Sender: TObject);
begin
ShellExecute(handle, 'open','https://skydrive.live.com/?cid=167e4f5d97555488','MSNSKY',nil, SW_SHOWNORMAL);
end;

procedure TMainPlay.N17Click(Sender: TObject);
begin
if n17.Caption='播放' then
begin
btn1click(sender);
end
else if n17.Caption='暂停' then
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
 mcisendstring('set cdaudio door open wait', nil, 0, handle);//弹出
end;

procedure TMainPlay.N28Click(Sender: TObject);
begin
 mcisendstring('set cdaudio door closed wait', nil, 0, handle); //关闭
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
    n32.caption:='取消静音';
    N30.Enabled:=False;  //增大不能用
    N31.Enabled:=False;  //减小...

    TrackBar2.Enabled:=False; //音条..
    v := (0 shl 8) or (0 shl 24);
    waveOutSetVolume(0, v);
     end;

      true:
    begin
    N32.Checked:=False;
    N32.Caption:='静音';
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

procedure TMainPlay.gdTimer(Sender: TObject);   //计时器 控制标签的切换
begin
vskbps.caption:='128';
vskbps.Font.Size:=5;
vshz.caption:='44';
vshz.Font.Size:=5;
gs:=copy(s2,length(s2)-2,length(s2)) ;     //标签文字移动--时钟控件
if   length( gundong.Caption)>12 then begin
gundong.Caption:=copy(gundong.Caption,6,length(gundong.Caption)) ; end;
if sumtime mod 16 = 0 then
begin
gundong.caption:=stat1.Panels[2].Text;
end

else
if sumtime mod 16 = 4 then
begin
gundong.Caption:='歌曲:' + copy(s2,0,length(s2)-4);
end

else
if sumtime mod 16 = 8 then
begin
gundong.Caption:='歌手:' + s1;
end;

if sumtime mod 16 = 12 then
begin
gundong.Caption:='格式-' + gs +' 44Khz' +' 128Kbps';
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
skyaudiometer1.free;
rztray.free;
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 删除托盘图标
end;

procedure TMainPlay.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
skyaudiometer1.free;
rztray.Free;
Shell_NotifyIcon(NIM_DELETE, @NotifyIcon); // 删除托盘图标
end;



procedure TMainPlay.N47Click(Sender: TObject);
begin
winexec(Pchar('notepad'),sw_Show);
end;

procedure TMainPlay.Ping1Click(Sender: TObject);
begin

 winexec(pchar('cmd   /c ipconfig >>D:\Ip.txt'),sw_show); // ipconfig 执行结果累加到 c:\2.txt 文件中
 ShellExecute(handle, 'open','D:\Ip.txt','IP',nil, SW_SHOWNORMAL);
 winexec(pchar('cmd   /c ipconfig >D:\Ip.txt'),sw_show);  //最新的一次结果保存到 c:\2.txt 文件中

end;

procedure TMainPlay.N48Click(Sender: TObject);
begin
winexec(Pchar('cmd'),sw_Show);//控制面板
end;

procedure TMainPlay.N49Click(Sender: TObject);
begin
 winexec(Pchar('RegEdit'),sw_Show);
end;

procedure TMainPlay.N51Click(Sender: TObject);
begin
winexec(pchar('cmd /c shutdown -s -t 0'),sw_shownormal);
end;

procedure TMainPlay.yhcpuTimer(Sender: TObject);
begin

if Win32Platform = VER_PLATFORM_WIN32_NT then
  begin
    SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
    Application.ProcessMessages;
end;

end;

procedure TMainPlay.VsCheckBox1Click(Sender: TObject);
begin
chk1click(sender);
end;

procedure TMainPlay.jzlstTimer(Sender: TObject);
 var
  buf: Tstringlist;
  i,j: Integer;
  F:   Textfile;
begin
jzlst.Enabled:=false;
//---------------------------自动加载列表---created by bruce 2012.4.4
 if FileExists(ExtractFilePath(ParamStr(0))+'bruce.ini')=true then
 begin
     {AssignFile(F,  ExtractFilePath(ParamStr(0))+'bruce.ini'); //判断是否为空文本
        Reset(F);
        if   filesize(F) > 0   then        //空文本推出---2012.4.6--by bruce

        begin }
          buf := tstringlist.create;
          buf.loadfromfile(ExtractFilePath(ParamStr(0))+'bruce.ini');

          for i := 0 to buf.Count - 1 do
           begin
            xlist := playlist.lv1.Items.Add;//这个得放在xlist.Caption 的上句，每使用一次增加一行
            xlist.Caption := ExtractFileName(buf.Strings[i]);
            xlist.SubItems.add(ExtractFilePath(buf.Strings[i]));
           end;
           buf.free;
         //  playlist.lv1.Items[0].Selected;
         btn1.Enabled := True;
       // btn1click(sender);
         end;

        end;
//-------------------------------自动加载列表---created by bruce 2012.4.4


procedure TMainPlay.SkyAudioMeter1DblClick(Sender: TObject);
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

end;

procedure TMainPlay.N34Click(Sender: TObject);
begin
SkyAudioMeter1dblclick(sender);
end;

procedure TMainPlay.soundClick(Sender: TObject);
var v:longint;
begin
if sound.GraphicName='sound_on.bmp' then
begin
    N32.Checked:=True;
    n32.caption:='取消静音';
    N30.Enabled:=False;  //增大不能用
    N31.Enabled:=False;  //减小...

    TrackBar2.Enabled:=False; //音条..
    v := (0 shl 8) or (0 shl 24);
    waveOutSetVolume(0, v);
sound.GraphicName:='sound_off.bmp';
sound.Hint:='~取消静音~';
end  else
begin
N32.Checked:=False;
    N32.Caption:='静音';
    N30.Enabled:=True;
    N31.Enabled:=True;
    TrackBar2.Enabled:=true;
    v := (255 shl 8) or (255 shl 24);
    waveOutSetVolume(0, v);
    sound.GraphicName:='sound_on.bmp';
    sound.Hint:='~切换静音~';
end;
 end;
procedure TMainPlay.miClick(Sender: TObject);
begin
n80click(sender);
end;

procedure TMainPlay.milrcClick(Sender: TObject);
begin
n79click(sender);
end;

procedure TMainPlay.openlistClick(Sender: TObject);
begin
n70click(sender);
end;

procedure TMainPlay.VsHotSpot3Click(Sender: TObject);
begin
mainpop.Popup( (screen.Width-mainplay.left),390);
end;

procedure TMainPlay.cicleClick(Sender: TObject);
begin
n8click(sender);
rztray.ShowBalloonHint('','已切换至列表循环模式',bhiInfo,10);
end;

procedure TMainPlay.cicletoendClick(Sender: TObject);
begin
n2click(sender);
rztray.ShowBalloonHint('','已切换至顺序播放模式',bhiInfo,10);
end;

end.
