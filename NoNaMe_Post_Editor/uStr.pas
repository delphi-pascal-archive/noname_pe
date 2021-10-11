unit uStr;

interface

uses
	Classes,
  uImages,
  uConsts,
  SysUtils;

procedure CutString(const S, Delimeter: string; Parts: TStringList);
procedure InsImg(var AText: string);

implementation

procedure CutString(const S, Delimeter: string; Parts: TStringList);
var
  CurPos: integer;
  CurStr: string;
begin
  Parts.clear;
  Parts.BeginUpdate();
  try
    CurStr := S;
    repeat
      CurPos := Pos(Delimeter, CurStr);
      if (CurPos > 0) then
      begin
        Parts.Add(Copy(CurStr, 1, Pred(CurPos)));
        CurStr := Copy(CurStr, CurPos + Length(Delimeter),
          Length(CurStr) - CurPos - Length(Delimeter) + 1);
      end
      else
        if IsImage(CurStr) then Parts.Add(CurStr);
    until CurPos = 0;
  finally
    Parts.EndUpdate();
  end;
end;

procedure InsImg(var AText: string);
var
	Index: Integer;
  fImg: Boolean;
begin
	AText := StringReplace(AText, C_IMG, #13#10 + C_IMG, [rfReplaceAll, rfIgnoreCase]);
  AText := StringReplace(AText, #13#10#13#10 + C_IMG, #13#10 + C_IMG, [rfReplaceAll, rfIgnoreCase]);
  if Copy(AText, 1, 2) = #13#10 then AText := Copy(AText, 3, Length(AText) - 2);
  fImg := False;
  Index := 1;
  while Index <= Length(AText) do
  	begin
    	if fImg and (AText[Index] = ']') then
      	begin
        	fImg := False;
      		if Copy(AText, Index + 1, 2) <> #13#10 then
          	AText := Copy(AText, 1, Index) + #13#10 + Copy(AText, Index + 1, Length(AText) - Index);
            Inc(Index, 2);
        end;
    	if LowerCase(Copy(AText, Index, Length(C_IMG))) = C_IMG then fImg := True;
    	Inc(Index);
    end;
end;

end.
