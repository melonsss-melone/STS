@echo off
title ServerTestSemplice - 1.0

python --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
	echo python non e installato
	timeout /t 5 /nobreak >nul
	exit
)
echo Scegli la porta su dove il server e in ascolto
set /p porta="->"

cls
echo Fare ctrl + c per terminale il processo durante la sua eseguzione
echo Il sito mostera la tua cartella corente
timeout /t 5 /nobreak >nul
cls

echo Processo in eseguzione
echo.
python -m http.server %porta% 