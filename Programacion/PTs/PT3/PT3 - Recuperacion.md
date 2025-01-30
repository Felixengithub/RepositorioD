# Recuperación Prueba Técnica 3 : Juego Ahorcado

## [Enlace Github](https://classroom.github.com/a/9MtOKgE1)

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

```javascript
// 1. Función para generar un número secreto aleatorio entre dos límites (inclusive)
// Propósito: Generar un número entero aleatorio entre el límite inferior y el límite superior, ambos incluidos.
// Entradas:
//   - limiteInferior: número entero que representa el menor valor posible
//   - limiteSuperior: número entero que representa el mayor valor posible
// Salida:
//   - Un número entero aleatorio dentro del rango [limiteInferior, limiteSuperior]
function generarNumeroSecreto(limiteInferior, limiteSuperior) {
    // TO-DO
}

// 2. Función para verificar el número ingresado por el jugador
// Propósito: Comparar el número ingresado (intento) con el número secreto y determinar si es mayor, menor o igual.
// Entradas:
//   - numeroSecreto: número entero que representa el número secreto generado
//   - intento: número entero ingresado por el jugador
// Salida:
//   - Una cadena de texto:
//     - "mayor": si el intento es mayor que el número secreto
//     - "menor": si el intento es menor que el número secreto
//     - "igual": si el intento es exactamente igual al número secreto
function verificarNumero(numeroSecreto, intento) {
    // TO-DO
}

// 3. Función para comprobar si un número está dentro de un rango permitido
// Propósito: Validar si el número ingresado (intento) se encuentra dentro del rango definido por los límites inferior y superior.
// Entradas:
//   - numero: número entero a verificar
//   - limiteInferior: número entero que representa el menor valor permitido
//   - limiteSuperior: número entero que representa el mayor valor permitido
// Salida:
//   - Un valor booleano:
//     - true: si el número está dentro del rango [limiteInferior, limiteSuperior]
//     - false: si el número está fuera del rango
function estaDentroDelRango(numero, limiteInferior, limiteSuperior) {
    // TO-DO
}

// ================================== MAIN ================================== //

let limiteInferior = 1
let limiteSuperior = 100
let maxIntentos = 10

let numeroSecreto = generarNumeroSecreto(limiteInferior, limiteSuperior)
let intentosRestantes = maxIntentos
let adivinado = false

console.log("Bienvenido al juego del Número Secreto")
console.log("Adivina el número entre " + limiteInferior + " y " + limiteSuperior)
console.log("Tienes " + maxIntentos + " intentos")

while (intentosRestantes > 0 && adivinado == false) {

    let intento = parseInt(prompt("Introduce un número entre " + limiteInferior + " y " + limiteSuperior + ":"), 10)
    let mensaje = ""

    if (estaDentroDelRango(intento, limiteInferior, limiteSuperior) == false) {
        mensaje = "Por favor, introduce un número válido entre " + limiteInferior + " y " + limiteSuperior
    } else {
        let resultado = verificarNumero(numeroSecreto, intento)

        if (resultado == "igual") {
            mensaje = "¡Correcto! Has adivinado el número secreto"
            adivinado = true
        } else {
            intentosRestantes = intentosRestantes - 1
            if (resultado == "mayor") {
                mensaje = "El número secreto es menor. "
            } else {
                mensaje = "El número secreto es mayor. "
            }
            mensaje = mensaje + "Te quedan " + intentosRestantes + " intentos"
        }
    }

    console.log(mensaje)
}

if (adivinado == false) {
    console.log("Lo siento, te has quedado sin intentos. El número secreto era: " + numeroSecreto)
}
```