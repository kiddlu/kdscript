Set ws = CreateObject("wscript.shell") 
set fso=createobject("scripting.filesystemobject")
UserProfilePath = ws.ExpandEnvironmentStrings("%UserProfile%")
tempBat = UserProfilePath & "\AppData\Local\Temp\hide-cmd.bat"
set fw=fso.createtextfile(tempBat,2)

fw.writeline("@echo off")
fw.writeline("%SYSTEMROOT%\system32\calc.exe")

fw.close
ws.run "cmd /c %TMP%\hide-cmd.bat",vbhide
wscript.sleep 1000
fso.deleteFile(tempBat)
