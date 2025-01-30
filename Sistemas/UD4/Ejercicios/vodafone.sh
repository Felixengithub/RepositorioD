#!/bin/bash

# Función para consultar el saldo
consultar_saldo() {
    saldo=$((RANDOM % 51))
    echo "Tu saldo actual es: ${saldo} euros"
}

# Función para activar un bono de datos
activar_bono() {
    bonos=("1GB por 5 euros" "5GB por 15 euros" "10GB por 25 euros")
    echo -e "\nBonos disponibles:"
    for i in ${!bonos[@]}; do
        echo "$((i+1)). ${bonos[$i]}"
    done
    echo "Selecciona un bono (1-3):"
    read bono
    if [ "$bono" -eq 1 ]; then
        echo "Has activado el Bono 1GB por 5 euros."
    elif [ "$bono" -eq 2 ]; then
        echo "Has activado el Bono 5GB por 15 euros."
    elif [ "$bono" -eq 3 ]; then
        echo "Has activado el Bono 10GB por 25 euros."
    else
        echo "Opción inválida, por favor selecciona un bono válido."
    fi
}

# Función para hablar con soporte técnico
hablar_soporte() {
    echo "Describe tu problema a continuación:"
    read problema
    echo "Gracias por tu mensaje: '$problema'. Un agente te contactará pronto."
}

# Función para mostrar el menú principal
mostrar_menu() {
    echo -e "\nMenú Principal:"
    echo "1. Consultar saldo"
    echo "2. Activar un bono de datos"
    echo "3. Hablar con soporte técnico"
    echo "4. Salir"
    echo "Selecciona una opción (1-4):"
}

# Introducción y bienvenida
clear
echo "Bienvenido al Chatbot de Vodafone"
echo "¿Cómo te llamas?"
read nombre
echo "Hola, $nombre. ¿En qué puedo ayudarte hoy?"

# Variable de control para el bucle
continuar=true

# Menú principal
while [ "$continuar" = true ]; do
  mostrar_menu
  read opcion

  if [ "$opcion" -eq 1 ]; then
      # Consultar saldo
      consultar_saldo
  elif [ "$opcion" -eq 2 ]; then
      # Activar bono de datos
      activar_bono
  elif [ "$opcion" -eq 3 ]; then
      # Hablar con soporte técnico
      hablar_soporte
  elif [ "$opcion" -eq 4 ]; then
      # Salir
      echo "Gracias por usar el Chatbot de Vodafone. ¡Hasta pronto, $nombre!"
      continuar=false
  else
      echo "Opción inválida. Por favor selecciona una opción entre 1 y 4."
  fi

done
