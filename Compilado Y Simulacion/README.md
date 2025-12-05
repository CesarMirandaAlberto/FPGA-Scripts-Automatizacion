# 💻 Automatización de Compilado Y Simulación (VHDL/Verilog)
El presente repositorio contiene las plantillas para automatizar el proceso de :
- Compilado
- Elaboración
- Simulación
- Visualización del waveform.

# ⚠️ Contexto de las plantillas del repositorio 
Para ambos lenguajes existen dos variantes dado que los proyectos pueden tener organización diferente:

1.- Módulos en misma carpeta <br>
2.- Módulos en diferente carpeta <br>
El proceso es completamente similar, sin embargo cambia la forma en que se indican las rutas. <br>

# 📂 Módulos en la mismca carpeta
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

# MODULOS EN DIFERENTE CARPETA 
Se ejemplifica el caso de un diseño donde contiene módulos instanciados y estos se encuentran en diferentes carpetas como ejemplificando el miniproyecto Sumador4Bits_Display7s. <br>

Para evitar duplicar los módulos y tenerlos repetidos en diferentes carpetas es necesario cambiar la ruta de los módulos para el compilado ej. <br>

* 📂 VHDL <br>
    * |---📂 Basico<br>
           * |--- Compuertas_Logicas.vhd <br>
           * |--- DecodificadorBinario_Hexadecimal.vhd <br>
           * |--- Medio_Sumador.vhd <br>
           * |--- Sumador_Completo.vhd <br>
           * |--- Sumador4_Bits.vhd <br>
    * |---📂 Miniproyectos
           *  |---📂 Miniproyectos
            *       |---📂 Sumador 4 Bits Display 7 Segmentos
                *      |  Sumador4Bits_Exhibidor.vhd
            
* La estructura del módulo Sumador4Bits_Display7s <br>
    * |--- DecodificadorBinario_Hexadecimal.vhd <br>
    * |--- Medio_Sumador.vhd <br>
    * |--- Sumador_Completo.vhd <br>
    * |--- Sumador4_Bits.vhd <br>

Para que el módulo Sumador4Bits_Display7s pueda ser compilado es necesario que todos los módulos de la estructura que se instancian deben ser compilados antes del Sumador4Bits_Display7s dado que estos módulos no se encuentran en la misma carpeta se debe especificar de la siguiente manera. <br>
ghdl -a "..\..\Fundamentos\Medio_Sumador.vhd" <br>
..\ ..\ Especifica la cantida de veces que el compilador tiene que "salir" de la carpeta donde se encuentra el módulo principal. <br> <br>
\Fundamentos\Medio_Sumador.vhd Especifica la carpeta y nombre del módulo a compilar. <br> <br>
Esta misma lógica aplica para iverilog y ghdl solo modificando los comandos.
