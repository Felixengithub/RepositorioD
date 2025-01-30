package UD4.EjerciciosUD2.Relacion1;

import java.util.ArrayList;
import java.util.Arrays;

public class Ejercicio13 {
    public static void main(String[] args) {

        // Character[] listaLetrasEstatica = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'};
        // ArrayList<Character> listaLetras = new ArrayList<Character>(Arrays.asList(listaLetrasEstatica));

        //ARRAY DE LETRAS
        String[] listaLetrasEstatica = {"a", "b", "c", "d", "e", "f", "g", "h"};
        ArrayList<String> listaLetras = new ArrayList<String>(Arrays.asList(listaLetrasEstatica));
        
        //ARRAY VACÍO
        ArrayList<String> listaLetrasInvertido = new ArrayList<String>();

        System.out.println(listaLetras);

        for (int i = listaLetras.size() - 1; i >= 0; i--) {
            String letraActual = listaLetras.get(i);
            listaLetrasInvertido.add(letraActual);
        }

        System.out.println(listaLetrasInvertido);

        // OPCIÓN MUCHO MENOS EFICIENTE:
        // for (String letraActual : listaLetras) {
        //     listaLetrasInvertido.addFirst(letraActual);
        // }

    }
}
