unit OBFileStore;

interface

uses
  Windows, Messages, SysUtils, Classes, Variants;

type
  TOBFileStore = class;

  TOBFileItem = class(TCollectionItem)
  private
    FFileStream : TMemoryStream;
    FMemo : String;
    procedure ReadData(Stream: TStream);
    procedure WriteData(Stream: TStream);
  protected
    FFileName : TFileName;
    procedure SetFileName(const Value: TFileName);
    function  GetDisplayName: String; override;
    procedure DefineProperties(Filer: TFiler); override;
  public
    constructor Create(Collection: TCollection); override;
    procedure Assign(Source: TPersistent); override;
    procedure SaveToFile(lFileName : String);
    procedure SaveToStream(lStream : TMemoryStream);
  published
    property FileName : TFileName read FFileName write SetFileName;
    property Memo : String read FMemo write FMemo;
  end;

  TOBFiles = class(TCollection)
  private
    FOBFileStore : TOBFileStore;
    function GetItem(Index: Integer): TOBFileItem;
    procedure SetItem(Index: Integer; Value: TOBFileItem);
  protected
    function GetOwner: TPersistent; override;
    procedure Update(Item: TCollectionItem); override;
  public
    constructor Create(lComponent : TOBFileStore);
    function Add: TOBFileItem;
    function AddItem(Item: TOBFileItem; Index: Integer): TOBFileItem;
    property Items[Index: Integer]: TOBFileItem read GetItem write SetItem; default;
  end;

  TOBFileStore = class(TComponent)
  private
    FAbout : String;
    FFiles : TOBFiles;
    procedure SetFiles(Value : TOBFiles);
  protected
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  published
    property About : String read FAbout write FAbout;
    property Files : TOBFiles read FFiles write SetFiles;
  end;

implementation

uses OBZipLib;

{ TOBFileItem }

procedure TOBFileItem.Assign(Source: TPersistent);
begin
  inherited Assign(Source);
end; { �������� }

constructor TOBFileItem.Create(Collection: TCollection);
begin
  inherited Create(Collection);
  FFileStream := TMemoryStream.Create;
end; { �������� }

procedure TOBFileItem.DefineProperties(Filer: TFiler);
  function DoWrite: Boolean;
  begin
    Result := FFileStream.Size <> 0;
  end;
begin
  inherited;
  Filer.DefineBinaryProperty('Data',ReadData, WriteData, DoWrite);
end;

function TOBFileItem.GetDisplayName: String;
begin
  if FFileStream.Size = 0
     then Result := 'û������...'
     else Result := UpperCase(FFileName) + ' ' + Format('%10.2n',[FFileStream.Size / 1024])+'KB';
end; { ȡ��ʾ�� }

procedure TOBFileItem.ReadData(Stream: TStream);
var
  lSize : DWORD;
begin
  Stream.Read(lSize,sizeof(lSize));
  FFileStream.CopyFrom(Stream,lSize);
end; { �������� }

procedure TOBFileItem.SaveToFile(lFileName: String);
var
  lOBZlib : TOBZipLib;
begin
  if (Trim(FFileName) <> '') and (FFileStream.Size <> 0) then
  begin
    lOBZlib := TOBZipLib.Create(nil);
    try
      FFileStream.Position := 0;
      lOBZlib.DeCompress(FFileStream,lFileName);
    finally
      lOBZlib.Free;
    end;
  end;
end; { ���Ϊ�ļ� }

procedure TOBFileItem.SaveToStream(lStream: TMemoryStream);
var
  lOBZlib : TOBZipLib;
begin
  if (Trim(FFileName) <> '') and (FFileStream.Size <> 0) then
  begin
    lOBZlib := TOBZipLib.Create(nil);
    try
      FFileStream.Position := 0;
      lOBZlib.DeCompress(FFileStream,lStream);
    finally
      lOBZlib.Free;
    end;
  end;
end; { ���浽�� }

procedure TOBFileItem.SetFileName(const Value: TFileName);
var
  lTempStream : TMemoryStream;
  lOBZlib : TOBZipLib;
begin
  FFileName := Value;
  if Trim(FFileName) <> '' then
  begin
    if ExtractFileName(FFileName) <> Trim(FFileName) then
    begin
      lTempStream := TMemoryStream.Create;
      lOBZlib := TOBZipLib.Create(nil);
      try
        FFileName := ExtractFileName(Value);
        lTempStream.LoadFromFile(Value);
        lOBZlib.Compress(lTempStream,FFileStream);
      finally
        lTempStream.Free;
        lOBZlib.Free;
      end;
    end;
  end else
  if FFileStream.Size <> 0 then FFileStream.Clear;
end; { ������ʾ�ļ��� }

procedure TOBFileItem.WriteData(Stream: TStream);
var
  lSize : DWORD;
begin
  lSize := FFileStream.Size;
  Stream.Write(lSize,sizeof(lSize));
  Stream.Write(FFileStream.Memory^,FFileStream.Size);
end; { д���� }

{ TOBFiles }

function TOBFiles.Add: TOBFileItem;
begin
  Result := TOBFileItem(inherited Add);
end; { ��� }

function TOBFiles.AddItem(Item: TOBFileItem; Index: Integer): TOBFileItem;
begin
  Result := TOBFileItem(inherited GetItem(Index));
end; { ����� }

constructor TOBFiles.Create(lComponent: TOBFileStore);
begin
  inherited Create(TOBFileItem);
  FOBFileStore := lComponent
end; { �����ؼ� }

function TOBFiles.GetItem(Index: Integer): TOBFileItem;
begin
  Result := TOBFileItem(inherited GetItem(Index));
end; { ȡ���� }

function TOBFiles.GetOwner: TPersistent;
begin
  Result := FOBFileStore;
end; { ȡ�ø��� }

procedure TOBFiles.SetItem(Index: Integer; Value: TOBFileItem);
begin
  inherited SetItem(Index, Value);
end; { ������ }

procedure TOBFiles.Update(Item: TCollectionItem);
begin
  inherited;

end; { ���� }

{ TOBFileStore }

constructor TOBFileStore.Create(AOwner: TComponent);
begin
  inherited;
  FFiles := TOBFiles.Create(Self);
end; { �����ؼ� }

destructor TOBFileStore.Destroy;
begin
  FFiles.Free;
  inherited;
end; { �ͷſؼ� }

procedure TOBFileStore.SetFiles(Value: TOBFiles);
begin
  FFiles.Assign(Value);
end; { �����ļ� }

end.
