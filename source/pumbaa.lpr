{$mode objfpc}{$H+}
{$MODESWITCH ADVANCEDRECORDS}
{$MODESWITCH ARRAYOPERATORS}
{$MODESWITCH TYPEHELPERS}
{$MACRO ON}
{$INLINE ON}

library pumbaa;

uses
  Classes, SysUtils, Math, MiMU;

{$I build/plugin.inc}
{$I build/content.pas}

initialization
  Randomize();
  AddTypes;
  AddFunctions;
end.
