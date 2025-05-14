function T_AllEqual_TIntegerArray(const arr: TIntegerArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TDoubleArray(const arr: TDoubleArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TStringArray(const arr: TStringArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TCharArray(const arr: TCharArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TBooleanArray(const arr: TBooleanArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TPointArray(const arr: TPointArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TBoxArray(const arr: TBoxArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;
function T_AllEqual_TRangeArray(const arr: TRangeArray): Boolean; cdecl; begin Result := TArray_AllEqual(arr); end;

function T_AllSame_TIntegerArray(const arr: TIntegerArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TDoubleArray(const arr: TDoubleArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TStringArray(const arr: TStringArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TCharArray(const arr: TCharArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TBooleanArray(const arr: TBooleanArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TPointArray(const arr: TPointArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TBoxArray(const arr: TBoxArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;
function T_AllSame_TRangeArray(const arr: TRangeArray): Boolean; cdecl; begin Result := TArray_AllSame(arr); end;

function T_AllUnique_TIntegerArray(const arr: TIntegerArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TDoubleArray(const arr: TDoubleArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TStringArray(const arr: TStringArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TCharArray(const arr: TCharArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TBooleanArray(const arr: TBooleanArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TPointArray(const arr: TPointArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TBoxArray(const arr: TBoxArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;
function T_AllUnique_TRangeArray(const arr: TRangeArray): Boolean; cdecl; begin Result := TArray_AllUnique(arr); end;

function T_Append_TIntegerArray(var arr: TIntegerArray; const item: Int32): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TDoubleArray(var arr: TDoubleArray; const item: Double): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TStringArray(var arr: TStringArray; const item: string): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TCharArray(var arr: TCharArray; const item: Char): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TBooleanArray(var arr: TBooleanArray; const item: Boolean): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TPointArray(var arr: TPointArray; const item: TPoint): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TBoxArray(var arr: TBoxArray; const item: TBox): Int32; cdecl; begin Result := TArray_Append(arr, item); end;
function T_Append_TRangeArray(var arr: TRangeArray; const item: TRange): Int32; cdecl; begin Result := TArray_Append(arr, item); end;

function T_AppendEx_TIntegerArray(var arr: TIntegerArray; const items: TIntegerArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TDoubleArray(var arr: TDoubleArray; const items: TDoubleArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TStringArray(var arr: TStringArray; const items: TStringArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TCharArray(var arr: TCharArray; const items: TCharArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TBooleanArray(var arr: TBooleanArray; const items: TBooleanArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TPointArray(var arr: TPointArray; const items: TPointArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TBoxArray(var arr: TBoxArray; const items: TBoxArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;
function T_AppendEx_TRangeArray(var arr: TRangeArray; const items: TRangeArray): Int32; cdecl; begin Result := TArray_Append(arr, items); end;

function T_Add_TIntegerArray(const arr: TIntegerArray; const item: Int32): TIntegerArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TDoubleArray(const arr: TDoubleArray; const item: Double): TDoubleArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TStringArray(const arr: TStringArray; const item: string): TStringArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TCharArray(const arr: TCharArray; const item: Char): TCharArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TBooleanArray(const arr: TBooleanArray; const item: Boolean): TBooleanArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TPointArray(const arr: TPointArray; const item: TPoint): TPointArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TBoxArray(const arr: TBoxArray; const item: TBox): TBoxArray; cdecl; begin Result := TArray_Add(arr, item); end;
function T_Add_TRangeArray(const arr: TRangeArray; const item: TRange): TRangeArray; cdecl; begin Result := TArray_Add(arr, item); end;

function T_AddEx_TIntegerArray(const arr: TIntegerArray; const items: TIntegerArray): TIntegerArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TDoubleArray(const arr: TDoubleArray; const items: TDoubleArray): TDoubleArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TStringArray(const arr: TStringArray; const items: TStringArray): TStringArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TCharArray(const arr: TCharArray; const items: TCharArray): TCharArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TBooleanArray(const arr: TBooleanArray; const items: TBooleanArray): TBooleanArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TPointArray(const arr: TPointArray; const items: TPointArray): TPointArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TBoxArray(const arr: TBoxArray; const items: TBoxArray): TBoxArray; cdecl; begin Result := TArray_Add(arr, items); end;
function T_AddEx_TRangeArray(const arr: TRangeArray; const items: TRangeArray): TRangeArray; cdecl; begin Result := TArray_Add(arr, items); end;

function T_Create_TIntegerArray(const size: Int32; const item: Int32): TIntegerArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TDoubleArray(const size: Int32; const item: Double): TDoubleArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TStringArray(const size: Int32; const item: string): TStringArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TCharArray(const size: Int32; const item: Char): TCharArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TBooleanArray(const size: Int32; const item: Boolean): TBooleanArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TPointArray(const size: Int32; const item: TPoint): TPointArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TBoxArray(const size: Int32; const item: TBox): TBoxArray; cdecl; begin Result := TArray_Create(size, item); end;
function T_Create_TRangeArray(const size: Int32; const item: TRange): TRangeArray; cdecl; begin Result := TArray_Create(size, item); end;

function T_Build_TIntegerArray(const item: Int32; const size: Int32 = 1): TIntegerArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TDoubleArray(const item: Double; const size: Int32 = 1): TDoubleArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TStringArray(const item: string; const size: Int32 = 1): TStringArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TCharArray(const item: Char; const size: Int32 = 1): TCharArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TBooleanArray(const item: Boolean; const size: Int32 = 1): TBooleanArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TPointArray(const item: TPoint; const size: Int32 = 1): TPointArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TBoxArray(const item: TBox; const size: Int32 = 1): TBoxArray; cdecl; begin Result := TArray_Build(item, size); end;
function T_Build_TRangeArray(const item: TRange; const size: Int32 = 1): TRangeArray; cdecl; begin Result := TArray_Build(item, size); end;