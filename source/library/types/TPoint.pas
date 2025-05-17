{==============================================================================]
  <TPoint_InBox>
  @action: Returns true if pt is inside the given box (bx).
  @note: None.
[==============================================================================}

function TPoint_InBox(const pt: TPoint; const bx: TBox): Boolean; cdecl; inline;
begin
  Result := ((pt.X >= bx.X1) and (pt.Y >= bx.Y1) and (pt.X <= bx.X2) and (pt.Y >= bx.Y2));
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