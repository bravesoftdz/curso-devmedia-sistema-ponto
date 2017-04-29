unit uFuncoes;

interface

uses Windows;

function getMemoriaFisica: Integer;
function getSistemaOperacional: string;

implementation

function getMemoriaFisica: Integer;
var
  loMemoryStatus: TMemoryStatus;
begin
  loMemoryStatus.dwLength := SizeOf(loMemoryStatus);
  GlobalMemoryStatus(loMemoryStatus);
  Result := loMemoryStatus.dwAvailPhys;
end;

function getSistemaOperacional: string;
var
  loInfo: TOSVersionInfo;
begin
  loInfo.dwOSVersionInfoSize := SizeOf(TOSVersionInfo);
  if GetVersionEx(loInfo) then
  begin
    if loInfo.dwPlatformId = VER_PLATFORM_WIN32s then
      Result := 'Windows 95'
    else if loInfo.dwPlatformId = VER_PLATFORM_WIN32_WINDOWS then
      Result := 'Windows 95 OS r2 /  98'
    else
      Result := 'Windows NT';
  end
  else
    Result := 'Sistema não identificado';
end;

end.
