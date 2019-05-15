@echo off
Title Menutext
color 7
start
:inicio
cls

echo 	MENU
echo 	1.Crear y editar un archivo de texto
echo 	2.Buscar ficheros a partir de texto
echo 	3.Visualizar un fichero
echo 	4.Ordenar fichero de forma ascendente
echo 	5.Proteger frente a modificacion un archivo
echo 	9.Exit
choice /C 123459 /M "Elige: "
goto eleccion%ERRORLEVEL%
:eleccion1
echo Dame el nombre del archivo
set/p nombre=
notepad %nombre%
goto inicio
:eleccion2
echo Dime que quieres buscar
set/p texto=
find /i /n "%texto%" *.*
pause
goto inicio
:eleccion3
echo Dame el nombre del archivo
set/p nombre=
type %nombre%.*
@echo.
pause
goto inicio
:eleccion4
echo Dame el nombre del archivo
set/p nombre=
sort %nombre%
pause
goto inicio
:eleccion5
echo Dame el nombre del archivo
set/p nombre=
attrib +R %nombre%
goto inicio
:eleccion6
pause
