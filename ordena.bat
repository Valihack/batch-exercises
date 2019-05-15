@echo off
if not exist %1 echo Este archivo no existe && goto fin
IF %2 == A (
	sort %1
	) else (
	sort /R %1
	)
CHOICE /M "Quieres guardar la salida en un nuevo archivo nombreord.txt?"
goto eleccion%ERRORLEVEL%
:eleccion1

SET nombre=%1
SET nombrefinal=%nombre:.txt=ord.txt%
IF %2 == A (
	sort %1 > %nombrefinal%
	) else (
	sort /R %1 > %nombrefinal%
	)
:eleccion2
goto fin
:fin
pause