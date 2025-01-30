import java.util.Scanner;

public class PT1 {
    public static void main(String[] args) {

        Scanner miScanner = new Scanner(System.in);

        int numeroElectrodomesticos, potenciaContratada, potenciaElectrodomesticoActual;
        double precioKWh, horasUsoDiario, consumoTotalKWh = 0, costeTotal;
        boolean postenciaSuperada = false;

        System.out.println("Introduce el número de electrodomésticos a registrar:");
        numeroElectrodomesticos = miScanner.nextInt();

        System.out.println("Introduce el precio por kilovatio-hora (kWh):");
        precioKWh = miScanner.nextDouble();

        System.out.println("Introduce la potencia total contratada (en vatios):");
        potenciaContratada = miScanner.nextInt();

        for (int i = 1; i <= numeroElectrodomesticos && !postenciaSuperada; i++) {

            System.out.println("Introduce la potencia del electrodoméstico " + i + " (en vatios):");
            potenciaElectrodomesticoActual = miScanner.nextInt();

            if (potenciaElectrodomesticoActual > potenciaContratada) {
                postenciaSuperada = true;
                System.out.println("¡Alerta! Has superado la potencia de " + potenciaContratada + " W.");

            } else {
                System.out.println("Introduce el número de horas de uso diario:");
                horasUsoDiario = miScanner.nextDouble();
                consumoTotalKWh += (potenciaElectrodomesticoActual / 1000f) * horasUsoDiario * 30;
            }

        }

        if (!postenciaSuperada) {
            costeTotal = consumoTotalKWh * precioKWh;

            System.out.println("Consumo total mensual: " + consumoTotalKWh);
            System.out.println("Coste total mensual: " + costeTotal);
        }

        miScanner.close();

    }
}
