unit uMedia;

interface

uses
  Windows, mmSystem, SysUtils, Dialogs;

var
  cmd: string;
  dwReturn: Longint;
  MCIReturn: array[1..128] of char;
  Ret: PChar;

//���ļ�             �����޴����ļ�(��mp3..)ʱʹ��
function OpenMultimedia(AliasName:String;filename:String;typeDevice:String):String;overload;
                       //�����д����ļ�(��mpg,avi,dat..)ʱʹ��
function OpenMultimedia(wnd:hwnd;AliasName: string; FileName: string; TypeDevice: string): string;overload;
//�õ����ļ���
function GetShortName(sLongName: string): string;
//����ȫ��
function PlayMultimedia(AliasName: string): string; overload;
//ָ����ʼ�����λ�ò���
function PlayMultimedia(AliasName: string; form_or_to_where:String; form_bz:boolean):String;overload;
//�ر�ָ���ļ�
function CloseMultimedia(AliasName: string): string;
//��ͣ����
function PauseMultimedia(AliasName: string): string;
//ֹͣ����
function StopMultimedia(AliasName: string): string;
//��������
function ResumeMultimedia(AliasName: string): string;
//��֡��ʽ����ý�峤��
function GetTotalframes(AliasName: string): Longint;
//�Ժ����ʽ����ý�峤��
function GetTotalMilliSec(AliasName:String):Longint;
//��λ��ָ����֡λ�ò��ȴ�
function MoveMultimedia(AliasName:String; to_where: Longint):String;
//�ı���ʾ���ڵĴ�С��λ��
function PutMultimedia(wnd:hwnd; AliasName:String; left:longint; top:longint; Width:longint; Height:longint):String;
//����Ŀ�����򳤶Ȼ���
function GetSize(AliasName:String; CxOrCy:String):longint;
//�ر������ļ�
function CloseAll():String;
//��������
function SetVolume(AliasName:String; Volumevalue:longint):String;
//�õ�����
function GetVolume(AliasName:string):longint;

function GetTimeFormat(AliasName:string):string;
//������Ƶ����Դ������ת��
function AudioSource(AliasName:String; Source:String):String;
//���ص�ǰλ��,��λΪ֡
function GetCurrentMultimediaPos(AliasName:String):longint;
//���ص�ǰλ�ã���λΪ����
function GetCurrentMultimediaPosOfMS(AliasName:String):longint;
function setWinMax(AliasName:string):string;

implementation

//���ļ�
{˵��:
AliasName:ָ�������ļ��ı���
filename:ָ�������ļ����ļ���
typeDevice:ָ�����ļ���Windows��ע��Ķ�ý���ļ���,��MPEGVideo��AVIVideo��waveaudio��,
           ����ʹ��MPEGVideo,��Ϊ��֧�ִ����ý���ļ���ʽ.}
function OpenMultimedia(AliasName:String;filename:String;typeDevice:String):String;overload;
var
  ShortPathAndFile : String;
begin
  ShortPathAndfile:=GetShortName(filename);
  cmd := 'open '+ShortPathAndFile+' type '+typeDevice+' Alias '+AliasName;
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);
  If Not( dwReturn = 0) Then  //�ļ���ʧ��
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);//�õ�������Ϣ
      Result := ret;
      exit
    end;
  Result := 'ok';//�ļ��򿪳ɹ�
end;

{˵��:
wnd:ͼ����ʾĿ��ľ��}
function OpenMultimedia(wnd:hwnd;AliasName:String;filename:String;typeDevice:String):String;overload;
var
  ShortPathAndFile : String;
  hwnds:string;
Const
  WS_CHILD = '1073741824';
begin
  ShortPathAndfile:=GetShortName(filename);
  str(wnd,hwnds);
  cmd := 'open '+ShortPathAndFile+' type '+typeDevice+' Alias '+AliasName+' parent '+hwnds+' Style '+WS_CHILD +' shareable';
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);
  If Not( dwReturn = 0) Then  //�ļ���ʧ��
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);//�õ�������Ϣ
      Result := ret;
      exit
    end;
  Result := 'ok';//�ļ��򿪳ɹ�
end;

//�õ����ļ���
function GetShortName( sLongName : string ): string;
var
  sShortName : string;
  nShortNameLen : integer;
begin
  SetLength( sShortName ,MAX_PATH );
  nShortNameLen :=GetShortPathName(PChar( sLongName ) ,PChar( sShortName ) ,MAX_PATH - 1 );
  if( nShortNameLen = 0)then
    begin
      Result := '����';
      exit;
    end;
  SetLength( sShortName, nShortNameLen );
  Result :=StrLower( pchar(sShortName));
end;

//����ȫ��
function PlayMultimedia(AliasName:String):String;overload;
begin
  cmd := 'play ' + AliasName;
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);//����
  If Not (dwReturn = 0) Then  //�ļ���ʧ��
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);// �õ�������Ϣ
      Result := ret;
      Exit
    End;
  Result :='ok';//�ļ��򿪳ɹ�
end;

//ָ����ʼ�����λ�ò���
function PlayMultimedia(AliasName:String; form_or_to_where:String; form_bz:boolean):String;overload;
var
  from_where : string;
  to_where : string;
begin
  if form_bz then
    begin
      from_where := form_or_to_where;
      to_where := inttostr(GetTotalframes(AliasName));
    end
  else
    begin
      from_where := '0';
      to_where := form_or_to_where;
    end;
  cmd := 'play ' + AliasName + ' from ' + from_where + ' to ' + to_where;
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);//����
  If Not (dwReturn = 0) Then  //�ļ���ʧ��
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);// �õ�������Ϣ
      Result := ret;
      Exit
    End;
  Result :='ok';//�ļ��򿪳ɹ�
end;

//�ر�ָ���ļ�
function CloseMultimedia(AliasName:String):String;
begin
  dwReturn := mciSendString(pchar('Close ' + AliasName), nil, 0, 0);//�ر�
  If Not (dwReturn = 0) Then  //�ļ���ʧ��
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);//�õ�������Ϣ
      CloseMultimedia := ret;
      Exit
    End;
  Result :='ok';
end;

//��ͣ����
function PauseMultimedia(AliasName:String):String;
begin
  dwReturn := mciSendString(pchar('Pause '+AliasName), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result:= 'ok';
end;

//ֹͣ����
function StopMultimedia(AliasName:String):String;
begin
  dwReturn := mciSendString(pchar('Stop '+AliasName), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result:= 'ok';
end;

//��������
function ResumeMultimedia(AliasName:String):String;
begin
  dwReturn := mciSendString(pchar('Resume '+AliasName), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result:= 'ok';
end;

//��֡��ʽ����ý�峤��
function GetTotalframes(AliasName:String):longint;
var
  Total: PChar;
begin
  Total:=@MCIReturn;
  //����ʱ���ʽΪ֡
  dwReturn := mciSendString(pchar('set '+ AliasName +' time format frames'), Total, 128, 0);
  //�Ե�ǰʱ���ʽ����ý�峤��
  dwReturn := mciSendString(pchar('status '+ AliasName +' length'), Total, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result := -1;
      Exit
    End;
  Result := strtoint(Total);
end;
//�Ժ����ʽ����ý�峤��
function GetTotalMilliSec(AliasName:String):longint;
var
  Total: PChar;
begin
  Total:=@MCIReturn;
  //����ʱ���ʽΪ����
  dwReturn := mciSendString(pchar('set '+ AliasName +' time format milliseconds'), Total, 128, 0);
  //�Ե�ǰʱ���ʽ����ý�峤��
  dwReturn := mciSendString(pchar('status '+ AliasName +' length'), Total, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result := -1;
      Exit
    End;
  Result := strtoint(Total);
end;

//��λ��ָ����֡λ�ò��ȴ�
{˵��:
to_where:Ŀ��֡λ��}
function MoveMultimedia(AliasName:String; to_where:longint):String;
begin
  dwReturn := mciSendString(pchar('seek ' + AliasName + ' to ' + inttostr(to_where)),  nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result:= 'ok';
end;

//�ı���ʾ���ڵĴ�С��λ��
function PutMultimedia(wnd:hwnd; AliasName:String; left:longint; top:longint; Width:longint; Height:longint):String;
var
  rec:trect;
begin
  If (Width = 0) Or (Height = 0) Then
    begin
   //   GetWindowRect(wnd,rec);
      GetClientRect(wnd,rec);
      Width :=rec.Right- rec.left;
      Height := rec.Bottom - rec.top;
    End;
  dwReturn := mciSendString(pchar('put ' + AliasName + ' window at ' + inttostr(left) + ' ' + inttostr(top) + ' ' + inttostr(Width) + ' ' + inttostr(Height)),nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result := 'ok';
end;

//����Ŀ�����򳤶Ȼ���
function GetSize(AliasName:String; CxOrCy:String):longint;
var
  size : pchar;
  size1:string;
  s1, s2, s3, Width, Height : Longint;
begin
  //If (Not (strlower(pchar(CxOrCy)) = 'cx')) And
  //   (Not (strlower(pchar(CxOrCy)) = 'cy')) Then
  if (lowercase(cxorcy)<>'cx') and (lowercase(cxorcy)<>'cy') then
    begin
      Result := -1;
      Exit;
    end;
  size:=@MCIReturn;
  dwReturn := mciSendString(pchar('Where ' + AliasName + ' destination'), size, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result := -1;
      Exit;
    End;
  size1:=size;
  s1 := pos(' ',size1);Delete(size1,1,s1);
  s2 := pos(' ',size1);Delete(size1,1,s2);
  s2:=s1+s2;
  s3 := pos(' ',size1);Delete(size1,1,s3);
  s3:=s2+s3;
  Width:=strtoint(copy(size,s2+1,s3-s2-1));
  Height:=strtoint(size1);
  //If strlower(pchar(CxOrCy)) = 'cx' Then
  If lowercase(CxOrCy) = 'cx' Then
    begin
      Result := Width;
      exit;
    end;
  //If strlower(pchar(CxOrCy)) = 'cy' Then
  If lowercase(CxOrCy) = 'cy' Then
    begin
      Result := Height;
      exit;
    end;
  Result := -1;
end;

//�ر������ļ�
function CloseAll():String;
begin
  ret:=@MCIReturn;
  dwReturn := mciSendString(pchar('Close All'), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit;
    End;
  Result := 'ok';
end;
//��������
function SetVolume(AliasName:String; Volumevalue:longint):String;
var
  VolumeV : Longint;
begin
  VolumeV := Volumevalue;
  If (VolumeV < 0) Or (VolumeV > 100) Then
    begin
      Result := '�������ó�����Χ';
      Exit;
    End;
  VolumeV := VolumeV * 10;
  cmd := 'setaudio ' + AliasName + ' Volume to ' + inttostr(VolumeV);
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit;
    End;
  Result := 'ok';
end;

//������Ƶ����Դ������ת��
{˵��:
source:������left(������),right(������),average(ƽ��),stereo(������)}
function AudioSource(AliasName:String; Source:String):String;
begin
  cmd := 'Setaudio ' + AliasName + ' source to ' + Source;
  dwReturn := mciSendString(pchar(cmd), nil, 0, 0);
  If Not (dwReturn = 0) Then
    begin
      ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit;
    End;
  Result := 'ok';
end;

//���ص�ǰλ��,��λΪ֡
function GetCurrentMultimediaPos(AliasName:String):longint;
var
  pos:PChar; //,Total
begin
  pos:=@MCIReturn;
//  Total:=@MCIReturn;
  //����ʱ���ʽΪ֡
//  dwReturn := mciSendString(pchar('set '+ AliasName +' time format frames'), Total, 128, 0);

  dwReturn := mciSendString(pchar('status ' + AliasName + ' position'), pos, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result:= -1;
      Exit;
    End;
  Result:= strtoint(pos);
end;
function GetCurrentMultimediaPosOfMS(AliasName:String):longint;
var
  pos:PChar;//,Total
begin
  pos:=@MCIReturn;
//  Total:=@MCIReturn;
  //����ʱ���ʽΪ����
//  dwReturn := mciSendString(pchar('set '+ AliasName +' time format milliseconds'), Total, 128, 0);

  dwReturn := mciSendString(pchar('status ' + AliasName + ' position'), pos, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result:= -1;
      Exit;
    End;
  Result:= strtoint(pos);
end;
function GetTimeFormat(AliasName:string):string;
var
  timeformat:PChar;
begin
  timeformat:=@MCIReturn;
  dwReturn := mciSendString(pchar('status ' + AliasName + ' time format'), timeformat, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit;
    End;
  Result:= timeformat;
end;
function GetVolume(AliasName:string):longint;
var vol:pchar;
begin
  vol:=@MCIReturn;
  dwReturn := mciSendString(pchar('status ' + AliasName + ' volume'), vol, 128, 0);
  If Not (dwReturn = 0) Then
    begin
      Result:= -1;
      Exit;
    End;
  Result:= strtoint(vol) div 10;
end;

function setWinMax(AliasName:string):string;
begin
  dwReturn := mcisendstring(pchar('window '+AliasName+' state maximized'),nil,0,0);
  If Not (dwReturn = 0) Then
    begin
      Ret:=@MCIReturn;
      mciGetErrorString (dwReturn, ret, 128);
      Result := ret;
      Exit
    End;
  Result:= 'ok';
end;
end.
