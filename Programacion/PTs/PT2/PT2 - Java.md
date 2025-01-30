# Prueba Técnica: Cifrado César

**Descripción:**\
El objetivo de esta prueba es implementar un programa en Java que permita cifrar y descifrar mensajes utilizando el método de Cifrado César, un sistema de encriptación simple que consiste en desplazar cada letra del mensaje un número fijo de posiciones en el alfabeto. El número de posiciones de desplazamiento estará definido por una constante llamada `DESPLAZAMIENTO`.

Por ejemplo:

- Si la letra original es A, y el desplazamiento es 3, se convierte en D (tres posiciones adelante en el alfabeto).
- Si la letra es X, y el desplazamiento es 3, se convierte en A (el alfabeto es circular, y después de Z vuelve a empezar en A).

---

**Enunciado:**

1. **Datos iniciales proporcionados:**
   El programa trabajará con un ArrayList de caracteres para facilitar el manejo dinámico del alfabeto. Deberás implementar una función que genere un alfabeto desplazado dinámicamente en función del valor de `DESPLAZAMIENTO`.

   ```java
   import java.util.ArrayList;

   public class CifradoCesar {
       public static final int DESPLAZAMIENTO = 3; // Número de posiciones de desplazamiento

       public static void main(String[] args) {
           ArrayList<Character> alfabeto = new ArrayList<>();
           for (char c = 'A'; c <= 'Z'; c++) {
               alfabeto.add(c);
           }

           // Aquí deberás llamar a tu función para generar el alfabeto desplazado
           ArrayList<Character> alfabetoDesplazado = generarAlfabetoDesplazado(alfabeto, DESPLAZAMIENTO);

           // Ejemplo de impresión
           System.out.println("Alfabeto original: " + alfabeto);
           System.out.println("Alfabeto desplazado: " + alfabetoDesplazado);
       }

       // Función que debes implementar
       public static ArrayList<Character> generarAlfabetoDesplazado(ArrayList<Character> alfabetoOriginal, int desplazamiento) {
           // Esta función debe devolver un nuevo ArrayList con el alfabeto desplazado.
       }
   }
   ```

2. **Requisitos del programa:**

   - El programa debe mostrar un menú con las siguientes opciones:
     1. **Cifrar un mensaje.**
     2. **Descifrar un mensaje.**
     3. **Salir del programa.**
   - **Cifrar un mensaje:**\
     El usuario ingresa un mensaje que puede incluir letras en mayúsculas o minúsculas. El programa debe convertir el mensaje a mayúsculas usando el método `toUpperCase()`. Después, debe buscar cada letra del mensaje en el ArrayList original del alfabeto y reemplazarla por su equivalente en el alfabeto desplazado. El mensaje cifrado debe generarse como un **nuevo string** concatenando letra por letra.
   - **Descifrar un mensaje:**\
     El usuario ingresa un mensaje cifrado. El programa debe buscar cada letra en el alfabeto desplazado y reemplazarla con su equivalente en el alfabeto original. El mensaje descifrado también debe generarse como un **nuevo string** concatenando letra por letra.
   - **Salir del programa:**\
     Termina la ejecución del programa.

3. **Pistas:**

   - Para acceder a una posición específica de un string puedes usar el método `charAt(posición)`. Por ejemplo:
     ```java
     String texto = "HOLA";
     System.out.println(texto.charAt(1)); // Esto imprimirá "O"
     ```
   - Para convertir una cadena a mayúsculas, usa el método `toUpperCase()`.
   - El proceso de cifrado o descifrado consiste en recorrer el mensaje letra por letra, buscar su equivalente en el alfabeto correspondiente y construir un nuevo mensaje usando concatenación de strings.

4. **Ejemplo de flujo de ejecución:**

   ```plaintext
   Menú:
   1. Cifrar mensaje
   2. Descifrar mensaje
   3. Salir
   Selecciona una opción: 1

   Ingresa el mensaje a cifrar: hola
   Mensaje cifrado: KROD

   Menú:
   1. Cifrar mensaje
   2. Descifrar mensaje
   3. Salir
   Selecciona una opción: 2

   Ingresa el mensaje a descifrar: KROD
   Mensaje descifrado: HOLA

   Menú:
   1. Cifrar mensaje
   2. Descifrar mensaje
   3. Salir
   Selecciona una opción: 3
   Fin del programa.
   ```

