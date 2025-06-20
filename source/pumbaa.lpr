library pumbaa;

{$mode objfpc}
{$macro on}
{$inline on}
{$modeswitch advancedrecords}
{$modeswitch arrayoperators}
{$modeswitch typehelpers}
{$H+}

uses
  classes, sysutils, math, MiMU;

{$I build/plugin.inc}
{$I build/content.pas}

initialization
  Randomize();
  AddTypes;
  AddFunctions;
end.
