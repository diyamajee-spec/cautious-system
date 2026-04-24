@echo off
TITLE ElectiGuide Local Server
echo 🚀 Starting ElectiGuide Local Server...

:: Try npx serve first
where npx >nul 2>nul
if %errorlevel% == 0 (
    echo ✅ npx detected. Starting server with 'npx serve'...
    npx serve .
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
