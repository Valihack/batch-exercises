echo Introdueix un fitxer
set/p fitxer1=
if not exist %fitxer1%.* goto avisa
del %fitxer1%.*
echo El fitxer %fitxer1%.* s'ha eliminat
pause
goto acaba
:avisa
echo Aquest fitxer no existeix
:acaba