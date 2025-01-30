#!/bin/bash
password=$1
contrasenia=1234
while [ $password -ne $contrasenia ]; do
    echo "Contraseña incorrecta"
    read -p "Intenta de nuevo: " password
done
echo "Contraseña correcta"
