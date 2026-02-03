@echo off
REM Servidor HTTP para Museo del Automóvil VR
REM Este script inicia un servidor local para visualizar el museo

cd /d "%~dp0"

echo.
echo ╔════════════════════════════════════════════════════════════════╗
echo ║          MUSEO DEL AUTOMÓVIL VR - Servidor Local             ║
echo ╚════════════════════════════════════════════════════════════════╝
echo.
echo Iniciando servidor...
echo.

REM Intentar con Python 3
python -m http.server 8000

if errorlevel 1 (
    echo.
    echo ⚠ Python no encontrado.
    echo.
    echo Alternativas:
    echo 1. Instala Python desde: https://www.python.org
    echo 2. Usa http-server con Node.js: npm install -g http-server
    echo 3. Abre directamente museo-autos.html en tu navegador
    echo.
    pause
)
