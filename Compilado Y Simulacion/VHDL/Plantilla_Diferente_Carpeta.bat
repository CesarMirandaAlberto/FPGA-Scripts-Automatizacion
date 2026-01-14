::PLANTILLA CON FINES EDUCATIVOS Y PRACTIVOS
@echo off
echo Compilando Sumador de 4 bits con exhibidor 7 segmentos ........

ghdl -a "..\..\Fundamentos\Medio_Sumador.vhd"
ghdl -a "..\..\Fundamentos\Sumador_Completo.vhd"
ghdl -a "..\..\Fundamentos\DecodificadorBinario_Hexadecimal.vhd"
ghdl -a "Sumador4Bits_Exhibidor.vhd"
ghdl -a "Sumador4Bits_Exhibidor_TB.vhd"

echo Desarrollando testbench ............

ghdl -e Sumador4Bits_Exhibidor_TB

echo  Simulando .........
ghdl -r Sumador4Bits_Exhibidor_TB --vcd=SimulacionS4bd.vcd

echo ===== Simulacion Completa ======
echo Abriendo visualizador de ondas.....

gtkwave SimulacionS4bd.vcd
pause
