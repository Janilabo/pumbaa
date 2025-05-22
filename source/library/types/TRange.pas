{==============================================================================]
  <TRange_Create>
  @action: Create a TRange with start and stop
  @note: None.
[==============================================================================}
function TRange_Create(const start: Int32 = 0; const stop: Int32 = 0): TRange; cdecl;
begin
  Result.start := start;
  Result.stop := stop;
end;

{==============================================================================]
  <TRange_Build>
  @action: Create a TRange with start and stop, using Min and Max for safety.
  @note: None.
[==============================================================================}
function TRange_Build(const start: Int32 = 0; const stop: Int32 = 0): TRange; cdecl;
begin
  Result.start := Min(start, stop);
  Result.stop := Max(stop, start);
end;

{==============================================================================]
  <TRange_Grab>
  @action: Returns TRange with range, swaps range.stop and range.start if they are in reversed order.
  @note: None.
[==============================================================================}
function TRange_Grab(const range: TRange): TRange; cdecl;
begin
  if (range.start > range.stop) then
    Result := TRange_Create(range.stop, range.start)
  else
    Result := range;
end;

{==============================================================================]
  <TRange_Size>
  @action: Returns size of the given range r.
  @note: None.
[==============================================================================}
function TRange_Size(const r: TRange): Int32; cdecl;
begin
  Result := (Abs(r.stop - r.start) + 1);
end; 

{==============================================================================]
  <TRange_Digits>
  @action: Returns digits of the given range r.
  @note: None.
[==============================================================================}
function TRange_Digits(const r: TRange): TIntegerArray; cdecl;
var
  i, s: Int32;
begin
  s := Sign(r.stop - r.start);
  SetLength(Result, (Abs(r.stop - r.start) + 1));
  for i := 0 to High(Result) do
    Result[i] := (r.start + (i * s));
end;

{==============================================================================]
  <TRange_Ints>
  @action: Returns digits of the given range r.
  @note: None.
[==============================================================================}
function TRange_Ints(const r: TRange): TIntegerArray; cdecl;
var
  i, l: Int32;
begin
  l := (Abs(r.stop - r.start) + 1);
  SetLength(Result, l);
  case (r.start > r.stop) of
    True:
    for i := 0 to High(Result) do
      Result[((l - i) - 1)] := (i + r.stop);
    False:
    for i := 0 to High(Result) do
      Result[i] := (i + r.start);
  end;
end;

{==============================================================================]
  <TRange_Normalize>
  @action: Using Min-Maxing this function returns "normal" range.
  @note: None.
[==============================================================================}
function TRange_Normalize(const r: TRange): TRange; cdecl;
begin
  Result.start := Min(r.start, r.stop);
  Result.stop := Max(r.start, r.stop);
end;

function TRange_Overlapping(const source, target: TRange): Boolean; cdecl;
begin
  Result := (Min(source.start, source.stop) <= Max(target.start, target.stop)) and (Min(target.start, target.stop) <= Max(source.start, source.stop));
end;

function TRange_Overlap(const source, target: TRange): Boolean; cdecl;
begin
  Result := not (Min(source.start, source.stop) > Max(target.start, target.stop)) or (Min(target.start, target.stop) > Max(source.start, source.stop));
end;

function TRange_Intersection(const source, target: TRange; const null: TRange): TRange; cdecl;
var
  s, t: TRange;
  a, b: Int32;
begin
  s := TRange_Normalize(source);
  t := TRange_Normalize(target);
  a := Max(s.start, t.start);
  b := Min(s.stop, t.stop);
  if a <= b then
    Result := TRange_Create(a, b)
  else
    Result := null;
end;

function TRange_Intersect(const source, target: TRange; var intersection: TRange): Boolean; cdecl;
var
  s, t: TRange;
  a, b: Int32;
begin
  s := TRange_Normalize(source);
  t := TRange_Normalize(target);
  a := Max(s.start, t.start);
  b := Min(s.stop, t.stop);
  Result := (a <= b);
  if Result then
    intersection := TRange_Create(a, b);
end;
