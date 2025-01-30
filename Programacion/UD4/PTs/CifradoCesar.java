import java.util.ArrayList;
import java.util.Scanner;

public class CifradoCesar {
    public static final int DESPLAZAMIENTO = 3; // Número de posiciones de desplazamiento

    public static void main(String[] args) {
        Scanner miScanner = new Scanner(System.in);

        // Generamos el alfabeto.
        ArrayList<Character> alfabeto = new ArrayList<>();
        for (char c = 'A'; c <= 'Z'; c++) {
            alfabeto.add(c);
        }

        // Generamos el alfabeto desplazado.
        ArrayList<Character> alfabetoDesplazado = generarAlfabetoDesplazado(alfabeto, DESPLAZAMIENTO);

        // Ejemplo de impresión
        System.out.println("Alfabeto original: " + alfabeto);
        System.out.println("Alfabeto desplazado: " + alfabetoDesplazado);
        
        String opcion;
        String mensaje = "";
        String mensajeCifrado = "";
        boolean salir = false;

        while (!salir){
            System.out.println("¿Qué quieres hacer? \n 1. Cifrar. \n 2. Descifrar. \n 3. Salir. ");
            opcion = miScanner.nextLine();

            if (opcion.equalsIgnoreCase("Cifrar")){
                System.out.println("Dime el mensaje: ");
                mensaje = miScanner.nextLine().toUpperCase();
                mensajeCifrado = cifrarMensaje(alfabeto,alfabetoDesplazado,mensaje);
                System.out.println("El mensaje cifrado es: " + mensajeCifrado);
            } else if (opcion.equalsIgnoreCase("Descifrar")){
                System.out.println("Dime el mensaje cifrado: ");
                mensajeCifrado = miScanner.nextLine().toUpperCase();
                mensaje = cifrarMensaje(alfabetoDesplazado,alfabeto,mensajeCifrado);
                System.out.println("El mensaje descifrado es: " + mensaje);
            } else if (opcion.equalsIgnoreCase("Salir")){
                System.out.println("Adios!");
            } 
        }
        
        
        miScanner.close();
    }

    // Función que debes implementar
    public static ArrayList<Character> generarAlfabetoDesplazado(ArrayList<Character> alfabetoOriginal, int desplazamiento) {
        ArrayList<Character> desplazado = new ArrayList<>();
        /*
        for(int i = DESPLAZAMIENTO; i < alfabetoOriginal.size(); i++){
            desplazado.add(alfabetoOriginal.get(i));
        }
        for(int i = 0; i < DESPLAZAMIENTO; i++){
            desplazado.add(alfabetoOriginal.get(i));
        }
        */
        int tama = alfabetoOriginal.size();
        for (int i = 0; i < tama ; i++){
            desplazado.add(alfabetoOriginal.get((i+DESPLAZAMIENTO)%tama));
            // System.out.println("Letra original por la que vamos: " + alfabetoOriginal.get((i)));
            // System.out.println("Letra desplazado por la que vamos: " + desplazado.get((i)));
            // System.out.println("Posición en el original: " + i);
            // System.out.println("Posición en el original de la letra desplazada: " + (i+DESPLAZAMIENTO)%tama);
        }
        return desplazado;
    }

    //TODO
    public static String cifrarMensaje(ArrayList<Character> alfabetoDePartida, ArrayList<Character> alfabetoFinal, String mensaje){
        String mensajeCifrado = "";

        for (int i = 0; i < mensaje.length(); i++) {
            // Obtenemos la posición en la que está cada letra del mensaje en el alfabeto original.
            int posicion = alfabetoDePartida.indexOf(mensaje.charAt(i));
            // Añadimos al mensaje cifrado la letra que está en esa posición en el alfabeto alfabetoFinal.
            mensajeCifrado += alfabetoFinal.get(posicion);
        }
        return mensajeCifrado;
    }
    /*
    //TODO
    public static String descifrarMensaje(ArrayList<Character> alfabetoOriginal, ArrayList<Character> desplazado, String mensaje){
        String mensajeDescifrado = "";

        for (int i = 0; i < mensaje.length(); i++) {
            // Obtenemos la posición en la que está cada letra del mensaje en el alfabeto original.
            int posicion = desplazado.indexOf(mensaje.charAt(i));
            // Añadimos al mensaje cifrado la letra que está en esa posición en el alfabeto desplazado.
            mensajeDescifrado += alfabetoOriginal.get(posicion);
        }
        
        return mensajeDescifrado;
    }
    */
}