@echo off
TITLE ElectiGuide Local Server
echo 🚀 Starting ElectiGuide Local Server...

:: Check for Python
where python >nul 2>nul
if %errorlevel% == 0 (
    echo ✅ Python detected. Starting server on http://localhost:8000
    python -m http.server 8000
) else (
    echo ❌ Error: Python is not installed or not in PATH.
    echo Please install Python to run the local server.
    pause
)
