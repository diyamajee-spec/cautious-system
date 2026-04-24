@echo off
TITLE ElectiGuide India Local Server
echo ===============================================
echo 🗳️  Starting ElectiGuide (India Edition) Server
echo ===============================================

:: Try npx serve first
where npx >nul 2>nul
if %errorlevel% == 0 (
    echo ✅ npx detected. Starting server with 'npx serve'...
    npx -y serve .
    exit /b
)

:: Check for Python
where python >nul 2>nul
if %errorlevel% == 0 (
    echo ✅ Python detected. Starting server on http://localhost:8000
    python -m http.server 8000
) else (
    echo ❌ Error: Neither 'npx' nor 'python' was found.
    echo Please install Node.js (npx) or Python to run this project locally.
    pause
)


