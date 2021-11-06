#!/bin/bash

echo -n "Instalar programa? [s/n]: "
read resultado
echo "Tu mensaje es: $resultado"

if [[ $resultado == [sS] ]]; then
    echo "Instalando programa..."
elif [[ $resultado == [nN] ]]; then
    echo "No se instaló ningún programa"
else
    echo "Opcion incorrecta"
fi