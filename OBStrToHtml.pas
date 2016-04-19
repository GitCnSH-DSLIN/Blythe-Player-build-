{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}

unit OBStrToHtml;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls;

type
  TOBHtmlCodeRec = record
    Ch : char;
    Html : string;
  end;
  {$EXTERNALSYM TOBHtmlCodeRec}

  TOBStrToHtml = class(TComponent)
  private
    FHtml: string;
    FValue: string;
    procedure SetHtml(const Value: string);
    procedure SetValue(const Value: string);
  protected
  public
    constructor Create(AOwner: TComponent);override;
  published
    property Text:string read FValue write SetValue;
    property Html:string read FHtml write SetHtml;
    function CharToHtml(ch:char):string;
    function TextToHtml(Text: string):string;
    function HtmlToText(Text: string):string;
  end;

function StringToHtml(Value: string): string;
function HtmlToString(Value: string): string;

implementation

const
  NbConversions = 79;
  Conversions : array [0..NbConversions-1] of TOBHtmlCodeRec = (
             (Ch:'"';Html:'&quot;'),
             (Ch:'�';Html:'&agrave;'),
             (Ch:'�';Html:'&ccedil;'),
             (Ch:'�';Html:'&eacute;'),
             (Ch:'�';Html:'&egrave;'),
             (Ch:'�';Html:'&ecirc;'),
             (Ch:'�';Html:'&ugrave;'),
             (Ch:'�';Html:'&euml;'),
             (Ch:'<';Html:'&lt;'),
             (Ch:'>';Html:'&gt;'),
             (Ch:'^';Html:'&#136;'),
             (Ch:'~';Html:'&#152;'),
             (Ch:'�';Html:'&#163;'),
             (Ch:'�';Html:'&#167;'),
             (Ch:'�';Html:'&#176;'),
             (Ch:'�';Html:'&#178;'),
             (Ch:'�';Html:'&#179;'),
             (Ch:'�';Html:'&#181;'),
             (Ch:'�';Html:'&#183;'),
             (Ch:'�';Html:'&#188;'),
             (Ch:'�';Html:'&#189;'),
             (Ch:'�';Html:'&#191;'),
             (Ch:'�';Html:'&#192;'),
             (Ch:'�';Html:'&#193;'),
             (Ch:'�';Html:'&#194;'),
             (Ch:'�';Html:'&#195;'),
             (Ch:'�';Html:'&#196;'),
             (Ch:'�';Html:'&#197;'),
             (Ch:'�';Html:'&#198;'),
             (Ch:'�';Html:'&#199;'),
             (Ch:'�';Html:'&#200;'),
             (Ch:'�';Html:'&#201;'),
             (Ch:'�';Html:'&#202;'),
             (Ch:'�';Html:'&#203;'),
             (Ch:'�';Html:'&#204;'),
             (Ch:'�';Html:'&#205;'),
             (Ch:'�';Html:'&#206;'),
             (Ch:'�';Html:'&#207;'),
             (Ch:'�';Html:'&#209;'),
             (Ch:'�';Html:'&#210;'),
             (Ch:'�';Html:'&#211;'),
             (Ch:'�';Html:'&#212;'),
             (Ch:'�';Html:'&#213;'),
             (Ch:'�';Html:'&#214;'),
             (Ch:'�';Html:'&#217;'),
             (Ch:'�';Html:'&#218;'),
             (Ch:'�';Html:'&#219;'),
             (Ch:'�';Html:'&#220;'),
             (Ch:'�';Html:'&#221;'),
             (Ch:'�';Html:'&#223;'),
             (Ch:'�';Html:'&#224;'),
             (Ch:'�';Html:'&#225;'),
             (Ch:'�';Html:'&#226;'),
             (Ch:'�';Html:'&#227;'),
             (Ch:'�';Html:'&#228;'),
             (Ch:'�';Html:'&#229;'),
             (Ch:'�';Html:'&#230;'),
             (Ch:'�';Html:'&#231;'),
             (Ch:'�';Html:'&#232;'),
             (Ch:'�';Html:'&#233;'),
             (Ch:'�';Html:'&#234;'),
             (Ch:'�';Html:'&#235;'),
             (Ch:'�';Html:'&#236;'),
             (Ch:'�';Html:'&#237;'),
             (Ch:'�';Html:'&#238;'),
             (Ch:'�';Html:'&#239;'),
             (Ch:'�';Html:'&#241;'),
             (Ch:'�';Html:'&#242;'),
             (Ch:'�';Html:'&#243;'),
             (Ch:'�';Html:'&#244;'),
             (Ch:'�';Html:'&#245;'),
             (Ch:'�';Html:'&#246;'),
             (Ch:'�';Html:'&#247;'),
             (Ch:'�';Html:'&#249;'),
             (Ch:'�';Html:'&#250;'),
             (Ch:'�';Html:'&#251;'),
             (Ch:'�';Html:'&#252;'),
             (Ch:'�';Html:'&#253;'),
             (Ch:'�';Html:'&#255;')
             );

function TOBStrToHtml.CharToHtml(ch: char): string;
var
 i:Integer;
begin
  i:=0;
  while (i<NbConversions) and (Conversions[i].Ch<>ch) do
    inc(i);
  if i<NbConversions then
    result:=Conversions[i].Html
  else
    result:=ch;
end;

constructor TOBStrToHtml.Create(AOwner: TComponent);
begin
  inherited;
  FValue:='';
  FHtml:='';
end;

function TOBStrToHtml.HtmlToText(Text: string): string;
var
 i:Integer;
begin
  result:='';
  for i:=1 to Length(Text) do
    result:=result+CharToHtml(Text[i]);
end;

procedure TOBStrToHtml.SetHtml(const Value: string);
begin
  FValue:=HtmlToText(Value);
end;

procedure TOBStrToHtml.SetValue(const Value: string);
begin
  FHtml:=TextToHtml(Value);
end;

function TOBStrToHtml.TextToHtml(Text: string): string;
var
 i:Integer;
begin
  result:=Text;
  for i:=0 to NbConversions-1 do
    result:=StringReplace(result,Conversions[i].Html,Conversions[i].Ch,
                          [rfReplaceAll,rfIgnoreCase]);
end;

function StringToHtml(Value: string): string;
begin
  with TOBStrToHtml.Create(nil) do
  begin
    result := TextToHtml(Value);
    Free;
  end;
end;

function HtmlToString(Value: string): string;
begin
  with TOBStrToHtml.Create(nil) do
  begin
    result := HtmlToText(Value);
    Free;
  end;
end;

end.

