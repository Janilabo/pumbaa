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

{==============================================================================]
 <Int64_Compare>
 @action: Compares x with target T.
          Results: 0=EQUAL, 1=x>T, -1=x<T
 @note: None
[==============================================================================}
function Int64_Compare(const x, T: Int64): Int32; cdecl; inline;
begin
  if (x = T) then
    Exit(0);
  if (x > T) then
    Result := 1
  else
    Result := -1;
end;

{==============================================================================]
 <Int64_Distance>
 @action: Returns the distance between x and T.
 @note: None
[==============================================================================}
function Int64_Distance(const x, T: Int64): Int64; cdecl; inline;
begin
  Result := Abs(T - x);
end;

{==============================================================================]
 <Int64_Difference>
 @action: Returns the difference from x to T.
 @note: None
[==============================================================================}
function Int64_Difference(const x, T: Int64): Int64; cdecl; inline;
begin
  Result := (T - x);
end;

{==============================================================================]
 <Int64_Opposite>
 @action: Returns the opposite number of x. 
          -9999 to 9999 OR 9999 to -9999 (- <=> +) 
 @note: None
[==============================================================================}
function Int64_Opposite(const x: Int64): Int64; cdecl; inline;
begin
  Result := (x * -1);
end;