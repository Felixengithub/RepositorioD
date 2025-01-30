package EjerciciosUD1.Relacion2;

import java.util.Scanner;

public class Ejercicio9 {

    public static void main(String[] args) {
        int numeroIntroducido = 0;
        int decenas, unidades, sumaDigitos;

        Scanner miScanner = new Scanner(System.in);
        
        while (numeroIntroducido < 10 || numeroIntroducido > 99) { 
            System.out.println("Introduce un número de dos cifras:");
            numeroIntroducido = miScanner.nextInt();

            // Si el número introducido es negativo, lo hago positivo
            if(numeroIntroducido < 0){
                numeroIntroducido = numeroIntroducido * -1;
            }
                
        }
        
        decenas = numeroIntroducido / 10; // Como los dos números son enteros, la división es entera
        unidades = numeroIntroducido % 10;

        sumaDigitos = decenas + unidades;

        System.out.println("La suma de las cifras de " + numeroIntroducido + " es " + sumaDigitos);

    }

}

// En JAVASCRIPT
// let numero = prompt("Introduzca un número de dos dígitos:")
// numero = Number(numero)

// if( numero >= 10 && numero <= 99 ){
//     let digitoDecenas = parseInt(numero/10)
//     let digitoUnidades = numero%10
//     let suma = digitoDecenas + digitoUnidades
//     console.log("El número tiene dos cifras, la suma de sus cifras es: " + suma)
// }else{
//     console.log("El número no tiene dos cifras")
// }