{==============================================================================]
  <TPoint_InBox>
  @action: Returns true if pt is inside the given box (bx).
  @note: None.
[==============================================================================}
function TPoint_InBox(const pt: TPoint; const bx: TBox): Boolean; cdecl; inline;
begin
  Result := ((pt.X >= bx.X1) and (pt.Y >= bx.Y1) and (pt.X <= bx.X2) and (pt.Y <= bx.Y2));
end;

{==============================================================================]
  <TPoint_InCircle>
  @action: Returns true if pt is inside the given circle,
          that is defined by the center point and radius.
  @note: None.
[==============================================================================}
function TPoint_InCircle(const pt, center: TPoint; const radius: Double): Boolean; cdecl; inline;
begin
  Result := (Sqr((pt.X - center.X) / radius) + Sqr((pt.Y - center.Y) / radius) <= 1);
end;

{==============================================================================]
  <TPoint_InEllipse>
  @action: Returns true if pt is inside the given ellipse,
          defined by the center point and X-radius and Y-radius.
  @note: None.
[==============================================================================}
function TPoint_InEllipse(const pt, center: TPoint; const XRadius, YRadius: Double): Boolean; cdecl; inline;
begin
  Result := (Sqr((pt.X - center.X) / XRadius) + Sqr((pt.Y - center.Y) / YRadius) <= 1);
end;

{==============================================================================]
 <TPoint_AngleDegrees>
 @action: Calculates the angle in degrees from source to target.
 @note: None
[==============================================================================}
function TPoint_AngleDegrees(const source, target: TPoint; const compass: Boolean = False): Double; cdecl;
begin
  if compass then
    Result := Double_FixDegrees((ArcTan2((target.Y - source.Y), (target.X - source.X)) * (180.0 / Pi)) + 90.0)
  else
    Result := Double_FixDegrees(ArcTan2((target.Y - source.Y), (target.X - source.X)) * (180.0 / Pi));
end;

{==============================================================================]
 <TPoint_AngleRadians>
 @action: Calculates the angle in degrees from source to target.
 @note: None
[==============================================================================}
function TPoint_AngleRadians(const source, target: TPoint): Double; cdecl;
begin
  Result := Double_FixRadians(ArcTan2((target.Y - source.Y), (target.X - source.X)));
end;

{==============================================================================]
 <TPoint_DistEuclidean>
 @action: Calculates the distance from source to target.
 @note: Euclidean.
[==============================================================================}
function TPoint_DistEuclidean(const source, target: TPoint): Double; cdecl;
begin
  Result := Sqrt(Power((source.x - target.x), 2) + Power((source.y - target.y), 2));
end;

{==============================================================================]
 <TPoint_DistEuclidean2>
 @action: Calculates the distance from source to target.
 @note: Euclidean v2
[==============================================================================}
function TPoint_DistEuclidean2(const source, target: TPoint): Double; cdecl;
begin
  Result := Sqrt(Sqr(source.X - target.X) + Sqr(source.Y - target.Y));
end;

{==============================================================================]
 <TPoint_DistSquaredEuclidean>
 @action: Calculates the distance from source to target.
 @note: Squared Euclidean
[==============================================================================}
function TPoint_DistSquaredEuclidean(const source, target: TPoint): Double; cdecl;
begin
  Result := (((source.X - target.X) * (source.X - target.X)) + ((source.Y - target.Y) * (source.Y - target.Y)));
end;

{==============================================================================]
 <TPoint_DistManhattan>
 @action: Calculates the distance from source to target.
 @note: Manhattan
[==============================================================================}
function TPoint_DistManhattan(const source, target: TPoint): Double; cdecl;
begin
  Result := (Abs(source.x - target.x) + Abs(source.y - target.y));
end;

{==============================================================================]
 <TPoint_DistChebyshev>
 @action: Calculates the distance from source to target.
 @note: Chebyshev
[==============================================================================}
function TPoint_DistChebyshev(const source, target: TPoint): Double; cdecl;
begin
  Result := Max(Abs(source.x - target.x), Abs(source.y - target.y));
end;