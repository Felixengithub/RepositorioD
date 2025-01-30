#!/bin/bash
# Este script calcula cuántos dulces se reparten y cuántos sobran.

dulces_totales=50 
invitados=8       

dulces_por_persona=$((dulces_totales / invitados))
sobrantes=$((dulces_totales % invitados))

echo "A cada invitado le corresponden $dulces_por_persona dulces."
echo "Sobran $sobrantes dulces."
