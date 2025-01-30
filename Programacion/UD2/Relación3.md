## 1. **Encuentra el Elemento Más Largo**
   - Dado un array de palabras, escribe una función que encuentre la palabra más larga.
   - Ejemplo: `["apple", "banana", "kiwi", "watermelon"]` debería devolver `"watermelon"`.

*Solución SIN función:*
```javascript
const palabras = ["apple", "banana", "palabramuylarga", "kiwi", "watermelon"]

let palabraMasLarga = palabras[0]

for (let i = 1; i < palabras.length; i++) {
    let palabraActual = palabras[i]
    if (palabraActual.length > palabraMasLarga.length) {
        palabraMasLarga = palabraActual
    }
}

console.log("La palabra más larga es " + palabraMasLarga)
```

*Solución CON función:*
```javascript
function buscarPalabraMasLarga(arrayPalabras) {

    let palabraMasLarga = arrayPalabras[0]

    for (let i = 1; i < arrayPalabras.length; i++) {
        let palabraActual = arrayPalabras[i]
        if (palabraActual.length > palabraMasLarga.length) {
            palabraMasLarga = palabraActual
        }
    }

    return palabraMasLarga

}

// =========================== MAIN =========================== //

console.log(".")

const palabras = ["apple", "banana", "palabramuylarga", "kiwi", "watermelon"]

let palabraMasLarga = buscarPalabraMasLarga(palabras)

console.log("La palabra más larga es " + palabraMasLarga)
```

## 2. **Filtra Palabras por Letra**
   - Tienes un array de palabras y necesitas quedarte solo con aquellas que empiezan con una letra específica. Pide la letra como parámetro y devuelve un nuevo array con las palabras que comienzan con esa letra.
   - Ejemplo: `["Alice", "Bob", "Amy", "David"]` con la letra `"A"` debería devolver `["Alice", "Amy"]`.

*Solución SIN función:*
```javascript
const palabras = ["Alice", "Bob", "Amy", "David", "Davinson"]

let letraInicialUsuario = prompt("Introduce la letra inicial:")

const palabrasQueEmpiezanPorLetra = []

for (let i = 0; i < palabras.length; i++) {
    let palabraActual = palabras[i];

    let primeraLetraPalabraActual = palabraActual[0]

    if( primeraLetraPalabraActual == letraInicialUsuario){
        palabrasQueEmpiezanPorLetra.push(palabraActual)
    }
    
}

console.log("Las palabras que empiezan por " + letraInicialUsuario + " son: " + palabrasQueEmpiezanPorLetra)

```

*Solución CON función:*
```javascript
function extraerPalabrasQueEmpiezanPorLetra(listaPalabras, letraInicialBuscada) {

    const palabrasQueEmpiezanPorLetra = []

    for (let i = 0; i < listaPalabras.length; i++) {
        let palabraActual = listaPalabras[i];

        let primeraLetraPalabraActual = palabraActual[0]

        if (primeraLetraPalabraActual == letraInicialBuscada) {
            palabrasQueEmpiezanPorLetra.push(palabraActual)
        }
    }

    return palabrasQueEmpiezanPorLetra
}

// =========================== MAIN =========================== //

console.log(".")

const palabras = ["Alice", "Bob", "Amy", "David", "Davinson"]

let letraInicialUsuario = prompt("Introduce la letra inicial:")

const palabrasQueEmpiezanPorLetra = extraerPalabrasQueEmpiezanPorLetra(palabras, letraInicialUsuario)

console.log("Las palabras que empiezan por " + letraInicialUsuario + " son: " + palabrasQueEmpiezanPorLetra)
```

## 3. **Cuenta Letras en Cada Palabra**
   - Tienes un array de palabras. Escribe una función que cuente cuántas letras tiene cada palabra y devuelva un array con la cantidad de letras para cada palabra en el mismo orden.
   - Ejemplo: `["apple", "banana", "kiwi"]` debería devolver `[5, 6, 4]`.

*Solución SIN función:*
```javascript
const palabras = ["apple", "banana", "kiwi"]

const numeroLetras = []

for (let i = 0; i < palabras.length; i++) {
    let palabraActual = palabras[i];
    // Para cada palabra, añado en el array numeroLetras
    // la longitud de esa palabra (el número de letras)
    numeroLetras.push( palabraActual.length )
}

console.log(palabras)
console.log(numeroLetras)
```

*Solución CON función:*
```javascript
function contarLetras(arrayPalabras) {

    const numeroLetras = []

    for (let i = 0; i < arrayPalabras.length; i++) {
        let palabraActual = arrayPalabras[i];
        // Para cada palabra, añado en el array numeroLetras
        // la longitud de esa palabra (el número de letras)
        numeroLetras.push(palabraActual.length)
    }

    return numeroLetras;

}

// ========================= MAIN ========================= //

const palabras = ["apple", "banana", "kiwi"]

const numeroLetras = contarLetras(palabras)

console.log(palabras)
console.log(numeroLetras)
```

## 4. **Duplica Precios en Array**
   - Tienes un array de números que representan precios. Escribe una función que duplique cada precio en el array (multiplicando por 2) y devuelva el nuevo array.
   - Ejemplo: `[100, 200, 300]` debería devolver `[200, 400, 600]`.

*Solución SIN función:*
```javascript
const numeros = [100, 200, 300]
const numerosDuplicados = []

for (let i = 0; i < numeros.length; i++) {
    numerosDuplicados.push( numeros[i] * 2 )
}

console.log(numeros)
console.log(numerosDuplicados)
```

*Solución CON función PASO POR REFERENCIA:*
```javascript
function duplicarArray(arrayNumeros) {
    for (let i = 0; i < arrayNumeros.length; i++) {
        arrayNumeros[i] *= 2 // arrayNumeros[i] = arrayNumeros[i] * 2
    }
}

// ========================= MAIN ========================= //

const numeros = [100, 200, 300]

duplicarArray(numeros)

console.log(numeros)
```

*Solución CON función OTRA SOLUCIÓN:*
```javascript

function duplicarArray(arrayNumeros) {
    const numerosDuplicados = []
    for (let i = 0; i < arrayNumeros.length; i++) {
        numerosDuplicados.push( arrayNumeros[i] * 2 )
    }

    return numerosDuplicados
}

// ========================= MAIN ========================= //

const numeros = [100, 200, 300]

const duplicados = duplicarArray(numeros)

console.log(numeros)
console.log(duplicados)
```

## 5. **Combina Dos Listas de Compras (sin duplicados)**
   - Tienes dos arrays con listas de compras. Quieres combinarlas en una sola, sin que se repitan elementos. Si ambos arrays tienen el mismo producto, debe aparecer solo una vez.
   - Ejemplo: `["milk", "eggs", "bread"]` y `["bread", "butter", "cheese"]` debería devolver `["milk", "eggs", "bread", "butter", "cheese"]`.

*Solución CON función:*
```javascript
function combinarListas(primeraLista, segundaLista){
    const listaFinal = copiarArray(primeraLista)
    //const listaFinal = primeraLista.slice()

    for (let elemento of segundaLista) {
        if( !estaEnLista(elemento, listaFinal) ){
            listaFinal.push(elemento)
        }
    }

    return listaFinal
}

function copiarArray(array){
    const copia = []

    for(let valor of array){ //foreach
        copia.push(valor)
    }

    return copia

    // for (let i = 0; i < array.length; i++) {
    //     let valor = array[i];
    //     copia.push(valor)
    // }

}

function estaEnLista(elementoBuscado, lista){
    let encontrado = false

    for (let i = 0; i < lista.length && !encontrado; i++) {
        if(lista[i] == elementoBuscado){
            encontrado = true
        }
    }

    return encontrado
}

// =============================== MAIN =============================== //

const lista1 = ["milk", "eggs", "bread"]
const lista2 = ["bread", "butter", "cheese"]

const listaCombianada = combinarListas(lista1, lista2)

console.log(lista1)
console.log(lista2)
console.log(listaCombianada)
```

*Solución SIN función:*
```javascript
const lista1 = ["milk", "eggs", "bread"]
const lista2 = ["bread", "butter", "cheese"]

const listaFinal = []

// Copio la lista1 en listaFinal
for (let i = 0; i < lista1.length; i++) {
    listaFinal.push(lista1[i])
}

// Para cada elemento de lista2
for (let elemento of lista2) {

    // Busco cada elemento de lista2 en el array listaFinal
    let encontrado = false

    for (let i = 0; i < listaFinal.length && !encontrado; i++) {
        if (listaFinal[i] == elemento) {
            encontrado = true
        }
    }

    // Si no encuento el elemento en listaFinal, lo añado
    if (!encontrado) {
        listaFinal.push(elemento)
    }
}

console.log(lista1)
console.log(lista2)
console.log(listaFinal)
```

## 6. **Une Palabras con un Separador**
   - Tienes un array de palabras y quieres unirlas en una sola cadena de texto, con un separador específico que elijas (por ejemplo, una coma, un espacio, o cualquier otro símbolo).
   - Ejemplo: `["Hello", "world", "JavaScript", "rocks"]` con el separador `" - "` debería devolver `"Hello - world - JavaScript - rocks"`.

*Solución CON función:*
```javascript
function concatenarPalabras(arrayPalabras) {
    let cadenaTexto = ""
    let i // declaro la i fuera del bucle para poder usarla con la última palabra

    for (i = 0; i < arrayPalabras.length - 1; i++) {
        cadenaTexto += arrayPalabras[i] + " - "
    }
    cadenaTexto += arrayPalabras[i] // la última palabra la añado fuera del bucle sin el separador

    return cadenaTexto
}

// ================================= MAIN ================================= //

const palabras = ["Hello", "world", "JavaScript", "rocks"]

let palabrasConcatenadas = concatenarPalabras(palabras)

console.log(palabrasConcatenadas)
```

*Solución SIN función:*
```javascript
const palabras = ["Hello", "world", "JavaScript", "rocks"]
let cadenaTexto = ""
let i

for (i = 0; i < palabras.length - 1; i++) {
    cadenaTexto += palabras[i] + " - "
}
cadenaTexto += palabras[i]

console.log(cadenaTexto)
```

## 7. **Lista de Pares e Impares**
   - Dado un array de números, crea dos nuevos arrays: uno que contenga solo los números pares y otro que contenga solo los números impares.
   - Ejemplo: `[1, 2, 3, 4, 5, 6]` debería devolver `[[2, 4, 6], [1, 3, 5]]`.

*Solución CON función:*
```javascript
function obtenerListasParesImpares(arrayNumeros) {
    const pares = []
    const impares = []

    for (const numero of arrayNumeros) {
        if (numero % 2 == 0) {
            pares.push(numero)
        } else {
            impares.push(numero)
        }
    }

    const matriz = [pares, impares]
    return matriz
}
// ================================= MAIN ================================= //

const numeros = [1, 2, 3, 4, 5, 6]

const matrizParesImpares = obtenerListasParesImpares(numeros)

console.log(matrizParesImpares[0]) // Números pares
console.log(matrizParesImpares[1]) // Números impares
```

*Solución SIN función:*
```javascript
const numeros = [1, 2, 3, 4, 5, 6]
const pares = []
const impares = []

for (const numero of numeros) {
    if (numero % 2 == 0) {
        pares.push(numero)
    }else{
        impares.push(numero)
    }
}

console.log(pares)
console.log(impares)
```

## 8. **Encuentra el Primer Número Mayor que X**
   - Tienes un array de números y un número `X`. Escribe una función que devuelva el primer número en el array que sea mayor que `X`. Si no hay ninguno, que devuelva `null`.
   - Ejemplo: `[10, 20, 30, 40, 50]` y `X = 25` debería devolver `30`.

*Solución CON función:*
```javascript
function buscarMayor(numeroLimite, arrayNumeros) {
    let numeroMayor = null

    for (let i = 0; i < arrayNumeros.length && numeroMayor == null; i++) {
        if (arrayNumeros[i] > numeroLimite) {
            numeroMayor = arrayNumeros[i]
        }
    }

    return numeroMayor
}

// ================================= MAIN ================================= //

const numeros = [10, 20, 30, 40, 50]
console.log(numeros)

let numeroUsuario = Number(prompt("Introduce el número:"))
let numeroMayor = buscarMayor(numeroUsuario, numeros)

console.log(numeroMayor)
```

*Solución SIN función:*
```javascript
const numeros = [10, 20, 30, 40, 50]
let numeroLimite = 25

let numeroMayor = null

for (let i = 0; i < numeros.length && numeroMayor == null; i++) {
    if (numeros[i] > numeroLimite){
        numeroMayor = numeros[i]
    }
}

console.log(numeroMayor)
```

## 9. **Cuenta Elementos con una Condición**
   - Dado un array de números, escribe una función que cuente cuántos números son mayores que un valor dado `X`.
   - Ejemplo: `[5, 12, 8, 30, 25]` con `X = 10` debería devolver `3` (porque hay tres números mayores a 10: 12, 30 y 25).

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/cwWkcE76BIE)

*Solución CON función:*
```javascript
function buscarMayoresQue(arrayNumeros, numeroMinimo) {
    let contadorNumerosMayores = 0

    for (const numero of arrayNumeros) {
        if (numero > numeroMinimo) {
            contadorNumerosMayores++
        }
    }

    return contadorNumerosMayores
}

// ====================================== MAIN ====================================== //

const numeros = [5, 12, 8, 30, 25]
let minimo = Number(prompt("Introduce el número mínimo:"))

let numerosMayoresQue = buscarMayoresQue(numeros, minimo)

console.log(numeros)
console.log("Hay " + numerosMayoresQue + " numeros mayores que " + minimo)
```

*Solución SIN función:*
```javascript
const numeros = [5, 12, 8, 30, 25]
let contadorNumerosMayores = 0

let minimo = Number(prompt("Introduce el número mínimo:"))

for (const numero of numeros) {
    if( numero > minimo){
        contadorNumerosMayores++
    }
}

console.log(numeros)
console.log("Hay " + contadorNumerosMayores + " numeros mayores que " + minimo)
```

## 10. **Cambia el Orden de un Array**
   - Dado un array de palabras, escribe una función que devuelva el array en orden inverso (la primera palabra al final y la última palabra al inicio).
   - Ejemplo: `["apple", "banana", "cherry"]` debería devolver `["cherry", "banana", "apple"]`.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/kN911mqhE3I)

*Solución CON función:*
```javascript
function invertirArray(arrayOriginal) {
    const arrayInvertido = []

    for (let i = arrayOriginal.length - 1; i >= 0; i--) {
        let frutaActual = arrayOriginal[i]
        arrayInvertido.push(frutaActual)
    }

    return arrayInvertido
}

// ====================================== MAIN ====================================== //

const arrayOriginal = ["apple", "banana", "cherry"]
const arrayInvertido = invertirArray(arrayOriginal)

console.log(arrayOriginal)
console.log(arrayInvertido)
```

*Solución SIN función:*
```javascript
const arrayOriginal = ["apple", "banana", "cherry"]
const arrayInvertido = []

for (let i = arrayOriginal.length - 1; i >=0 ; i--) {
    let frutaActual = arrayOriginal[i]
    arrayInvertido.push(frutaActual)
}

console.log(arrayOriginal)
console.log(arrayInvertido)
```

## 11. **Elimina Elementos Duplicados**
   - Dado un array de números en el que algunos elementos están repetidos, escribe una función que elimine los duplicados y devuelva el array sin repeticiones.
   - Ejemplo: `[1, 2, 2, 3, 4, 4, 5]` debería devolver `[1, 2, 3, 4, 5]`.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/wcGfxkPeKj8)

*Solución CON función:*
```javascript
function contiene(elementoBuscado, arrayParaBuscar){
    let encontrado = false

    for (let i = 0; i < arrayParaBuscar.length && !encontrado; i++) {
        if(arrayParaBuscar[i] == elementoBuscado){
            encontrado = true
        }
    }

    return encontrado
}

function eliminarDuplicados(arrayConDuplicados){
    const arrayUnicos = []

    for (const elemento of arrayConDuplicados) {
        if (!contiene(elemento, arrayUnicos)){
            arrayUnicos.push(elemento)
        }
    }

    return arrayUnicos
}

// ====================================== MAIN ====================================== //

const arrayOriginal = [1, 2, 2, 3, 4, 4, 5]

const arraySinDuplicados = eliminarDuplicados(arrayOriginal)

console.log(arrayOriginal)
console.log(arraySinDuplicados)
```

*Solución SIN función:*
```javascript
// Definimos el array original con algunos elementos duplicados
const arrayOriginal = [1, 2, 2, 3, 4, 4, 5];

// Creamos un array vacío donde almacenaremos los elementos únicos
const arrayUnicos = [];

// Iniciamos un bucle para recorrer cada elemento en el array original
for (const elemento of arrayOriginal) {

    // Variable booleana para indicar si encontramos el elemento en arrayUnicos
    let encontrado = false;

    // Iniciamos otro bucle para revisar si el elemento ya está en arrayUnicos
    for (let i = 0; i < arrayUnicos.length && !encontrado; i++) {
        
        // Comparamos el elemento actual con cada elemento en arrayUnicos
        if (arrayUnicos[i] == elemento) {
            
            // Si el elemento ya está en arrayUnicos, cambiamos 'encontrado' a true
            encontrado = true;
        }
    }

    // Después de revisar, si 'encontrado' sigue siendo false, el elemento es único
    if (!encontrado) {
        
        // Agregamos el elemento único al arrayUnicos
        arrayUnicos.push(elemento);
    }
}

// Imprimimos el array original para mostrar sus elementos, incluidos los duplicados
console.log(arrayOriginal);

// Imprimimos el array con elementos únicos, que no contiene duplicados
console.log(arrayUnicos);

```

## 12. **Encuentra el Número Más Pequeño y Más Grande**
   - Dado un array de números, escribe una función que devuelva el número más pequeño y el número más grande en el array como un array de dos elementos.
   - Ejemplo: `[12, 5, 7, 19, 1]` debería devolver `[1, 19]`.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/5uFbOlWi80E)

*Solución CON función:*
```javascript
function buscarMinimoMaximo(arrayNumeros) {
    let maximo = arrayNumeros[0]
    let minimo = arrayNumeros[0]

    for (let i = 1; i < arrayNumeros.length; i++) {

        let numeroActual = arrayNumeros[i]

        if (numeroActual > maximo) {
            maximo = numeroActual
        }

        if (numeroActual < minimo) {
            minimo = numeroActual
        }

    }

    return [minimo, maximo]
}

// ====================================== MAIN ====================================== //

const numeros = [12, 5, 7, 19, 1]

const arrayMinMax = buscarMinimoMaximo(numeros)

console.log(arrayMinMax)
```

*Solución SIN función:*
```javascript
const numeros = [12, 5, 7, 19, 1]

let maximo = numeros[0]
let minimo = numeros[0]

for (let i = 1; i < numeros.length; i++) {

    let numeroActual = numeros[i]

    if(numeroActual > maximo){
        maximo = numeroActual
    }

    if(numeroActual < minimo){
        minimo = numeroActual
    }
    
}

console.log(minimo)
console.log(maximo)
```

## 13. **Cuenta los Elementos que Terminan en un Número Específico**
   - Tienes un array de números y un número de una cifra (por ejemplo, 3). Escribe una función que cuente cuántos de los números en el array terminan en esa cifra.
   - Ejemplo: `[23, 13, 33, 54, 73, 19]` con el número `3` debería devolver `4` (porque 23, 13, 33 y 73 terminan en 3).

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/0ij8C5Jegi0)

*Solución CON función:*
```javascript
function contarNumerosTerminanEnCifra(arrayNumeros, cifraFinal) {
    let contadorNumerosTerminanEnCifraFinal = 0

    for (const numero of arrayNumeros) {

        if (numeroTerminaEnCifra(numero, cifraFinal)) {
            contadorNumerosTerminanEnCifraFinal++
        }
    }

    return contadorNumerosTerminanEnCifraFinal
}

function numeroTerminaEnCifra(numero, cifra) {
    let ultimaCifraNumero = numero % 10
    return (ultimaCifraNumero == cifra)
}

// ====================================== MAIN ====================================== //

const numeros = [23, 13, 33, 54, 73, 19]
let cifraFinal = 3

let numerosQueTerminanEnCifra = contarNumerosTerminanEnCifra(numeros, cifraFinal)

console.log(numerosQueTerminanEnCifra)
```

*Solución SIN función:*
```javascript
const numeros = [23, 13, 33, 54, 73, 19]
let cifraFinal = 3

let contadorNumerosTerminanEnCifraFinal = 0

for (const numero of numeros) {
    let ultimaCifraNumero = numero % 10

    if(ultimaCifraNumero == cifraFinal){
        contadorNumerosTerminanEnCifraFinal++
    }
}

console.log(contadorNumerosTerminanEnCifraFinal)
```

## 14. **Concatena dos Arrays Alternando Elementos**
   - Dado dos arrays de igual longitud, crea un nuevo array que combine ambos, alternando los elementos de cada uno. El primer elemento del resultado debe ser el primero del primer array, luego el primero del segundo array, y así sucesivamente.
   - Ejemplo: `[1, 2, 3]` y `["a", "b", "c"]` debería devolver `[1, "a", 2, "b", 3, "c"]`.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/2Dv7BVV9gwU)

*Solución CON función:*
```javascript
function combinarArrays(primerArray, segundoArray){
    const arrayCombinado = []

    for (let i = 0; i < primerArray.length; i++) {
        arrayCombinado.push(primerArray[i])
        arrayCombinado.push(segundoArray[i])
    }

    return arrayCombinado
}

// ====================================== MAIN ====================================== //

const primerArray = [1, 2, 3]
const segundoArray = ["a", "b", "c"]
let arrayCombinado

if (primerArray.length == segundoArray.length){

    arrayCombinado = combinarArrays(primerArray, segundoArray)

    console.log(arrayCombinado)

}else{
    alert("Los arrays que quieres unir deben ser de la misma longitud")
}
```

*Solución SIN función:*
```javascript
const primerArray = [1, 2, 3]
const segundoArray = ["a", "b", "c"]

const arrayCombinado = []

if (primerArray.length == segundoArray.length){

    for (let i = 0; i < primerArray.length; i++) {
        arrayCombinado.push(primerArray[i])
        arrayCombinado.push(segundoArray[i])
    }

console.log(arrayCombinado)


}else{
    alert("Los arrays que quieres unir deben ser de la misma longitud")
}
```

## 15. **Divide en Grupos de N Elementos**
   - Dado un array y un número `N`, divide el array en sub-arrays de `N` elementos. Si quedan menos de `N` elementos al final, incluye esos elementos en el último sub-array.
   - Ejemplo: `[1, 2, 3, 4, 5, 6, 7, 8]` con `N = 3` debería devolver `[[1, 2, 3], [4, 5, 6], [7, 8]]`.

### [*RESOLUCIÓN EN VÍDEO*](https://youtu.be/PfS5aldJqo8)
### [*RESOLUCIÓN EN PYTHONTUTOR*](https://pythontutor.com/render.html#code=let%20array%20%3D%20%5B1,%202,%203,%204,%205,%206,%207,%208%5D%3B%0Alet%20tamanioGrupo%20%3D%203%3B%0Alet%20matrizGrupos%20%3D%20%5B%5D%3B%0A%0Afor%20%28let%20i%20%3D%200%3B%20i%20%3C%20array.length%3B%20i%20%2B%3D%20tamanioGrupo%29%20%7B%0A%20%20%20%20let%20grupo%20%3D%20%5B%5D%3B%0A%20%20%20%20for%20%28let%20j%20%3D%20i%3B%20j%20%3C%20i%20%2B%20tamanioGrupo%20%26%26%20j%20%3C%20array.length%3B%20j%2B%2B%29%20%7B%0A%20%20%20%20%20%20%20%20grupo.push%28array%5Bj%5D%29%3B%0A%20%20%20%20%7D%0A%20%20%20%20matrizGrupos.push%28grupo%29%3B%0A%7D%0A%0Aconsole.log%28matrizGrupos%29%3B%20//%20Devuelve%20%5B%5B1,%202,%203%5D,%20%5B4,%205,%206%5D,%20%5B7,%208%5D%5D&cumulative=false&curInstr=0&heapPrimitives=nevernest&mode=display&origin=opt-frontend.js&py=js&rawInputLstJSON=%5B%5D&textReferences=false)
*Solución CON función:*
```javascript
function dividirEnGrupos(array, tamanioGrupo){
    let matrizGrupos = [];

    for (let i = 0; i < array.length; i += tamanioGrupo) {
        let grupo = [];
        for (let j = i; j < i + tamanioGrupo && j < array.length; j++) {
            grupo.push(array[j]);
        }
        matrizGrupos.push(grupo);
    }

    return matrizGrupos
}

// ====================================== MAIN ====================================== //

let array = [1, 2, 3, 4, 5, 6, 7, 8];
let tamanioGrupo = 3;

const subgrupos = dividirEnGrupos(array, tamanioGrupo)

console.log(subgrupos); // Devuelve [[1, 2, 3], [4, 5, 6], [7, 8]]
```

*Solución SIN función:*
```javascript
let array = [1, 2, 3, 4, 5, 6, 7, 8];
let tamanioGrupo = 3;
let matrizGrupos = [];

for (let i = 0; i < array.length; i += tamanioGrupo) {
    let grupo = [];
    for (let j = i; j < i + tamanioGrupo && j < array.length; j++) {
        grupo.push(array[j]);
    }
    matrizGrupos.push(grupo);
}

console.log(matrizGrupos); // Devuelve [[1, 2, 3], [4, 5, 6], [7, 8]]

```