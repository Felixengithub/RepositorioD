package EjerciciosUD1.Relacion1;

import java.util.Scanner;

// Pide al usuario cuántos caramelos tiene y cuántos niños hay. 
// Calcula cuántos caramelos recibe cada niño y cuántos sobran.

public class Ejercicio9 {

    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);
        int numeroDeCaramelos;
        int numeroDeNinios;
        int numeroDeCaramelosPorNinio;
        int numeroCaramelosSobran;

        System.out.println("¿Cuántos caramelos tienes?");
        numeroDeCaramelos = miScanner.nextInt();
        System.out.println("¿Cuántos niños hay?");
        numeroDeNinios = miScanner.nextInt();

        numeroDeCaramelosPorNinio = numeroDeCaramelos/numeroDeNinios;
        numeroCaramelosSobran = numeroDeCaramelos%numeroDeNinios;

        System.out.println("El número de caramelos por niño es: " + numeroDeCaramelosPorNinio);
        System.out.println("El número de caramelos que sobran es: " + numeroCaramelosSobran);

    }
    
}

/* JAVA SCRIPT
 * 
 * let numeroDeCaramelos = prompt("¿Cuántos caramelos tienes?")
 * let numeroDeNinios = prompt("¿Cuántos niños hay?")
 * 
 * numeroDeCaramelos = Number(numeroDeCaramelos)
 * numeroDeNinios = Number(numeroDeNinios)
 * 
 * let caramelosPorNinio = parseInt(numeroDeCaramelos / numeroDeNinios) //parseInt transforma a número entero
 * let restoDeCaramelos = numeroDeCaramelos % numeroDeNinios
 * 
 * console.log("A cada niño le tocan " + caramelosPorNinio + " caramelos y han sobrado " + restoDeCaramelos)
 */