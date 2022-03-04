Space::
loop
{
	sleep, 20
	state:=GetKeyState("Space","P")
	if(state=0)
	{
		break
	}
	if(A_TimeSinceThisHotkey>400)
	{
		break
	}
}
if(state=0) ;短按
{
	if (A_PriorHotkey != "Space" or A_TimeSincePriorHotkey > 400)
	{
		count:=1
		
		;单击
		ToolTip, One
	}
	else
	{
		count++
		if(count=2)
		{
			;双击,单击时的代码仍被执行一次
			ToolTip, Two
		}
		else if(count=3)
		{
			;三击，单击和双击的代码仍被执行一次
			ToolTip, Three
		}
		else
		{
			;更多
			ToolTip, More
		}
	}	
}
else ;长按
{
	;----长按代码段-----
	ToolTip, Long
	;------------------
	
	KeyWait, Space ;这句不能删
}
return