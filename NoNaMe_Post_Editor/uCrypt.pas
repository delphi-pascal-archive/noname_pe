unit uCrypt;

interface

uses Windows, SysUtils, Classes;

const password = 'q23RvA7.zp/3';

function EnCrypt(text: string): string;
function DeCrypt(text: string): string;

implementation

procedure Code(var text: string; decode: boolean);
var
  i, PasswordLength: integer;
  sign: shortint;
begin
  PasswordLength := length(password);
  if PasswordLength = 0 then Exit;
  if decode
    then sign := -1
    else sign := 1;
  for i := 1 to Length(text) do
    text[i] := chr(ord(text[i]) + sign*ord(password[i mod PasswordLength + 1]));
end;

function EnCrypt(text: string): string;
var
  res: string;
begin
  res := text;
  Code(res, false);
  Result := res;
end;

function DeCrypt(text: string): string;
var
  res: string;
begin
  res := text;
  Code(res, true);
  Result := res;
end;

end.