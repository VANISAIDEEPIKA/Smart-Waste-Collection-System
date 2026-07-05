@echo off
cls

echo ======================================================================
echo.
echo    Smart City Waste Collection System - Starting
echo.
echo ======================================================================
echo.

REM Navigate to project directory
cd /d "%~dp0"

REM Resolve environment folder (.venv preferred, fallback to venv)
set "ENV_DIR=.venv"
if not exist "%ENV_DIR%\Scripts\python.exe" (
    set "ENV_DIR=venv"
)

REM Create virtual environment if missing
if not exist "%ENV_DIR%\Scripts\python.exe" (
    echo Creating virtual environment at %ENV_DIR% ...
    python -m venv %ENV_DIR%
    echo.
)

set "PYTHON_EXE=%ENV_DIR%\Scripts\python.exe"

REM Install/Update dependencies
echo.
echo Installing dependencies...
"%PYTHON_EXE%" -m pip install --upgrade pip > nul 2>&1
"%PYTHON_EXE%" -m pip install -r requirements.txt > nul 2>&1

REM Start Flask app
echo.
echo ======================================================================
echo.
echo    Flask Application Starting...
echo.
echo    Open browser: http://localhost:5000
echo    Press CTRL+C to stop the server
echo.
echo ======================================================================
echo.

"%PYTHON_EXE%" run.py

pause