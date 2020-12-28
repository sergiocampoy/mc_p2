#!/bin/bash

echo $1

bin/primero < ejemplos/$1.cc > tmp/$11.cc
bin/segundo < tmp/$11.cc > tmp/$12.cc
bin/tercero < tmp/$12.cc > tmp/$13.cc
bin/cuarto  < tmp/$13.cc > resultado/$1.cc

#tmp/ejemplo_compacto.cc : bin/compactador
#	bin/compactador < ejemplos/ejemplo.cc > tmp/ejemplo_compacto.cc

#tmp/ejemplo_espaciado.cc : tmp/ejemplo_compacto.cc
#	bin/espaciador < tmp/ejemplo_compacto.cc > tmp/ejemplo_espaciado.cc

#resultado/ejemplo.cc : tmp/ejemplo_espaciado.cc
#	bin/tabulador < tmp/ejemplo_espaciado.cc > resultado/ejemplo.cc