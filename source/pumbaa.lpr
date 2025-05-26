library pumbaa;

{$mode objfpc}{$H+}
{$macro on}
{$inline on}
{$modeswitch advancedrecords}
{$modeswitch arrayoperators}

uses
  classes, sysutils, math, MiMU;

{$I build/plugin.inc}
{$I build/content.pas}

initialization
  Randomize();
  AddTypes;
  AddFunctions;
end.
