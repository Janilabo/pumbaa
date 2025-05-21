type
  TIntegerArray = array of Int32;
  TIntegerMatrix = array of TIntegerArray;
  TDoubleArray = array of Double;
  TDoubleMatrix = array of TDoubleArray;
  TBooleanArray = array of Boolean;
  TBooleanMatrix = array of TBooleanArray;
  TCharArray = array of Char;
  T2DCharArray = array of TCharArray;
  TStringArray = array of string;
  T2DStringArray = array of TStringArray;
  TPoint = record
    X, Y: Int32;
  end;
  TPointArray = array of TPoint;
  T2DPointArray = array of TPointArray;
  TBox = record
    X1, Y1, X2, Y2: Int32;
  end;
  TBoxArray = array of TBox;
  T2DBoxArray = array of TBoxArray;
  TRange = record
    start, stop: Int32;
  end;
  TRangeArray = array of TRange;
  T2DRangeArray = array of TRangeArray;  

procedure Swap(var A, B: Int32); overload; inline;
var
  T: Int32;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: Int64); overload; inline;
var
  T: Int64;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: Double); overload; inline;
var
  T: Double;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: string); overload; inline;
var
  T: string;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: Char); overload; inline;
var
  T: Char;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: Boolean); overload; inline;
var
  T: Boolean;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: TPoint); overload; inline;
var
  T: TPoint;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: TBox); overload; inline;
var
  T: TBox;
begin
  T := A;
  A := B;
  B := T;
end;

procedure Swap(var A, B: TRange); overload; inline;
var
  T: TRange;
begin
  T := A;
  A := B;
  B := T;
end;

{$I types\Double.pas}
{$I types\Int32.pas}
{$I types\Int64.pas}
{$I types\String.pas}
{$I types\Boolean.pas}
{$I types\TPoint.pas}
{$I types\TRange.pas}

{$I generic\TArray_Copy.pas}
{$I generic\TArray_Get.pas}
{$I generic\TArray_Set.pas}
{$I generic\TArray_Clone.pas}
{$I generic\TArray_AllEqual.pas}
{$I generic\TArray_AllSame.pas}
{$I generic\TArray_AllUnique.pas}
{$I generic\TArray_Append.pas}
{$I generic\TArray_Add.pas}
{$I generic\TArray_Create.pas}
{$I generic\TArray_Build.pas}
{$I generic\TArray_Contains.pas}
{$I generic\TArray_Position.pas}
{$I generic\TArray_Positions.pas}
{$I generic\TArray_Pos.pas}
{$I generic\TArray_PosLast.pas}
{$I generic\TArray_PosLasts.pas}
{$I generic\TArray_Delete.pas}
{$I generic\TArray_Remove.pas}
{$I generic\TArray_Filter.pas}
{$I generic\TArray_Extract.pas}
{$I generic\TArray_FilterEvery.pas}
{$I generic\TArray_ExtractEvery.pas}
{$I generic\TArray_Reverse.pas}
{$I generic\TArray_Reversed.pas}
{$I generic\TArray_Fill.pas} 
{$I generic\TArray_Holds.pas}
{$I generic\TArray_Dupe.pas}
{$I generic\TArray_Swap.pas}
{$I generic\TArray_Trade.pas}
{$I generic\TArray_Unique.pas}
{$I generic\TArray_Uniques.pas}
{$I generic\TArray_Pick.pas}
{$I generic\TArray_Move.pas}
{$I generic\TArray_Group.pas}
{$I generic\TArray_Partition.pas}
{$I generic\TArray_Distribute.pas}
{$I generic\TArray_Randomize.pas}
