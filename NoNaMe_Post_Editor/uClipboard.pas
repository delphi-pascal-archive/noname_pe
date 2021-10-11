unit uClipboard;

interface

uses
	Classes;

procedure LoadClipboard(S: TStream);
procedure SaveClipboard(S: TStream);
procedure SetTextClipboard;
function IsUnicodeInClipboard: Boolean;

implementation

uses
  Windows,
  SysUtils;

const
	UnicodeFormat: Cardinal = CF_UNICODETEXT;

function IsUnicodeInClipboard: Boolean;
begin
	Result := IsClipboardFormatAvailable(UnicodeFormat);
end;

procedure CopyStreamToClipboard(fmt: Cardinal; S: TStream);
var
	hMem: THandle;
  pMem: Pointer;
begin
  Assert(Assigned(S));
  S.Position := 0;
  hMem       := GlobalAlloc(GHND or GMEM_DDESHARE, S.Size);
  if hMem <> 0 then
  begin
    pMem := GlobalLock(hMem);
    if pMem <> nil then
    begin
      try
        S.Read(pMem^, S.Size);
        S.Position := 0;
      finally
        GlobalUnlock(hMem);
      end;
    	SetClipboardData(fmt, hMem);
    end { If }
    else
    begin
      GlobalFree(hMem);
      OutOfMemoryError;
    end;
  end { If }
  else
    OutOfMemoryError;
end; { CopyStreamToClipboard }

procedure CopyStreamFromClipboard(fmt: Cardinal; S: TStream);
var
  hMem: THandle;
  pMem: Pointer;
begin
  hMem := GetClipboardData(fmt);
  if hMem <> 0 then
  begin
    pMem := GlobalLock(hMem);
    if pMem <> nil then
    begin
      try
        S.Write(pMem^, GlobalSize(hMem));
        S.Position := 0;
      finally
        GlobalUnlock(hMem);
      end;
    end;
  end; { If }
end; { CopyStreamFromClipboard }

procedure SaveClipboardFormat(fmt: Word; writer: TWriter);
var
  fmtname: array[0..128] of Char;
  ms: TMemoryStream;
begin
  Assert(Assigned(writer));
  if 0 = GetClipboardFormatName(fmt, fmtname, SizeOf(fmtname)) then
    fmtname[0] := #0;
  ms := TMemoryStream.Create;
  try
    CopyStreamFromClipboard(fmt, ms);
    if ms.Size > 0 then
    begin
      writer.WriteInteger(fmt);
      writer.WriteString(fmtname);
      writer.WriteInteger(ms.Size);
      writer.Write(ms.Memory^, ms.Size);
    end; { If }
  finally
    ms.Free
  end; { Finally }
end; { SaveClipboardFormat }

procedure LoadClipboardFormat(reader: TReader);
var
  fmt: Integer;
  fmtname: string;
  Size: Integer;
  ms: TMemoryStream;
begin
  Assert(Assigned(reader));
  fmt     := reader.ReadInteger;
  fmtname := reader.ReadString;
  Size    := reader.ReadInteger;
  ms      := TMemoryStream.Create;
  try
    ms.Size := Size;
    reader.Read(ms.memory^, Size);
    if Length(fmtname) > 0 then
      fmt := RegisterCLipboardFormat(PChar(fmtname));
    if fmt <> 0 then
      CopyStreamToClipboard(fmt, ms);
  finally
    ms.Free;
  end; { Finally }
end; { LoadClipboardFormat }

procedure SaveClipboard(S: TStream);
var
  writer: TWriter;
  format: Cardinal;
begin
  writer := TWriter.Create(S, 4096);
  try
    OpenClipboard(0);
    try
      writer.WriteListBegin;
      format := EnumClipboardFormats(0);
      while format <> 0 do
      	begin
      		SaveClipboardFormat(format, writer);
          format := EnumClipboardFormats(format);
        end;
      writer.WriteListEnd;
    finally
      CloseClipboard;
    end; { Finally }
  finally
    writer.Free
  end; { Finally }
end; { SaveClipboard }

procedure LoadClipboard(S: TStream);
var
  reader: TReader;
begin
  Assert(Assigned(S));
  reader := TReader.Create(S, 4096);
  try
    OpenClipboard(0);
    try
      EmptyClipboard;
      reader.ReadListBegin;
      while not reader.EndOfList do
        LoadClipboardFormat(reader);
      reader.ReadListEnd;
    finally
      CloseClipboard;
    end; { Finally }
  finally
    reader.Free
  end; { Finally }
end; { LoadClipboard }

procedure SetTextClipboard;
var
	Stream: TMemoryStream;
begin
  Stream := TMemoryStream.Create;
  try
  	OpenClipboard(0);
  	CopyStreamFromClipboard(UnicodeFormat, Stream);
    if Assigned(Stream) and (Stream.Size > 0) then
    	begin
      	Stream.Position := 0;
        EmptyClipboard;
        CopyStreamToClipboard(UnicodeFormat, Stream);
      end;
  finally
  	CloseClipboard;
  	if Assigned(Stream) then Stream.Free;
  end;
end;

end.
