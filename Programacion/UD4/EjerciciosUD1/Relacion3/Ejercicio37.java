package UD4.EjerciciosUD1.Relacion3;

import java.util.Scanner;

public class Ejercicio37 {
    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        String palabraInicial, siguientePalabra = null;

        System.out.println("Introduce la palabra inicial:");
        palabraInicial = miScanner.nextLine();

        while (!palabraInicial.equals(siguientePalabra)) {
            System.out.println("Introduce una palabra:");
            siguientePalabra = miScanner.nextLine();
        }

    }
}
