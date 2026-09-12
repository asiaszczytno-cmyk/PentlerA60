Dim WshShell, DesktopPath
Set WshShell = WScript.CreateObject("WScript.Shell")

' Komputer automatycznie znajdzie droge do Pulpitu na koncie Stean
DesktopPath = WshShell.SpecialFolders("Desktop")

' Krok 1: Dzwieki ostrzegawcze - komputer zapika 3 razy w tle
WshShell.Run "cmd /c echo " & Chr(7), 0, True
WScript.Sleep 400
WshShell.Run "cmd /c echo " & Chr(7), 0, True
WScript.Sleep 400
WshShell.Run "cmd /c echo " & Chr(7), 0, True

' Krok 2: Nagle otwarcie obrazka A-60 z Twojego Pulpitu
On Error Resume Next
WshShell.Run """" & DesktopPath & "\a60.png"""
WshShell.Run """" & DesktopPath & "\a60.jpg"""
WScript.Sleep 1000

' Krok 3: Nieskonczona petla wyskakujacych okienek blesu
Do
    X = MsgBox("ALERT: A-60 HAS SPAWNED!", 0+16, "ROOM 060")
Loop
