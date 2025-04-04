@echo off
cd /d "C:\Users\Administrator\fengying"

echo === Adding all local changes first ===
git add --all

echo === Committing changes (if any) ===
git commit -m "Auto update: %date% %time%"
if %errorlevel% neq 0 (
    echo No local changes to commit.
)

echo === Pulling latest changes from GitHub ===
git pull --rebase origin main
if errorlevel 1 (
    echo Pull failed. Please check for conflicts or network issues.
    pause
    exit /b
)

echo === Pushing to GitHub ===
git push origin main

echo Sync complete.
pause
