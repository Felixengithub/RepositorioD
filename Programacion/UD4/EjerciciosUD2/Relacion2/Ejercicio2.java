package UD4.EjerciciosUD2.Relacion2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio2 {
    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        String[] jugadoresIniciales = { "Jugador1", "Jugador2", "Jugador3", "Jugador4", "Jugador5" };
        ArrayList<String> listaJugadores = new ArrayList<String>(Arrays.asList(jugadoresIniciales));

        Integer[] puntuacionesIniciales = { 120, 200, 150, 180, 220 };
        ArrayList<Integer> puntuaciones = new ArrayList<Integer>(Arrays.asList(puntuacionesIniciales));

        int opcion = 0;

        while (opcion != 3) {
            System.out.println("1. Añadir jugador \n2. Ver jugadores \n3. Salir");
            opcion = miScanner.nextInt();
            miScanner.nextLine(); // Para limpiar el buffer de entrada después del nextInt()

            if (opcion == 1) {
                System.out.println("Introduce el nombre del jugador");
                String nuevoJugador = miScanner.nextLine();
                listaJugadores.add(nuevoJugador);
                listaJugadores.removeFirst();

                System.out.println("Introduce la puntuación del jugador");
                int puntuacionNuevoJugador = miScanner.nextInt();
                miScanner.nextLine(); // Para limpiar el buffer de entrada después del nextInt()
                
                puntuaciones.add(puntuacionNuevoJugador);
                puntuaciones.removeFirst();

            } else if (opcion == 2) {
                System.out.println("PUNTUACIONES:");
                for (int i = 0; i < listaJugadores.size(); i++) {
                    System.out.println(listaJugadores.get(i) + " : " + puntuaciones.get(i));
                }
            }

        }
    }
}
