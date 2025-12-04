# 💻 Compilado Y Simulación 🧪
El presente repositorio contiene las plantillas para automatizar el proceso de compilado y simulación verilog y vhdl utilizando los software iverilog y ghdl respectivamente y visualizando el waveform con gtkwave.

# ⚠️ CONTEXTO DE PLANTILLAS ⚠️
Para ambos lenguejes se presentan dos plantillas de automatización diferentes <br>
1.- Módulos en misma carpeta <br>
2.- Módulos en diferente carpeta <br>
si bien el proceso es completamente similar, cambia un poco al momento en que se necesita utilizar una de estas plantillas, a continuación se presentan la explicación de las diferencias entre una y otra. <br>

# MODULOS EN MISMA CARPETA 
Ejemplificaremos este caso con el sumador de 4 bits que se encuentra en los repos de vhdl y verilog con la misma organización.

* 📂 VHDL <br>
    * |---📂 Basico<br>
           * |--- Compuertas_Logicas.vhd <br>
           * |--- Multiplexor4a1.vhd <br>
           * |--- Medio_Sumador.vhd <br>
           * |--- Sumador_Completo.vhd <br>
           * |--- Sumador4_Bits.vhd <br>
            
* La estructura del módulo Sumador4_Bits <br>
    * |--- Medio_Sumador.vhd <br>
    * |--- Sumador_Completo.vhd <br>
    * |--- Sumador4_Bits.vhd <br>
para que pueda compilar ghdl correctamente el módulo Sumador4_Bits.vhd es necesario que compile en orden todos los módulos instanciados en orden de la estructura del diseño dado que en este caso todos los módulos se encuentran dentro de la misma carpeta no es necesario modificar la ruta y comandos de compilado por lo que en este caso pueden ejecutarse tal cual se presenta en  el readme de 🔗 [vhdl Comandos para compilar y simular](https://github.com/CesarMirandaAlberto/Vhdl#--pruebas-en-simulaci%C3%B3n)  y se ingrensan tal cual en la plantilla 1.