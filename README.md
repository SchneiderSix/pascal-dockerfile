# pascal-dockerfile
Linux environment to test Free Pascal Compiler (FPC) 3.0.4
# Dockerfile used to test Free Pascal Compiler (FPC) 3.0.4
## Compilation
-Co -Cr son opciones que le indican al compilador que debe generar el control de rangos y desborde de operaciones aritméticas.
-gl hace que el compilador en caso de error en tiempo de ejecución, indique la línea del código fuente donde se produce dicho error.
-Miso es una opción que hace que el compilador se aproxime más al Pascal estándar (el del libro).
fpc -Co -Cr -Miso -gl x.pas
