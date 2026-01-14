{$MODE OBJFPC}
{$H+}
{$MACRO ON}
{$INLINE OFF}
{$MODESWITCH ADVANCEDRECORDS}
{$MODESWITCH ARRAYOPERATORS}
{$MODESWITCH TYPEHELPERS}
{$SMARTLINK OFF}
{$OPTIMIZATION OFF}
{$ALIGN 16}
{$CODEALIGN PROC=16}

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
