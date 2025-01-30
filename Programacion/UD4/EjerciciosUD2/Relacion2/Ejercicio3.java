package UD4.EjerciciosUD2.Relacion2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Ejercicio3 {

    public static void main(String[] args) {

        Scanner miScanner = new Scanner(System.in);

        String[] productosIniciales = { "Manzanas", "Plátanos", "Leche", "Pan", "Huevos", "Azúcar", "Harina", "Arroz", "Pasta", "Café" };
        ArrayList<String> listaProductos = new ArrayList<String>(Arrays.asList(productosIniciales));

        Double[] preciosIniciales = { 1.20, 0.80, 1.50, 1.00, 2.00, 1.10, 0.90, 0.70, 1.30, 3.00};
        ArrayList<Double> listaPrecios = new ArrayList<Double>(Arrays.asList(preciosIniciales)); 

        String productoUsuario = "";
        int cantidadProductoUsuario, indiceProducto;
        double subTotal, total = 0;

        while ( !productoUsuario.equals("FIN")) { 

            System.out.println("Introduce el nombre del producto:");
            productoUsuario = miScanner.nextLine();
            indiceProducto = listaProductos.indexOf(productoUsuario); // Si indexOf() devuelve -1 significa que el producto no está en la lista

            if (!productoUsuario.equals("FIN") && indiceProducto != -1) {
                System.out.println("Introduce la cantidad comprada:");
                cantidadProductoUsuario = miScanner.nextInt();
                miScanner.nextLine();

                subTotal = listaPrecios.get(indiceProducto) * cantidadProductoUsuario;
                total += subTotal;

                System.out.println(productoUsuario + " - " + cantidadProductoUsuario + ": " + subTotal + "€");
            }
            
        }

        System.out.println("Total: " + total + "€");

    }
}
