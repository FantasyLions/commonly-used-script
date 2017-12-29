@echo off
:Begin 
ping www.baidu.com 
if errorlevel 1 goto Reboot 
if errorlevel 0 goto Continue
:Continue
goto Begin: 
:Reboot 
echo %date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%   The broken net has been restarted, waiting for a delay of 8 seconds ...
netsh wlan set profileparameter name=204 SSIDname=204 keyMaterial=kangpingxiaoqu9204
netsh wlan connect name=204 ssid=204
::设置延时等待
ping -n 8 127.0.0.1 >nul 
goto Begin