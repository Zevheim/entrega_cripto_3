#!/bin/bash

sed  '/^[0-9]/ d' rockyou.txt > salida.dic #Eliminar contraseña que comience con algún número
sed  -i 's/^\(.\)/\U\1/' salida.dic        #Hacer mayúscula la primera letra
awk '{print $0 "0"}' salida.dic > temporal.dic && mv temporal.dic salida.dic #agregar un 0 al final de cada linea.


cantidad=$(wc -l < salida.dic)             #contar cantidad de lineas(contraseñas)
echo "hay" $cantidad "contraseñas en el archivo" #print


