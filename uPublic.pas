unit uPublic;

interface

uses SysUtils;

implementation


{==============================================================================}
{=================================�������弯��=================================}
{================= Copyright(R) 2003 KingLong Software Studio =================}
{==============================================================================}

{��������¼���ж��Ƿ�����Ŀ¼}
function IsValidDir(SearchRec: TSearchRec): Boolean;
begin
  if (SearchRec.Attr = 16) and (SearchRec.Name <> '.') and
     (SearchRec.Name <> '..') then
     Result := True
  else
    Result := False;
end;

end.
