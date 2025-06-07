{==============================================================================]
  <TRangeArray_TIntegerArray>
  @action: Returns TRanges from arr as TIntegerArray.
  @note: None.
[==============================================================================}
function TRangeArray_TIntegerArray(const arr: TRangeArray): TIntegerArray; cdecl;
var
  i, j, l: Int32;
  r: TIntegerArray;
begin
  l := 0;
  for i := 0 to High(arr) do
    l := (l + TRange_Size(arr[i]));
  SetLength(Result, l);
  for i := High(arr) downto 0 do
  begin
    r := TRange_TIntegerArray(arr[i]);
    for j := High(r) downto 0 do
      Result[Int32_Dec(l)] := r[j];
  end;
end;
