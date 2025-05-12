{==============================================================================]
 <Int32_Inc>
 @action: Increases the x value by N.
 @note: Returns the increased x!
[==============================================================================}
function Int32_Inc(var x: Int32; const N: Int32 = 1): Int32; cdecl; inline;
begin
  x := (x + N);
  Result := x;
end;

{==============================================================================]
 <Int32_Dec>
 @action: Decreases the x value by N.
 @note:  Returns the increased x!
[==============================================================================}
function Int32_Dec(var x: Int32; const N: Int32 = 1): Int32; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Int32_Increase>
 @action: Increases the Int32 value x by N.
 @note: Returns x before increasing it with N!
[==============================================================================}
function Int32_Increase(var x: Int32; const N: Int32 = 1): Int32; cdecl; inline;
begin
  Result := x;
  x := (x + N);
end;

{==============================================================================]
  <Int32_Decrease>
 @action: Decreases the Int32 value x by N.
 @note: Returns x before decreasing it with N!
[==============================================================================}
function Int32_Decrease(var x: Int32; const N: Int32 = 1): Int32; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Int32_Digits>
 @action: Converts Int32 value (x) to digits of it.
          Example: 1234 => 1,2,3,4, -999 => 9,9,9
 @note: If x is negative value, the negative sign is ignored. 
[==============================================================================}
function Int32_Digits(const x: Int32): TIntegerArray; cdecl;
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
 <Int32_NegA>
 @action: Returns the negative number of x. 
          -9999 to -9999 OR 9999 to -9999 (+/- => -)
 @note: None
[==============================================================================}
function Int32_NegA(const x: Int32): Int32; cdecl; inline;
begin
  Result := (Abs(x) * -1);
end;

{==============================================================================]
 <Int32_Neg>
 @action: Returns the negative number of x. 
          -9999 to -9999 OR 9999 to -9999 (+/- => -)
 @note: None
[==============================================================================}
function Int32_Neg(const x: Int32): Int32; cdecl; inline;
begin
  if (x > -1) then
    Result := (x * -1)
  else
    Result := x;
end;

{==============================================================================]
 <Int32_Negative>
 @action: Returns True if Int32 value x is lower than 0 (negative), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Int32_Negative(const x: Int32): Boolean; cdecl; inline;
begin
  Result := (x < 0);
end;

{==============================================================================]
 <Int32_Negative>
 @action: Returns True if Int32 value x is higher than 0 (positive), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Int32_Positive(const x: Int32): Boolean; cdecl; inline;
begin
  Result := (x > 0);
end;

{==============================================================================]
 <Int32_Negative>
 @action: Returns True if Int32 value x is 0 (neutral), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Int32_Neutral(const x: Int32): Boolean; cdecl; inline;
begin
  Result := (x = 0);
end;

{==============================================================================]
 <Int32_Compare>
 @action: Compares x with target T.
          Results: 0=EQUAL, 1=x>T, -1=x<T
 @note: None
[==============================================================================}
function Int32_Compare(const x, T: Int32): Int32; cdecl; inline;
begin
  if (x = T) then
    Exit(0);
  if (x > T) then
    Result := 1
  else
    Result := -1;
end;

{==============================================================================]
 <Int32_Distance>
 @action: Returns the distance between x and T.
 @note: None
[==============================================================================}
function Int32_Distance(const x, T: Int32): Int32; cdecl; inline;
begin
  Result := Abs(T - x);
end;

{==============================================================================]
 <Int32_Difference>
 @action: Returns the difference from x to T.
 @note: None
[==============================================================================}
function Int32_Difference(const x, T: Int32): Int32; cdecl; inline;
begin
  Result := (T - x);
end;

{==============================================================================]
 <Int32_Opposite>
 @action: Returns the opposite number of x. 
          -9999 to 9999 OR 9999 to -9999 (- <=> +) 
 @note: None
[==============================================================================}
function Int32_Opposite(const x: Int32): Int32; cdecl; inline;
begin
  Result := (x * -1);
end;