#!/bin/bash

# Comprobar que se han pasado los dos argumentos necesarios
if [ "$#" -ne 2 ]; then
    echo "Uso: $0 <asignatura> <nombre_ejercicio>"
    exit 1
fi

# Obtener los argumentos
ASIGNATURA="$1"
EJERCICIO="$2"

# Crear la carpeta de la asignatura si no existe
if [ ! -d "$ASIGNATURA" ]; then
    echo "Creando carpeta de la asignatura '$ASIGNATURA'..."
    mkdir -p "$ASIGNATURA"
else
    echo "La carpeta de la asignatura '$ASIGNATURA' ya existe."
fi

# Crear la carpeta del ejercicio dentro de la asignatura
EJERCICIO_PATH="$ASIGNATURA/$EJERCICIO"

if [ ! -d "$EJERCICIO_PATH" ]; then
    echo "Creando carpeta del ejercicio '$EJERCICIO' dentro de '$ASIGNATURA'..."
    mkdir -p "$EJERCICIO_PATH"
    echo "Carpeta creada correctamente: $EJERCICIO_PATH"
else
    echo "La carpeta del ejercicio '$EJERCICIO' ya existe en '$ASIGNATURA'."
fi
