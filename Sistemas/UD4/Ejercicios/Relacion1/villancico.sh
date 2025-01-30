#!/bin/bash
# Este script selecciona aleatoriamente un villancico de una lista.

villancicos=("Noche de Paz" "Los Peces en el Río" "Campana sobre Campana" "Mi Padre es un Elfo" "Blanca Navidad")

total_villancicos=${#villancicos[@]}  # Número total de villancicos.
indice=$((RANDOM % total_villancicos))  # Genera un índice aleatorio.
echo "Indice: $indice"
villancico_seleccionado=${villancicos[indice]}  # Selecciona el villancico.

echo "El villancico seleccionado es: $villancico_seleccionado"
