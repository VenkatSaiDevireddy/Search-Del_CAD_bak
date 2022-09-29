@ECHO OFF
echo "Hello!"
:start
	set /p Q1=Start Searching for CAD bak file (y/n)?
	if /i "%Q1:~,1%" EQU "y" Goto Searchbak
	if /i "%Q1:~,1%" EQU "N" Goto Exit
:Searchbak
	dir *.bak /s
	REM del /s *.bak
	REM del /s *.log
	Goto start Delete
:start Delte
	set /p Q1=Start Deleting CAD bak file (y/n)?
	if /i "%Q1:~,1%" EQU "Y" Goto Deletebak
	if /i "%Q1:~,1%" EQU "N" Goto Exit
:Deletebak
	del /s *.bak
	REM del /s *.log
	Goto Exit

:Exit
	Echo "Have a Nice Day, Bye!"
	Timeout /T 3 /NOBreak
	exit