#!/bin/bash

echo -n "Escribe un número: "
read valor

if [[ $valor -gt 5 ]]; then
    echo "Tu número es mayor que 5"
else
    echo "Tu número es menor o igual a 5"
fi

# -gt Greater than
# -ge Greater or equal
# -lt Lower than
# -le Lower or equal
# -eq Equal
# -ne Not equal