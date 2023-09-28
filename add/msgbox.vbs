' VBScript to display a message box with specified type, content, and title
Set objArgs = WScript.Arguments
vbType = objArgs(0)
content = objArgs(1)
title = objArgs(2)

Select Case vbType
    Case "info"
        MsgBox content, vbInformation, title
    Case "question"
        MsgBox content, vbQuestion, title
    Case "warning"
        MsgBox content, vbExclamation, title
    Case "error"
        MsgBox content, vbCritical, title
    Case Else
        MsgBox content, vbInformation, title
End Select
