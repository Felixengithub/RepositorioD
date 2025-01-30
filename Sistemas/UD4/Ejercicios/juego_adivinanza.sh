#!/bin/bash

# Función para mostrar el mensaje de bienvenida
mostrar_bienvenida() {
    clear
    echo "Bienvenido al Juego de Adivinanza"
    echo "Reglas: El sistema generará un número entre 1 y 100. Tú deberás adivinarlo."
    echo "Si quieres salir del juego, escribe 'salir'."
}

# Función para jugar una partida
jugar_partida() {
    # Generar número aleatorio
    numero_objetivo=$((RANDOM % 100 + 1))
    intentos=0
    salir=false

    # Bucle del juego
    while [ "$salir" = false ]; do
        echo -e "\nIngresa un número entre 1 y 100 (o 'salir' para terminar):"
        read entrada

        if [ "$entrada" == "salir" ]; then
            echo "Gracias por jugar. ¡Hasta pronto!"
            salir=true
        elif [ "$entrada" -gt 0 ] && [ "$entrada" -le 100 ]; then
            # Incrementar el contador de intentos
            intentos=$((intentos + 1))

            # Comparar entrada con el número objetivo
            if [ "$entrada" -lt "$numero_objetivo" ]; then
                echo "El número es mayor que $entrada."
            elif [ "$entrada" -gt "$numero_objetivo" ]; then
                echo "El número es menor que $entrada."
            else
                echo "¡Felicidades! Has adivinado el número $numero_objetivo en $intentos intentos."
                salir=true
            fi
        else
            echo "Por favor, ingresa un número válido entre 1 y 100."
        fi
    done
}

# Mostrar bienvenida y comenzar el bucle principal del juego
seguir_jugando=true
while [ "$seguir_jugando" = true ]; do
    mostrar_bienvenida
    jugar_partida

    echo -e "\n¿Quieres volver a jugar?"
    echo "1. Sí"
    echo "2. No"
    read opcion

    if [ "$opcion" -eq 1 ]; then
        # Volver a jugar
        seguir_jugando=true
    elif [ "$opcion" -eq 2 ]; then
        echo "Gracias por jugar. ¡Hasta pronto!"
        seguir_jugando=false
    else
        echo "Opción inválida. Terminando el juego."
        seguir_jugando=false
    fi

done
