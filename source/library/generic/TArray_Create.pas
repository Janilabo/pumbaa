{==============================================================================]
 <TArray_Create> 
 @action: Creates array with item where size is length of the array.
 @note: item is placed on every index in result.
[==============================================================================}

// TIntegerArray
function TArray_Create(const size: Int32; const item: Int32): TIntegerArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TDoubleArray
function TArray_Create(const size: Int32; const item: Double): TDoubleArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TStringArray
function TArray_Create(const size: Int32; const item: string): TStringArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TCharArray
function TArray_Create(const size: Int32; const item: Char): TCharArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TBooleanArray
function TArray_Create(const size: Int32; const item: Boolean): TBooleanArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TPointArray
function TArray_Create(const size: Int32; const item: TPoint): TPointArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TBoxArray
function TArray_Create(const size: Int32; const item: TBox): TBoxArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;

// TRangeArray
function TArray_Create(const size: Int32; const item: TRange): TRangeArray; cdecl;
var
  i: Int32;
begin
  SetLength(Result, Max(0, size));
  for i := 0 to High(Result) do
    Result[i] := item;
end;