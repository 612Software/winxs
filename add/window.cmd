@echo off
if "%~1"=="" (
    echo Command Usage: window [HTML File]
    exit /b 1
)
echo ^<html^> > temp.hta
echo ^<head^> >> temp.hta
echo ^</head^> >> temp.hta
echo ^<body^> >> temp.hta
type "%~1" >> temp.hta
echo ^</body^> >> temp.hta
echo ^</html^> >> temp.hta
start "" temp.hta
:waitloop
tasklist | findstr /i /c:"mshta.exe" | findstr /i /c:"temp.hta" > nul
if %errorlevel% equ 0 (
    timeout /t 1 > nul
    goto waitloop
)
del temp.hta

endlocal
