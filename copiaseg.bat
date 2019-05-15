@echo off
echo Introduce un nombre de archivo
set/p nombre=
if not exist %nombre%.* goto aviso
if not exist .\Copies\ md Copies
copy %nombre%.* .\Copies\
goto final
:aviso
echo Este archivo no existe
:final
pause