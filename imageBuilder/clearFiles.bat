@echo off
setlocal enabledelayedexpansion
for %%i in (images1\*.jpg) do ( 
	rd /s /q %%~ni
	rd /s /q zip
	rd /s /q tmp
	del %%~ni.zip
)