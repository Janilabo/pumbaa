{==============================================================================]
 <Math_Percent>
 @action: Returns percent (%) from source by position.
 @note: Value-to-Percent conversion!
[==============================================================================}
function Math_Percent(const source, position: Double): Double; cdecl; inline;
begin
  if (position <> 0) then
    Result := ((position / source) * 100.0)
  else
    Result := 0.0;
end;

{==============================================================================]
<Math_Percentage>
 @action: Returns value from source by percent.
 @note: Percent-to-Value conversion!
[==============================================================================}
function Math_Percentage(const source, percent: Double): Double; cdecl; inline;
begin
  if (percent <> 0) then
    Result := ((percent / 100.0) * source)
  else
    Result := 0.0;
end;
