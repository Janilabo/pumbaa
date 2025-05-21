{==============================================================================]
 <TArray_Pop>
 @action: Returns and removes item from highest array index from arr.
 @note: Returns null if array contains no items.
[==============================================================================}

// TIntegerArray
function TArray_Pop(var arr: TIntegerArray; const null: Int32 = -1): Int32; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TDoubleArray
function TArray_Pop(var arr: TDoubleArray; const null: Double = -1): Double; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TStringArray
function TArray_Pop(var arr: TStringArray; const null: string = ''): string; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TCharArray
function TArray_Pop(var arr: TCharArray; const null: Char = #32): Char; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TBooleanArray
function TArray_Pop(var arr: TBooleanArray; const null: Boolean = -1): Boolean; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TPointArray
function TArray_Pop(var arr: TPointArray; const null: TPoint): TPoint; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TBoxArray
function TArray_Pop(var arr: TBoxArray; const null: TBox): TBox; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;

// TRangeArray
function TArray_Pop(var arr: TRangeArray; const null: TRange): TRange; overload; cdecl;
var
  h: Int32;
begin
  h := High(arr);
  if (h = -1) then
    Exit(null);
  Result := arr[h];
  SetLength(arr, h);
end;
