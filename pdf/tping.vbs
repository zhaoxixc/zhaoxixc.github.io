    Dim args, flag, unsuccOut
    args=""
    otherout=""
    flag=0

    If WScript.Arguments.count = 0 Then
            WScript.Echo "Usage: cscript tping.vbs [-t] [-a] [-n count] [-l size] [-f] [-i TTL] [-v TOS]"
            WScript.Echo "                         [-s count] [[-j host-list] | [-k host-list]]"
            WScript.Echo "                         [-r count] [-w timeout] destination-list"
            wscript.quit
    End if

    For i=0 to WScript.Arguments.count - 1
            args=args & " " & WScript.Arguments(i)
    Next

    Set shell = WScript.CreateObject("WScript.Shell")
    Set re=New RegExp
    re.Pattern="^来自|^请求超时"
    Set myping=shell.Exec("ping" & args)

    while Not myping.StdOut.AtEndOfStream
       strLine=myping.StdOut.ReadLine()
       r=re.Test(strLine)
       If r Then
            WScript.Echo date & " "& time & chr(9) & strLine
            flag=1
       Else
            unsuccOut=unsuccOut & strLine
       End if
    Wend

    if flag = 0 then
            WScript.Echo unsuccOut
    end if