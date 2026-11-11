@echo off
title Libreria John & Letras - Servidor local
chcp 65001 >nul
cd /d "%~dp0"

echo ============================================
echo   Libreria John y Letras - Servidor local
echo ============================================
echo.

where python >nul 2>nul
if %errorlevel%==0 (
    echo [1/3] Iniciando servidor con Python en el puerto 8099...
    start "" http://localhost:8099/index.html
    python -m http.server 8099
    goto fin
)

where py >nul 2>nul
if %errorlevel%==0 (
    echo [1/3] Iniciando servidor con Python (py) en el puerto 8099...
    start "" http://localhost:8099/index.html
    py -m http.server 8099
    goto fin
)

where node >nul 2>nul
if %errorlevel%==0 (
    echo [1/3] Python no encontrado. Iniciando con Node (serve) en el puerto 8099...
    start "" http://localhost:8099/index.html
    npx --yes serve -l 8099
    goto fin
)

echo [ERROR] No se encontro Python ni Node instalados.
echo Instala uno de ellos desde https://www.python.org/downloads/
pause
exit /b 1

:fin
echo.
echo Servidor detenido.
pause