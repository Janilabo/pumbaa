{==============================================================================]
  <TStringHelper.After>
  @action: Returns string that is found after s in str.
  @note: None
[==============================================================================}
function TStringHelper.After(const s: string; const index: Integer = 1): string; overload;
var
  p: Integer;
begin
  p := Self.Pos(s, index);
  if (p > 0) then
    Result := Copy(Self, (p + Length(s)), Length(Self))
  else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.After>
  @action: Returns string that is found after index in str.
  @note: None
[==============================================================================}
function TStringHelper.After(const index: Integer; const count: Integer = 2147483647): string; overload;
begin
  if ((index >= 0) and (index < Length(Self)) and (count > 0)) then
    Result := Copy(Self, (index + 1), count)
  else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Ahead>
  @action: Returns string that is ahead the s in str.
  @note: None
[==============================================================================}
function TStringHelper.Ahead(const s: string; const index: Integer = 2147483647): string; overload;
var
  p: Integer;
begin
  p := Self.Loc(s, index);
  if (p > 0) then
    Result := Copy(Self, 1, (p - 1))
  else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Ahead>
  @action: Returns string that is ahead the index in str.
  @note: None
[==============================================================================}
function TStringHelper.Ahead(const index: Integer; const count: Integer = 2147483647): string; overload;
var
  c: Integer;
begin
  if ((index > 1) and (count > 0)) then
  begin
    c := Min(count, (index - 1));
    Result := Copy(Self, (index - c), c);
  end else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Amount>
  @action: Simply returns the amount of s in str.
  @note: Contains support for overlapping (overlap)
[==============================================================================}
function TStringHelper.Amount(const s: string; const overlap: Boolean = True; const index: Integer = 2147483647): Integer; cdecl;
var
  p, o: Integer;
  c: string;
begin
  Result := 0;
  c := Copy(Self, 1, index);
  o := overlap.Select(1, Length(s));
  p := (1 - o);
  repeat
    p := c.Find(s, (p + o));
    if (p > 0) then
      Inc(Result);
  until (p < 1);
end;

{==============================================================================]
  <TStringHelper.At>
  @action: Checks if string s is at index position in str.
  @note: UNSAFE: Minimal checking for efficiency!
[==============================================================================}
function TStringHelper.At(const s: string; const index: Integer = 1): Boolean; cdecl; inline;
var
  i, l: Integer;
begin
  l := Length(s);
  for i := 1 to l do
    if (Self[((index) + i) - 1] <> s[i]) then
      Exit(False);
  Result := (l > 0);
end;

{==============================================================================]
  <TStringHelper.Before>
  @action: Returns string that is found before s in str.
  @note: None
[==============================================================================}
function TStringHelper.Before(const s: string; const index: Integer = 1): string; overload;
var
  p: Integer;
begin
  p := Self.Pos(s, index);
  if (p > 0) then
    Result := Copy(Self, 1, (p - 1))
  else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Before>
  @action: Returns string that is found before index in str.
  @note: None
[==============================================================================}
function TStringHelper.Before(const index: Integer; const count: Integer = 2147483647): string; overload;
var
  c: Integer;
begin
  if ((index > 1) and (count > 0)) then
  begin
    c := Min(count, (index - 1));
    Result := Copy(Self, (index - c), c);
  end else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Behind>
  @action: Returns string (with count) that is behind the s in str.
  @note: None
[==============================================================================}
function TStringHelper.Behind(const s: string; const index: Integer = 2147483647): string; overload;
var
  p: Integer;
begin
  p := Self.Loc(s, index);
  if (p > 0) then
    Result := Copy(Self, (p + Length(s)), Length(Self))
  else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.Behind>
  @action: Returns string (with count) that is behind the index in str.
  @note: None
[==============================================================================}
function TStringHelper.Behind(const index: Integer; const count: Integer = 2147483647): string; overload;
begin
  if (index >= 0) and (index < Length(Self)) and (count > 0) then
    Result := Copy(Self, (index + 1), count)
  else
    Result := '';
end;

{==============================================================================]
 <TStringHelper.Between>
 @action: Returns the string between s1 and s2 in str.
 @note: Supports offset (index).
[==============================================================================}
function TStringHelper.Between(const s1, s2: string; const index: Integer = 1): string; cdecl;
var
  b, e, l: Integer;
begin
  b := Self.Find(s1, index);
  if (b = 0) then
    Exit('');
  l := Length(s1);
  e := Self.Find(s2, (b + l));
  if (e = 0) then
    Exit('');
  Result := Self.Get((b + l), (e - (b + l)));
end;

{==============================================================================]
  <TStringHelper.Center>
  @action: Returns str centered with fill characters where size is the length of the Result.
  @note: Supports custom filling character by fill!
[==============================================================================}
function TStringHelper.Center(const size: Integer; const fill: Char = #32): string; cdecl;
var
  l, p: Integer;
begin
  l := Length(Self);
  if (l >= size) then
    Result := Self
  else
    if (l > 0) then
    begin
      p := (((size - l) div 2) + 1);
      Result := (StringOfChar(fill, (p - 1)) + Self + StringOfChar(fill, ((size - (p + l)) + 1)));
    end else
      Result := StringOfChar(fill, size);
end;

{==============================================================================]
  <TStringHelper.Chars>
  @action: Returns characters of string as TCharArray.
  @note: None.
[==============================================================================}
function TStringHelper.Chars: TCharArray; cdecl;
var
  i: Integer;
begin
  SetLength(Result, Length(Self));
  for i := 0 to High(Result) do
    Result[i] := Self[i + 1];
end;

{==============================================================================]
  <TStringHelper.Chunk>
  @action: Returns chunk of string between a and b.
  @note: Supports reversed chunk, when a is higher than b.
[==============================================================================}
function TStringHelper.Chunk(const a, b: Integer): string; cdecl;
var
  i, l, x, y: Integer;
begin
  l := Length(Self);
  x := a;
  y := b;
  if (x < 0) then
    x := 0;
  if (x > (l + 1)) then
    x := (l + 1);
  if (y < 0) then
    y := 0;
  if (y > (l + 1)) then
    y := (l + 1);
  if (x < y) then
    Result := Copy(Self, (x + 1), ((y - x) - 1))
  else
    if (x <> y) then
    begin
      SetLength(Result, ((x - y) - 1));
      for i := (x - 1) downto (y + 1) do
        Result[x - i] := Self[i];
    end else
      Result := '';
end;

{==============================================================================]
  <TStringHelper.Compare>
  @action: Compares str with target.
  @note: Results: 0=EQUAL, 1=str>target, -1=str<target
[==============================================================================}
function TStringHelper.Compare(const target: string): Integer; cdecl; inline; {$DEFINE Skeleton_Compare}{$I config\Skeletons.inc}{$UNDEF Skeleton_Compare}

{==============================================================================]
  <TStringHelper.Contains>
  @action: Returns true if s can be found in str.
  @note: Starts search from index position.!
[==============================================================================}
function TStringHelper.Contains(const s: string; const index: Integer = 1): Boolean; cdecl;
var
  i, l: Integer;
begin
  l := Length(s);
  for i := Max(1, index) to ((Length(Self) - l) + 1) do
    if (Copy(Self, i, l) = s) then
      Exit(True);
  Result := False;
end;

{==============================================================================]
  <TStringHelper.Count>
  @action: Simply returns the count of s in str.
  @note: Contains support for overlapping (overlap)
[==============================================================================}
function TStringHelper.Count(const s: string; const overlap: Boolean = True; const index: Integer = 1): Integer; cdecl;
var
  p, o: Integer;
  c: string;
begin
  Result := 0;
  c := Copy(Self, index, ((Length(Self) - index) + 1));
  o := overlap.Select(1, Length(s));
  p := (1 - o);
  repeat
    p := c.Find(s, (p + o));
    if (p > 0) then
      Inc(Result);
  until (p < 1);
end;

{==============================================================================]
  <String_Duplicate>
  @action: Returns str * x (duplicated) times. Example: ('ha', 3) => 'hahaha'
  @note: None
[==============================================================================}
function TStringHelper.Duplicate(const x: Integer = 2): string; cdecl;
var
  i: Integer;
begin
  Result := '';
  for i := 1 to x do
    Result := (Result + Self);
end;

{==============================================================================]
  <TStringHelper.Duplicated>
  @action: Returns str * x times. Example: ('ha', 3, ' ') => 'ha ha ha'
           Places glue between the str positions to result.
  @note: Supports custom glue addition between duplicated str's.
[==============================================================================}
function TStringHelper.Duplicated(const x: Integer; const glue: string): string; cdecl;
var
  i: Integer;
begin
  Result := '';
  if (x > 0) then
    if (x > 1) then
    begin
      for i := 1 to (x - 1) do
        Result := (Result + Self + glue);
      Result := (Result + Self);
    end else
      Result := Self;
end;

{==============================================================================]
  <TStringHelper.EndsWith>
  @action: Returns True if str ends with s.
  @note: None
[==============================================================================}
function TStringHelper.EndsWith(const s: string): Boolean; cdecl;
var
  l, t: Integer;
begin
  l := Length(s);
  t := Length(Self);
  Result := ((l > 0) and (t >= l) and Self.At(s, ((t - l) + 1)));
end;

{==============================================================================]
  <TStringHelper.EndWith>
  @action: Returns true if s was found in str and it was set as the ending of the str.
  @note: Supports offset.
[==============================================================================}
function TStringHelper.EndWith(const s: string; const index: Integer = 2147483647): Boolean; cdecl;
var
  p: Integer;
begin
  p := Self.Loc(s, index);
  Result := (p > 0);
  if Result then
    Self := Copy(Self, 1, ((p + Length(s)) - 1));
end;

{==============================================================================]
 <TStringHelper.Exch(aIndex, bIndex: Integer): Boolean>
 @action: Fast version of Exchange().
 @note: Unsafe, no checking.
[==============================================================================}
function TStringHelper.Exch(const aIndex, bIndex: Integer): Boolean; cdecl;
var
  c: Char;
begin
  Result := (Self[aIndex] <> Self[bIndex]);
  c := Self[aIndex];
  Self[aIndex] := Self[bIndex];
  Self[bIndex] := c;
end;

{==============================================================================]
 <TStringHelper.Exchange(aIndex, bIndex: Integer): Boolean>
 @action: Swap items aIndex and bIndex in string.
 @note: Returns true with success.
[==============================================================================}
function TStringHelper.Exchange(const aIndex, bIndex: Integer): Boolean; cdecl;
var
  l: Integer;
  c: Char;
begin
  l := Length(Self);
  Result := ((l > 1) and (aIndex <> bIndex) and InRange(aIndex, 1, l) and InRange(bIndex, 1, l) and (Self[aIndex] <> Self[bIndex]));
  if Result then
  begin
    c := Self[aIndex];
    Self[aIndex] := Self[bIndex];
    Self[bIndex] := c;
  end;
end;

{==============================================================================]
  <TStringHelper.Explode>
  @action: Explodes str with delimiter (d).
  @note: Explodes up to (maximum) limit. Limit as -1 means no limits.
[==============================================================================}
function TStringHelper.Explode(const d: string; const limit: Integer = -1): TStringArray; overload; cdecl;
var
  a, b, l, p, r, s, t: Integer;
  m: Boolean;
begin
  SetLength(Result, 1);
  l := Length(Self);
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
    while (((r + 1) < t) and ((a + s - 1) <= l)) do
    begin
      m := True;
      for b := 1 to s do
      begin
        if (Self[(a + b) - 1] <> d[b]) then
        begin
          m := False;
          Break;
        end;
      end;
      if m then
      begin
        Result[r.Increase] := Copy(Self, p, (a - p));
        p := (a + s);
        a := (p - 1);
        SetLength(Result, (r + 1));
      end;
      Inc(a);
    end;
    Result[r] := Copy(Self, p, ((l - p) + 1));
  end else
    Result[0] := '';
end;

{==============================================================================]
  <TStringHelper.Explode>
  @action: Explodes str with delimiters (d).
  @note: Explodes up to (maximum) limit. Limit as -1 means no limits.
[==============================================================================}
function TStringHelper.Explode(const d: TStringArray; const limit: Integer = -1): TStringArray; overload; cdecl;
var
  i, j, p, l, f, c: Integer;
  s, x: string;
  r: Boolean;
begin
  case ((Self = '') or (Length(d) = 0)) of
    False:
    begin
      SetLength(Result, 0);
      p := 1;
      c := 0;
      r := False;
      while not r do
      begin
        f := 0;
        l := 0;
        for i := 0 to High(d) do
        begin
          x := d[i];
          if (x = '') then
            Continue;
          j := Self.Find(x, p);
          if (j > 0) and ((f = 0) or (j < f)) then
          begin
            f := j;
            l := Length(x);
          end;
        end;
        if ((f > 0) and ((limit = -1) or (c < (limit - 1)))) then
        begin
          s := Copy(Self, p, (f - p));
          SetLength(Result, (c + 1));
          Result[c.Increase] := s;
          p := (f + l);
        end else
        begin
          SetLength(Result, (c + 1));
          Result[c] := Copy(Self, p, ((Length(Self) - p) + 1));
          r := True;
        end;
      end;
    end;
    True:
    begin
      SetLength(Result, 1);
      Result[0] := Self;
    end;
  end;
end;

{==============================================================================]
  <TStringHelper.Find>
  @action: Returns last position of s string in str.
  @note: Starts search from index position.!
[==============================================================================}
function TStringHelper.Find(const s: string; const index: Integer = 1): Integer; cdecl;
var
  a, b: Integer;
begin
  a := Length(Self);
  b := Length(s);
  if ((a > 0) and (b > 0) and (b <= a)) then
  for Result := Max(1, index) to ((a - b) + 1) do
    if Self.At(s, Result) then
      Exit;
  Result := 0;
end;

{==============================================================================]
  <TStringHelper.Flip>
  @action: Returns reversed str.
  @note: None
[==============================================================================}
function TStringHelper.Flip: string; cdecl;
var
  i, l: Integer;
begin
  l := Length(Self);
  SetLength(Result, l);
  for i := l downto 1 do
    Result[i] := Self[(l - i) + 1];
end;

{==============================================================================]
  <TStringHelper.FromLeft>
  @action: Returns string from left with count of characters.
  @note: None
[==============================================================================}
function TStringHelper.FromLeft(const count: Integer; const index: Integer = 1): string; cdecl;
begin
  Result := Copy(Self, index, count);
end;

{==============================================================================]
  <TStringHelper.FromRight>
  @action: Returns string from right with count of characters.
  @note: None
[==============================================================================}
function TStringHelper.FromRight(const count: Integer; const index: Integer = 2147483647): string; cdecl;
begin
  Result := Copy(Self, ((Min(Length(Self), index) - count) + 1), count);
end;

{==============================================================================]
  <TStringHelper.Get>
  @action: Fast method for getting substring from string index position by size.
  @note: UNSAFE! Minimal checks for efficiency.
[==============================================================================}
function TStringHelper.Get(const index: Integer; const count: Integer): string; cdecl; inline;
var
  i: Integer;
begin
  SetLength(Result, count);
  for i := 1 to count do
    Result[i] := Self[(index + i) - 1];
end;

{==============================================================================]
  <TStringHelper.IDs>
  @action: Returns indexes of string as TIntegerArray.
  @note: With empty string this function returns as []!
[==============================================================================}
function TStringHelper.IDs: TIntegerArray; overload; cdecl;
var
  r: TRange;
begin
  if (Length(Self) > 0) then
  begin
    r := Self.ToTRange;
    Result := r.TIA;
  end else
    SetLength(Result, 0);
end;

{==============================================================================]
  <String_IDs>
  @action: Returns indexes of string as TCharArray.
  @note: Unsafe method without failsafes, use with care!
[==============================================================================}
function TStringHelper.IDs(const ID: TIntegerArray): TCharArray; overload; cdecl;
var
  i: Integer;
begin
  SetLength(Result, Length(ID));
  for i := 0 to High(Result) do
    Result[i] := Self[ID[i]];
end;

{==============================================================================]
  <TStringHelper.IDs>
  @action: Returns indexes of string as TCharArray. Replaces character of str from IDs with item.
  @note: Unsafe method without failsafes, use with care!
[==============================================================================}
function TStringHelper.IDs(const ID: TIntegerArray; const item: Char): TCharArray; overload; cdecl;
var
  i: Integer;
begin
  Result := Self.Chars;
  for i := 0 to High(ID) do
    Result[ID[i] - 1] := item;
end;

{==============================================================================]
  <TStringHelper.IDs>
  @action: Returns indexes of string as TCharArray. Replaces character of str from IDs with item.
  @note: Unsafe method without failsafes, use with care!
[==============================================================================}
function TStringHelper.IDs(const ID: TIntegerArray; const items: TCharArray): TCharArray; overload; cdecl;
var
  i, l: Integer;
begin
  Result := Self.Chars;
  l := Length(items);
  for i := 0 to High(ID) do
    Result[ID[i] - 1] := items[i mod l];	
end;

{==============================================================================]
  <TStringHelper.Includes>
  @action: Returns true if s can be found in str.
  @note: Starts backwards search from index position.!
[==============================================================================}
function TStringHelper.Includes(const s: string; const index: Integer = 2147483647): Boolean; cdecl;
var
  i, l: Integer;
begin
  l := Length(s);
  for i := Min(index, ((Length(Self) - l) + 1)) downto 1 do
    if (Copy(Self, i, l) = s) then
      Exit(True);
  Result := False;
end;

{==============================================================================]
  <TStringHelper.Pick>
  @action: Method for getting substring from string index position by count.
  @note: Contains some failsafes, alternative for String_Get.
[==============================================================================}
function TStringHelper.Pick(const index: Integer; const count: Integer = 2147483647): string; cdecl;
var
  s, i, p: Integer;
begin
  i := Max(index, 1);
  s := Min(((Length(Self) - i) + 1), count);
  SetLength(Result, s);
  for p := 1 to s do
    Result[p] := Self[(i + p) - 1];
end;

{==============================================================================]
  <TStringHelper.Pos>
  @action: Returns first position of s string in str.
  @note: Starts search from index position.!
[==============================================================================}
function TStringHelper.Pos(const s: string; const index: Integer = 1): Integer; cdecl;
var
  l: Integer;
begin
  l := Length(s);
  for Result := Max(1, index) to ((Length(Self) - l) + 1) do
    if (Copy(Self, Result, l) = s) then
      Exit;
  Result := 0;
end;

{==============================================================================]
  <TStringHelper.Loc>
  @action: Returns last position of s string in str.
  @note: Starts search from index position.!
[==============================================================================}
function TStringHelper.Loc(const s: string; const index: Integer = 2147483647): Integer; cdecl;
var
  l: Integer;
begin
  l := Length(s);
  for Result := Min(index, ((Length(Self) - l) + 1)) downto 1 do
    if (Copy(Self, Result, l) = s) then
      Exit;
  Result := 0;
end;

{==============================================================================]
  <TStringHelper.Location>
  @action: Returns last position of s string in str.
  @note: Starts search from index position. -1 means str length!
[==============================================================================}
function TStringHelper.Location(const s: string; const index: Integer = 2147483647): Integer; cdecl;
var
  a, b, o: Integer;
begin
  a := Length(Self);
  b := Length(s);
  if (index = -1) then
    o := ((a - b) + 1)
  else
    o := Max(1, index);
  if ((a > 0) and (b > 0) and (b <= a)) then
  for Result := o downto 1 do
    if Self.At(s, Result) then
      Exit;
  Result := 0;
end;

{==============================================================================]
  <TStringHelper.Position>
  @action: Returns s position from str. Starts scanning from start.
           If s doesn't exist in str, Result will be set as 0.
  @note: Supports custom index as scan start.
[==============================================================================}
function TStringHelper.Position(const s: string; const index: Integer = 1): Integer; cdecl;
var
  a, b, i: Integer;
begin
  if (index < 2) then
    Exit(Self.Pos(s));
  a := Length(Self);
  b := Length(s);
  if ((a > 0) and (b > 0) and (b <= a)) then
  for Result := index to ((a - b) + 1) do
  begin
    i := 1;
    while ((i <= b) and (Self[(Result + i) - 1] = s[i])) do
      i := (i + 1);
    if (i > b) then
      Exit;
  end;
  Result := 0;
end;

{==============================================================================]
  <TStringHelper.Reverse>
  @action: Returns reversed str.
  @note: None
[==============================================================================}
function TStringHelper.Reverse: Boolean; cdecl;
var
  i, l: Integer;
  c: Char;
begin
  l := Length(Self);
  Result := (l > 1);
  if Result then
  for i := 0 to ((l div 2) - 1) do
  begin
    c := Self[i + 1];
    Self[i + 1] := Self[l - i];
    Self[l - i] := c;
  end;
end;

{==============================================================================]
  <TStringHelper.Reversed>
  @action: Returns reversed str.
  @note: None
[==============================================================================}
function TStringHelper.Reversed: string; cdecl;
var
  i, l, m: Integer;
begin
  l := Length(Self);
  if (l > 1) then
  begin
    SetLength(Result, l);
    m := Floor(l / 2);
    for i := 1 to m do
    begin
      Result[i] := Self[(l - i) + 1];
      Result[(l - i) + 1] := Self[i];
    end;
    if not ((l mod 2) = 0) then
      Result[m + 1] := Self[m + 1];
  end else
    Result := Self;
end;

{==============================================================================]
  <TStringHelper.Slice>
  @action: Returns slice of string with a and b.
  @note: Supports reversed slice, when a is higher than b.
[==============================================================================}
function TStringHelper.Slice(const a, b: Integer): string; cdecl;
var
  i, l, x, y: Integer;
begin
  l := Length(Self);
  if (l > 0) then
  begin
    x := a;
    y := b;
    if (x < 1) then
      x := 1;
    if (x > l) then
      x := l;
    if (y < 1) then
      y := 1;
    if (y > l) then
      y := l;
    if (x < y) then
      Result := Copy(Self, x, ((y - x) + 1))
    else
      if (x <> y) then
      begin
        SetLength(Result, ((x - y) + 1));
        for i := x downto y do
          Result[(x - i) + 1] := Self[i];
      end else
        Result := Copy(Self, x, 1);
  end else
    Result := '';
end;

{==============================================================================]
  <TStringHelper.StartsWith>
  @action: Returns True if str starts with s.
  @note: None
[==============================================================================}
function TStringHelper.StartsWith(const s: string): Boolean; cdecl;
begin
  Result := ((s <> '') and (Length(Self) >= Length(s)) and Self.At(s));
end;

{==============================================================================]
  <StringHelper.StartWith>
  @action: Returns true if s was found in str and it was set as the beginning of the str.
  @note: None
[==============================================================================}
function TStringHelper.StartWith(const s: string; const index: Integer = 1): Boolean; cdecl;
var
  p: Integer;
begin
  p := Self.Find(s, index);
  Result := (p > 0);
  if Result then
    Self := Copy(Self, p, (Length(Self) - (p - 1)));
end;

{==============================================================================]
  <TStringHelper.Stuff>
  @action: Returns str stuffed with s. Starting from iFrom and ending to iFrom + iCount.
  @note: Places s to iFrom position and replaces iCount amount of next characters in str with s.
[==============================================================================}
function TStringHelper.Stuff(const s: string; const iFrom, iCount: Integer): string; cdecl;
begin
  Result := Copy(Self, 1, Length(Self));
  Delete(Result, iFrom, iCount);
  Insert(s, Result, iFrom);
end;

{==============================================================================]
  <TStringHelper.Quotatation>
  @action: Returns the quoted version of str.
  @note: None
[==============================================================================}
function TStringHelper.Quotatation: string; cdecl;
begin
  Result := ('''' + StringReplace(Self, '''', '''''', [rfReplaceAll]) + '''');
end;

{==============================================================================]
  <TStringHelper.PregQuote>
  @action: Returns string with all characters escaped that are part of the regular expression syntax.
  @note: Based on the character set...
[==============================================================================}
function TStringHelper.PregQuote(const regex: string = '.\+*?[^]$(){}=!<>|:-'): string; cdecl;
var
  l, i: Integer;
begin
  Result := Self;
  l := Length(Self);
  if (l > 0) then
  for i := l downto 1 do
    if (regex.Pos(Self[i]) > 0) then
      Insert('\', Result, i);
end;

{==============================================================================]
  <TStringHelper.TrimLeft>
  @action: Returns str with left-side trimmed/cleaned of t.
  @note: None
[==============================================================================}
function TStringHelper.TrimLeft(const t: Char = #32): string; cdecl;
var
  i, l: Integer;
begin
  l := Length(Self);
  for i := 1 to l do
    if (Self[i] <> t) then
      Exit(Copy(Self, i, ((l + 1) - i)));
  Result := '';
end;

{==============================================================================]
  <TStringHelper.TrimRight>
  @action: Returns str with right-side trimmed/cleaned of t.
  @note: None
[==============================================================================}
function TStringHelper.TrimRight(const t: Char = #32): string; cdecl;
var
  i, l: Integer;
begin
  l := Length(Self);
  for i := l downto 1 do
    if (Self[i] <> t) then
      Exit(Copy(Self, 1, i));
  Result := '';
end;

{==============================================================================]
  <TStringHelper.Trim>
  @action: Returns str with left-side and right-side trimmed/cleaned of t.
  @note: None
[==============================================================================}
function TStringHelper.Trim(const t: Char = #32): string; cdecl;
var
  i, l, x, y: Integer;
begin
  Result := '';
  l := Length(Self);
  if (l > 0) then;
  begin
    y := 0;
    for i := l downto 1 do
      if (Self[i] = t) then
        Inc(y)
      else
        Break;
    if (y = l) then
      Exit;
    x := 0;
    for i := 1 to l do
      if (Self[i] = t) then
        Inc(x)
      else
        Break;
    if (l <= (x + y)) then
      Exit;
    SetLength(Result, (l - (x + y)));
    for i := x to ((l - y) - 1) do
      Result[(i - x) + 1] := Self[i + 1];
  end;
end;

{==============================================================================]
  <TStringHelper.ToTRange>
  @action: Returns indexes of string as TRange.
  @note: With empty string this function returns as 0..0!
[==============================================================================}
function TStringHelper.ToTRange: TRange; cdecl;
begin
  Result.Build(Min(1, Length(Self)), Length(Self));
end;
