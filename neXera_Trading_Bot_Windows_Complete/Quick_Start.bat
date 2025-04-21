@echo off
echo ================================
echo   neXera Trading Platform Setup
echo ================================
echo.
echo This script will help you set up and run the neXera Trading Platform.
echo.
echo IMPORTANT: Please make sure Python 3.10 or higher is installed.
echo.
pause

echo.
echo Step 1: Installing required dependencies...
echo.
pip install -r requirements.txt
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error installing dependencies. Please make sure Python is installed correctly.
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2: Creating executable file...
echo.
python create_nexera_exe.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Error creating executable. 
    echo.
    echo Attempting to run in direct mode instead...
    echo.
    python run_bot.py
    exit /b 0
)

echo.
echo Setup completed successfully!
echo.
echo The neXera Trading Platform executable has been created in the 'dist' folder.
echo You can now run the application by double-clicking on neXera_Trading_Bot.exe
echo.
echo Opening the executable now...
echo.
start "" "dist\neXera_Trading_Bot.exe"
echo.
pause