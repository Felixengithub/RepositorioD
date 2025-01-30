package UD4.EjerciciosUD1.Relacion3;

import java.util.Scanner;

public class Ejercicio10 {

    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        int numero1, numero2;

        System.out.println("Introduce el primer número");
        numero1 = miScanner.nextInt();

        System.out.println("Introduce el segundo número");
        numero2 = miScanner.nextInt();

        if (numero1 < numero2) {
            imprimirRangoEnteros(numero1, numero2);
        } else {
            imprimirRangoEnteros(numero2, numero1);
        }

    }

    public static void imprimirRangoEnteros(int numeroInicio, int numeroFin) {
        for (int i = numeroInicio; i <= numeroFin; i++) {
            System.out.println(i);
        }
    }
}
