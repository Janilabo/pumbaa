library pumbaa;

{$mode objfpc}{$H+}
{$macro on}
{$inline on}
{$modeswitch advancedrecords}
{$modeswitch arrayoperators}

uses
  classes, sysutils, math;

{$I library\base.pas}

{$I build\plugin.inc}
{$I build\content.pas}

initialization
  Randomize();
  AddTypes;
  AddFunctions;
end.
