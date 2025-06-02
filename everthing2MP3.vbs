
CONST FILE_FFMPEG = "C:\ffmpeg\bin\ffmpeg.exe"
CONST TYPE_OUT = ".mp3"

Dim MSG1, MSG2, MSG3, MSG4 
if (Hex(GetLocale()) = 416) Then
	'WScript.Echo "Portuguese (Brazil)"
	MSG1 = "Nenhum argumento foi passado."
	MSG2 = "Arraste e solte um grupo de arquivos para cima deste script"
	MSG3 = "Não foi encontrado o arquivo FFMPEG no caminho:"
	MSG4 = "Favor configurar este script"

Else
	'WScript.Echo "English (United States)"
	MSG1 = "No arguments were passed."
	MSG2 = "Drag and drop a group of files onto this script"
	MSG3 = "FFMPEG file not found at path:"
	MSG4 = "Please configure this script"
	
End If

Function FileExists(FilePath)
	Dim resp 
	resp = False
	Dim FSO
	Set FSO = CreateObject("Scripting.FileSystemObject")
	resp = FSO.FileExists(FilePath)
	Set FSO = Nothing
	FileExists = resp
End Function


If Not(FileExists(FILE_FFMPEG)) Then
	WScript.Echo MSG3 & FILE_FFMPEG & VBCrLf & MSG4
	WScript.Quit
End If

Dim countArgs
countArgs = WScript.Arguments.Count

If countArgs > 0 Then
  For i = 0 To countArgs - 1
    Dim arg
    arg = WScript.Arguments(i)
	call convertTo(arg, TYPE_OUT)
  Next
Else
  WScript.Echo MSG1 & vbCrlf & MSG2
End If

Function RemoveFileType(ByVal strInput)
  intPosicaoPonto = InStr(strInput, ".")
  If intPosicaoPonto > 0 Then
    RemoveFileType = Left(strInput, intPosicaoPonto - 1)
  Else
    RemoveFileType = strInput
  End If
End Function

Function ExecuteCommand(sCommand)
    Dim wsh, oExec 
    Set wsh = CreateObject("WScript.Shell")
	Set oExec = wsh.Exec(sCommand )
	Set oExec = Nothing
	Set wsh = Nothing
End Function

Function convertTo(sFile, tipo)
	dim fileNoType
	fileNoType = RemoveFileType(sFile)
	Dim comando
	comando = FILE_FFMPEG & " -i " & """" & sFile & """" & " " & """" &  fileNoType & tipo & """"
	ExecuteCommand(comando)
End Function
