package EjerciciosUD1.Relacion1;
// (aproximadamente el 16.5% de su peso en la Tierra).

import java.util.Scanner;

public class Ejercicio5 {
    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);
        double pesoEnLaTierra;
        double pesoEnLaLuna;

        System.out.println("Introduzca su peso: ");
        pesoEnLaTierra = miScanner.nextDouble();
        
        pesoEnLaLuna = pesoEnLaTierra * 0.165;
        System.out.println("En la Luna pesarías: " + pesoEnLaLuna + "kg.");
        
        miScanner.close();
    }
}

/* En JAVASCRIPT
 *  
 * let pesoEnLaTierra = prompt("Introduzca su peso: ")
 * pesoEnLaTierra = Number(pesoEnLaTierra)
 * 
 * let pesoEnLaLuna = pesoEnLaTierra * 0.165 // 16.5 / 100 = 0.165
 * 
 *console.log("En la Luna pesarías: " + pesoEnLaLuna + "kg")
 */
