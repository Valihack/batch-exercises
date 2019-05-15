@echo off
if not exist %1 goto aviso
if not exist .\Copies\ md Copies
copy %1 .\Copies\
goto final
:aviso
echo Parametro introducido no valido
:final
pause