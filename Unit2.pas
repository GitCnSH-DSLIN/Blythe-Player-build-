unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VsControls,ShellAPI,AppEvnts, VsSkin, VsComposer, Menus, ComCtrls, MPlayer,
  VsHotSpot, OBMagnet,Mmsystem,FileCtrl, ExtCtrls, StdCtrls;
 const WM_NID = WM_User + 1000;
type
  TPlayList = class(TForm)
    VsComposer1: TVsComposer;
    VsSkin1: TVsSkin;
    list: TPopupMenu;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N6: TMenuItem;
    N11: TMenuItem;
    lv1: TListView;
    OBFormMagnet1: TOBFormMagnet;
    VsHotSpot1: TVsHotSpot;
    Timer1: TTimer;
    N4: TMenuItem;
    N5: TMenuItem;
    Label3: TLabel;
    procedure lv1DblClick(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N49Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure lv1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure VsHotSpot1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lv1Change(Sender: TObject; Item: TListItem;
      Change: TItemChange);
    procedure Timer1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure VsSkin1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N5Click(Sender: TObject);
   

  private
  procedure DropFiles(var Msg: TMessage); message WM_DropFILES;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlayList: TPlayList;

implementation

uses Unit1, Unit3, Unit10;

{$R *.dfm}



procedure Tplaylist.DropFiles(var Msg: TMessage);
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
     // Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
     // rztray.ShowBalloonHint('','��֧�ֲ��Ŵ����ļ���',bhiinfo,10);
      Exit;
    end;
    try
      xlist := playlist.lv1.Items.Add;
      xlist.Caption := ExtractFileName(buffer);
      xlist.SubItems.add(ExtractFilePath(buffer));
      mainplay.MediaPlayer1.FileName := ExtractFilePath(buffer) + xlist.Caption;
      mainplay.MediaPlayer1.Open;
      mainplay.skyaudiometer1.active:=true;
      mainplay.listname.caption:=extractfilename(mainplay.mediaplayer1.filename);
      mainplay.trackbar1.Enabled:=true;
      mainplay.gd.enabled:=true;
      mainplay.timer1.Enabled:=true;
      mainplay.timer2.Enabled:=true;
      mainplay.label1.Caption:='״̬:����' ;
      mainplay.stat1.panels[0].text:=extractfilename(mainplay.mediaplayer1.filename);
      mainplay.MediaPlayer1.Play;
      if mainplay.chk1.Checked=True then lrcshow.loadlrc(mainplay.MediaPlayer1.FileName); //���ظ���ļ���
      mainplay.btn2.Enabled := True;
      mainplay.btn3.Enabled := true;
      mainplay.Timer2.Enabled := True;
    except
      on EMCIDeviceError do
      //rztray.ShowBalloonHint('','��֧�ֲ��Ŵ����ļ���',bhiinfo,10);
       // Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
    end;
  end;
end;


///------------------------------------------------------------------------------------

procedure TPlayList.lv1DblClick(Sender: TObject);
begin
 if lv1.ItemIndex <> -1 then //�����ж��б������Ƿ�Ϊ�գ���Ϊ��ִ����������
  begin
    mainplay.btn1Click(sender);
  end;
end;

procedure TPlayList.N48Click(Sender: TObject);
begin
mainplay.N81Click(sender);
end;

procedure TPlayList.N49Click(Sender: TObject);
begin
mainplay.n9click(sender);
end;

procedure TPlayList.N1Click(Sender: TObject);
begin
mainplay.btn1Click(sender);
end;

procedure TPlayList.N6Click(Sender: TObject);
begin
 Lv1.Clear;
end;

procedure TPlayList.lv1SelectItem(Sender: TObject; Item: TListItem;
  Selected: Boolean);
begin
if lv1.ItemIndex = -1 then //�������λ��û������
  begin
    N1.Enabled := False; //�򲥷Ų˵�������
    N2.Enabled := False; //ɾ���˵�����ʹ��
    N3.Enabled := False;
    N4.Enabled := False;
    N5.Enabled := False;
    N11.Enabled:=False;
  end
  else
  begin
    N1.Enabled := True;
    N2.Enabled := True;
    N3.Enabled := True;
    N4.Enabled := True;
    N5.Enabled := True;
    N11.Enabled:=True;
    ; //����Ļ��ָ�Ϊ���ź�ɾ���˵����ã���ѡ���б���
  end;
end;

procedure TPlayList.N2Click(Sender: TObject);
begin
 Lv1.DeleteSelected; //ɾ��ѡ�е��б���
end;

procedure TPlayList.N3Click(Sender: TObject);
begin
  if MessageBox(Handle, 'ȷʵҪɾ�����ļ���', PChar('ȷ��ɾ��'), MB_yesno + MB_ICONINFORMATION) = idyes then
  begin
    with mainplay.mediaplayer1 do
      if mode in [mpplaying] then
      begin
        mainplay.btn3Click(sender); //����ڲ���״̬��ֹͣ����
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

procedure TPlayList.N11Click(Sender: TObject);   //��ȡ����
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

procedure TPlayList.VsHotSpot1Click(Sender: TObject);
begin
playlist.hide;
mainplay.n70.Checked:=true;
end;

procedure TPlayList.FormCreate(Sender: TObject);
begin

  DragAcceptFiles(Handle, True);
  PositionChange := False; //���ó�ʼֵ��
end;



procedure TPlayList.lv1Change(Sender: TObject; Item: TListItem;
  Change: TItemChange);
begin
timer1.Enabled:=true;
end;

procedure TPlayList.Timer1Timer(Sender: TObject);
var
  plylst: TStrings;
  i: Integer;
  begin
                 //�б�changeʱ�Զ������б�---created by bruce 2012.4.4---
    plylst := TStringList.Create;
    for i := 0 to lv1.Items.Count - 1 do //����ѭ����䱣��listview�������б�
    begin
    plylst.Add(lv1.Items[i].SubItems.Strings[0] + lv1.Items[i].Caption);
    end;
    plylst.SaveToFile(ExtractFilePath(ParamStr(0))+'bruce.log');
    plylst.Free;
end;

procedure TPlayList.N4Click(Sender: TObject);
 var FilePath:String  ;
begin
{ShellExecute(Application.Handle, 'open', pChar(lv1.Selected.SubItems[0]), nil, nil,
    SW_SHOWNORMAL); } //���ļ�λ��  ��bruce��2012/11/11������
   // showmessage(lv1.Selected.SubItems[0]);
FilePath:= lv1.Selected.SubItems[0]+lv1.Selected.Caption ;
ShellExecute(Handle, 'open', 'Explorer.exe', Pchar('/select,'+ FilePath ),nil, 1);
//���ļ�λ��,����ѡ������ ------------------------------ edit by bruce 2012/11/11

end;

procedure TPlayList.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
if (msg.CharCode=46) then
n2.click;
if(msg.CharCode=13) then
n1.Click;

end;

procedure TPlayList.VsSkin1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mainplay.mover.Enabled:=false;
end;

procedure TPlayList.N5Click(Sender: TObject);
begin
form10.show;
end;

end.