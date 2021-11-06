#!/bin/bash

error(){
    echo $1
    exit 1
}

# prefijo directorio

if [ $# -ne 2 ]; then
    error "Uso: script prefijo ruta"
fi

if [ ! -d $2 ]; then
    error "Error: el directorio no existe"
fi

total=0
for f in `ls $2`; do 
    name="$2/$f"
    new_name="$2/$1$f"
    mv $name $new_name
    echo "$name -> $new_name" | tr -s /
done

# -a and
# -o or
# -gt Greater than
# -ge Greater or equal
# -lt Lower than
# -le Lower or equal
# -eq Equal
# -ne Not equal