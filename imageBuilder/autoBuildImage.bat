@echo off
mkdir zip
setlocal enabledelayedexpansion
for %%i in (images1\*.jpg) do ( 
	echo F|xcopy /e /i /y images1\%%~ni.jpg %%~ni\%%~ni-list-1.jpg&echo F|xcopy /e /i /y images2\%%~ni.jpg %%~ni\%%~ni-list-2.jpg&"WinRAR\WinRAR.exe" a -ibck zip\%%~ni.zip %%~ni
)