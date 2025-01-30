### 1. Simular el Lanzamiento de un Dado  
Escribe una función llamada `lanzarDado` que devuelva un número entero aleatorio entre 1 y 6, como si estuvieras lanzando un dado. El número debe ser entre 1 y 6, incluyendo ambos.

*Solución:*
```javascript
function lanzarDado(){
    let resultadoTirada = parseInt( Math.random() * 6 + 1 )
    return resultadoTirada
}

// =========================== MAIN =========================== //

let miTirada = lanzarDado()

console.log(miTirada)
```

### 2. Simular el Lanzamiento de Dos Dados y Sumar los Resultados  
Crea una función llamada `lanzarDosDados` que lance dos dados, es decir, que genere dos números aleatorios entre 1 y 6 y los sume. La función debe devolver la suma de estos dos números. Por ejemplo, si los dados muestran 3 y 4, el resultado será 7.

*Solución:*
```javascript
function lanzarDosDados(){
    let tirada1 = lanzarDado()
    let tirada2 = lanzarDado()

    let resultadoTirada = tirada1 + tirada2

    return resultadoTirada
}

function lanzarDado(){
    let resultadoTirada = parseInt( Math.random() * 6 + 1 )
    return resultadoTirada
}

// =========================== MAIN =========================== //

let miTirada = lanzarDosDados()

console.log(miTirada)
```

### 3. Generar un Array de Números Enteros Aleatorios  
Crea una función llamada `arrayAleatorio` que reciba dos parámetros: `cantidad` (que indica cuántos números generar) y `max` (que es el valor máximo de cada número). Esta función debe devolver un array que contenga `cantidad` de números enteros aleatorios entre 0 y `max`. Por ejemplo, si `cantidad` es 5 y `max` es 20, podría devolver `[5, 12, 19, 8, 3]`.

*Solución:*
```javascript
function arrayAleatorio(cantidad, max){
    const arrayAleatorios = []

    for (let i = 0; i < cantidad; i++) {
        let numeroAleatorio = parseInt( Math.random() * (max + 1) ) // número entre 0 y `max`
        arrayAleatorios.push(numeroAleatorio)
    }

    return arrayAleatorios
}


// =========================== MAIN =========================== //

const miArray = arrayAleatorio(10, 100) // array de 10 números entre 0 y 100

console.log(miArray)
```

### 4. Generar un Array de Números Enteros Aleatorios en un Rango  
Escribe una función `arrayAleatorioEnRango` que reciba tres parámetros: `cantidad` (cuántos números generar), `min` y `max` (el rango de cada número). Esta función debe devolver un array que contenga `cantidad` de números aleatorios entre `min` y `max`. Por ejemplo, si `cantidad` es 4, `min` es 10 y `max` es 30, el array podría ser `[15, 22, 11, 29]`.

*Solución:*
```javascript
function arrayAleatorio(cantidad, min, max){
    const arrayAleatorios = []

    for (let i = 0; i < cantidad; i++) {
        let numeroAleatorio = Math.floor(Math.random() * (max - min + 1)) + min // número entre `min` y `max`
        arrayAleatorios.push(numeroAleatorio)
    }

    return arrayAleatorios
}

// =========================== MAIN =========================== //

const miArray = arrayAleatorio(10, 1, 10) // array de 10 números entre 1 y 10

console.log(miArray)
```

### 5. Generar una Lista de 10 Caras o Cruces Aleatorios  
Escribe una función llamada `caraOCruz` que devuelva "Cara" o "Cruz" al azar. Luego, crea otra función llamada `listaCarasOCruces` que use `caraOCruz` 10 veces para generar una lista de 10 resultados de "Cara" o "Cruz".

*Solución:*
```javascript
function caraOCruz(){

    const posiblesResultados = ["cara", "cruz"]

    let indiceAleatorio = parseInt(Math.random() * posiblesResultados.length)

    return posiblesResultados[indiceAleatorio]
}

function listaCarasOCruces(){
    const numeroTiradas = 10
    const tiradas = []

    for (let i = 0; i < numeroTiradas; i++) {
        let tiradaCaraOCruz = caraOCruz()        
        tiradas.push(tiradaCaraOCruz)
    }

    return tiradas
}
// =========================== MAIN =========================== //

const arrayTiradas = listaCarasOCruces() // array de 10 tiradas Cara o Cruz

console.log(arrayTiradas)
```

### 6. Simular el Lanzamiento de un Dado con un Número de Caras Definido por el Usuario  
Escribe una función `lanzarDadoPersonalizado` que reciba un número `caras` y devuelva un número aleatorio entre 1 y `caras`. Esto debe funcionar para dados con diferente número de caras, por ejemplo, un dado de 20 caras.

*Solución:*
```javascript
function lanzarDado(numeroCaras){
    let resultadoTirada = parseInt( Math.random() * numeroCaras + 1 )
    return resultadoTirada
}

// =========================== MAIN =========================== //

let miTirada = lanzarDado(20)

console.log(miTirada)
```

### 7. Juego: Adivina el Número  
Crea una función `juegoAdivinaNumero` que genere un número aleatorio entre 1 y 10. Pídele al usuario que adivine el número, y dile si el número que ingresó es menor, mayor o igual al número generado.

*Solución:*
```javascript
function juegoAdivinaNumero(min, max){
    let numeroAleatorio = generarAleatorio(min, max)
    let numeroUsuario

    while(numeroUsuario != numeroAleatorio){
        numeroUsuario = Number(prompt("Introduce tu número"))

        if(numeroUsuario < numeroAleatorio){
            console.log("El número que buscas es mayor!")
        }else if(numeroUsuario > numeroAleatorio){
            console.log("El número que buscas es menor!")
        }
    }

    console.log("Perfecto, has adivinado el número: " + numeroAleatorio)

}

function generarAleatorio(min, max){
    return Math.floor(Math.random() * (max - min + 1)) + min
}

// =========================== MAIN =========================== //

juegoAdivinaNumero(1, 100)
```

### 8. Seleccionar un Elemento Aleatorio de una Lista  
Crea una función `elementoAleatorio` que reciba un array como parámetro y devuelva un elemento aleatorio de ese array. Por ejemplo, si el array es `['a', 'b', 'c']`, la función podría devolver `b` o cualquier otro elemento del array.

*Solución:*
```javascript
function elementoAleatorio(array){

    let indiceAleatorio = parseInt(Math.random() * array.length)

    return array[indiceAleatorio]

}

// =========================== MAIN =========================== //

const miArray = ['a', 'b', 'c']
let letraAleatoria = elementoAleatorio(miArray)

console.log(letraAleatoria)

```

### 9. Generar una Contraseña Aleatoria de Longitud Fija  
Escribe una función `generarContraseña` que reciba un número `longitud` y devuelva una cadena de caracteres aleatorios (formada por letras y números) de esa longitud. Por ejemplo, si `longitud` es 8, podría devolver algo como `a7b3f2d8`. Puedes usar un array de letras y números para ir eligiendo de forma aleatoria.

*Solución:*
```javascript
function generarContrasenia(longitud){

    // Este array debería contener todos los números [0 - 9], 
    // todas las minúsculas [a - z] y todas las mayúsculas [A - Z]
    const caracteres = ['1', '2', '3', 'a', 'A', 'b', 'B', 'c', 'C']

    let contrasenia = ""

    for (let i = 0; i < longitud; i++) {
        contrasenia += elementoAleatorio(caracteres)        
    }

    return contrasenia

}

function elementoAleatorio(array){

    let indiceAleatorio = parseInt(Math.random() * array.length)

    return array[indiceAleatorio]

}

// =========================== MAIN =========================== //

let miContrasenia = generarContrasenia(8)

console.log(miContrasenia)
```

### 10. Simular una Carta de una Baraja  
Escribe una función `cartaAleatoria` que devuelva una carta aleatoria de una baraja (con un número del 1 al 13, que representaría el valor, y uno de los cuatro palos: corazones, diamantes, tréboles o picas).

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/Ufmlq-VaGY0)

*Solución:*
```javascript
function cartaAleatoria(){

    let palos = ['corazones', 'diamantes', 'tréboles', 'picas'];

    let numero = Math.floor(Math.random() * 13) + 1
    let indiceAleatorio = Math.floor(Math.random() * palos.length)

    let palo = palos[indiceAleatorio]

    let carta = numero + palo

    return carta
}

// ================== MAIN ================== //

let carta = cartaAleatoria()
console.log(carta)
```

### 11. Simular un Juego de Piedra, Papel o Tijeras  
Crea una función `juegoPiedraPapelTijeras` que genere aleatoriamente una elección entre "Piedra", "Papel" o "Tijeras" y permite al usuario jugar contra la máquina.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/cc4GbQVblAk)

*Solución:*
```javascript
/* 
### 11. Simular un Juego de Piedra, Papel o Tijera  
Crea una función `juegoPiedraPapelTijera` que genere 
aleatoriamente una elección entre "Piedra", "Papel" o "Tijera" 
y permite al usuario jugar contra la máquina.
*/

function obtenerEleccionAleatoria() {
    let opciones = ['Piedra', 'Papel', 'Tijera'];

    let indiceAleatorio = Math.floor(Math.random() * opciones.length);

    return opciones[indiceAleatorio];
}

function comprobarGanador(opcionJugador, opcionMaquina) {
    const opcionesGanadoras = [
        ["Piedra", "Tijera"],
        ["Papel", "Piedra"],
        ["Tijera", "Papel"]
    ]

    let usuarioGanador = false

    for (const opcion of opcionesGanadoras) {
        if (opcion[0] == opcionJugador && opcion[1] == opcionMaquina) {
            usuarioGanador = true
        }
    }

    return usuarioGanador

}

// ================== MAIN ================== //

let opcionJugador

while (opcionJugador != "SALIR") {

    let opcionMaquina = obtenerEleccionAleatoria()
    opcionJugador = prompt("Piedra, Papel o Tijera:")

    if (opcionJugador == opcionMaquina) {
        console.log(opcionJugador + " - " + opcionMaquina + ": EMPATE!")
    } else if (comprobarGanador(opcionJugador, opcionMaquina)) {
        console.log(opcionJugador + " - " + opcionMaquina + ": GANA EL JUGADOR!")
    } else {
        console.log(opcionJugador + " - " + opcionMaquina + ": GANA LA MÁQUINA!")
    }

}
```

### 12. Simular un Lanzamiento de Moneda hasta Obtener 3 "Caras"  
Escribe una función `simularLanzamientoHastaTresCaras` que simule el lanzamiento de una moneda (cara o cruz) hasta que obtenga 3 veces "Cara" de forma seguida. Devuelve cuántos lanzamientos se necesitaron para llegar a tener 3 "Caras" y el array con todos los lanzamientos.

### [*RESOLUCIÓN EN VÍDEO*]()

*Solución:*
```javascript
function simularLanzamientoHastaTresCarasConsecutivas() {
    let resultados = [] // Array para almacenar los lanzamientos
    let cuentaCarasConsecutivas = 0 // Contador de "Caras" consecutivas
    let totalLanzamientos = 0 // Contador de lanzamientos totales

    // Repetir lanzamientos hasta obtener 3 "Caras" consecutivas
    while (cuentaCarasConsecutivas < 3) {
        let resultado = lanzarMoneda() // Lanzar la moneda
        resultados.push(resultado) // Almacenar el resultado
        totalLanzamientos++ // Incrementar el contador de lanzamientos

        // Comprobar si el resultado es "Cara"
        if (resultado == "Cara") {
            cuentaCarasConsecutivas++ // Incrementar el contador de "Caras" consecutivas
        } else {
            cuentaCarasConsecutivas = 0 // Reiniciar el contador si no es "Cara"
        }
    }

    // Retornar el número de lanzamientos y los resultados en un array
    return [totalLanzamientos, resultados]
}

function lanzarMoneda() {
    // Generar aleatoriamente "Cara" o "Cruz"
    let resultado
    if (Math.random() < 0.5) {
        resultado = "Cara"
    } else {
        resultado = "Cruz"
    }
    return resultado
}

// ================== MAIN ================== //

let simulacion = simularLanzamientoHastaTresCarasConsecutivas()

console.log("Total de lanzamientos: " + simulacion[0])
console.log("Resultados: " + simulacion[1])
```