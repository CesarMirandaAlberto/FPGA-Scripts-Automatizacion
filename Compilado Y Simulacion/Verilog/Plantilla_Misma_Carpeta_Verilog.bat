::PLANTILLA CON FINES EDUCATIVOS Y PRACTIVOS
@echo off

rem Configuracion de archivos 

rem **** Archivos para compilar ****

set Instanciacion1=Medio_Sumador.v
set Instanciacion2=Sumador_Completo.v
set ModuloPrincipal=Sumador4_Bits.v
set Testbench=Sumador4_Bits_TB.v
set Simulacion=Simulacion.vvp

rem **** Archivos para simulacion ****
echo ==============================

rem Compilado
echo Compilando modulos....
iverilog -o %Simulacion% %Instanciacion1% %Instanciacion2% %ModuloPrincipal% %Testbench%

echo =======Simulacion=============
vvp %Simulacion%


echo ==============================
rem **** ABRIR GTKWAVE ****
echo Abriendo Vizualizador de ondas.....
gtkwave Testbench.vcd

pause
