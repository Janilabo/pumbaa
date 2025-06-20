// Helpers

var
  memoryManager: TMemoryManager;
  Plugin: record
    Functions: array of record
	  Header: string;
	  Method: Pointer;
	end;
    Types: array of record
	  Str: string;
	  Name: string;
	end;
    Code: string;
  end;

procedure AddFunction(const method: Pointer; const header: string); cdecl;
var
  h: Int32;
begin
  with Plugin do
  begin
    SetLength(Functions, (Length(Functions) + 1));
    h := High(Functions);
    Functions[h].Header := header;
    Functions[h].Method := method;
  end;
end;

procedure AddType(const name: string; const str: string); cdecl;
var
  h: Int32;
begin
  with Plugin do
  begin
    SetLength(Types, (Length(Types) + 1));
    h := High(Types);
    Types[h].Str := str;
    Types[h].Name := name;
  end;
end;

// Exports

function GetTypeCount(): Int32; cdecl;
begin
  Result := Length(Plugin.Types);
end;

function GetTypeInfo(const index: Int32; var name, str: PChar): Int32; cdecl;
begin
  with Plugin do
  begin
    StrPCopy(name, Types[index].Name);
    StrPCopy(str, Types[index].Str);
  end;
  Result := index;
end;

function GetFunctionCount: Int32; cdecl;
begin
  Result := Length(Plugin.Functions);
end;

function GetFunctionInfo(const index: Int32; var method: Pointer; var header: PChar): Int32; cdecl;
begin
  with Plugin do
  begin
    StrPCopy(header, Functions[index].Header);
    method := Functions[index].Method;
  end;
  Result := index;
end;

function GetCodeLength: Int32; cdecl;
begin
  Result := Length(Plugin.Code);
end;

procedure GetCode(var code: PChar); cdecl;
begin
  StrPCopy(code, Plugin.Code);
end;

function GetPluginABIVersion: Int32; cdecl;
begin
  Result := 2;
end;

procedure SetPluginMemManager(const manager: TMemoryManager); cdecl;
begin
  GetMemoryManager(memoryManager);
  SetMemoryManager(manager);
end;

procedure OnDetach(); cdecl;
begin
  SetMemoryManager(memoryManager);
end;

exports GetTypeCount;
exports GetTypeInfo;
exports GetFunctionCount;
exports GetFunctionInfo;
exports GetCodeLength;
exports GetCode;
exports GetPluginABIVersion;
exports SetPluginMemManager;
exports OnDetach;
