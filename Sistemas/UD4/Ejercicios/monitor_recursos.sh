#!/bin/bash

# Mostrar mensaje de bienvenida
echo "Bienvenido al Monitor de Recursos del Sistema"
echo "Este script permite monitorear el estado del sistema seleccionando opciones del menú."


mkdir dir1,dir2

# Bucle principal para mostrar el menú y ejecutar opciones
seguir=true
while $seguir; do
    echo -e "\nMenú Principal:"
    echo "1. Ver uso de CPU"
    echo "2. Ver uso de memoria RAM"
    echo "3. Ver espacio en disco"
    echo "4. Ver procesos activos"
    echo "5. Ver usuarios conectados"
    echo "6. Salir"
    echo -n "Selecciona una opción (1-6): "
    read opcion

    if [ "$opcion" -eq 1 ]; then
        # Uso de CPU
        echo -e "\nUso de CPU:"
        top -bn1 | grep "%Cpu(s)" | awk '{print "Uso actual: " $2 "%"}'
    elif [ "$opcion" -eq 2 ]; then
        # Uso de Memoria RAM
        echo -e "\nUso de Memoria RAM:"
        free -h | awk '/Mem:/ {print "Total: "$2 " Usada: "$3 " Disponible: "$4}'
    elif [ "$opcion" -eq 3 ]; then
        # Espacio en Disco
        echo -e "\nEspacio en Disco:"
        df -h | grep -v tmpfs
    elif [ "$opcion" -eq 4 ]; then
        # Procesos Activos
        echo -e "\nProcesos Activos (Top 5 por uso de CPU):"
        ps aux --sort=-%cpu | head -n 6
    elif [ "$opcion" -eq 5 ]; then
        # Usuarios Conectados
        echo -e "\nUsuarios Conectados:"
        who
    elif [ "$opcion" -eq 6 ]; then
        # Salir del script
        echo "Gracias por usar el monitor de recursos. ¡Hasta pronto!"
        seguir=false
    else
        # Entrada no válida
        echo "Opción inválida. Por favor, selecciona una opción válida (1-6)."
    fi
done
