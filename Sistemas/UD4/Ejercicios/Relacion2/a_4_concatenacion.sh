#!/bin/bash
nombres=("Juan" "María" "Pedro")
apellidos=("Pérez" "López" "García")

for ((i=0; i<${#nombres[@]}; i++)); do
    completo[i]="${nombres[i]} ${apellidos[i]}"
done
echo "Nombres completos: ${completo[@]}"
