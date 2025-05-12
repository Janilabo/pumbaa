{==============================================================================]
 <Int64_Inc>
 @action: Increases the Int64 value x by N.
 @note: Returns the increased x!
[==============================================================================}
function Int64_Inc(var x: Int64; const N: Int64 = 1): Int64; cdecl; inline;
begin
  x := (x + N);
  Result := x;
end;

{==============================================================================]
 <Int64_Dec>
 @action: Decreases the Int64 value x by N.
 @note:  Returns the increased x!
[==============================================================================}
function Int64_Dec(var x: Int64; const N: Int64 = 1): Int64; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Int64_Increase>
 @action: Increases the Int64 value x by N.
 @note: Returns x before increasing it with N!
[==============================================================================}
function Int64_Increase(var x: Int64; const N: Int64 = 1): Int64; cdecl; inline;
begin
  Result := x;
  x := (x + N);
end;

{==============================================================================]
  <Int64_Decrease>
 @action: Decreases the Int64 value x by N.
 @note: Returns x before decreasing it with N!
[==============================================================================}
function Int64_Decrease(var x: Int64; const N: Int64 = 1): Int64; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Int64_Digits>
 @action: Converts Int64 value (x) to digits of it.
          Example: 1234 => 1,2,3,4, -999 => 9,9,9
 @note: If x is negative value, the negative sign is ignored. 
[==============================================================================}
function Int64_Digits(const x: Int64): TIntegerArray; cdecl;
var
  s: string;
  l, i: Int32;
begin
  s := IntToStr(Abs(x));
  l := Length(s);
  SetLength(Result, l);
  for i := 0 to (l - 1) do
    Result[i] := StrToInt(s[(i + 1)]);
end;