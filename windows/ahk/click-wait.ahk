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
		KeyWait, AppsKey, D T0.2 ;timeout 200ms
		if (ErrorLevel = 1) {
			if (count = 1) {
				SetTimer, AppsKey_one_click, -1
			} else if (count = 2) {
				SetTimer, AppsKey_two_click, -1
			} else if (count = 3) {
				SetTimer, AppsKey_three_click, -1
			} else {
				SetTimer, AppsKey_more_click, -1
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
    ToolTip, One
Return

AppsKey_two_click:
    ToolTip, Two
Return

AppsKey_three_click:
    ToolTip, Three
Return

AppsKey_more_click:
    ToolTip, More
Return

AppsKey_long_click:
	ToolTip, Long	
Return