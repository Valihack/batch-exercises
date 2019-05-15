@echo off
if [%1]==[] goto bucle
Echo Proceso parado
pause
echo Deseas cerrar el programa?
choice /c 12 /m "Eleccion:"
goto elec%errorlevel%
:elec1
exit 
:elec2
goto bucle
:bucle
FOR %%i IN (*.bat) DO call altrebat.bat %%i
