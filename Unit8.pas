unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, VsControls, VsComposer, VsHotSpot, VsSkin, VsLabel,
  ExtCtrls;

type
  Tminilrc = class(TForm)
    VsSkin1: TVsSkin;
    Label1: TVsLabel;
    VsComposer1: TVsComposer;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    Fdg1: TFontDialog;
    Timer1: TTimer;
    N1: TMenuItem;
    VsHotSpot2: TVsHotSpot;
    VsHotSpot3: TVsHotSpot;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure cloClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure N4Click(Sender: TObject);
   
    procedure N1Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  minilrc: Tminilrc;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure Tminilrc.FormCreate(Sender: TObject);
begin
self.ScreenSnap:=True;
self.SnapBuffer:=30;//��������Ч��
end;

procedure Tminilrc.FormShow(Sender: TObject);
begin
minilrc.top:=(screen.height-minilrc.height *2) ;
minilrc.left:=(screen.width-minilrc.width ) div 2 ;
end;

procedure Tminilrc.N3Click(Sender: TObject);
begin
if fdg1.Execute then
 label1.Font:=fdg1.Font;

end;

procedure Tminilrc.cloClick(Sender: TObject);
begin
minilrc.close;
mainplay.n79.Checked:=false;
end;

procedure Tminilrc.Timer1Timer(Sender: TObject);
begin
if length(minilrc.Label1.Caption) > 30 then
            begin
              minilrc.Label1.Caption:= copy(minilrc.Label1.Caption,2,length(minilrc.Label1.Caption)) ;
            end ;
end;

procedure Tminilrc.N4Click(Sender: TObject);
begin
minilrc.close;
mainplay.n79.Checked:=false;
end;



procedure Tminilrc.N1Click(Sender: TObject);
begin
minilrc.Hide;


end;

procedure Tminilrc.FormClick(Sender: TObject);
begin
minilrc.windowState:=wsminimized;
end;

end.
