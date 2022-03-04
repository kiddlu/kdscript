;RAlt::Browser_Back				


;===================================================
;=============    Enter            =================
;===================================================
Enter::
loop {
	sleep, 20
	state := GetKeyState("Enter","P")
	if (state = 0) {
		break
	}
	if (A_TimeSinceThisHotkey > 800) {
		break
	}
}

if (state=0) {  ;short
	count:=1
	loop {
		KeyWait, Enter, D T0.15 ;timeout 200ms
		if (ErrorLevel = 1) {
			if (count = 1) {
				SetTimer, Enter_one_click, -1
			} else if (count = 2) {
				SetTimer, Enter_two_click, -1
			} else if (count = 3) {
				SetTimer, Enter_three_click, -1
			}
			break
		} else {
			KeyWait, Enter
			count++
		}
	}
} else {
	SetTimer, Enter_long_click, -1
	KeyWait, Enter
}
return

Enter_one_click:
    Send, {Enter Down}
    Send, {Enter Up}
Return

Enter_two_click:
	Send, {Bowser_Back Down}
	Send, {Bowser_Back Up}
Return

Enter_three_click:
    Send, {Mbutton Down}
    Send, {Mbutton Up}
;	ToolTip, Enter_three_click	
Return

Enter_long_click:
    Send, {Esc Down}
    Send, {Esc Up}
;	ToolTip, Enter_long_click	
Return
;===================================================
;=============    Enter            =================
;===================================================






;===================================================
;=============    Browser_Back     =================
;===================================================
RAlt::
loop {
	sleep, 20
	state := GetKeyState("RAlt","P")
	if (state = 0) {
		break
	}
	if (A_TimeSinceThisHotkey > 800) {
		break
	}
}

if (state=0) {  ;short
	count:=1
	loop {
		KeyWait, RAlt, D T0.15 ;timeout 200ms
		if (ErrorLevel = 1) {
			if (count = 1) {
				SetTimer, RAlt_one_click, -1
			} else if (count = 2) {
				SetTimer, RAlt_two_click, -1
			} else if (count = 3) {
				SetTimer, RAlt_three_click, -1
			}
			break
		} else {
			KeyWait, RAlt
			count++
		}
	}
} else {
	SetTimer, RAlt_long_click, -1
	KeyWait, RAlt
}
return

RAlt_one_click:
    Send, {RButton Down}
    Send, {RButton Up}
Return

RAlt_two_click:
    Send, {Tab Down}
    Send, {Tab Up}
Return

RAlt_three_click:
;	Send, {Bowser_Back Down}
;	Send, {Bowser_Back uP}
;	ToolTip, RAlt_three_click	
Return

RAlt_long_click:
	Send, {WheelUp 5}
;	ToolTip, RAlt_long_click	
Return
;===================================================
;=============    Browser_Back     =================
;===================================================








;===================================================
;=============    AppsKey     ======================
;===================================================

AppsKey::
loop {
	sleep, 20
	state := GetKeyState("AppsKey","P")
	if (state = 0) {
		break
	}
	if (A_TimeSinceThisHotkey > 800) {
		break
	}
}

if (state=0) {  ;short
	count:=1
	loop {
		KeyWait, AppsKey, D T0.15 ;timeout 200ms
		if (ErrorLevel = 1) {
			if (count = 1) {
				SetTimer, AppsKey_one_click, -1
			} else if (count = 2) {
				SetTimer, AppsKey_two_click, -1
			} else if (count = 3) {
				SetTimer, AppsKey_three_click, -1
			}
			break
		} else {
			KeyWait, AppsKey
			count++
		}
	}
} else {
	SetTimer, AppsKey_long_click, -1
	KeyWait, AppsKey
}
return


AppsKey_one_click:
    Send, {RWIN Down}
    Send, {RWIN Up}
Return

AppsKey_two_click:
    Send, {RWIN Down}
    Send, {Tab Down}
    Send, {Tab Up}
    Send, {RWIN Up}
Return

AppsKey_three_click:
;	Send, {WheelDown 5}
;	ToolTip, AppsKey_three_click
Return

AppsKey_long_click:
	Send, {WheelDown 5}
;	ToolTip, AppsKey_long_click
Return

;===================================================
;=============    AppsKey     ======================
;===================================================