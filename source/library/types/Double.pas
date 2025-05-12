{==============================================================================]
 <Double_Inc>
 @action: Increases the x value by N.
 @note: Returns the increased x!
[==============================================================================}
function Double_Inc(var x: Double; const N: Double = 1): Double; cdecl; inline;
begin
  x := (x + N);
  Result := x;
end;

{==============================================================================]
 <Double_Dec>
 @action: Decreases the x value by N.
 @note:  Returns the increased x!
[==============================================================================}
function Double_Dec(var x: Double; const N: Double = 1): Double; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Double_Increase>
 @action: Increases the Double value x by N.
 @note: Returns x before increasing it with N!
[==============================================================================}
function Double_Increase(var x: Double; const N: Double = 1): Double; cdecl; inline;
begin
  Result := x;
  x := (x + N);
end;

{==============================================================================]
  <Double_Decrease>
 @action: Decreases the Double value x by N.
 @note: Returns x before decreasing it with N!
[==============================================================================}
function Double_Decrease(var x: Double; const N: Double = 1): Double; cdecl;
begin
  Result := x;
  x := (x - N);
end;

{==============================================================================]
 <Double_Digits>
 @action: Converts Double value (x) to digits of it.
          Example: 1234 => 1,2,3,4, -999 => 9,9,9
 @note: If x is negative value, the negative sign is ignored. 
[==============================================================================}
function Double_Digits(const x: Double): TIntegerArray; cdecl;
var
  s: string;
  l, i: Int32;
begin
  s := FloatToStr(Abs(x));
  l := Length(s);
  SetLength(Result, l);
  for i := 0 to (l - 1) do
    Result[i] := StrToInt(s[(i + 1)]);
end;

{==============================================================================]
 <Double_NegA>
 @action: Returns the negative number of x. 
          -9999 to -9999 OR 9999 to -9999 (+/- => -)
 @note: None
[==============================================================================}
function Double_NegA(const x: Double): Double; cdecl; inline;
begin
  Result := (Abs(x) * -1);
end;

{==============================================================================]
 <Double_Neg>
 @action: Returns the negative number of i. 
          -9999 to -9999 OR 9999 to -9999 (+/- => -)
 @note: None
[==============================================================================}
function Double_Neg(const x: Double): Double; cdecl; inline;
begin
  if (x > 0) then
    Result := (x * -1)
  else
    Result := x;
end; 

{==============================================================================]
 <Double_Negative>
 @action: Returns True if Double value x is lower than 0 (negative), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Double_Negative(const x: Double): Boolean; cdecl; inline;
begin
  Result := (x < 0);
end;

{==============================================================================]
 <Double_Positive>
 @action: Returns True if Double value x is higher than 0 (positive), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Double_Positive(const x: Double): Boolean; cdecl; inline;
begin
  Result := (x > 0);
end;

{==============================================================================]
 <Double_Neutral>
 @action: Returns True if Double value x is 0 (neutral), otherwise False. 
 @note: 0 is not negative or positive!
[==============================================================================}
function Double_Neutral(const x: Double): Boolean; cdecl; inline;
begin
  Result := (x = 0);
end;

{==============================================================================]
 <Double_MinDecimal>
 @action: Returns the minimum decimal value.
          0.12345 => 0.00001
 @note: None
[==============================================================================}
function Double_MinDecimal(const x: Double): Double; cdecl;
var
  d: Double;
begin
  d := Frac(x);
  if (d = 0) then
    Result := 0
  else
    if (d < 0) then
      Result := StrToFloat('-0,' + StringOfChar('0', (Length(FloatToStr(d)) - 4)) + '1')
    else
      Result := StrToFloat('0,' + StringOfChar('0', (Length(FloatToStr(d)) - 3)) + '1');
end;

{==============================================================================]
 <Double_MaxDecimal>
 @action: Returns the maximum decimal value.
          0.12345 => 0.99999
 @note: None
[==============================================================================}
function Double_MaxDecimal(const x: Double): Double; cdecl;
var
  d: Double;
begin
  d := Frac(x);
  if (d = 0) then
    Result := 0
  else
    if (d < 0) then
      Result := StrToFloat('-0,' + StringOfChar('9', (Length(FloatToStr(d)) - 3)))
    else
      Result := StrToFloat('0,' + StringOfChar('9', (Length(FloatToStr(d)) - 2)));
end;

{==============================================================================]
 <Double_Copy>
 @action: Returns x with decimal accuracy of a. Examples below with '123.456789'.
          a=0    a=1     a=2       a=3       a=4         a=5
          123   123.4   123.45   123.456   123.4567   123.45678
 @note: None
[==============================================================================}
function Double_Copy(const x: Double; const a: Int32): Double; cdecl;
var
  d: Double;
  z: Boolean;
begin
  if (a < 1) then
    Exit(x);
  Result := Int(Real(x));
  d := Frac(x);
  z := (d < 0.1);
  if z then
    d := (d + 0.1);
  Result := (Result + StrToFloatDef((',' + Copy(FloatToStr(d), 3, a)), 0));
  if z then
    Result := (Result - 0.1);
end;
