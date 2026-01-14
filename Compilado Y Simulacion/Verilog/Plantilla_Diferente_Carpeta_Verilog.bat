@echo off
:: PLANTILLA CON FINES EDUCATIVOS Y DE PRÁCTICAS

rem Configuracion de archivos 

rem **** Archivos para compilar ****
set Instanciacion1="..\..\Basico\Medio_Sumador.v"
set Instanciacion2="..\..\Basico\Sumador_Completo.v"
set Instanciacion3="..\..\Basico\DecodificadorBinario_Hexadecimal.v"
set ModuloPrincipal=Sumador4Bits_Display7s.v
set Testbench=Sumador4Bits_Display7s_TB.v

rem **** Archivos para simulacion ****
set Simulacion=Simulacion.vvp

rem Compilado

echo Compilando modulos......
iverilog -o %Simulacion% %Instanciacion1% %Instanciacion2% %Instanciacion3% %ModuloPrincipal% %Testbench%

echo Simulando.....
vvp %Simulacion%

rem **** ABRIR GTKWAVE ****
echo Abriendo vizualizador de ondas......
gtkwave Testbench.vcd

pause