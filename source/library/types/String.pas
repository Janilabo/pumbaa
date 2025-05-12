{==============================================================================]
  <String_Pos>
  @action: Returns s position from str. Starts scanning from offset.
           If s doesn't exist in str, result will be set as 0.
  @note: Supports offset.
[==============================================================================}
function String_Pos(const str, s: string; const offset: Int32 = 0): Int32; cdecl;
var
  a, b, o: Int32;
begin
  if (offset > 1) then
  begin
    a := Length(str);
    b := Length(s);
    o := offset;
    if ((a > 0) and (b > 0) and (b <= a) and (o < ((a - b) + 2))) then
    begin
      if (o < 1) then
        o := 1;
      for Result := o to ((a - b) + 1) do
        if (s = Copy(str, Result, b)) then
          Exit;
    end;
	Result := 0;
  end else
    Result := Pos(s, str);
end;

{==============================================================================]
 <String_Between>
 @action: Returns the string between s1 and s2 in str.
 @note: Supports offset.
[==============================================================================}
function String_Between(const str, s1, s2: string; const offset: Int32 = 0): string; cdecl;
var
  b, e, l: Int32;
begin
  Result := '';
  if (offset > 1) then
    b := String_Pos(str, s1, offset)
  else
    b := Pos(s1, str);
  if (b = 0) then
    Exit;
  l := Length(s1);
  e := String_Pos(str, s2, (b + l));
  if (e > 0) then
    Result := Copy(str, (b + l), (e - (b + l)))
end;

{==============================================================================]
  <String_Count>
  @action: Simply returns the count of s in str.
  @note: Contains support for overlapping (overlap)
[==============================================================================}
function String_Count(const str, s: string; const overlap: Boolean = True): Int32; cdecl;
var
  p, o: Int32;
begin
  Result := 0;
  p := 0;
  if not overlap then
  begin
    o := Length(s);
    p := (p - (o - 1));
  end else
    o := 1;
  if (o <= Length(str)) then
  repeat
    p := String_Pos(s, str, (p + o));
    if (p > 0) then
      Inc(Result);
  until (p < 1);
end;

{==============================================================================]
  <String_FromLeft>
  @action: Returns string from left with x as the count of characters.
  @note: None
[==============================================================================}
function String_FromLeft(const str: string; const x: Int32): string; cdecl;
var
  l: Int32;
begin
  l := Length(str);
  if ((x > 0) and (l > 0)) then
    Result := Copy(str, 1, x)
  else
    Result := '';
end;

{==============================================================================]
  <String_FromRight>
  @action: Returns string from right with x as the count of characters.
  @note: None
[==============================================================================}
function String_FromRight(const str: string; const x: Int32): string; cdecl;
var
  l: Int32;
begin
  l := Length(str);
  if ((x > 0) and (l > 0)) then
    Result := Copy(str, (l - (x - 1)), x)
  else
    Result := '';
end;

{==============================================================================]
  <String_Explode>
  @action: Explodes str with delimiter (d).
  @note: Explodes up to (maximum) limit. Limit as -1 means no limits.
[==============================================================================}
function String_Explode(const str, d: string; const limit: Int32 = -1): TStringArray; overload; cdecl;
var
  a, b, l, p, r, s, t: Int32;
  m: Boolean;
begin
  SetLength(Result, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    a := 1;
    p := 1;
    r := 0;
	if (limit = -1) then
      t := l
    else
      t := limit;
    while (((r + 1) < t) and ((a + (s - 1)) <= l)) do
    begin
      for b := 1 to s do
      begin
        m := (str[((a + b) - 1)] = d[b]);
        if not m then
          Break;
      end;
      if m then
      begin
        Result[r] := Copy(str, p, (a - p));
        if (((a + s) - 1) = l) then
          Exit;
        p := (a + s);
        a := ((a + s) - 1);
        Inc(r);
        SetLength(Result, (r + 1));
      end;
      Inc(a);
    end;
    Result[r] := Copy(str, p, ((l - p) + 1));
  end else
    Result[0] := '';
end;

{==============================================================================]
  <String_Exploded>
  @action: Explodes str with delimiters (d).
  @note: Explodes up to (maximum) limit. Limit as -1 means no limits.
[==============================================================================}
function String_Exploded(const str: string; const d: TStringArray; const limit: Int32 = -1): TStringArray; overload; cdecl;
var
  a, b, i, l, p, r, s, z, g, t: Int32;
  m: Boolean;
  x: TStringArray;
begin
  SetLength(Result, 1);
  l := Length(str);
  s := Length(d);
  if ((l > 0) and (s > 0)) then
  begin
    x := d;
    r := 0;
    z := 0;
    if (limit = -1) then
      t := l
    else
      t := limit;
    for a := 0 to (s - 1) do
      if (x[a] <> '') then
      begin
        if (z = 0) then
          z := Length(x[a])
        else
          if (Length(x[a]) < z) then
            z := Length(x[a]);
        x[r] := x[a];
        Inc(r);
      end;
    if (r > 0) then
    begin
      s := r;
      a := 1;
      p := 1;
      r := 0;
      while (((r + 1) < t) and ((a + (z - 1)) <= l)) do
      begin
        m := False;
        for i := 0 to (s - 1) do
        begin
          g := Length(x[i]);
          if ((a + (g - 1)) <= l) then
          begin
            for b := 1 to g do
            begin
              m := (str[((a + b) - 1)] = x[i][b]);
              if not m then
                Break;
            end;
            if m then
              Break;
          end;
        end;
        if m then
        begin
          Result[r] := Copy(str, p, (a - p));
          if ((a + (g + 1)) = l) then
            Exit;
          p := (a + g);
          a := ((a + g) - 1);
          Inc(r);
          SetLength(Result, (r + 1));
        end;
        Inc(a);
      end;
      Result[r] := Copy(str, p, ((l - p) + 1));
    end else
      Result[0] := '';
  end else
    Result[0] := '';
end;