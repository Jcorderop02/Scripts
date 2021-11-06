#!/bin/bash

#         nombre extensión numero ruta
# ./script6.sh fichero txt 5 /Scripts

error(){
    echo $1
    exit 1
}

if [ $# -ne 4 ]; then
    error "Uso: script nombre extensión numero ruta"
fi

if [ ! -d $4 ]; then
    error "Error: el directorio no existe"
fi

if [ $3 -lt 1 ]; then
    error "El número de ficheros no puede ser menor que 1"
fi

for(( i=1; i<=$3; i++)); do
    name="$4/$1$i.$2"
    if [ $i -lt 10 ]; then
        name="$4/$10$i.$2"
    fi
    touch $name
    echo "Creando fichero/s $name" | tr -s /
done

# -a and
# -o or
# -gt Greater than
# -ge Greater or equal
# -lt Lower than
# -le Lower or equal
# -eq Equal
# -ne Not equal