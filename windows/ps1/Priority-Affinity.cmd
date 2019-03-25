@echo off

setlocal
set EXE=explorer

powershell.exe "$Process = Get-Process %EXE%; $Process.ProcessorAffinity=1; $Process.PriorityClass='Idle'"

endlocal
