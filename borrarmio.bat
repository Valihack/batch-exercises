@echo off
cls
echo Introduce un nombre de archivo
set/p nombre=

if not exist %nombre%.* goto error
del %nombre%.*
call tries.bat
:error
echo No existe
pause
call tries.bat