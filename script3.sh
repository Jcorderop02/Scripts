#!/bin/bash

echo -n "Escribe un número: "
read valor

if [ $valor -ge 5 -a  $valor -le 10 ]; then
    echo "Tu número es esta en el rango [5, 10]"
else
    echo "Tu número no esta en el rango [5, 10]"
fi

# -a and
# -o or
# -gt Greater than
# -ge Greater or equal
# -lt Lower than
# -le Lower or equal
# -eq Equal
# -ne Not equal