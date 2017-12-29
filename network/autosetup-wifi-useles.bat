@echo off 
pushd "%~dp0"
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if бо%errorlevel%бо NEQ бо0бо (goto UACPrompt) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
pause

:Begin
cls
ping www.baidu.com 
if errorlevel 1 goto Reboot
if errorlevel 0 goto Next

:Reboot 
netsh interface set interface WLAN disabled
netsh interface set interface WLAN enable
ping -n 8 127.0.0.1 >nul
goto Next

::╔ш╓├╤╙╩▒╡╚┤¤
:Next
goto Begin