{==============================================================================]
  <TPointArray_Bounds>
  @action: Returns bounding box around TPointArray arr.
  @note: None.
[==============================================================================}
function TPointArray_Bounds(const arr: TPointArray): TBox; cdecl;
var
  i: Int32;
begin
  if (High(arr) = -1) then
    Exit(TBox_Form(-2147483648));
  Result := TBox_At(arr[0]);
  for i := 1 to High(arr) do
  begin
    if (arr[i].X < Result.X1) then
      Result.X1 := arr[i].X
    else
      if (arr[i].X > Result.X2) then
        Result.X2 := arr[i].X;
    if (arr[i].Y < Result.Y1) then
      Result.Y1 := arr[i].Y
    else
      if (arr[i].Y > Result.Y2) then
        Result.Y2 := arr[i].Y;
  end;
end;

{==============================================================================]
  <TPointArray_Unique>
  @action: Removes duplicates from arr.
  @note: Returns number of duplicate items that were removed from arr.
[==============================================================================}
function TPointArray_Unique(var arr: TPointArray): Int32; cdecl;
var
  i, r, l: Integer;
  m: T2DBooleanArray;
  b: TBox;
begin
  l := Length(arr);
  if (l > 1) then
  begin
    r := 0;
    b := TPointArray_Bounds(arr);
    SetLength(m, ((b.X2 - b.X1) + 1), ((b.Y2 - b.Y1) + 1));
    for i := 0 to (l - 1) do
      if not m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] then
      begin
        m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] := True;
        arr[r] := arr[i];
        Inc(r);
      end;
    SetLength(arr, r);
    SetLength(m, 0);
  end;
  Result := (l - Length(arr));
end;

{==============================================================================]
  <TPointArray_Uniqued>
  @action: Returns arr without duplicates.
  @note: None.
[==============================================================================}
function TPointArray_Uniqued(const arr: TPointArray): TPointArray; cdecl;
var
  i, r, l: Integer;
  m: T2DBooleanArray;
  b: TBox;
begin
  r := 0;
  l := Length(arr);
  if (l > 0) then
  begin
    b := TPointArray_Bounds(arr);
    SetLength(Result, l);
    SetLength(m, ((b.X2 - b.X1) + 1), ((b.Y2 - b.Y1) + 1));
    for i := 0 to (l - 1) do
      if not m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] then
      begin
        m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] := True;
        Result[r] := arr[i];
        Inc(r);
      end;
    SetLength(m, 0);
  end;
  SetLength(Result, r);
end;

{==============================================================================]
  <TPointArray_Uniqued>
  @action: Returns arr without duplicates.
  @note: None.
[==============================================================================}
function TPointArray_Invert(const arr: TPointArray): TPointArray; cdecl;
var
  i, x, y, h, r, l: Integer;
  m: T2DBooleanArray;
  b: TBox;
begin
  r := 0;
  h := High(arr);
  if (h > 0) then
  begin
    b := TPointArray_Bounds(arr);
    SetLength(m, ((b.X2 - b.X1) + 1), ((b.Y2 - b.Y1) + 1));
    x := 0;
    for i := 0 to h do
      if not m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] then
      begin
        m[(arr[i].X - b.X1)][(arr[i].Y - b.Y1)] := True;
        Inc(x);
      end;
    SetLength(Result, ((((b.X2 - b.X1) + 1) * ((b.Y2 - b.Y1) + 1)) - x));
    if (Length(Result) > 0) then
    for y := 0 to (b.Y2 - b.Y1) do
      for x := 0 to (b.X2 - b.X1) do
        if not m[x][y] then
        begin
          Result[r].X := (x + b.X1);
          Result[r].Y := (y + b.Y1);
          Inc(r);
        end;
    SetLength(m, 0);
  end;
  SetLength(Result, r);
end;