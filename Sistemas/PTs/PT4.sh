#!/bin/bash

# Verificar que se pasaron los argumentos necesarios
if [ $# -lt 2 ]; then
    echo "Uso: $0 <nombre> <apodo>"
    exit 1
fi

# Obtener los argumentos
NOMBRE=$1
APODO=$2

# Mensaje de bienvenida
echo "Bienvenido a la Configuración de Sistema Linux"
echo "¡Hola, $NOMBRE! También conocido como \"$APODO\"."

# Creación de usuarios iniciales
echo "Creando usuarios iniciales..."
useradd -m "admin1"
echo "Usuario 'admin1' creado."
useradd -m "dev1"
echo "Usuario 'dev1' creado."
useradd -m "design1"
echo "Usuario 'design1' creado."

# Creación de directorio compartido
DIRECTORIO="/proyectos"
mkdir "$DIRECTORIO"
chmod 770 "$DIRECTORIO"
echo "Directorio '$DIRECTORIO' creado y permisos asignados."

# Array de directorios compartidos
DIRECTORIOS_COMPARTIDOS=("proyecto1" "proyecto2" "proyecto3" "proyecto4" "proyecto5")

# Inicialización de la condición de salida y el contador de opciones seleccionadas
salir=false
contador_opciones=0

# Menú interactivo
while [ "$salir" = false ]; do
    echo -e "\nMenú Principal:"
    echo "1. Mostrar el árbol de directorios desde la raíz"
    echo "2. Ver directorios creados y sus permisos"
    echo "3. Crear un nuevo usuario"
    echo "4. Mostrar un directorio del array predefinido de directorios compartidos"
    echo "5. Mostrar el usuario actual y su directorio personal"
    echo "6. Listar todos los elementos del array predefinido"
    echo "7. Salir"
    read -p "Selecciona una opción (1-7): " opcion

    contador_opciones=$((contador_opciones + 1))

    if [ "$opcion" -eq 1 ]; then
        tree /
    elif [ "$opcion" -eq 2 ]; then
        echo "Directorios creados y permisos:"
        ls -ld "$DIRECTORIO"
    elif [ "$opcion" -eq 3 ]; then
        read -p "Ingresa el nombre del nuevo usuario: " nuevo_usuario
        useradd -m "$nuevo_usuario"
        echo "Usuario '$nuevo_usuario' creado."
        passwd "$nuevo_usuario"  # Solicitar una contraseña para el nuevo usuario
        echo "Contraseña configurada para el usuario '$nuevo_usuario'."

    elif [ "$opcion" -eq 4 ]; then
        directorio_aleatorio=${DIRECTORIOS_COMPARTIDOS[$RANDOM % ${#DIRECTORIOS_COMPARTIDOS[@]}]}
        echo "Directorio seleccionado del array: $directorio_aleatorio"
    elif [ "$opcion" -eq 5 ]; then
        echo "Usuario actual: $USER"
        echo "Directorio personal: $HOME"
    elif [ "$opcion" -eq 6 ]; then
        echo "Elementos del array predefinido:"
        for elemento in "${DIRECTORIOS_COMPARTIDOS[@]}"; do
            echo "$elemento"
        done
    elif [ "$opcion" -eq 7 ]; then
        echo "Has seleccionado $contador_opciones opciones del menú. Gracias por usar el configurador de sistema. ¡Hasta pronto!"
        salir=true
    else
        echo "Opción no válida. Por favor, selecciona una opción entre 1 y 7."
        contador_opciones=$((contador_opciones - 1)) # No contar opciones inválidas
    fi
done
