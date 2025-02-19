REM@usage
' Put the full or mini class/sub/function in your script to use.
Function CmdOut(p):Dim w,e,r,o:Set w=CreateObject("WScript.Shell"):Set e=w.Exec("Cmd.exe"):e.StdIn.WriteLine p&" 2>&1":e.StdIn.Close:While(InStr(e.StdOut.ReadLine,">"&p)=0)::Wend:Do:o=e.StdOut.ReadLine:If(e.StdOut.AtEndOfStream)Then:Exit Do:Else:r=r&o&vbLf:End If:Loop:CmdOut=r:End Function

Function Greeting()
	Q1 = Msgbox("Hello!"& vbNewLine &""& vbNewLine &"Start Searching for CAD bak file?",vbInformation+vbYesNo, "Search & Delete AutoCAD *.bak File")
	If Q1 = vbNo Then
		Msgbox "Have a Nice Day! Thank You!",vbInformation,"Search & Delete AutoCAD *.bak File"
	Else Q1 = vbYes
		call SearchFile()
	End IF
End Function

Function SearchFile()
	Q2 = Msgbox("Are you sure want to delete the following files?"& vbNewLine &""& vbNewLine &CmdOut("dir *bak /s"),vbExclamation+vbYesNo,"Search & Delete AutoCAD *.bak File")
	If Q2 = vbNo Then
		Msgbox "Have a Nice Day! Thank You!",vbInformation,"Search & Delete AutoCAD *.bak File"
	Else Q2 = vbYes
		call Deletebak()
	End IF
End Function

Function Deletebak()
	Q3 = Msgbox("The following files have been deleted"& vbNewLine &""& vbNewLine &CmdOut("del /s *bak"),vbInformation,"Search & Delete AutoCAD *.bak File")
	Msgbox "Have a Nice Day! Thank You!",vbInformation,"Search & Delete AutoCAD *.bak File"
End Function

call Greeting()



