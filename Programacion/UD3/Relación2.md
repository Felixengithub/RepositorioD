### 1. **Generar nombres de usuario**  
Crea una función que reciba un nombre y un apellido y genere un nombre de usuario único. Usa las tres primeras letras del nombre y del apellido, y agrega tres números aleatorios al final. Investiga el uso de `toLowerCase()`.  

**Ejemplo:**  

*Entrada:*
```javascript
generarUsuario("Juan", "Pérez");
```

*Salida:*
```javascript
"juaper123"
```

***Solución:***

```javascript
function generarUsuario(nombre, apellido){

    let nombreUsuario = ""
    const longitudNumerosGenerados = 3
    const cantidadPrimerasLetras = 3

    nombreUsuario += obtenerNPrimerasLetras(nombre, cantidadPrimerasLetras)
    nombreUsuario += obtenerNPrimerasLetras(apellido, cantidadPrimerasLetras)

    for (let i = 0; i < longitudNumerosGenerados; i++) {
        nombreUsuario += Math.floor(Math.random() * 10) 
    }
  
    nombreUsuario = nombreUsuario.toLowerCase()

    return nombreUsuario
}

function obtenerNPrimerasLetras(palabra, numeroLetras){
    let palabraRecortada = ""

    for (let i = 0; i < numeroLetras && i < palabra.length; i++) {
        palabraRecortada += palabra[i]
    }

    return palabraRecortada
}

// ============================= MAIN ============================= //

let miNombreUsuario = generarUsuario("Pedro", "Torres")

console.log(miNombreUsuario)
```

### 2. **Planificador de citas**  
Haz una función que reciba cuatro horarios en formato de 24 horas (como cadenas: `"19:45"`) correspondientes a las horas de inicio y fin de dos citas. Determina si se solapan (`true`) o si ambas citas son compatibles (no se solapan: `false`).

**Ejemplo:**  

*Entrada:*
```javascript
citasSolapadas("14:00", "15:30", "15:00", "16:00");
```

*Salida:*
```javascript
true // La primera cita termina después de que empiece la segunda, 15:30 > 15:00
```

***Solución:***
```javascript
function citasSolapadas(horaInicioPrimeraCita, horaFinPrimeraCita, horaInicioSegundaCita, horaFinSegundaCita){

    let horaInicioCitasAnteriorHoraFin = (horaInicioPrimeraCita < horaFinPrimeraCita && horaInicioSegundaCita < horaFinSegundaCita)
    let primeraCitaTerminaAntesSegunda = (horaFinPrimeraCita <= horaInicioSegundaCita)
    let segundaCitaTerminaAntesPrimera = (horaFinSegundaCita <= horaInicioPrimeraCita)

    let citasNoSolapadas = primeraCitaTerminaAntesSegunda || segundaCitaTerminaAntesPrimera && horaInicioCitasAnteriorHoraFin

    return !citasNoSolapadas // La función debe indicar cuándo se solapan

}

// ============================= MAIN ============================= //

let seSolapan = citasSolapadas("14:00", "15:30", "11:00", "14:30");

console.log(seSolapan)
```

### 3. **Filtro de mayores de edad**  
Escribe una función que reciba una matriz de nombres y edades, y devuelva una lista con los nombres de las personas mayores de edad (18 o más años).  

**Ejemplo:**  

*Entrada:*
```javascript
const personas = [
  ["Ana", 17],
  ["Luis", 20],
  ["Marta", 18],
  ["Carlos", 15],
  ["Elena", 25],
];
mayoresDeEdad(personas);
```

Salida:  
```javascript
["Luis", "Marta", "Elena"]
```

***Solución:***
```javascript
function mayoresDeEdad(matrizPersonas){

    const arrayNombresMayoresEdad = []

    for (const persona of matrizPersonas) {
        let edad = persona[1]
        if(edad >= 18){
            let nombre = persona[0]
            arrayNombresMayoresEdad.push(nombre)
        }
    }

    return arrayNombresMayoresEdad

    // for (let i = 0; i < matrizPersonas.length; i++) {
    //     let edad = matrizPersonas[i][1]

    //     if(edad >= 18){
    //         let nombre = matrizPersonas[i][0]
    //         arrayNombresMayoresEdad.push(nombre)
    //     }
    // }
}

// ============================= MAIN ============================= //

const personas = [
  ["Ana", 17],
  ["Luis", 20],
  ["Marta", 18],
  ["Carlos", 15],
  ["Elena", 25],
];

const listaNombreMayoresDeEdad = mayoresDeEdad(personas);
console.log(listaNombreMayoresDeEdad)
```

### 4. **Simulador de votaciones**  
Escribe una función que reciba una lista de candidatos y simule una votación aleatoria. Devuelve una matriz con los nombres de los candidatos y el porcentaje de votos obtenido. La suma de los porcentajes debe ser 100%.  

***Ejemplo:***

*Entrada:*
```javascript
const candidatos = ["Juan", "Sofía", "Carlos"];
simularVotaciones(candidatos);
```

*Salida:*
```javascript
[
  ["Juan", 45],
  ["Sofía", 30],
  ["Carlos", 25]
]
```

***Solución:***
```javascript
function simularVotaciones(arrayCandidatos){

    const resultados = []
    let votosRestantes = 100
    let votosAleatorio 
    let nombreCandidato
    let i

    for (i = 0; (i < arrayCandidatos.length - 1); i++) {
        nombreCandidato = arrayCandidatos[i]
        votosAleatorios = Math.floor(Math.random() * (votosRestantes + 1)) // Número aleatorio entre 0 y votosRestantes

        votosRestantes -= votosAleatorios
        resultados.push( [nombreCandidato, votosAleatorios] ) 
    }

    nombreCandidato = arrayCandidatos[i]
    resultados.push( [nombreCandidato, votosRestantes] ) 

    return resultados
}

// ============================= MAIN ============================= //

const candidatos = ["Juan", "Sofía", "Carlos", "María", "Rosalía", "Jose", "Pedro Sanchez", "Abascal", "Feijoo"]
const listaDeCandidatos = simularVotaciones(candidatos)

console.log(listaDeCandidatos)
```

### 5. **Detector de palabras clave**  
Escribe una función que reciba un texto y una lista de palabras clave. Devuelve cuántas palabras clave están presentes en el texto. Investiga el uso de `split()` y convierte todo a minúsculas con `toLowerCase()`.

**Ejemplo:**  

*Entrada:*
```javascript
const texto = "Me gusta programar en Python y Java";
const palabrasClave = ["python", "java", "c++"];
detectarPalabrasClave(texto, palabrasClave);
```

*Salida:*
```javascript
2 // Hay dos palabras clave que aparecen en el texto (python y java)
```

***Solución:***
```javascript
// 5. **Detector de palabras clave**  
// Escribe una función que reciba un texto y una lista de palabras clave. Devuelve cuántas palabras clave están presentes en el texto. Investiga el uso de `split()` y convierte todo a minúsculas con `toLowerCase()`.

function detectarPalabrasClave(texto, arrayPalabrasClave) {

    const arrayPalabrasTexto = texto.toLowerCase().split(" ")
    let aparicionesPalabrasClave = 0

    for (const palabra of arrayPalabrasTexto) {
        if ( palabraEstaEnArray(palabra, arrayPalabrasClave) ) {
            aparicionesPalabrasClave++
        }
    }

    return aparicionesPalabrasClave
}

function palabraEstaEnArray(palabraBuscada, arrayPalabras) {
    let encontrada = false

    for (let i = 0; i < arrayPalabras.length && !encontrada; i++) {
        if (arrayPalabras[i] == palabraBuscada) {
            encontrada = true
        }
    }

    return encontrada
}

// ============================= MAIN ============================= //

const texto = "Me gusta programar en Python y Java"
const palabrasClave = ["python", "java", "c++"]

let recuentoPalabrasClave = detectarPalabrasClave(texto, palabrasClave)

console.log("Las palabras clave aparecen " + recuentoPalabrasClave + " veces.")

```

### 6. **Emparejador de amigos invisibles**  
Crea una función que reciba una lista de nombres y genere emparejamientos aleatorios para un amigo invisible. Asegúrate de que nadie se asigne a sí mismo. La lista debe tener un número par de amigos. Investiga el uso de `splice()`.

**Ejemplo:**  

*Entrada:*
```javascript
const amigos = ["Ana", "Luis", "Marta", "Pedro", "Elena", "Carlos"];
emparejarAmigos(amigos);
```

*Salida:*
```javascript
[
  ["Ana", "Pedro"],
  ["Luis", "Elena"],
  ["Marta", "Carlos"]
]
```

***Solución:***
```javascript
function emparejarAmigos(arrayNombres){
    const emparejamientos = []
    let primerNombre, segundoNombre, posicionAleatoria

    while(arrayNombres.length != 0){

        primerNombre = arrayNombres[0]

        posicionAleatoria = Math.floor(Math.random() * (arrayNombres.length - 1)) + 1 // Posición aleatoria entre 1 y el final de array (length - 1)
        segundoNombre = arrayNombres[posicionAleatoria]

        emparejamientos.push( [primerNombre, segundoNombre] )

        arrayNombres.splice(posicionAleatoria, 1) // Borro el segundo nombre
        arrayNombres.shift() // Borro el primer nombre
        
    }

    return emparejamientos
}

// ============================= MAIN ============================= //

const amigos = ["Ana", "Luis", "Marta", "Pedro", "Elena", "Carlos"]
const parejasAmigoInvisible = emparejarAmigos(amigos)

console.log(parejasAmigoInvisible)
```

### 7. **Analizador de textos avanzado**  
Escribe una función que reciba un texto y devuelva las siguientes estadísticas:  
- Cantidad de palabras.  
- Cantidad de caracteres.  
- Longitud promedio de las palabras. 

**Ejemplo:**  

*Entrada:*
```javascript
const texto = "Hola mundo mundo programacion es increible increible increible";
analizarTexto(texto);
```

*Salida:*
```javascript
[8, 55, 6.875] // 8 palabras, 55 caracteres, 6.875 letras cada palabra en promedio
```

***Solución:***
```javascript
function analizarTexto(texto){
    const arrayPalabrasDelTexto = texto.split(" ")

    let cantidadPalabras = contarPalabras(arrayPalabrasDelTexto) // arrayPalabrasDelTexto.length
    let cantidadCaracteres = contarCaracteres(arrayPalabrasDelTexto)
    let longitudPromedio = longitudPromedioPalabras(arrayPalabrasDelTexto)

    return [ cantidadPalabras , cantidadCaracteres , longitudPromedio ]
}

function contarCaracteres(arrayPalabras){
    let sumatorioCaracteres = 0
    
    for (const palabra of arrayPalabras) {
        sumatorioCaracteres += palabra.length
    }

    return sumatorioCaracteres
}

function contarPalabras(arrayPalabras){
    return arrayPalabras.length
}

function longitudPromedioPalabras(arrayPalabras){
    
    let longitudPromedio = contarCaracteres(arrayPalabras) / contarPalabras(arrayPalabras) // arrayPalabras.length

    return longitudPromedio
}

// ============================= MAIN ============================= //

const texto = "Hola mundo mundo programacion es increible increible increible"
const datosTexto = analizarTexto(texto)

console.log(datosTexto)
```

### 8. **Simulador de clientes en cola**  
Crea una función que simule la llegada de clientes a una cola. Genera aleatoriamente el nombre, apellido (usa un array de nombres y otro de apellidos predefinidos) y tiempo de espera de cada cliente (entre 1 y 20 minutos). El número de clientes es el parámetro de la función.

**Ejemplo:**  
*Salida:*
```javascript
[
  ["Juan Pérez", 5], // 5 minutos
  ["Ana López", 8], // 8 minutos
  ["Luis García", 3] // 3 minutos
]
```

***Solución:***
```javascript
function simularCola(numeroPersonasEnCola) {
    const cola = []
    const tiempoMinimoEspera = 1
    const tiempoMaximoEspera = 20
    let persona, timpoEspera

    for (let i = 0; i < numeroPersonasEnCola; i++) {
        persona = generarPersona()
        timpoEspera = numeroAleatorio(tiempoMinimoEspera, tiempoMaximoEspera)

        cola.push( [persona, timpoEspera] )
    }

    return cola
}

function generarPersona(){
    const arrayNombres = ["Jose", "Lucía", "Marina", "Sergio", "Rafa", "Pedro", "Alejandro", "Ana"]
    const arrayApellidos = ["López", "Castillo", "Moreno", "Sánchez", "González", "Adarve"]

    let nombre = obtenerElementoAleatorio(arrayNombres)
    let primerApellido = obtenerElementoAleatorio(arrayApellidos)
    let segundoApellido = obtenerElementoAleatorio(arrayApellidos)

    return nombre + " " + primerApellido + " " + segundoApellido
}

function obtenerElementoAleatorio(array){

    let posicionAleatoria = numeroAleatorio(0, array.length - 1) // Posición aleatoria entre 0 y la última posición del array (array.length - 1)
    return array[ posicionAleatoria ]
}

function numeroAleatorio(min, max){
    return Math.floor(Math.random() * (max - min + 1)) + min
}
```

---

### 9. **Simulador de clima avanzado**  
Crea una función que reciba como parámetro la estación (`"verano"` o `"invierno"`) y genere los valores de clima para un día: temperatura máxima, temperatura mínima y probabilidad de lluvia. Asegúrate de que:
- La **temperatura máxima** no sea menor que la **temperatura mínima**.
- Los valores estén dentro de los rangos correspondientes a la estación:

#### Rangos según la estación:
- **Invierno:**
  - Temperatura máxima: entre -5°C y 15°C.
  - Temperatura mínima: entre -15°C y 5°C.
  - Probabilidad de lluvia: entre 50% y 100%.

- **Verano:**
  - Temperatura máxima: entre 25°C y 40°C.
  - Temperatura mínima: entre 15°C y 25°C.
  - Probabilidad de lluvia: entre 0% y 50%.

El resultado debe ser un array con los valores generados: `[Máxima, Mínima, Lluvia]`.

Además, crea una segunda función que simule los valores para una **semana completa** (7 días) de invierno o verano. Esta función debe llamar a la función del día y devolver un array con los valores generados para los 7 días.

***Salidas:***
```javascript
// DÍA DE INVIERNO
[12, -3, 70] // Máxima: 12°C, Mínima: -3°C, Lluvia: 70%
```

```javascript
// SEMANA DE VERANO
[
  [32, 25, 20], // Día 1
  [30, 22, 15], // Día 2
  [35, 28, 10], // Día 3
  [27, 20, 40], // Día 4
  [38, 30, 5],  // Día 5
  [29, 21, 50], // Día 6
  [40, 25, 0]   // Día 7
]
```  

***Solución:***
```javascript
function simularClimaSemana(estacion){
    const climaSemana = []
    let climaDiaSimulado

    for (let i = 0; i < 7; i++) {
        climaDiaSimulado = simularClimaDia(estacion)
        climaSemana.push( climaDiaSimulado )
    }

    return climaSemana
}

function simularClimaDia(estacion){
    let intervaloTemperaturaMaxima, intervaloTemperaturaMinima, intervaloProbabilidadLluvia

    if(estacion == "invierno"){
        intervaloTemperaturaMaxima = [-5, 15]
        intervaloTemperaturaMinima = [-15, 5]
        intervaloProbabilidadLluvia = [50, 100]

    }else if(estacion == "verano"){
        intervaloTemperaturaMaxima = [25, 40]
        intervaloTemperaturaMinima = [15, 25]
        intervaloProbabilidadLluvia = [0, 50]
        
    }

    temperaturaMinima = numeroAleatorio( intervaloTemperaturaMinima[0], intervaloTemperaturaMinima[1] )

    if (temperaturaMinima > intervaloTemperaturaMaxima[0]){
        temperaturaMaxima = numeroAleatorio( temperaturaMinima, intervaloTemperaturaMaxima[1] )
    }else{
        temperaturaMaxima = numeroAleatorio( intervaloTemperaturaMaxima[0], intervaloTemperaturaMaxima[1] )
    }
        
    probabilidadLluvia = numeroAleatorio( intervaloProbabilidadLluvia[0], intervaloProbabilidadLluvia[1] )

    return [temperaturaMaxima, temperaturaMinima, probabilidadLluvia]
}

function numeroAleatorio(min, max){
    return Math.floor(Math.random() * (max - min + 1)) + min
}


// ============================= MAIN ============================= //

const simulacionSemana = simularClimaSemana("verano")
console.log(simulacionSemana)

```

### 10. **Distribuidor de tareas del hogar**  
Crea una función que reciba una lista de nombres y una lista de tareas. Reparte las tareas equitativamente entre los nombres, asignando una lista de tareas a cada persona. Las tareas se distribuyen aleatoriamente y pueden repetirse o quedar sin asignar si hay más personas que tareas.  

***Ejemplo:***
*Entrada:*
```javascript
const nombres = ["Ana", "Luis", "Pedro", "María"];
const tareas = [
  "Lavar platos",
  "Limpiar baño",
  "Hacer compras",
  "Barrer",
  "Cortar césped",
  "Cocinar",
  "Organizar estantes",
  "Limpiar ventanas",
  "Poner la mesa",
  "Recoger ropa"
];

repartirTareas(nombres, tareas);
```

*Salida:*
```javascript
[
  ["Ana", ["Limpiar baño", "Poner la mesa", "Lavar platos"]],
  ["Luis", ["Hacer compras", "Barrer", "Limpiar ventanas"]],
  ["Pedro", ["Cortar césped", "Organizar estantes"]],
  ["María", ["Cocinar", "Recoger ropa"]]
]
```

***Solución:***
```javascript
// FALTA EL REPARTO ALEATORIO!!!!!!!

function repartirTareas(listaNombres, listaTareas){

    let tareasRepartidas = []

    for (const nombre of listaNombres) {
        tareasRepartidas.push( [nombre,[]] ) // ["nombre" , [] ] => El segundo [] es la lista vacía de tareas de esa persona
    }

    for(let i = 0 ; i < listaTareas.length ; i++){
        let turno = i % listaNombres.length
        let tareaActual = listaTareas[i]
        
        tareasRepartidas[turno][1].push(tareaActual)
        // tareasRepartidas[turno][1] es la lista de tareas de la persona en la posición 'turno'
    }

    return tareasRepartidas
}

// ============================= MAIN ============================= //

const nombres = ["Ana", "Luis", "Pedro", "María"];
const tareas = [
  "Lavar platos",
  "Limpiar baño",
  "Hacer compras",
  "Barrer",
  "Cortar césped",
  "Cocinar",
  "Organizar estantes",
  "Limpiar ventanas",
  "Poner la mesa",
  "Recoger ropa"
]

console.log(repartirTareas(nombres, tareas))
```