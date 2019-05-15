@echo off
type %1
echo.
echo.
echo Este es %1
echo.
choice /c 123 /m "Vols fer una copia: 1.Si 2.No 3.Acabar"
echo.
goto elec%errorlevel%
:elec1
if not exist .\Copia\ md Copia
copy %1 .\Copia\
echo S'ha copiat correctament
echo.
goto elec2
:elec3
call copiabat.bat 1
:elec2
pause
