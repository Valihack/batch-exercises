@echo off
cls
:principio
@echo.
echo 	MENU
echo 	1.Visualizar contenido del directorio actual
echo 	2.Cambiar hora del sistema
echo 	3.Cambiar fecha del sistema
echo 	4.Limpia pantalla
echo 	5.Listar ficheros con .bat
echo 	6.Copiar todos los bat a Copias
echo 	7.Borrar un archivo
echo 	9.Exit
@echo.
rem /C son las opciones dispoibles a introducir y /M hace que sea texto
choice /C 12345679 /M "Eligee (como el jugador de liquid): "

goto eleccion%ERRORLEVEL%
:eleccion1
	dir
	goto principio
:eleccion2
	time 
	goto principio
:eleccion3
	date 
	goto principio
:eleccion4
	cls
	goto principio
:eleccion5
	dir *.bat
	goto principio
:eleccion6
	if not exist .\Copia\ md Copia
	copy *.bat .\Copia\
	goto principio
:eleccion7
	call borrar.bat
	goto principio
:eleccion8
	pause