@echo off
setlocal enableextensions

set HEROKU_BINPATH=%~dp0\heroku.cmd
if exist "%LOCALAPPDATA%\heroku\client\bin\heroku.cmd" (
  "%LOCALAPPDATA%\heroku\client\bin\heroku.cmd" %*
) else (
  "%~dp0\..\client\bin\node.exe" "%~dp0\..\client\bin\run" %*
)
  