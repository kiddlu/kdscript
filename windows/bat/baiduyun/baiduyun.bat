@ECHO OFF&PUSHD %~DP0 &TITLE �̻���ж��
mode con cols=40 lines=20
color A
Rd "%WinDir%\system32\test_permissions" >NUL 2>NUL
Md "%WinDir%\System32\test_permissions" 2>NUL||(Echo ��ʹ���Ҽ�����Ա������У�&&Pause >nul&&Exit)
Rd "%WinDir%\System32\test_permissions" 2>NUL
SetLocal EnableDelayedExpansion

:Menu
Cls
@ echo.
@ echo.���������� �� �� ѡ ��
@ echo.
@ echo.     �̻�[����] �� ������1
@ echo.
@ echo.     ��������ͼ�� �� ������2
@ echo.
@ echo.     ע��������������� �� ������3
@ echo.
@ echo.     ע���Ҽ��ϴ����� �� ������4
@ echo.
@ echo.     ж�� �� ������5
@ echo.
set /p xj=     �������ְ��س���
if /i "%xj%"=="1" Goto Install
if /i "%xj%"=="2" Goto Establish
if /i "%xj%"=="3" Goto Addjs
if /i "%xj%"=="4" Goto Backup
if /i "%xj%"=="5" Goto Uninstall
@ echo.
echo      ѡ����Ч������������
ping -n 2 127.1>nul 
goto menu

:Install
@ echo.
ECHO ���������ڰ�װ��..���Ե�..
taskkill /f /im BaiduYunGuanjia.exe>NUL 2>NUL
del /f AppSettingApp.dat  >NUL 2>NUL
rd/s/q "%tmp%\bdyunguanjiaskinres" 2>NUL
rd/s/q "%AppData%\BaiduYunGuanjia" 2>NUL
rd/s/q "%AppData%\Baidu\BaiduYunGuanjia"2>NUL
regsvr32 /s npYunWebDetect.dll
reg delete "HKCU\Software\Baidu\BaiduYunGuanjia" /f >NUL 2>NUL
reg delete "HKCR\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKCU\SOFTWARE\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
goto Install2

:Establish
mshta VBScript:Execute("Set a=CreateObject(""WScript.Shell""):Set b=a.CreateShortcut(a.SpecialFolders(""Desktop"") & ""\�ٶ��ƹܼ�.lnk""):b.TargetPath=""%~dp0BaiduYunGuanjia.exe"":b.WorkingDirectory=""%~dp0"":b.Save:close")
goto fanhui

:Addjs
regsvr32 /s npYunWebDetect.dll
goto fanhui

:Backup
@ echo.
echo ����������ע����..���Ե�..
if exist "%WinDir%\SysWOW64" regsvr32 /s YunShellExt64.dll
if not exist "%WinDir%\SysWOW64" regsvr32 /s YunShellExt.dll
goto fanhui

:Uninstall
@ echo.
echo ����������ж����..���Ե�.
taskkill /f /im BaiduYunGuanjia*>NUL 2>NUL
regsvr32 /s /u YunShellExt.dll
regsvr32 /s /u npYunWebDetect.dll
del /f AppSettingApp.dat  >NUL 2>NUL
del /f CompleteTaskRecodFile >NUL 2>NUL
rd/s/q "%tmp%\bdyunguanjiaskinres" 2>NUL
rd/s/q "%AppData%\BaiduYunGuanjia" 2>NUL
rd/s/q "%AppData%\BaiduYunKernel" 2>NUL
rd/s/q "%AppData%\Baidu\BaiduYunGuanjia"2>NUL
if exist "%WinDir%\SysWOW64" regsvr32 /s /u YunShellExt64.dll
reg delete "HKCU\Software\Baidu\BaiduYunGuanjia" /f >NUL 2>NUL
reg delete "HKCR\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKCU\SOFTWARE\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Classes\CLSID\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
reg delete "HKLM\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{679F137C-3162-45da-BE3C-2F9C3D093F64}" /f>NUL 2>NUL
goto Uninstall2

:fanhui
@ ECHO.
ECHO �������������..
ping -n 2 127.8>nul
goto menu

:Install2
@ ECHO.
ECHO ��������װ���..
ping -n 2 127.8>nul
goto menu

:Uninstall2
@ ECHO.
ECHO ������ж�����..
ping -n 2 127.8>nul
goto menu