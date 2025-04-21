@echo off
echo ================================
echo   neXera Trading Platform
echo   Direct Launch Script
echo ================================
echo.
echo This script will directly run the neXera Trading Platform without creating an executable.
echo This avoids Windows security restrictions and compatibility issues.
echo.
echo IMPORTANT: Please make sure Python 3.10 or higher is installed.
echo.
pause

echo.
echo Step 1: Installing required dependencies...
echo.
pip install -r ..\requirements.txt
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error installing dependencies. Please make sure Python is installed correctly.
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2: Starting the neXera Trading Platform...
echo.
echo The web interface will automatically open in your default browser.
echo If it doesn't open automatically, navigate to: http://localhost:5000
echo.
echo Press Ctrl+C to stop the application when finished.
echo.
python ..\run_bot.py
pause