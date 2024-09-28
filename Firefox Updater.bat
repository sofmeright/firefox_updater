@echo off
setlocal enabledelayedexpansion

curl -o firefoxdl.txt "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US
pause
for /f "delims=" %%a in (firefoxdl.txt) DO ( 
	echo %%a  
	'%%a' -replace ".*releases/([0-9][0-9]).*",'$1'
	pause
)
pause
set string=This is my string to work with.
set find=my string
set replace=your replacement
call set string=%%string:!find!=!replace!%%