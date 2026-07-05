@echo off
cls

echo ======================================================================
echo              Smart City - Setup Diagnostic Check
echo ======================================================================
echo.

REM Check Python
echo Checking Python installation...
python --version
if errorlevel 1 (
    echo ERROR: Python not found or not in PATH
    pause
    exit /b 1
)
echo OK - Python found
echo.

REM Check if venv exists
echo Checking virtual environment...
set "ENV_DIR=.venv"
if not exist "%ENV_DIR%\Scripts\python.exe" (
    set "ENV_DIR=venv"
)
if not exist "%ENV_DIR%\Scripts\python.exe" (
    echo Creating %ENV_DIR%...
    python -m venv %ENV_DIR%
)
set "PYTHON_EXE=%ENV_DIR%\Scripts\python.exe"
echo OK - Virtual environment exists
echo.

REM Check Flask
echo Checking Flask installation...
"%PYTHON_EXE%" -m pip show flask > nul 2>&1
if errorlevel 1 (
    echo Installing Flask...
    "%PYTHON_EXE%" -m pip install Flask
)
echo OK - Flask installed
echo.

REM Check other dependencies
echo Checking other dependencies...
"%PYTHON_EXE%" -m pip install -r requirements.txt > nul 2>&1
echo OK - Dependencies installed
echo.

echo ======================================================================
echo All checks passed! Ready to run.
echo.
echo Starting application...
echo ======================================================================
echo.

"%PYTHON_EXE%" run.py

pause