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
