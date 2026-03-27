@echo off

:: Check if Python is installed and accessible in PATH
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not added to your system PATH.
    echo Please install Python from https://www.python.org/ and try again.
    pause
    exit /b 1
)

echo [INFO] Python detected. Installing requirements via pip...
python -m pip install -r requirements.txt

if %errorlevel% equ 0 (
    echo [SUCCESS] Dependencies installed successfully.
)
pause
