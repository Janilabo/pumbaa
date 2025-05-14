{==============================================================================]
 <TArray_Extract>
 @action: Keeps (extracts) all values in arr that are item. Starts scan from start index.
 @note: Returns amount of extracted items.
[==============================================================================} 

// TIntegerArray
function TArray_Extract(var arr: TIntegerArray; const item: Int32; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if (arr[i] = item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TDoubleArray
function TArray_Extract(var arr: TDoubleArray; const item: Double; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if (arr[i] = item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TStringArray
function TArray_Extract(var arr: TStringArray; const item: string; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if (arr[i] = item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TCharArray
function TArray_Extract(var arr: TCharArray; const item: Char; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if (arr[i] = item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TBooleanArray
function TArray_Extract(var arr: TBooleanArray; const item: Boolean; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if (arr[i] = item) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TPointArray
function TArray_Extract(var arr: TPointArray; const item: TPoint; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if ((arr[i].X = item.X) and (arr[i].Y = item.Y)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TBoxArray
function TArray_Extract(var arr: TBoxArray; const item: TBox; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if ((arr[i].X1 = item.X1) and (arr[i].Y1 = item.Y1) and (arr[i].X2 = item.X2) and (arr[i].Y2 = item.Y2)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TRangeArray
function TArray_Extract(var arr: TRangeArray; const item: TRange; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  Result := 0;
  l := Length(arr);
  if (l = 0) then
    Exit;
  for i := start to (l - 1) do
    if ((arr[i].start = item.start) and (arr[i].stop = item.stop)) then
      arr[(i - Result)] := arr[i]
    else
      Inc(Result);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

{==============================================================================]
 <TArray_Extract>
 @action: Keeps (extracts) all values in arr that are in items. Starts scan from start index.
 @note: Returns amount of extracted items.
[==============================================================================}

// TIntegerArray
function TArray_Extract(var arr: TIntegerArray; const items: TIntegerArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end; 

// TDoubleArray
function TArray_Extract(var arr: TDoubleArray; const items: TDoubleArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TStringArray
function TArray_Extract(var arr: TStringArray; const items: TStringArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TCharArray
function TArray_Extract(var arr: TCharArray; const items: TCharArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TBooleanArray
function TArray_Extract(var arr: TBooleanArray; const items: TBooleanArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TPointArray
function TArray_Extract(var arr: TPointArray; const items: TPointArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TBoxArray
function TArray_Extract(var arr: TBoxArray; const items: TBoxArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;

// TRangeArray
function TArray_Extract(var arr: TRangeArray; const items: TRangeArray; const start: Int32 = 0): Int32; overload; cdecl;
var
  i, l: Int32;
begin
  l := Length(arr);
  if (High(items) > -1) then
  begin
    Result := 0;
    for i := start to (l - 1) do
      if TArray_Contains(items, arr[i]) then
        arr[(i - Result)] := arr[i]
      else
        Inc(Result);
  end else
    Result := (l - start);
  Result := (l - Result);
  if (Result < l) then
    SetLength(arr, Result);
end;
