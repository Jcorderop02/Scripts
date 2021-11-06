#!/bin/bash


if [ ! -d $1 ]; then
    echo "Error: el directorio no existe"
    exit 1
fi

total=0
for f in `ls $1`; do 
    name="$1/$f"
    if [ -f $name ]; then
        bytes=`ls -l $name | cut -d " " -f 5`
        echo "Fichero $name ocupa $bytes" | tr -s /
        (( total += $bytes ))
    fi
done

echo -e "\nEl total es: $total"

# -a and
# -o or
# -gt Greater than
# -ge Greater or equal
# -lt Lower than
# -le Lower or equal
# -eq Equal
# -ne Not equal