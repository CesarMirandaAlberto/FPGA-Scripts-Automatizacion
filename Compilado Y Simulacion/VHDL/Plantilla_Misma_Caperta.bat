::PLANTILLA CON FINES EDUCATIVOS Y PRACTIVOS
@echo off
echo Compilando Sumador de 4 bits ........

ghdl -a Medio_Sumador.vhd
ghdl -a Sumador_Completo.vhd
ghdl -a Sumador4_Bits.vhd
ghdl -a Sumador4_Bits_TB.vhd

echo Desarrollando testbench ............

ghdl -e Sumador4_Bits_TB

echo  Simulando .........
ghdl -r Sumador4_Bits_TB --vcd=SimulacionS4b.vcd

echo ===== Simulacion Completa ======
echo Abriendo visualizador de ondas.....

gtkwave SimulacionS4b.vcd
pause