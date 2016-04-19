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
    xing: TLabel;
    sanye: TLabel;
    xingxing: TTimer;
    puke: TLabel;
    Label6: TLabel;
    fangxiang: TTimer;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
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
    procedure xingxingTimer(Sender: TObject);
    procedure fangxiangTimer(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
   

  private
  procedure DropFiles(var Msg: TMessage); message WM_DropFILES;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  PlayList: TPlayList;
  sumtime,sumtime1:integer;
implementation

uses Unit1, Unit3;

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
      Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
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
        Application.MessageBox('��֧�ֲ��Ŵ����ļ���', '����', MB_OK + MB_ICONSTOP + MB_TOPMOST);
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
mainplay.N81Click(sender);
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
    N3.Enabled := False; //ɾ���˵�����ʹ��
    N4.Enabled := False;  //������ܲ�����
    N11.Enabled:=False;   //������Ϣ........
  end
  else
  begin
    N1.Enabled := True;
    N2.Enabled := True;
    N3.Enabled := True;
     N4.Enabled := true;  
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
  sumtime:=0;//��ǩ��ʱ��..
  sumtime1:=0;
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
    plylst.SaveToFile(ExtractFilePath(ParamStr(0))+'bruce.ini');
    plylst.Free;
end;

procedure TPlayList.xingxingTimer(Sender: TObject);
begin
if sumtime mod 2=0 then
  begin
   xing.Caption:='��';
   puke.Caption:='��';

  end;
  if sumtime mod 2 =1 then
  begin
    xing.Caption:='��' ;
    puke.Caption:='��';
  end;
  sumtime:=sumtime + 1 ;
end;

procedure TPlayList.fangxiangTimer(Sender: TObject);
begin
if sumtime1 mod 4=0 then
  begin
   sanye.Caption:='��';
    end;
  if sumtime1 mod 4 =1 then
  begin
     sanye.Caption:='��';
  end;
  if sumtime1 mod 4 =2 then
  begin
     sanye.Caption:='��';
  end;
   if sumtime1 mod 4 =3 then
  begin
     sanye.Caption:='��';
  end;

  sumtime1:=sumtime1 + 1 ;
end;

procedure TPlayList.N7Click(Sender: TObject);
begin
lv1.viewstyle:=vsIcon;
n7.Checked:=true;
n8.Checked:=false;
n9.Checked:=false;
end;

procedure TPlayList.N8Click(Sender: TObject);
begin
lv1.viewstyle:=vslist;
n8.Checked:=true;
n7.Checked:=false;
n9.Checked:=false;
end;

procedure TPlayList.N9Click(Sender: TObject);
begin
lv1.viewstyle:=vsreport;
n9.Checked:=true;
n8.Checked:=false;
n7.Checked:=false;
end;

procedure TPlayList.N4Click(Sender: TObject);
begin
ShellExecute(Handle,'open','Explorer.exe', playlist.lv1.Selected.SubItems.GetText ,nil,1);
end;

end.