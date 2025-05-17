{$I wrappers.inc}

procedure AddTypes;
begin
  AddType('TCharArray', 'array of Char;');
  AddType('T2DCharArray', 'array of TCharArray;');
  AddType('T2DBoxArray', 'array of TBoxArray');
  AddType('TRange', 'record start, stop: Integer; end;');
  AddType('TRangeArray', 'array of TRange;');
  AddType('T2DRangeArray', 'array of TRangeArray;');
end;

procedure AddFunctions;
begin
  AddFunction(@Math_Percent, 'function Math_Percent(const source, position: Double): Double;');
  AddFunction(@Math_Percentage, 'function Math_Percentage(const source, percent: Double): Double;');

  AddFunction(@Double_Inc, 'function Double_Inc(var x: Double; const N: Double = 1): Double;');
  AddFunction(@Double_Dec, 'function Double_Dec(var x: Double; const N: Double = 1): Double;');
  AddFunction(@Double_Increase, 'function Double_Increase(var x: Double; const N: Double = 1): Double;');
  AddFunction(@Double_Decrease, 'function Double_Decrease(var x: Double; const N: Double = 1): Double;');
  AddFunction(@Double_Digits, 'function Double_Digits(const x: Double): TIntegerArray;');
  AddFunction(@Double_NegA, 'function Double_NegA(const x: Double): Double;');
  AddFunction(@Double_Neg, 'function Double_Neg(const x: Double): Double;');
  AddFunction(@Double_Negative, 'function Double_Negative(const x: Double): Boolean;');
  AddFunction(@Double_Positive, 'function Double_Positive(const x: Double): Boolean;');
  AddFunction(@Double_Neutral, 'function Double_Neutral(const x: Double): Boolean;');
  AddFunction(@Double_MinDecimal, 'function Double_MinDecimal(const x: Double): Double;');
  AddFunction(@Double_MaxDecimal, 'function Double_MaxDecimal(const x: Double): Double;');
  AddFunction(@Double_Copy, 'function Double_Copy(const x: Double; const a: Int32): Double;');
  AddFunction(@Double_Compare, 'function Double_Compare(const x, T: Double): Int32;');
  AddFunction(@Double_Distance, 'function Double_Distance(const x, T: Double): Double;');
  AddFunction(@Double_Difference, 'function Double_Difference(const x, T: Double): Double;');
  AddFunction(@Double_Opposite, 'function Double_Opposite(const x: Double): Double;');
  AddFunction(@Double_Sign, 'function Double_Sign(const x: Double): Int32;');

  AddFunction(@Int32_Inc, 'function Int32_Inc(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Dec, 'function Int32_Dec(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Increase, 'function Int32_Increase(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Decrease, 'function Int32_Decrease(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_DigitCount, 'function Int32_DigitCount(const x: Int32): Int32;');
  AddFunction(@Int32_Digitz, 'function Int32_Digitz(const x: Int32): TIntegerArray;');
  AddFunction(@Int32_Digits, 'function Int32_Digits(const x: Int32): TIntegerArray;');
  AddFunction(@Int32_NegA, 'function Int32_NegA(const x: Int32): Int32;');
  AddFunction(@Int32_Neg, 'function Int32_Neg(const x: Int32): Int32;');
  AddFunction(@Int32_Negative, 'function Int32_Negative(const x: Int32): Boolean;');
  AddFunction(@Int32_Positive, 'function Int32_Positive(const x: Int32): Boolean;');
  AddFunction(@Int32_Neutral, 'function Int32_Neutral(const x: Int32): Boolean;');
  AddFunction(@Int32_Compare, 'function Int32_Compare(const x, T: Int32): Int32;');
  AddFunction(@Int32_Distance, 'function Int32_Distance(const x, T: Int32): Int32;');
  AddFunction(@Int32_Difference, 'function Int32_Difference(const x, T: Int32): Int32;');
  AddFunction(@Int32_Opposite, 'function Int32_Opposite(const x: Int32): Int32;');
  AddFunction(@Int32_Sign, 'function Int32_Sign(const x: Int32): Int32;');

  AddFunction(@Int64_Inc, 'function Int64_Inc(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Dec, 'function Int64_Dec(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Increase, 'function Int64_Increase(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Decrease, 'function Int64_Decrease(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_DigitCount, 'function Int64_DigitCount(const x: Int64): Int32;');
  AddFunction(@Int64_Digitz, 'function Int64_Digitz(const x: Int64): TIntegerArray;');
  AddFunction(@Int64_Digits, 'function Int64_Digits(const x: Int64): TIntegerArray;');
  AddFunction(@Int64_Compare, 'function Int64_Compare(const x, T: Int64): Int32;');
  AddFunction(@Int64_Distance, 'function Int64_Distance(const x, T: Int64): Int64;');
  AddFunction(@Int64_Difference, 'function Int64_Difference(const x, T: Int64): Int64;');
  AddFunction(@Int64_Opposite, 'function Int64_Opposite(const x: Int64): Int64;');
  AddFunction(@Int64_Sign, 'function Int64_Sign(const x: Int64): Int32;');

  AddFunction(@String_At, 'function String_At(const str, s: string; const index: Int32 = 1): Boolean;');
  AddFunction(@String_Get, 'function String_Get(const str: string; const index, size: Int32): string;');
  AddFunction(@String_Pos, 'function String_Pos(const str, s: string; const offset: Int32 = 0): Int32;');
  AddFunction(@String_PosLast, 'function String_PosLast(const str, s: string; const offset: Int32 = -1): Int32;');
  AddFunction(@String_Position, 'function String_Position(const str, s: string; const offset: Int32 = 0): Int32;');
  AddFunction(@String_Between, 'function String_Between(const str, s1, s2: string; const offset: Int32 = 0): string;');
  AddFunction(@String_Count, 'function String_Count(const str, s: string; const overlap: Boolean = True): Int32;'); 
  AddFunction(@String_FromLeft, 'function String_FromLeft(const str: string; const x: Int32): string;');
  AddFunction(@String_FromRight, 'function String_FromRight(const str: string; const x: Int32): string;');
  AddFunction(@String_Explode, 'function String_Explode(const str, d: string; const limit: Int32 = -1): TStringArray;');
  AddFunction(@String_Exploded, 'function String_Exploded(const str: string; const d: TStringArray; const limit: Int32 = -1): TStringArray;');
  AddFunction(@String_Slice, 'function String_Slice(const str: string; const a, b: Int32): string;');
  AddFunction(@String_Chunk, 'function String_Chunk(const str: string; const a, b: Int32): string;');
  AddFunction(@String_Reverse, 'function String_Reverse(var str: string): Boolean;');
  AddFunction(@String_Flip, 'function String_Flip(const str: string): string;');
  AddFunction(@String_Reversed, 'function String_Reversed(const str: string): string;');
  AddFunction(@String_StartsWith, 'function String_StartsWith(const str, s: string): Boolean;');
  AddFunction(@String_EndsWith, 'function String_EndsWith(const str, s: string): Boolean;');
  AddFunction(@String_Begin, 'function String_Begin(var str: string; const s: string; const offset: Int32 = 0): Boolean;');
  AddFunction(@String_End, 'function String_End(var str: string; const s: string; const offset: Int32 = -1): Boolean;');
  AddFunction(@String_Behind, 'function String_Behind(const str: string; const position, size: Int32): string;');
  AddFunction(@String_Ahead, 'function String_Ahead(const str: string; const position, size: Int32): string;');
  AddFunction(@String_After, 'function String_After(const str, s: string; offset: Int32 = -1): string;');
  AddFunction(@String_Before, 'function String_Before(const str, s: string; offset: Int32 = -1): string;');
  AddFunction(@String_AfterLast, 'function String_AfterLast(const str, s: string; const offset: Int32 = -1): string;');
  AddFunction(@String_BeforeLast, 'function String_BeforeLast(const str, s: string; const offset: Int32 = -1): string;');
  AddFunction(@String_Center, 'function String_Center(const str: string; const size: Int32; const fill: Char = #32): string;');
  AddFunction(@String_Stuff, 'function String_Stuff(const str, s: string; const iFrom, iCount: Integer): string;');
  AddFunction(@String_Duplicate, 'function String_Duplicate(const str: string; const count: Int32 = 2): string;');
  AddFunction(@String_Duplicated, 'function String_Duplicated(const str: string; const count: Int32; const glue: string): string;');
  AddFunction(@String_Compare, 'function String_Compare(const str, T: string): Int32;');
  AddFunction(@String_Quotatation, 'function String_Quotatation(const str: string): string;');
  AddFunction(@String_PregQuote, 'function String_PregQuote(const str: string; const regex: string = ''.\+*?[^]$(){}=!<>|:-''): string;');
  AddFunction(@String_TrimLeft, 'function String_TrimLeft(const str: string; const t: Char = #32): string;');
  AddFunction(@String_TrimRight, 'function String_TrimRight(const str: string; const t: Char = #32): string;');
  AddFunction(@String_Trim, 'function String_Trim(const str: string; const t: Char = #32): string;');

  AddFunction(@Boolean_Random, 'function Boolean_Random: Boolean;');

  AddFunction(@T_AllEqual_TIntegerArray, 'function T_AllEqual_TIntegerArray(const arr: TIntegerArray): Boolean;');
  AddFunction(@T_AllEqual_TDoubleArray, 'function T_AllEqual_TDoubleArray(const arr: TDoubleArray): Boolean;');
  AddFunction(@T_AllEqual_TStringArray, 'function T_AllEqual_TStringArray(const arr: TStringArray): Boolean;');
  AddFunction(@T_AllEqual_TCharArray, 'function T_AllEqual_TCharArray(const arr: TCharArray): Boolean;');
  AddFunction(@T_AllEqual_TBooleanArray, 'function T_AllEqual_TBooleanArray(const arr: TBooleanArray): Boolean;');
  AddFunction(@T_AllEqual_TPointArray, 'function T_AllEqual_TPointArray(const arr: TPointArray): Boolean;');
  AddFunction(@T_AllEqual_TBoxArray, 'function T_AllEqual_TBoxArray(const arr: TBoxArray): Boolean;');
  AddFunction(@T_AllEqual_TRangeArray, 'function T_AllEqual_TRangeArray(const arr: TRangeArray): Boolean;');

  AddFunction(@T_AllSame_TIntegerArray, 'function T_AllSame_TIntegerArray(const arr: TIntegerArray): Boolean;');
  AddFunction(@T_AllSame_TDoubleArray, 'function T_AllSame_TDoubleArray(const arr: TDoubleArray): Boolean;');
  AddFunction(@T_AllSame_TStringArray, 'function T_AllSame_TStringArray(const arr: TStringArray): Boolean;');
  AddFunction(@T_AllSame_TCharArray, 'function T_AllSame_TCharArray(const arr: TCharArray): Boolean;');
  AddFunction(@T_AllSame_TBooleanArray, 'function T_AllSame_TBooleanArray(const arr: TBooleanArray): Boolean;');
  AddFunction(@T_AllSame_TPointArray, 'function T_AllSame_TPointArray(const arr: TPointArray): Boolean;');
  AddFunction(@T_AllSame_TBoxArray, 'function T_AllSame_TBoxArray(const arr: TBoxArray): Boolean;');
  AddFunction(@T_AllSame_TRangeArray, 'function T_AllSame_TRangeArray(const arr: TRangeArray): Boolean;');
  
  AddFunction(@T_AllUnique_TIntegerArray, 'function T_AllUnique_TIntegerArray(const arr: TIntegerArray): Boolean;');
  AddFunction(@T_AllUnique_TDoubleArray, 'function T_AllUnique_TDoubleArray(const arr: TDoubleArray): Boolean;');
  AddFunction(@T_AllUnique_TStringArray, 'function T_AllUnique_TStringArray(const arr: TStringArray): Boolean;');
  AddFunction(@T_AllUnique_TCharArray, 'function T_AllUnique_TCharArray(const arr: TCharArray): Boolean;');
  AddFunction(@T_AllUnique_TBooleanArray, 'function T_AllUnique_TBooleanArray(const arr: TBooleanArray): Boolean;');
  AddFunction(@T_AllUnique_TPointArray, 'function T_AllUnique_TPointArray(const arr: TPointArray): Boolean;');
  AddFunction(@T_AllUnique_TBoxArray, 'function T_AllUnique_TBoxArray(const arr: TBoxArray): Boolean;');
  AddFunction(@T_AllUnique_TRangeArray, 'function T_AllUnique_TRangeArray(const arr: TRangeArray): Boolean;');

  AddFunction(@T_Append_TIntegerArray, 'function T_Append_TIntegerArray(var arr: TIntegerArray; const item: Int32): Int32;');
  AddFunction(@T_Append_TDoubleArray, 'function T_Append_TDoubleArray(var arr: TDoubleArray; const item: Double): Int32;');
  AddFunction(@T_Append_TStringArray, 'function T_Append_TStringArray(var arr: TStringArray; const item: string): Int32;');
  AddFunction(@T_Append_TCharArray, 'function T_Append_TCharArray(var arr: TCharArray; const item: Char): Int32;');
  AddFunction(@T_Append_TBooleanArray, 'function T_Append_TBooleanArray(var arr: TBooleanArray; const item: Boolean): Int32;');
  AddFunction(@T_Append_TPointArray, 'function T_Append_TPointArray(var arr: TPointArray; const item: TPoint): Int32;');
  AddFunction(@T_Append_TBoxArray, 'function T_Append_TBoxArray(var arr: TBoxArray; const item: TBox): Int32;');
  AddFunction(@T_Append_TRangeArray, 'function T_Append_TRangeArray(var arr: TRangeArray; const item: TRange): Int32;');
  
  AddFunction(@T_AppendEx_TIntegerArray, 'function T_AppendEx_TIntegerArray(var arr: TIntegerArray; const items: TIntegerArray): Int32;');
  AddFunction(@T_AppendEx_TDoubleArray, 'function T_AppendEx_TDoubleArray(var arr: TDoubleArray; const items: TDoubleArray): Int32;');
  AddFunction(@T_AppendEx_TStringArray, 'function T_AppendEx_TStringArray(var arr: TStringArray; const items: TStringArray): Int32;');
  AddFunction(@T_AppendEx_TCharArray, 'function T_AppendEx_TCharArray(var arr: TCharArray; const items: TCharArray): Int32;');
  AddFunction(@T_AppendEx_TBooleanArray, 'function T_AppendEx_TBooleanArray(var arr: TBooleanArray; const items: TBooleanArray): Int32;');
  AddFunction(@T_AppendEx_TPointArray, 'function T_AppendEx_TPointArray(var arr: TPointArray; const items: TPointArray): Int32;');
  AddFunction(@T_AppendEx_TBoxArray, 'function T_AppendEx_TBoxArray(var arr: TBoxArray; const items: TBoxArray): Int32;');
  AddFunction(@T_AppendEx_TRangeArray, 'function T_AppendEx_TRangeArray(var arr: TRangeArray; const items: TRangeArray): Int32;');
  
  AddFunction(@T_Add_TIntegerArray, 'function T_Add_TIntegerArray(const arr: TIntegerArray; const item: Int32): TIntegerArray;');
  AddFunction(@T_Add_TDoubleArray, 'function T_Add_TDoubleArray(const arr: TDoubleArray; const item: Double): TDoubleArray;');
  AddFunction(@T_Add_TStringArray, 'function T_Add_TStringArray(const arr: TStringArray; const item: string): TStringArray;');
  AddFunction(@T_Add_TCharArray, 'function T_Add_TCharArray(const arr: TCharArray; const item: Char): TCharArray;');
  AddFunction(@T_Add_TBooleanArray, 'function T_Add_TBooleanArray(const arr: TBooleanArray; const item: Boolean): TBooleanArray;');
  AddFunction(@T_Add_TPointArray, 'function T_Add_TPointArray(const arr: TPointArray; const item: TPoint): TPointArray;');
  AddFunction(@T_Add_TBoxArray, 'function T_Add_TBoxArray(const arr: TBoxArray; const item: TBox): TBoxArray;');
  AddFunction(@T_Add_TRangeArray, 'function T_Add_TRangeArray(const arr: TRangeArray; const item: TRange): TRangeArray;');
  
  AddFunction(@T_AddEx_TIntegerArray, 'function T_AddEx_TIntegerArray(const arr: TIntegerArray; const items: TIntegerArray): TIntegerArray;');
  AddFunction(@T_AddEx_TDoubleArray, 'function T_AddEx_TDoubleArray(const arr: TDoubleArray; const items: TDoubleArray): TDoubleArray;');
  AddFunction(@T_AddEx_TStringArray, 'function T_AddEx_TStringArray(const arr: TStringArray; const items: TStringArray): TStringArray;');
  AddFunction(@T_AddEx_TCharArray, 'function T_AddEx_TCharArray(const arr: TCharArray; const items: TCharArray): TCharArray;');
  AddFunction(@T_AddEx_TBooleanArray, 'function T_AddEx_TBooleanArray(const arr: TBooleanArray; const items: TBooleanArray): TBooleanArray;');
  AddFunction(@T_AddEx_TPointArray, 'function T_AddEx_TPointArray(const arr: TPointArray; const items: TPointArray): TPointArray;');
  AddFunction(@T_AddEx_TBoxArray, 'function T_AddEx_TBoxArray(const arr: TBoxArray; const items: TBoxArray): TBoxArray;');
  AddFunction(@T_AddEx_TRangeArray, 'function T_AddEx_TRangeArray(const arr: TRangeArray; const items: TRangeArray): TRangeArray;');

  AddFunction(@T_Create_TIntegerArray, 'function T_Create_TIntegerArray(const size: Int32; const item: Int32): TIntegerArray;');
  AddFunction(@T_Create_TDoubleArray, 'function T_Create_TDoubleArray(const size: Int32; const item: Double): TDoubleArray;');
  AddFunction(@T_Create_TStringArray, 'function T_Create_TStringArray(const size: Int32; const item: string): TStringArray;');
  AddFunction(@T_Create_TCharArray, 'function T_Create_TCharArray(const size: Int32; const item: Char): TCharArray;');
  AddFunction(@T_Create_TBooleanArray, 'function T_Create_TBooleanArray(const size: Int32; const item: Boolean): TBooleanArray;');
  AddFunction(@T_Create_TPointArray, 'function T_Create_TPointArray(const size: Int32; const item: TPoint): TPointArray;');
  AddFunction(@T_Create_TBoxArray, 'function T_Create_TBoxArray(const size: Int32; const item: TBox): TBoxArray;');
  AddFunction(@T_Create_TRangeArray, 'function T_Create_TRangeArray(const size: Int32; const item: TRange): TRangeArray;');
  
  AddFunction(@T_Build_TIntegerArray, 'function T_Build_TIntegerArray(const item: Int32; const size: Int32 = 1): TIntegerArray;');
  AddFunction(@T_Build_TDoubleArray, 'function T_Build_TDoubleArray(const item: Double; const size: Int32 = 1): TDoubleArray;');
  AddFunction(@T_Build_TStringArray, 'function T_Build_TStringArray(const item: string; const size: Int32 = 1): TStringArray;');
  AddFunction(@T_Build_TCharArray, 'function T_Build_TCharArray(const item: Char; const size: Int32 = 1): TCharArray;');
  AddFunction(@T_Build_TBooleanArray, 'function T_Build_TBooleanArray(const item: Boolean; const size: Int32 = 1): TBooleanArray;');
  AddFunction(@T_Build_TPointArray, 'function T_Build_TPointArray(const item: TPoint; const size: Int32 = 1): TPointArray;');
  AddFunction(@T_Build_TBoxArray, 'function T_Build_TBoxArray(const item: TBox; const size: Int32 = 1): TBoxArray;');
  AddFunction(@T_Build_TRangeArray, 'function T_Build_TRangeArray(const item: TRange; const size: Int32 = 1): TRangeArray;');

  AddFunction(@T_Contains_TIntegerArray, 'function T_Contains_TIntegerArray(const arr: TIntegerArray; const item: Int32; const start: Int32 = 0): Boolean;');

  AddFunction(@T_Extract_TIntegerArray, 'function T_Extract_TIntegerArray(const arr: TIntegerArray; const item: Int32; const start: Int32 = 0): TIntegerArray;');
  AddFunction(@T_ExtractEx_TIntegerArray, 'function T_ExtractEx_TIntegerArray(const arr: TIntegerArray; const items: TIntegerArray; const start: Int32 = 0): TIntegerArray;');
  AddFunction(@T_Filter_TIntegerArray, 'function T_Filter_TIntegerArray(const arr: TIntegerArray; const item: Int32; const start: Int32 = 0): TIntegerArray;');
  AddFunction(@T_FilterEx_TIntegerArray, 'function T_FilterEx_TIntegerArray(const arr: TIntegerArray; const items: TIntegerArray; const start: Int32 = 0): TIntegerArray;');
  
  AddFunction(@T_FilterEvery_TIntegerArray, 'function T_FilterEvery_TIntegerArray(const arr: TIntegerArray; const X: Int32 = 1; const start: Int32 = 0): TIntegerArray;');
  AddFunction(@T_ExtractEvery_TIntegerArray, 'function T_ExtractEvery_TIntegerArray(const arr: TIntegerArray; const X: Int32 = 1; const start: Int32 = 0): TIntegerArray;');

  AddFunction(@T_Reverse_TIntegerArray, 'function T_Reverse_TIntegerArray(var arr: TIntegerArray): Boolean;');
end;
