@echo off
:inicio
echo.
echo Selecciona lo que deseas hacer
echo 1.Crear directorios
echo 2.Crear subdirectorios
echo 3.Cambiar el nombre del directorio
echo 4.Eliminar carpeta
echo 9.Salir
choice /C 1239 /M "Elige: "
echo.
goto eleccion%ERRORLEVEL%
:eleccion1
echo Dame el nombre del directorio
set/p nombre=
if exist .\%nombre%\ echo Esta carpeta ya existe & goto inicio
if not exist .\%nombre%\ md .\%nombre%\ 
goto inicio
:eleccion2
echo Dame el nombre del sudirectorio
set/p subdirectorio=
if not exist .\%subdirectorio%\ echo Este subdirectorio no existe
if exist .\%subdirectorio%\ cd %subdirectorio%
echo Dame el nombre del subdirectorio
set/p nombre=
if not exist .\%nombre%\ md .\%nombre%\ 
goto inicio
:eleccion3
echo Dame el nombre del directorio al que le quieres cambiar el nombre 
set/p nombre=
if not exist .\%nombre%\ echo Este directorio no existe & goto inicio
echo Dame el nuevo nombre
set/p nombre_2=
if exist .\%nombre_2%\ echo Esta carpeta ya existe & goto inicio
if not exist .\%nombre_2%\ rename %nombre% %nombre_2%
goto inicio
:eleccion3
echo Dame el nombre del directorio
set/p nombre=
if not exist .\%nombre%\ echo Este directorio no existe & goto inicio
rmdir %nombre% /S /Q
goto inicio
:eleccion5
pause