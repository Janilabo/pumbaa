{==============================================================================]
  <TBox_Build>
  @action: Builds TBox using X1, Y1, X2, Y2.
  @note: Unsafe, fast.
[==============================================================================}
function TBox_Build(const X1, Y1, X2, Y2: Int32): TBox; overload; cdecl;
begin
  Result.X1 := X1;
  Result.Y1 := Y1;
  Result.X2 := X2;
  Result.Y2 := Y2;
end;

{==============================================================================]
  <TBox_Build>
  @action: Builds TBox using 2 points (a = start point, b = end point)..
  @note: Make sure start and end points are correct!
[==============================================================================}
function TBox_Build(const a, b: TPoint): TBox; overload; cdecl;
begin
  Result.X1 := a.X;
  Result.Y1 := a.Y;
  Result.X2 := b.X;
  Result.Y2 := b.Y;
end;

{==============================================================================]
  <TBox_Create>
  @action: Creates TBox using X1, Y1, X2, Y2.
  @note: Min-Maxed. Creates only valid TBoxes.
[==============================================================================}
function TBox_Create(const X1, Y1, X2, Y2: Int32): TBox; overload; cdecl;
begin
  Result.X1 := Min(X1, X2);
  Result.Y1 := Min(Y1, Y2);
  Result.X2 := Max(X2, X1);
  Result.Y2 := Max(Y2, Y1);
end;

{==============================================================================]
  <TBox_Create>
  @action: Creates a TBox with 2 points (a, b)..
  @note: Automatically corrects/fixes the incorrect values.
[==============================================================================}
function TBox_Create(const a, b: TPoint): TBox; overload; cdecl;
begin
  Result.X1 := Min(a.X, b.X);
  Result.Y1 := Min(a.Y, b.Y);
  Result.X2 := Max(a.X, b.X);
  Result.Y2 := Max(a.Y, b.Y);
end;

{==============================================================================]
  <TBox_From>
  @action: Creates TBox from pt by radius used for width and height.
  @note: None.
[==============================================================================}
function TBox_From(const pt: TPoint; const wRadius, hRadius: Int32): TBox; cdecl;
begin
  Result.X1 := (pt.X - wRadius);
  Result.Y1 := (pt.Y - hRadius);
  Result.X2 := (pt.X + wRadius);
  Result.Y2 := (pt.Y + hRadius);
end;

{==============================================================================]
  <TBox_With>
  @action: Creates box to point, with width and height.
  @note: None.
[==============================================================================}
function TBox_With(const pt: TPoint; const width, height: Int32): TBox; cdecl;
var
  o: TPoint;
begin
  Result.X1 := pt.X;
  Result.Y1 := pt.Y;
  Result.X2 := (pt.X + (width - 1));
  Result.Y2 := (pt.Y + (height - 1));
end;

{==============================================================================]
  <TBox_Dimensions>
  @action: Stores dimensions from TBox (bx) to width and height variables
  @note: Returns bx area.
[==============================================================================}
function TBox_Size(const bx: TBox; var width, height: Int32): Int32; cdecl; inline;
begin
  width := ((bx.X2 - bx.X1) + 1);
  height := ((bx.Y2 - bx.Y1) + 1);
  Result := (width * height);
end;

{==============================================================================]
  <TBox_Area>
  @action: Calculates the amount of pixels in TBox (bx).
           Returns -1 with invalid TBox.
  @note: None
[==============================================================================}
function TBox_Area(const bx: TBox): Int32; cdecl; inline;
begin
  Result := (((bx.X2 - bx.X1) + 1) * ((bx.Y2 - bx.Y1) + 1));
end;

{==============================================================================]
  <TBox_Screen>
  @action: Returns diagonal size of bx.
  @note: None.
[==============================================================================}
function TBox_Screen(const bx: TBox): Double; cdecl;
begin
  Result := Sqrt(Sqr((bx.X2 - bx.X1) + 1) + Sqr((bx.Y2 - bx.Y1) + 1));
end;

{==============================================================================]
  <TBox_W>
  @action: Returns bx width.
  @note: Fast, works with only valid TBoxes.
[==============================================================================}
function TBox_W(const bx: TBox): Int32; overload; cdecl;
begin
  Result := ((bx.X2 - bx.X1) + 1);
end;

{==============================================================================]
  <TBox_Width>
  @action: Sets bx width.
  @note: Returns old width.
[==============================================================================}
function TBox_W(var bx: TBox; const width: Int32): Int32; overload; cdecl;
begin
  Result := ((bx.X2 - bx.X1) + 1);
  bx.X2 := (bx.X1 + (width - 1));
end;

{==============================================================================]
  <TBox_Width>
  @action: Returns bx width.
  @note: Safe, based on Abs() call.
[==============================================================================}
function TBox_Width(const bx: TBox): Int32; overload; cdecl;
begin
  Result := (Abs(bx.X2 - bx.X1) + 1);
end;

{==============================================================================]
  <TBox_Width>
  @action: Sets bx width.
  @note: Returns old width.
[==============================================================================}
function TBox_Width(var bx: TBox; const width: Int32): Int32; overload; cdecl;
begin
  Result := (Abs(bx.X2 - bx.X1) + 1);
  bx.X2 := (bx.X1 + (width - 1));
end;

{==============================================================================]
  <TBox_H>
  @action: Returns bx height.
  @note: Fast, works with only valid TBoxes.
[==============================================================================}
function TBox_H(const bx: TBox): Int32; overload; cdecl;
begin
  Result := ((bx.Y2 - bx.Y1) + 1);
end;

{==============================================================================]
  <TBox_H>
  @action: Sets bx height.
  @note: Returns old height.
[==============================================================================}
function TBox_H(var bx: TBox; const height: Int32): Int32; overload; cdecl;
begin
  Result := ((bx.Y2 - bx.Y1) + 1);
  bx.Y2 := (bx.Y1 + (height - 1));
end;

{==============================================================================]
  <TBox_Height>
  @action: Returns bx height.
  @note: Safe, based on Abs() call.
[==============================================================================}
function TBox_Height(const bx: TBox): Int32; overload; cdecl;
begin
  Result := (Abs(bx.Y2 - bx.Y1) + 1);
end;

{==============================================================================]
  <TBox_Height>
  @action: Sets bx height.
  @note: Returns old height.
[==============================================================================}
function TBox_Height(var bx: TBox; const height: Int32): Int32; overload; cdecl;
begin
  Result := (Abs(bx.Y2 - bx.Y1) + 1);
  bx.Y2 := (bx.Y1 + (height - 1));
end;

{==============================================================================]
  <TBox_Resize>
  @action: Returns bx that has been resized fully by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_Resize(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := (bx.X1 - change);
  Result.Y1 := (bx.Y1 - change);
  Result.X2 := (bx.X2 + change);
  Result.Y2 := (bx.Y2 + change);
end;

{==============================================================================]
  <TBox_ResizeVertically>
  @action: Returns bx that has been resized vertically by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeVertically(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := (bx.Y1 - change);
  Result.X2 := bx.X2;
  Result.Y2 := (bx.Y2 + change);
end;

{==============================================================================]
  <TBox_ResizeHorizontally>
  @action: Returns bx that has been resized horizontally by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeHorizontally(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := (bx.X1 - change);
  Result.Y1 := bx.Y1;
  Result.X2 := (bx.X2 + change);
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeTop>
  @action: Returns bx that has been resized horizontally by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeTop(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := (bx.Y1 - change);
  Result.X2 := bx.X2;
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeBottom>
  @action: Returns bx that has been resized from bottom by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeBottom(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := bx.Y1;
  Result.X2 := bx.X2;
  Result.Y2 := (bx.Y2 + change);
end;

{==============================================================================]
  <TBox_ResizeLeft>
  @action: Returns bx that has been resized from left-side by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeLeft(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := (bx.X1 - change);
  Result.Y1 := bx.Y1;
  Result.X2 := bx.X2;
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeRight>
  @action: Returns bx that has been resized from right-side by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeRight(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := bx.Y1;
  Result.X2 := (bx.X2 + change);
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeTopLeft>
  @action: Returns bx that has been resized from top-left by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeTopLeft(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := (bx.X1 - change);
  Result.Y1 := (bx.Y1 - change);
  Result.X2 := bx.X2;
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeTopRight>
  @action: Returns bx that has been resized from top-right by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeTopRight(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := (bx.Y1 - change);
  Result.X2 := (bx.X2 + change);
  Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_ResizeBottomRight>
  @action: Returns bx that has been resized from bottom-right by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeBottomRight(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := bx.X1;
  Result.Y1 := bx.Y1;
  Result.X2 := (bx.X2 + change);
  Result.Y2 := (bx.Y2 + change);
end;

{==============================================================================]
  <TBox_ResizeBottomLeft>
  @action: Returns bx that has been resized from bottom-left by change.
  @note: Change value can be also negative - so be careful with it! :)
[==============================================================================}
function TBox_ResizeBottomLeft(const bx: TBox; const change: Int32): TBox; cdecl;
begin
  Result.X1 := (bx.X1 - change);
  Result.Y1 := bx.Y1;
  Result.X2 := bx.X2;
  Result.Y2 := (bx.Y2 + change);
end;

{==============================================================================]
  <TBox_Equal>
  @action: Returns true if bx1 and bx2 are identical.
  @note: None
[==============================================================================}
function TBox_Equal(a, b: TBox): Boolean; cdecl; inline;
begin
  Result := ((a.X1 = b.X1) and (a.Y1 = b.Y1) and (a.X2 = b.X2) and (a.Y2 = b.Y2));
end;  

{==============================================================================]
  <TBox_Contains>
  @action: Returns true if pt is inside the given box (bx).
  @note: None.
[==============================================================================}
function TBox_Contains(const bx: TBox; const pt: TPoint): Boolean; overload; cdecl;
begin
  Result := not ((pt.X < bx.X1) or (pt.Y < bx.Y1) or (pt.X > bx.X2) or (pt.Y > bx.Y2));
end;

{==============================================================================]
  <TBox_Contains>
  @action: Returns true if x is in/within bx boundaries.
  @note: None
[==============================================================================}
function TBox_Contains(const bx, x: TBox): Boolean; overload; cdecl;
begin
  Result := ((x.X1 >= bx.X1) and (x.X1 <= bx.X2) and (x.X2 >= bx.X1) and (x.X2 <= bx.X2) and (x.Y1 >= bx.Y1) and (x.Y1 <= bx.Y2) and (x.Y2 >= bx.Y1) and (x.Y2 <= bx.Y2));
end;

{==============================================================================]
  <TBox_In>
  @action: Returns true if bx is in/within area boundaries.
  @note: None
[==============================================================================}
function TBox_In(const bx, area: TBox): Boolean; overload; cdecl;
begin
  Result := not ((bx.X2 < area.X1) or (bx.Y2 < area.Y1) or (bx.X1 > area.X2) or (bx.Y1 > area.Y2)); 
end;

{==============================================================================]
  <TBox_In>
  @action: Returns true if bx is in/within any area boundaries by areas.
  @note: None
[==============================================================================}
function TBox_In(const bx: TBox; const areas: TBoxArray): Boolean; overload; cdecl;
var
  i: Int32;
begin
  for i := 0 to High(areas) do
    if not ((bx.X2 < areas[i].X1) or (bx.X1 > areas[i].X2) or (bx.Y2 < areas[i].Y1) or (bx.Y1 > areas[i].Y2)) then
      Exit(True);
  Result := False;
end;

{==============================================================================]
  <TBox_Inside>
  @action: Returns true if bx is INSIDE area boundaries.
  @note: Performs different action than TBox_In!
[==============================================================================}
function TBox_Inside(const bx, area: TBox): Boolean; overload; cdecl;
begin
  Result := ((bx.X1 > area.X1) and (bx.X1 < area.X2) and (bx.X2 > area.X1) and (bx.X2 < area.X2) and (bx.Y1 > area.Y1) and (bx.Y1 < area.Y2) and (bx.Y2 > area.Y1) and (bx.Y2 < area.Y2));
end;

{==============================================================================]
  <TBox_Inside>
  @action: Returns true if bx is INSIDE area boundaries by areas.
  @note: Performs different action than TBox_In!
[==============================================================================}
function TBox_Inside(const bx: TBox; const areas: TBoxArray): Boolean; overload; cdecl;
var
  i: Int32;
begin
  for i := 0 to High(areas) do
    if ((bx.X1 > areas[i].X1) and (bx.X1 < areas[i].X2) and (bx.X2 > areas[i].X1) and (bx.X2 < areas[i].X2) and (bx.Y1 > areas[i].Y1) and (bx.Y1 < areas[i].Y2) and (bx.Y2 > areas[i].Y1) and (bx.Y2 < areas[i].Y2)) then
      Exit(True);
  Result := False;
end; 

{==============================================================================]
  <TBox_Center>
  @action: Returns Center point from bx.
  @note: None.
[==============================================================================}
function TBox_Center(const bx: TBox): TPoint; cdecl;
begin
  Result.X := Round(bx.X1 + ((bx.X2 - bx.X1) div 2));
  Result.Y := Round(bx.Y1 + ((bx.Y2 - bx.Y1) div 2));
end;

{==============================================================================]
  <TBox_Envelope>
  @action: Bounds 2 boxes (a and b) to 1 box.
  @note: Based on lowest / highest coordinate values.
[==============================================================================}
function TBox_Envelope(const a, b: TBox): TBox; cdecl;
begin
  Result.X1 := Min(Min(a.X1, a.X2), Min(b.X1, b.X2));
  Result.Y1 := Min(Min(a.Y1, a.Y2), Min(b.Y1, b.Y2));
  Result.X2 := Max(Max(a.X1, a.X2), Max(b.X1, b.X2));
  Result.Y2 := Max(Max(a.Y1, a.Y2), Max(b.Y1, b.Y2));
end;

{==============================================================================]
  <TBox_Overlap>
  @action: Returns true if a and b are in anykind of contact with each other.
  @note: None
[==============================================================================}
function TBox_Overlap(const a, b: TBox): Boolean; cdecl; inline;
begin
  Result := not ((a.X1 > b.X2) or (a.X2 < b.X1) or (a.Y1 > b.Y2) or (a.Y2 < b.Y1));
end;

{==============================================================================]
  <TBox_Intersection>
  @action: Returns true if a and b are in anykind of contact with each other.
  @note: None
[==============================================================================}
function TBox_Intersection(const a, b: TBox): TBox; cdecl;
begin
  Result.X1 := Max(a.X1, b.X1);
  Result.Y1 := Max(a.Y1, b.Y1);
  Result.X2 := Min(a.X2, b.X2);
  Result.Y2 := Min(a.Y2, b.Y2);
end;

{==============================================================================]
  <TBox_Intersect>
  @action: Returns true if a and b are in anykind of contact with each other.
  @note: None
[==============================================================================}
function TBox_Intersect(const a, b: TBox; var intersection: TBox): Boolean; cdecl;
begin
  intersection := TBox_Intersection(a, b);
  Result := not ((intersection.X1 > intersection.X2) or (intersection.Y1 > intersection.Y2));
end;

{==============================================================================]
  <TBox_Union>
  @action: Returns true if a and b are in anykind of contact with each other.
  @note: None
[==============================================================================}
function TBox_Union(const a, b: TBox): TBox; cdecl;
begin
  Result.X1 := Min(a.X1, b.X1);
  Result.Y1 := Min(a.Y1, b.Y1);
  Result.X2 := Max(a.X2, b.X2);
  Result.Y2 := Max(a.Y2, b.Y2);
end;

{==============================================================================]
  <TBox_Valid>
  Explanation: Returns true if TBox is valid (X1 <= X2 and Y1 <= Y2)
  Example: None.
[==============================================================================}
function TBox_Valid(const bx: TBox): Boolean; cdecl; inline;
begin
  Result := ((bx.X1 <= bx.X2) and (bx.Y1 <= bx.Y2));
end;

{==============================================================================]
  <TBox_Invalid>
  Explanation: Returns true if TBox is invalid (X1 > X2 or Y1 > Y2)
  Example: None.
[==============================================================================}
function TBox_Invalid(const bx: TBox): Boolean; cdecl;
begin
  Result := ((bx.X1 > bx.X2) or (bx.Y1 > bx.Y2));
end;

{==============================================================================]
  <TBox_Similar>
  @action: Returns true if the dimensions from boxes bx1 and bx2
           are within maxWDiff (max width differency) and maxHDiff (max height differency).
  @note: None
[==============================================================================}
function TBox_Similar(const a, b: TBox; const maxWDiff, maxHDiff: Int32): Boolean; overload; cdecl;
begin
  Result := ((Abs(((b.X2 - b.X1) + 1) - ((a.X2 - a.X1) + 1)) <= maxWDiff) and (Abs(((b.Y2 - b.Y1) + 1) - ((a.Y2 - a.Y1) + 1)) <= maxHDiff));
end;

{==============================================================================]
  <TBox_Similar>
  @action: Returns true if the dimensions from boxes bx1 and bx2
           are within diff (max width and height differency).
  @note: None
[==============================================================================}
function TBox_Similar(const a, b: TBox; const diff: Int32): Boolean; overload; cdecl;
begin
  Result := ((Abs(((b.X2 - b.X1) + 1) - ((a.X2 - a.X1) + 1)) <= diff) and (Abs(((b.Y2 - b.Y1) + 1) - ((a.Y2 - a.Y1) + 1)) <= diff));
end;

{==============================================================================]
  <TBox_Fix>
  Explanation: Fixes the bx. Swaps incorrectly set values (XS/YS > XE/YE).
               Returns true if bx was fixed.
  Example: (200*, 100, 100*, 200) => (100, 100, 200, 200)
[==============================================================================}
function TBox_Fix(var bx: TBox): Boolean; cdecl;
var
  t: Int32;
  x, y: Boolean;
begin
  x := (bx.X1 > bx.X2);
  y := (bx.Y1 > bx.Y2); 
  Result := (x or y);
  if not Result then
    Exit;
  if x then
  begin
    t := bx.X1;
	bx.X1 := bx.X2;
	bx.X2 := t;
  end;
  if y then
  begin
    t := bx.Y1;
    bx.Y1 := bx.Y2;
    bx.Y2 := t;	
  end;
end;

{==============================================================================]
  <TBox_Constraint>
  Explanation: Constraints bx to area.
  Example: None.
[==============================================================================}
function TBox_Constraint(var bx: TBox; const area: TBox): Boolean; cdecl;
var
  b: TBox;
begin
  b := bx;
  bx.X1 := Max(area.X1, Min(area.X2, bx.X1));
  bx.Y1 := Max(area.Y1, Min(area.Y2, bx.Y1));
  bx.X2 := Max(area.X1, Min(area.X2, bx.X2));
  bx.Y2 := Max(area.Y1, Min(area.Y2, bx.Y2));
  Result := ((bx.X1 <> b.X1) or (bx.Y1 <> b.Y1) or (bx.X2 <> b.X2) or (bx.Y2 <> b.Y2));
end;

{==============================================================================]
  <TBox_Clip>
  Explanation: Returns bx that has been constrained to area.
  Example: None.
[==============================================================================}
function TBox_Clip(const bx: TBox; const area: TBox): TBox; cdecl;
begin
  Result.X1 := Max(area.X1, Min(area.X2, bx.X1));
  Result.Y1 := Max(area.Y1, Min(area.Y2, bx.Y1));
  Result.X2 := Max(area.X1, Min(area.X2, bx.X2));
  Result.Y2 := Max(area.Y1, Min(area.Y2, bx.Y2));
end;

{==============================================================================]
  <TBox_Restrict>
  Explanation: Restricts bx to area.
  Example: None.
[==============================================================================}
function TBox_Restrict(var bx: TBox; const area: TBox): Boolean; cdecl;
var
  b: TBox;
begin
  b := bx;
  if (bx.X1 < area.X1) then
    bx.X1 := area.X1
  else
    if (bx.X1 > area.X2) then
      bx.X1 := area.X2;
  if (bx.Y1 < area.Y1) then
    bx.Y1 := area.Y1
  else
    if (bx.Y1 > area.Y2) then
      bx.Y1 := area.Y2;
  if (bx.X2 > area.X2) then
    bx.X2 := area.X2
  else
    if (bx.X2 < area.X1) then
      bx.X2 := area.X1;
  if (bx.Y2 > area.Y2) then
    bx.Y2 := area.Y2
  else
    if (bx.Y2 < area.Y1) then
      bx.Y2 := area.Y1;
  Result := ((bx.X1 <> b.X1) or (bx.Y1 <> b.Y1) or (bx.X2 <> b.X2) or (bx.Y2 <> b.Y2));
end;

{==============================================================================]
  <TBox_Clamp>
  Explanation: Returns bx that has been restricted to area.
  Example: None.
[==============================================================================}
function TBox_Clamp(const bx, area: TBox): TBox; cdecl;
begin
  if (bx.X1 < area.X1) then
    Result.X1 := area.X1
  else
    if (bx.X1 > area.X2) then
      Result.X1 := area.X2
    else
      Result.X1 := bx.X1;
  if (bx.Y1 < area.Y1) then
    Result.Y1 := area.Y1
  else
    if (bx.Y1 > area.Y2) then
      Result.Y1 := area.Y2
    else
      Result.Y1 := bx.Y1;
  if (bx.X2 > area.X2) then
    Result.X2 := area.X2
  else
    if (bx.X2 < area.X1) then
      Result.X2 := area.X1
    else
      Result.X2 := bx.X2;
  if (bx.Y2 > area.Y2) then
    Result.Y2 := area.Y2
  else
    if (bx.Y2 < area.Y1) then
      Result.Y2 := area.Y1
    else
      Result.Y2 := bx.Y2;
end;

{==============================================================================]
  <TBox_Points>
  Explanation: Returns TBox points as TPointArray.
  Example: None.
[==============================================================================}
function TBox_Points(const bx: TBox): TPointArray; cdecl;
var
  x, y, r: Int32;
begin
  SetLength(Result, (((bx.X2 - bx.X1) + 1) * ((bx.Y2 - bx.Y1) + 1)));
  r := 0;
  for y := bx.Y1 to bx.Y2 do
    for x := bx.X1 to bx.X2 do
    begin
      Result[r].X := x;
      Result[r].Y := y;
      r := (r + 1);
    end;
end;

{==============================================================================]
  <TBox_TPointArray>
  Explanation: Returns TBox points as TPointArray.
  Example: None.
[==============================================================================}
function TBox_TPointArray(const bx: TBox): TPointArray; cdecl;
var
  i, w, h, x, y: Int32;
begin
  w := ((bx.X2 - bx.X1) + 1);
  h := ((bx.Y2 - bx.Y1) + 1);
  SetLength(Result, (w * h));
  for i := 0 to ((w * h) - 1) do
  begin
    Result[i].X := (bx.X1 + (i mod w));
    Result[i].Y := (bx.Y1 + (i div w));
  end;
end;