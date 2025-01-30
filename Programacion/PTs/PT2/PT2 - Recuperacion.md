# Prueba Técnica 2 Recuperación: Cifrado César

## [Enlace GitHub](https://classroom.github.com/a/FBFeC_NL)

**Descripción:**

El objetivo de esta prueba es implementar un programa en JavaScript que permita **cifrar y descifrar mensajes** utilizando el método de **Cifrado César**, un sistema de encriptación simple que consiste en **desplazar cada letra del mensaje un número fijo de posiciones en el alfabeto**. En este caso, el desplazamiento será de **3 posiciones**.

Por ejemplo:
- Si la letra original es **A**, se convierte en **D** (tres posiciones adelante en el alfabeto).
- Si la letra es **X**, se convierte en **A** (el alfabeto es circular, y después de **Z** vuelve a empezar en **A**).
---

**Enunciado:**

1. **Datos iniciales proporcionados:**
   Los siguientes arrays ya están definidos y deben usarse en el programa:

   ```javascript
   let alfabetoOrdenado = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
   let alfabetoDesplazado = ['D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'A', 'B', 'C'];
   ```

2. **Requisitos del programa:**
   - El programa debe mostrar un menú con las siguientes opciones:
     1. **Cifrar un mensaje.**
     2. **Descifrar un mensaje.**
     3. **Salir del programa.**
   - **Cifrar un mensaje:**  
     El usuario ingresa un mensaje que puede incluir letras en mayúsculas o minúsculas. El programa debe convertir el mensaje a mayúsculas usando el método `toUpperCase()`. Después, debe buscar cada letra del mensaje en el array `alfabetoOrdenado` y reemplazarla por su equivalente en el array `alfabetoDesplazado`. El mensaje cifrado debe generarse como un **nuevo string** concatenando letra por letra.
   - **Descifrar un mensaje:**  
     El usuario ingresa un mensaje cifrado. El programa debe buscar cada letra en el array `alfabetoDesplazado` y reemplazarla con su equivalente en el array `alfabetoOrdenado`. El mensaje descifrado también debe generarse como un **nuevo string** concatenando letra por letra.
   - **Salir del programa:**  
     Termina la ejecución del programa.

3. **Pistas:**
   - Para acceder a una posición específica de un string puedes usar la sintaxis `string[posición]`. Por ejemplo:
     ```javascript
     let texto = "HOLA";
     console.log(texto[1]); // Esto imprimirá "O"
     ```
   - Los strings en JavaScript son inmutables, es decir, **no se pueden modificar directamente**, pero puedes formar un nuevo string concatenando letras con el operador `+`. Por ejemplo:
     ```javascript
     let nuevoTexto = "";
     nuevoTexto = nuevoTexto + "A"; // Ahora nuevoTexto es "A"
     nuevoTexto = nuevoTexto + "B"; // Ahora nuevoTexto es "AB"
     ```
   - El proceso de cifrado o descifrado consiste en recorrer el mensaje letra por letra, buscar su equivalente en el array correspondiente y construir un nuevo mensaje como un array de letras.

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
