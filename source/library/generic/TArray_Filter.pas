{==============================================================================]
 <TArray_Filter>
 @action: Removes all values from arr that are found in items.
 @note: None
[==============================================================================}

// TIntegerArray
function TArray_Filter(var arr: TIntegerArray; const item: Int32; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if (arr[i] <> item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TDoubleArray
function TArray_Filter(var arr: TDoubleArray; const item: Double; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if (arr[i] <> item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TStringArray
function TArray_Filter(var arr: TStringArray; const item: string; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if (arr[i] <> item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TCharArray
function TArray_Filter(var arr: TCharArray; const item: Char; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if (arr[i] <> item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TBooleanArray
function TArray_Filter(var arr: TBooleanArray; const item: Boolean; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if (arr[i] <> item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TPointArray
function TArray_Filter(var arr: TPointArray; const item: TPoint; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if ((arr[i].X <> item.X) or (arr[i].Y <> item.Y)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TBoxArray
function TArray_Filter(var arr: TBoxArray; const item: TBox; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if ((arr[i].X1 <> item.X1) or (arr[i].Y1 <> item.Y1) or (arr[i].X2 <> item.X2) or (arr[i].Y2 <> item.Y2)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

// TRangeArray
function TArray_Filter(var arr: TRangeArray; const item: TRange; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  for i := start to High(arr) do
    if ((arr[i].start <> item.start) or (arr[i].stop <> item.stop)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;

{==============================================================================]
 <TArray_Filter>
 @action: Removes all values from arr that are found in items.
 @note: None
[==============================================================================}

// TIntegerArray
function TArray_Filter(var arr: TIntegerArray; const items: TIntegerArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i: Int32;
begin
  Result := 0;
  if (High(items) = -1) then
    Exit;
  for i := start to High(arr) do
    if not TArray_Contains(items, arr[i]) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  if (Result > 0) then
    SetLength(arr, (Length(arr) - Result));
end;
