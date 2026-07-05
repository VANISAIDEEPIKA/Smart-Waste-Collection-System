@echo off
cls
echo ===================================
echo Diagnostic Check
echo ===================================
echo.

echo 1. Checking Python...
python --version
if errorlevel 1 (
    echo ERROR: Python not found!
    echo Make sure Python is installed and added to PATH
    pause
    exit /b 1
)

echo.
echo 2. Current Directory:
cd

echo.
echo 3. Listing files...
dir

echo.
echo 4. Creating venv...
if exist venv (
    echo venv already exists
) else (
    python -m venv venv
    echo venv created
)

echo.
echo 5. Checking if venv\Scripts exists...
if exist "venv\Scripts" (
    echo OK - venv\Scripts found
) else (
    echo ERROR - venv\Scripts NOT found
)

echo.
echo 6. Checking if activate.bat exists...
if exist "venv\Scripts\activate.bat" (
    echo OK - activate.bat found
) else (
    echo ERROR - activate.bat NOT found
)

echo.
echo ===================================
echo Diagnostic complete
echo ===================================
pause