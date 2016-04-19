unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OBMagnet, ExtCtrls, StdCtrls, TntStdCtrls;

type
  TLrcShow = class(TForm)
    tmr1: TTimer;
    OBFormMagnet1: TOBFormMagnet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    lst1: TTntListBox;
     procedure loadlrc(s: string);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


  var
  LrcShow: TLrcShow;
  fle: string;
  Lrc: TStrings;
  movelrc :string;
  timeNums:integer;
implementation

uses Unit1, Unit6, Unit8;

{$R *.dfm}

procedure TLrcShow.loadlrc(s: string);
var
  i,j,k: Integer;

    getstr:String ;

begin

  lrc := TStringList.Create;
  if s <> '' then
  begin
    fle := ExtractFileName(s);
    SetLength(fle, Length(ExtractFileName(fle)) - Length(ExtractFileExt(fle)));
    if   FileExists(ExtractFilePath(s) + fle + '.lrc')  then  //存在则加载它
    begin
      lrc.LoadFromFile(ExtractFilePath(s) + fle + '.lrc');
      lrcshow.tmr1.Enabled := True;

    end  else                                              //不存在则联网搜索..
    begin
       //minilrc.Label1.Caption:='小步静听，静听精彩！';  //控制MINi 歌词默认输出--by 小布 2012.3.26
       serlrc.show;
    end;


   for i := 0 to lrc.Count - 1 do
    begin

       timeNums:=0;
       for j:=0 to LENGTH(lrc.Strings[i])-1 do
       begin
       getstr:= copy(lrc.Strings[i],j,1);
        if(getstr=']')  then timeNums:=timeNums+1;

       end;
       {
        if(copy(lrc.Strings[i],0,1)='[') then
        begin

        if copy(lrc.Strings[i],1,2)='ar' then  //作者信息
         begin
          showmessage('..........');
       FAur:= copy(lrc.Strings[i],4,length(lrc.Strings[i])-3);
       lrcshow.lst1.Items.Add('艺术家: '+'bruce') ;
         end
       else if copy(lrc.Strings[i],1,2)='ti' then  //曲目标题
         begin
           showmessage('..........');
       FTi:= copy(lrc.Strings[i],4,length(lrc.Strings[i])-3)  ;
       lrcshow.lst1.Items.Add('歌曲: '+FTi);
         end
       else if copy(Lowercase(lrc.Strings[i]),1,2)='al' then  //专辑名
         begin
       FAl:= copy(lrc.Strings[i],4,length(lrc.Strings[i])-3)   ;
       lrcshow.lst1.Items.Add('专辑: '+FAl);
         end
       else if copy(Lowercase(lrc.Strings[i]),1,2)='by' then  //编辑LRC歌词的人
         begin
       FBy:= copy(lrc.Strings[i],4,length(lrc.Strings[i])-3) ;
       lrcshow.lst1.Items.Add('歌词编辑: '+FBy);
         end
       else if copy(Lowercase(lrc.Strings[i]),1,6)='offset' then  //时间补偿值
       begin

        FOffset:= strtoint(copy(lrc.Strings[i],8,length(lrc.Strings[i])-7));
        lrcshow.lst1.Items.Add('延迟时间(毫秒): '+inttostr(FOffset));
        end

        end;

        }
        if(length(lrc.Strings[i])>=10*timeNums) then
        begin
        lrcshow.lst1.Items.Add((Copy(lrc.Strings[i],10*timeNums+1, length(lrc.Strings[i])-10*timeNums)));
        end
    end;
  end;

  end;


procedure TLrcShow.tmr1Timer(Sender: TObject);

 var
  i: Integer;
  k,j: integer;
  Point:   TPoint;
  DrawRect:   TRect;
  begin

     j:=lrc.Count;   //多少行歌词..


  for i := 0 to lrc.Count - 1 do
  begin
       for k:=1 to  timeNums  do
       begin
           if(mainplay.stat1.Panels[1].Text = Copy(lrc.Strings[i], 10*(k-1)+2, 5)) then
         
             if(length(lrc.Strings[i])>10) then
                begin
                  lst1.ItemIndex := i;
                     if(i>8 )  then
                     begin
                     if( i<(j-10)) then
                         begin
                       lst1.TopIndex:= i-8;   //选中行一直居中....
                         end;
                     end;
                     if minilrc.Showing then
                     begin
                      minilrc.Label1.Caption:=lrcshow.lst1.items.strings[integer(lrcshow.lst1.itemindex)];//控制显示一行mini歌词
                     end;
                end;

       end;


      end;


  end;



procedure TLrcShow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AnimateWindow(Lrcshow.Handle,800,AW_HIDE or AW_BLEND); //缓缓关闭..
end;

procedure TLrcShow.FormShow(Sender: TObject);
begin
lrcshow.Left:=mainplay.Left+mainplay.Width;
  lrcshow.Top:=mainplay.Top;
AnimateWindow(lrcshow.Handle,800,AW_BLEND);
end;

procedure TLrcShow.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin

  tmr1.Enabled := False;
  
  lst1.Clear;
  lrc.Free;
end;

procedure TLrcShow.N1Click(Sender: TObject);
begin
mainplay.n79click(sender);
end;

procedure TLrcShow.N2Click(Sender: TObject);
begin
mainplay.n83click(sender);
end;

procedure TLrcShow.N3Click(Sender: TObject);
begin
mainplay.n82click(sender);
end;

procedure TLrcShow.N4Click(Sender: TObject);
begin
mainplay.n84click(sender);
end;

end.
