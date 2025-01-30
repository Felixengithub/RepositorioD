package UD4.EjerciciosUD1.Relacion3;

import java.util.Scanner;

public class Ejercicio39 {
    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        int numeroInicial, siguienteNumero = 0;

        System.out.println("Introduce el numero inicial:");
        numeroInicial = miScanner.nextInt();

        while (numeroInicial != siguienteNumero) {
            System.out.println("Introduce un numero:");
            siguienteNumero = miScanner.nextInt();

            if (siguienteNumero > numeroInicial) {
                System.out.print("El número que debes introducir es menor. ");
            }else if (siguienteNumero < numeroInicial){
                System.out.print("El número que debes introducir es mayor. ");
            }
        }

    }
}
