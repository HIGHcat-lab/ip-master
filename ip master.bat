@echo off
chcp 65001
title  ip master - by d4vd
color 5
cls



:banner
echo.
echo.

echo ██ ██████      ███    ███  █████  ███████ ████████ ███████ ██████  
timeout /t 1 >nul
echo ██ ██   ██     ████  ████ ██   ██ ██         ██    ██      ██   ██ 
echo ██ ██████      ██ ████ ██ ███████ ███████    ██    █████   ██████  
echo ██ ██          ██  ██  ██ ██   ██      ██    ██    ██      ██   ██ 
echo ██ ██          ██      ██ ██   ██ ███████    ██    ███████ ██   ██ 



:options
echo.
echo.
echo //private ip
echo 1. find my ip
echo 2. spoof ip adress
echo.
echo.
echo //public ip:
echo 3. ping an ip or domain
echo 4. trace ip or domain
echo.
echo.

echo //mac adress type shi:
echo 5. list mac adresses
echo.
echo settings:
echo 6. update

echo.
set /p option="Enter an option: "

if %option% == 1 (
	cls
	ipconfig | findstr -i "IPv4"
	echo 	press any key to go back to the menu...
	pause >nul
	cls
	goto banner
	)
if %option%== 3 (
	cls
	set /p adress="enter the ip or domain name you want to ping: "
	ping "%adress%"
	pause
	cls
	goto banner
	)
if %option% == 2 (
	cls
	echo warning! doing this will have a chance of disabeling your connection
	echo on a school wifi
	pause
	ipconfig /renew 
	echo all done
	pause
	cls
	goto banner
	)
if "%option%" == "4" (
    cls
    set /p trace="Please enter the IP or domain name you want to trace: "
    tracert "%trace%"
    pause
    cls
    goto banner
	)
if %option% == 5 (
	cls
	getmac
	pause
	cls
	goto banner )
if %option% == 6 (
	cd desktop
	start ip master.bat
	exit )
	
                                                                   
                                                                   
