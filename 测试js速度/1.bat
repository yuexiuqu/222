@echo off
setlocal enabledelayedexpansion

echo Checking speed for each JS URL listed in jslist.txt...
echo.

if not exist jslist.txt (
    echo [ERROR] jslist.txt not found in this folder.
    echo Please create a file named jslist.txt and list one JS URL per line.
    pause
    exit /b
)

for /f "usebackq tokens=* delims=" %%u in ("jslist.txt") do (
    set "url=%%u"
    echo Testing !url! ...
    c:\windows\system32\curl -o NUL -w "Time: %%{time_total}s\n" -s "!url!"
    echo.
)

echo All tests completed.
pause
