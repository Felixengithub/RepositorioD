package UD4;

import java.util.ArrayList;
import java.util.Arrays;

public class EjemplosArrays {
    public static void main(String[] args) {

        Integer[] array = {1, 2, 3, 4, 5};
        ArrayList<Integer> listaNumeros = new ArrayList<Integer>(Arrays.asList(array));

        // push
        listaNumeros.add(6);
        listaNumeros.add(7);
        listaNumeros.add(8);

        // pop
        listaNumeros.removeLast();
        listaNumeros.remove(listaNumeros.size() - 1);

        // shift
        listaNumeros.removeFirst();
        listaNumeros.remove(0);

        // unshift
        listaNumeros.add(0, 9);
        listaNumeros.addFirst(10);

        System.out.println(listaNumeros); // [?????]

        for (int numero : listaNumeros) {
            System.out.println(numero);
        }

        for (int i = 0; i < listaNumeros.size(); i++) {
            int numero = listaNumeros.get(i);
            System.out.println(numero);
        }
    }
}
