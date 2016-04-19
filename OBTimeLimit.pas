{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}

unit OBTimeLimit;

{$ObjExportAll On}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs, Forms;

type
  TOBTimeLimit = class(TComponent)
  private
    FDate: TDate;
    FOnExpire: TNotifyEvent;
    FAbout: String;
  protected
    procedure Loaded;override;
  public
  published
    property About : String read FAbout write FAbout;
    property EndDate:TDate read FDate write FDate;
    property OnExpire:TNotifyEvent read FOnExpire write FOnExpire;
  end;

implementation

resourcestring
  RC_Expired = '������ʹ�õ������ð�, �������������Ѿ������ˡ���������ʹ�ã���ע��������.';

procedure TOBTimeLimit.Loaded;
begin
  if not(csDesigning in componentState) then
  begin
    if (Date>=FDate) then
    begin
      if Assigned(FonExpire)
         then FonExpire(self)
         else ShowMessage(RC_Expired);
      Application.Terminate;
    end;
  end;
end;

end.
