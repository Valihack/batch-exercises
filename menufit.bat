@echo off
Title Menufit
color 3

:inicio
cls
echo   MENU
echo 1.Visualitzar tots els fitxers del tipus...
echo 2.Fer una copia de tots el fitxers amb l'extensio...
echo 3.Canviar el nom d'un fitxer
echo 4.Sortir

choice /C 1234 /M "Eleccio: "
goto eleccion%ERRORLEVEL%

:eleccion1
echo Defineix l'extensio pdf, txt o bat
set /p extension=

if %extension% == pdf goto seguir
if %extension% == bat goto seguir
if %extension% == txt goto seguir

echo No has introduit una extension valida
pause
goto inicio
:seguir
dir *.%extension%
pause
goto inicio

:eleccion2
echo Defineix l'extensio
set /p extension=
if not exist *.%extension% echo No hi ha archius amb aquesta extensio & pause & goto inicio
if not exist .\SOM\Copies md SOM\Copies
copy *.%extension% .\SOM\Copies & echo Copia realitzada amb exit & pause 
goto inicio

:eleccion3
echo Fitxer
set /p nombre=
if exist %nombre%.* (
echo Nou nom
set /p nom=
rename %nombre%.* %nom%.*
) else (echo Aquest fitxer no existeix & pause & goto inicio)
goto inicio

:eleccion4
pause

