
/*&cls
@echo off
set "netpath=%systemroot%\Microsoft.NET\Framework"
for /f "delims=" %%a in ('dir /ad /b "%netpath%\v?.*"') do (
    if exist "%netpath%\%%a\csc.exe" (
        set "cscpath=%netpath%\%%a\csc.exe"
        goto :0
    )
)
echo;未安装.Net Framework 2.0及其上版本组件或相关程序丢失&pause&exit/b
:0
"%cscpath%" /out:"$MonitorOff.exe" "%~f0"
"$MonitorOff.exe"
pause&exit
*/
using System;
using System.Runtime.InteropServices;
class MonitorOff
{
    [DllImportAttribute("user32.dll")]
    private static extern IntPtr SendMessage(IntPtr hWnd, uint Msg, int wParam, int lParam);
    static void Main(string[] args)
    {
        SendMessage((IntPtr)0xffff, 0x112, 0xF170, 2);
    }
}