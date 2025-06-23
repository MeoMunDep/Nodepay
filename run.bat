@echo off
title MeoMunDep Nodepay Bot Starter
color 0A

echo =========================================
echo   🐍 Starting MeoMunDep Python Bot...
echo =========================================
echo.

where python >nul 2>nul
IF ERRORLEVEL 1 (
    echo ❌ Python is not installed. Please install it from https://www.python.org/downloads/
    pause
    exit /b
)

python -m venv venv
call venv\Scripts\activate

echo 🔄 Upgrading pip...
python -m pip install --upgrade pip >nul

if exist requirements.txt (
    echo 📦 Installing packages from requirements.txt...
    pip install -r requirements.txt
) else (
    echo 📦 Installing required packages...
    pip install -q cloudscraper colorama
)

echo 🚀 Running the bot...
python meomundep.py

echo.
pause
