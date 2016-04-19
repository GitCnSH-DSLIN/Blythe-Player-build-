unit OBPictureStore;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, JPEG;

type
  TOBPictureStore = class;

  TOBPictureItem = class(TCollectionItem)
  protected
    FPicture : TPicture;
    FMemo : String;
    procedure SetPicture(Value : TPicture);
    procedure SetTransparent(Value : Boolean);
    function  GetTransparent : Boolean;
    function  GetDisplayName: String; override;
  public
    constructor Create(Collection: TCollection); override;
    procedure Assign(Source: TPersistent); override;
  published
    property Picture : TPicture read FPicture write SetPicture;
    property Transparent : Boolean read GetTransparent write SetTransparent;
    property Memo : String read FMemo write FMemo;
  end;

  TOBPictures = class(TCollection)
  private
    FOBPictureStore: TOBPictureStore;
    function GetItem(Index: Integer): TOBPictureItem;
    procedure SetItem(Index: Integer; Value: TOBPictureItem);
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(lComponent : TOBPictureStore);
    function Add: TOBPictureItem;
    function AddItem(Item: TOBPictureItem; Index: Integer): TOBPictureItem;
    property Items[Index: Integer]: TOBPictureItem read GetItem write SetItem; default;
  end;

  TOBPictureStore = class(TComponent)
  private
    FAbout : String;
    FPictures : TOBPictures;
    procedure SetPictures(Value : TOBPictures);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property About : String read FAbout write FAbout;
    property Pictures : TOBPictures read FPictures write SetPictures;
  end;

implementation

{ TOBPictureItem }

procedure TOBPictureItem.Assign(Source: TPersistent);
begin
  if Source is TOBPictureItem
     then Picture.Assign(TOBPictureItem(Source).Picture)
     else inherited Assign(Source);
end; { ��ȡͼ�� }

constructor TOBPictureItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FPicture := TPicture.Create;
end; { �����б� }

function TOBPictureItem.GetDisplayName: String;
begin
  if FPicture <> nil then
  if FPicture.Width <> 0 then
  begin
    if FPicture.Graphic is TBitmap then Result := 'BMP��ʽͼ�� ' else
    if FPicture.Graphic is TJpegImage then Result := 'JPEG��ʽͼ�� ' else
    if FPicture.Graphic is TIcon then Result := 'ICON��ʽͼ�� ' else
    if FPicture.Graphic is TMetafile then Result := 'METAFILE��ʽͼ�� ' else
    Result := Result + '������ʽͼ�� ';
    Result := Result + IntToStr(FPicture.Width)+' * '+IntToStr(FPicture.Height);
  end;
  if Result = '' then Result := '��ͼ��...';
end; { ��ʾͼ������ }

function TOBPictureItem.GetTransparent: Boolean;
begin
  if FPicture.Width <> 0
     then Result := FPicture.Graphic.Transparent
     else Result := False;
end; { ͼ��͸���趨 }

procedure TOBPictureItem.SetPicture(Value: TPicture);
begin
  if Value <> nil then
     FPicture.Assign(Value);
end; { ��ȡͼ�� }

procedure TOBPictureItem.SetTransparent(Value: Boolean);
begin
  if FPicture.Width <> 0
     then FPicture.Graphic.Transparent := Value;
end; { �趨ͼ��͸�� }

{ TOBPictures }

function TOBPictures.Add: TOBPictureItem;
begin
  Result := TOBPictureItem(inherited Add);
end; { ��� }

function TOBPictures.AddItem(Item: TOBPictureItem;
  Index: Integer): TOBPictureItem;
begin
  Result := TOBPictureItem(inherited GetItem(Index));
end; { ������� }

constructor TOBPictures.Create(lComponent: TOBPictureStore);
begin
  inherited Create(TOBPictureItem);
  FOBPictureStore := lComponent
end; { �����б� }

function TOBPictures.GetItem(Index: Integer): TOBPictureItem;
begin
  Result := TOBPictureItem(inherited GetItem(Index));
end; { ��ȡָ��ͼ�� }

function TOBPictures.GetOwner: TPersistent;
begin
  Result := FOBPictureStore;
end; { ȡ�ø��� }

procedure TOBPictures.SetItem(Index: Integer; Value: TOBPictureItem);
begin
  inherited SetItem(Index, Value);
end; { ��ȡָ��ͼ�� }

procedure TOBPictures.Update(Item: TCollectionItem);
begin
  inherited;

end; { ����ָ��ͼ�� }

{ TOBPictureStore }

constructor TOBPictureStore.Create(AOwner: TComponent);
begin
  inherited;
  FPictures := TOBPictures.Create(Self);
end; { �����ؼ� }

destructor TOBPictureStore.Destroy;
begin
  FPictures.Free;
  inherited;
end; { ȡ���ؼ� }

procedure TOBPictureStore.SetPictures(Value: TOBPictures);
begin
  FPictures.Assign(Value);
end; { ����ͼ�� }

end.
 