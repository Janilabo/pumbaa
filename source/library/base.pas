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

{$I core\math.pas}

{$I types\Double.pas}
{$I types\Int32.pas}
{$I types\Int64.pas}
{$I types\String.pas}

{$I generic\TArray_AllEqual.pas}
{$I generic\TArray_AllSame.pas}
{$I generic\TArray_AllUnique.pas}
{$I generic\TArray_Append.pas}
{$I generic\TArray_Add.pas}
{$I generic\TArray_Create.pas}
{$I generic\TArray_Build.pas} 
