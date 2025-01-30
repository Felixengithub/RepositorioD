package UD4.EjerciciosUD2;

import java.util.ArrayList;
import java.util.Scanner;

public class PT2 {

    static public Scanner miScanner = new Scanner(System.in);

    // CONSTANTES
    static final int tamanioDentadura = 10;
    static final int maximoDientesEnfermos = 5;

    static final int dienteSano = 0;
    static final int dienteEnfermo = 1;

    static final String simboloDienteSano = "A";    
    static final String simboloDienteEnfermo = "X";
    static final String simboloDienteSeleccionado = "_";

    // VARIABLES
    static public int cantidadDientesSanos = tamanioDentadura;
    static public int cantidadDientesEnfermos = numeroAleatorio(1, maximoDientesEnfermos);

    static public int jugadorActual = 1;

    static public ArrayList<Integer> dientesInvisibles = new ArrayList<>();
    static public ArrayList<String> dientesVisibles = new ArrayList<>();

    public static void main(String[] args) {
    
        boolean juegoTerminado = false;
        inicializarArrays();

        System.out.println(dientesVisibles);

        while (!juegoTerminado) { 

            int posicionSeleccionada = solicitarPosicion();

            if(dientesInvisibles.get(posicionSeleccionada) == dienteEnfermo){
                juegoTerminado = true;
                dientesVisibles.set(posicionSeleccionada, simboloDienteEnfermo);
            }else{
                dientesVisibles.set(posicionSeleccionada, simboloDienteSeleccionado);
            }

            System.out.println(dientesVisibles);
            
            cambiarTurno();
        }

        System.out.println(dientesInvisibles);
        System.out.println("El jugador " + jugadorActual + " ha perdido!");

    }

    public static int numeroAleatorio(int min, int max){
        return (int) Math.floor(Math.random() * (max - min + 1)) + min;
    }

    public static void inicializarArrays() {
        rellenarArrays();
        colocarDientesEnfermos();
    }

    public static void rellenarArrays(){
        for (int i = 0; i < tamanioDentadura; i++) {
            dientesInvisibles.add(dienteSano);
            dientesVisibles.add(simboloDienteSano);
        }
    }

    public static void colocarDientesEnfermos() {
        int dientesEnfermosColocados = 0;
        while (dientesEnfermosColocados < cantidadDientesEnfermos) { 
            int posicionAleatoria = numeroAleatorio(0, tamanioDentadura - 1);

            if(dientesInvisibles.get(posicionAleatoria) != 1){
                dientesInvisibles.set(posicionAleatoria, dienteEnfermo);
                dientesEnfermosColocados++;
            }
        }
    }

    public static int solicitarPosicion() {
        int posicionSeleccionada = 0;

        boolean posicionSeleccionadaCorrecta = false;
        while (!posicionSeleccionadaCorrecta) { 
            System.out.println("jugador " + jugadorActual + " selecciona un diente: ");
            posicionSeleccionada = miScanner.nextInt();

            posicionSeleccionadaCorrecta = ( posicionSeleccionada>=0 && posicionSeleccionada < tamanioDentadura ) 
                                         && dientesVisibles.get(posicionSeleccionada).equals(simboloDienteSano);
        }

        return posicionSeleccionada;
    }

    public static void cambiarTurno() {
        if (jugadorActual == 1) {
            jugadorActual = 2;
        }else{
            jugadorActual = 1;
        }
    }
}
