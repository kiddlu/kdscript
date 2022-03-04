@echo off
set /p q=Pleasl input ShareIP [192.168.173.1]:
reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters" -v ScopeAddress -d %q% -f

reg add "HKLM\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters" -v ScopeAddressBackup -d %q% -f

timeout /t 10 /nobreak