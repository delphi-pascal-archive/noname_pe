unit uImages;

interface

uses
	SysUtils;

function IsImage(AStr: string): Boolean;

implementation

function IsImage(AStr: string): Boolean;
var
	ext: string;
begin
	ext := LowerCase(ExtractFileExt(AStr));
  Result := (ext = '.bmp') or (ext = '.jpeg') or
  	        (ext = '.jpg') or (ext = '.gif') or
            (ext = '.png');
end;

end.
