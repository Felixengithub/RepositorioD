# Recuperación Prueba Técnica 3 : Juego Ahorcado

## [Enlace Github]()

### **Instrucciones Generales**

1. **Lee todo el examen** detenidamente antes de empezar a programar. Es importante que comprendas bien el problema antes de comenzar a escribir código.
2. Solo están permitidos los **apuntes disponibles en GitHub**, ya sean los proporcionados por el profesor o tus propios apuntes. 
3. **No está permitido buscar en Internet** ni utilizar **IA generativa** para resolver el examen.
4. **No se permite la comunicación entre alumnos** durante la prueba. Tener abiertas aplicaciones de mensajería como **Discord, Telegram, WhatsApp, etc.**, se considerará intento de copia, lo que resultará en un **0 automático**.
5. **Solo se corregirán programas que se puedan ejecutar correctamente**. Es preferible entregar un código que funcione aunque falten algunas funcionalidades, a presentar un programa con errores de sintaxis o código que no tiene sentido. Si tu programa **no se ejecuta** o tiene **errores de sintaxis**, se calificará con un **0**.
6. Se valorará la calidad y limpieza del código. Asegúrate de usar **nombres de variables descriptivos** y el estilo de nombres **camelCase** para mantener una estructura clara y fácil de leer.
7. Están prohibidas las palabras reservadas **`break`** y **`continue`** así como el uso de más de un **`return`** en una misma función debido a la regla de **Single Exit Rule**. Esta regla establece que una función debe tener **un solo punto de salida**, lo que facilita la lectura y depuración del código. El uso de estas palabras puede generar múltiples puntos de salida en bucles o funciones, haciendo el código más difícil de entender y mantener.
8. **Incumplir cualquiera de estas normas** implicará una calificación de **0** en el examen.

### **Objetivo:**
Implementar el juego **Número Secreto** en JavaScript.
1. Debes implementar los métodos marcados como *TO-DO*.
2. Debes explicar en el fichero README.md, usando tus palbaras, el flujo del juego (el MAIN).

---

```java
import java.util.Scanner;
import java.util.Random;

/**
 * Juego del Número Secreto.
 * El jugador debe adivinar un número secreto generado aleatoriamente dentro de un rango.
 */
public class NumeroSecreto {

    /**
     * Genera un número secreto aleatorio entre dos límites inclusivos.
     *
     * @param limiteInferior el límite inferior del rango
     * @param limiteSuperior el límite superior del rango
     * @return un número entero aleatorio entre limiteInferior y limiteSuperior
     */
    public static int generarNumeroSecreto(int limiteInferior, int limiteSuperior) {
        // TO-DO
    }

    /**
     * Verifica si el intento es mayor, menor o igual al número secreto.
     *
     * @param numeroSecreto el número secreto que el jugador intenta adivinar
     * @param intento el número ingresado por el jugador
     * @return "mayor" si el intento es mayor al número secreto,
     *         "menor" si el intento es menor al número secreto,
     *         "igual" si el intento es igual al número secreto
     */
    public static String verificarNumero(int numeroSecreto, int intento) {
        // TO-DO
    }

    /**
     * Comprueba si un número está dentro de un rango especificado.
     *
     * @param numero el número a comprobar
     * @param limiteInferior el límite inferior del rango
     * @param limiteSuperior el límite superior del rango
     * @return true si el número está dentro del rango, false en caso contrario
     */
    public static boolean estaDentroDelRango(int numero, int limiteInferior, int limiteSuperior) {
        // TO-DO
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        int limiteInferior = 1
        int limiteSuperior = 100
        int maxIntentos = 10

        int numeroSecreto = generarNumeroSecreto(limiteInferior, limiteSuperior)
        int intentosRestantes = maxIntentos
        boolean adivinado = false

        System.out.println("Bienvenido al juego del Número Secreto")
        System.out.println("Adivina el número entre " + limiteInferior + " y " + limiteSuperior)
        System.out.println("Tienes " + maxIntentos + " intentos")

        while (intentosRestantes > 0 && !adivinado) {
            System.out.print("Introduce un número entre " + limiteInferior + " y " + limiteSuperior + ": ")
            int intento = scanner.nextInt()
            String mensaje = ""

            if (!estaDentroDelRango(intento, limiteInferior, limiteSuperior)) {
                mensaje = "Por favor, introduce un número válido entre " + limiteInferior + " y " + limiteSuperior
            } else {
                String resultado = verificarNumero(numeroSecreto, intento)

                if (resultado.equals("igual")) {
                    mensaje = "¡Correcto! Has adivinado el número secreto"
                    adivinado = true
                } else {
                    intentosRestantes = intentosRestantes - 1
                    if (resultado.equals("mayor")) {
                        mensaje = "El número secreto es menor. "
                    } else {
                        mensaje = "El número secreto es mayor. "
                    }
                    mensaje = mensaje + "Te quedan " + intentosRestantes + " intentos"
                }
            }

            System.out.println(mensaje)
        }

        if (!adivinado) {
            System.out.println("Lo siento, te has quedado sin intentos. El número secreto era: " + numeroSecreto)
        }
    }
}

```