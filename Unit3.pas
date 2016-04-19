unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, OBMagnet, ExtCtrls, StdCtrls;

type
  TLrcShow = class(TForm)
    lst1: TListBox;
    tmr1: TTimer;
    OBFormMagnet1: TOBFormMagnet;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
     procedure loadlrc(s: string);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
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
implementation

uses Unit1, Unit6, Unit8;

{$R *.dfm}

procedure TLrcShow.loadlrc(s: string);
var
  i: Integer;

begin
  lrc := TStringList.Create;
  if s <> '' then
  begin
    fle := ExtractFileName(s);
    SetLength(fle, Length(ExtractFileName(fle)) - Length(ExtractFileExt(fle)));
    if   FileExists(ExtractFilePath(s) + fle + '.lrc')  then  //�����������
    begin
      lrc.LoadFromFile(ExtractFilePath(s) + fle + '.lrc');
      lrcshow.tmr1.Enabled := True;

    end  else                                              //����������������..
    begin
       //minilrc.Label1.Caption:='С���������������ʣ�';  //����MINi ���Ĭ�����--by С�� 2012.3.26
       serlrc.show;
    end;



    for i := 0 to lrc.Count - 1 do
    begin
     // lrcshow.lst1.Items.Add(lrc.strings[i]);
     lrcshow.lst1.Items.Add(Copy(lrc.Strings[i],11, length(lrc.Strings[i])-10));
    end;
  end;

  end;


procedure TLrcShow.tmr1Timer(Sender: TObject);
var
  i: Integer;
  begin
  for i := 0 to lrc.Count - 1 do
  begin
       if (mainplay.stat1.Panels[1].Text = Copy(lrc.Strings[i], 2, 5)) then

         begin

          lst1.ItemIndex := i;

          minilrc.Label1.Caption:=lrcshow.lst1.items.strings[integer(lrcshow.lst1.itemindex)];//������ʾһ��mini���

         end;

      end;


  end;



procedure TLrcShow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
AnimateWindow(Lrcshow.Handle,800,AW_HIDE or AW_BLEND); //�����ر�..
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

procedure TLrcShow.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
mainplay.moverlrc.Enabled:=false; //�ر�ͬʱ�ƶ�
end;

end.
