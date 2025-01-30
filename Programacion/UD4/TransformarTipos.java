public class TransformarTipos {
    public static void main(String[] args) {
        double numeroConDecimales = 10.70;

        int numeroSinDecimales = (int) numeroConDecimales; // Casting de double a entero. OJO! no redondea, trunca

        double division = 5.0/2; // Lo mismo que 5f/2

        String numero = "7";
        
        division = Integer.parseInt(numero) / 2;
        division = Double.parseDouble(numero) / 2;

        numero = String.valueOf(7); // numero = 7 + ""

        numero = 7 + "";

        System.out.println(numero);
    }
}
