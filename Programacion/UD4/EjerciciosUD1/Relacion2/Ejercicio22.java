package EjerciciosUD1.Relacion2;

// ### 22. **Determinar el ganador de un juego de piedra, papel o tijera**:

import java.util.Scanner;

//   - Pide a dos jugadores que ingresen "piedra", "papel" o "tijera" y determina el ganador según las reglas del juego:
//     - Piedra gana a tijera.
//     - Tijera gana a papel.
//     - Papel gana a piedra.
//     - Si ambos eligen lo mismo, es un empate.

public class Ejercicio22 {

    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        String opcionJugador1, opcionJugador2;
        boolean empate, ganaJugador1;

        System.out.println("Jugador1:");
        opcionJugador1 = leerValor(miScanner);

        System.out.println("Jugador2:");
        opcionJugador2 = leerValor(miScanner);

        empate = opcionJugador1.equals(opcionJugador2); // empate vale true si han introducido el mismo valor
        ganaJugador1 = (opcionJugador1.equals("piedra") && opcionJugador2.equals("tijera")) ||
                (opcionJugador1.equals("papel") && opcionJugador2.equals("piedra")) ||
                (opcionJugador1.equals("tijera") && opcionJugador2.equals("papel"));

        if (empate) {
            System.out.println("Empate");
        } else if (ganaJugador1) {
            System.out.println("Gana jugador 1");
        } else {
            System.out.println("Gana jugador 2");
        }
    }

    public static String leerValor(Scanner miScanner) {
        String opcion = "";

        while (!opcion.equals("tijera") && !opcion.equals("piedra") && !opcion.equals("papel")) {
            opcion = miScanner.nextLine();
        }

        return opcion;
    }
}
