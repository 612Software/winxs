@echo off

:: Check if the number of arguments is correct
if "%~3"=="" (
    echo.
    echo Command Usage: msgbox [vbExpression] "Message content" "Message title"
    echo.
    echo Expression Types:
    echo info
    echo question
    echo warning
    echo error
    exit /b 1
)

:: Call the VBScript with vbType, content, and title as arguments
cscript //nologo msgbox.vbs "%~1" "%~2" "%~3"

exit /b 0
