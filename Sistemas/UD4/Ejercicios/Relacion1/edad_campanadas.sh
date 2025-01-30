#!/bin/bash
# Este script evalúa si alguien puede quedarse despierto hasta las campanadas.

edad=$1  # La edad se pasa como argumento al script.

if [ $edad -ge 10 ]; then
  echo "Puedes quedarte despierto hasta las campanadas."
else
  echo "Debes ir a dormir antes de las campanadas."
fi



#

# if [ $1 -ge 10 ]; then
#   echo "Puedes quedarte despierto hasta las campanadas."
# else
#   echo "Debes ir a dormir antes de las campanadas."
# fi