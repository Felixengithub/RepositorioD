package Relacion3;

import java.util.Scanner;

public class Ejercicio44 {
    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        int numeroUsuario, cifrasRestantes, cifraActual, producto = 1;

        System.out.println("Introduce un numero:");
        numeroUsuario = miScanner.nextInt();

        cifrasRestantes = numeroUsuario;

        while (cifrasRestantes != 0) { 
            cifraActual = cifrasRestantes % 10;
            cifrasRestantes /= 10;

            producto *= cifraActual;
        }

        System.out.println("Las cifras de " + numeroUsuario + " multiplican " + producto);
    }
}
