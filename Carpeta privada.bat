@ Echo off
color C
Title Yuki es un secreto
set intentos=3
:top
cls
set /a intentos=%intentos% -1
if %intentos%==0 (
	exit
)
Echo Tienes %intentos% intento
Echo Introduce tu contrasena:
set /p password=
if %password%==marialachupa (
	if not exist .\Privado\ (
	md Privado 
	attrib +h +s Privado
	)
%SystemRoot%\explorer "C:\Users\Yuki\Desktop\Privado"
cls
) else (
goto top
)