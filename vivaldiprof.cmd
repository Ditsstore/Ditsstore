@echo off
color 4f
mode con:cols=80 lines=1
set profile=%1
:set
cls
if [%profile%]==[] set /p profile="Enter profile Name: "=
if [%profile%]==[] goto set
start %LOCALAPPDATA%\Vivaldi\Application\vivaldi.exe --user-data-dir=%LOCALAPPDATA%\Vivaldi\%profile% --flag-switches-begin --debug-packed-apps --silent-debugger-extension-api --flag-switches-end