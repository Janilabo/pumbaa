procedure AddTypes;
begin
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

  AddFunction(@Int32_Inc, 'function Int32_Inc(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Dec, 'function Int32_Dec(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Increase, 'function Int32_Increase(var x: Int32; const N: Int32 = 1): Int32;');
  AddFunction(@Int32_Decrease, 'function Int32_Decrease(var x: Int32; const N: Int32 = 1): Int32;');
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

  AddFunction(@Int64_Inc, 'function Int64_Inc(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Dec, 'function Int64_Dec(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Increase, 'function Int64_Increase(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Decrease, 'function Int64_Decrease(var x: Int64; const N: Int64 = 1): Int64;');
  AddFunction(@Int64_Digits, 'function Int64_Digits(const x: Int64): TIntegerArray;');
  AddFunction(@Int64_Compare, 'function Int64_Compare(const x, T: Int64): Int32;');
  AddFunction(@Int64_Distance, 'function Int64_Distance(const x, T: Int64): Int64;');
  AddFunction(@Int64_Difference, 'function Int64_Difference(const x, T: Int64): Int64;');
  AddFunction(@Int64_Opposite, 'function Int64_Opposite(const x: Int64): Int64;');
end;
