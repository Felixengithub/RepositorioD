# Prueba Técnica 3 : Juego Ahorcado

## [Enlace Github](https://classroom.github.com/a/KPf8jUFK)

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
Implementar el juego **Ahorcado** en JavaScript para dos jugadores.
1. Debes implementar los métodos marcados como *TO-DO*.
2. Debes explicar en el fichero README.md, usando tus palbaras, el flujo del juego (el MAIN).


```javascript
// 1. Función para seleccionar una palabra aleatoria de un array de palabras
function seleccionarPalabra(listaPalabras) {
    // TO-DO
}

// 2. Función para mostrar el progreso de la palabra
// Recibe: la palabra secreta y el array de letras adivinadas (las letras correctas introducidas por el ususario)
// Devuelve: un string que muestra la palabra secreta con las letras adivinadas y "_" en las letras no adivindas
// Por ejemplo: "PE__O", "C_S_", "N_VID_D", etc
function mostrarProgreso(palabra, letrasAdivinadas) {
    // TO-DO
}

// 3. Función para verificar si una letra está en una lista de letras
function comprobarLetraEnLista(letra, lista) {
    // TO-DO
}

// 5. Función para comprobar si el jugador ha ganado.
// Recibe: la palabra secreta y el array de letras adivinadas (las letras correctas introducidas por el ususario)
// Devuelve: true si ha adivinado todas las letras de la balabra o false si no
function comprobarGanador(palabra, letrasAdivinadas) {
    // TO-DO
}

// ================================== MAIN ================================== //

let listaPalabras = ["ESTRELLA", "REGALOS", "ARBOL", "NAVIDAD", "REYES", "VILLANCICO", "NIEVE", "TRINEO", "GUIRNALDA", "VELAS", "BELEN", "POSADA", "TURRON", "PASTORES", "LUZ", "CAMELLO", "CHIMENEA", "CALCETINES", "NATIVIDADDENUESTROSEÑORJESUCRISTO"]
let palabraSecreta = seleccionarPalabra(listaPalabras)
let arrayLetrasPalabraSecreta = palabraSecreta.split("")
let letrasAdivinadas = []
let letrasErroneas = []
let maxIntentos = 6
let intentosRestantes = maxIntentos
let ganador = false

console.log("¡Bienvenido al juego de Ahorcado!")
console.log("La palabra tiene " + palabraSecreta.length + " letras.")

while (intentosRestantes > 0 && !ganador) {
    console.log("\nProgreso: " + mostrarProgreso(palabraSecreta, letrasAdivinadas))
    console.log("Intentos restantes: " + intentosRestantes)
    console.log("Letras erróneas: " + letrasErroneas)

    let letra = prompt("Adivina una letra:").toUpperCase()

    let letraYaUsada = comprobarLetraEnLista(letra, letrasAdivinadas) || comprobarLetraEnLista(letra, letrasErroneas)
    if (letraYaUsada) {
        console.log("Ya intentaste esa letra. Intenta con otra.")
    } else {
        if (comprobarLetraEnLista(letra, arrayLetrasPalabraSecreta)) {
            console.log("¡Correcto!")
            letrasAdivinadas.push(letra)
        } else {
            console.log("Letra incorrecta.")
            letrasErroneas.push(letra)
            intentosRestantes--
        }
    }

    ganador = comprobarGanador(palabraSecreta, letrasAdivinadas)

}

if (ganador) {
    console.log("¡Felicidades! Adivinaste la palabra: " + palabraSecreta)
} else {
    console.log("\nTe quedaste sin intentos.")
    console.log("La palabra era: " + palabraSecreta)
}

```