# Operaciones Matemáticas

## 1. **Imprimir un mensaje de saludo**  
Crea una función llamada `saludar` que reciba un nombre como parámetro y devuelva un mensaje de saludo personalizado.

```javascript
function saludar(nombre) {
    let mensaje = 'Hola, ' + nombre
    return mensaje
}

// ================== MAIN ================== //

let saludo = saludar('Juan')
console.log(saludo)
```

## 2. **Suma de dos números**  
Crea una función llamada `sumar` que reciba dos números y devuelva su suma.

```javascript
function sumar(a, b) {
    let suma = a + b
    return suma
}

// ================== MAIN ================== //

let suma = sumar(3, 5)
console.log(suma)
```

## 3. **Número al cuadrado**  
Haz una función llamada `alCuadrado` que reciba un número y devuelva su cuadrado.

```javascript
function alCuadrado(numero) {
    let cuadrado = numero * numero
    return cuadrado
}

// ================== MAIN ================== //

let cuadrado = alCuadrado(4)
console.log(cuadrado)
```

## 4. **¿Es par?**  
Crea una función llamada `esPar` que reciba un número y devuelva `true` si es par o `false` si es impar.

```javascript
function esPar(numero) {
    return (numero % 2 == 0)
}

// ================== MAIN ================== //

let par = esPar(6)
console.log(par)
```

## 5. **Calcular el factorial de un número**  
Haz una función llamada `factorial` que reciba un número y devuelva su factorial calculado de forma iterativa.

```javascript
function factorial(numero) {
    let resultado = 1
    for (let i = 1; i <= numero; i++) {
        resultado *= i
    }
    return resultado
}

// ================== MAIN ================== //

let fact = factorial(5)
console.log(fact)
```

## 6. **Decir si un número es positivo o negativo**  
Crea una función llamada `esPositivo` que reciba un número y devuelva `true` o `false` dependiendo de su valor.

```javascript
function esPositivo(numero) {
    return (numero > 0)
}

// ================== MAIN ================== //

let positivo = esPositivo(-3)
console.log(positivo)
```

## 7. **Convertir grados Celsius a Fahrenheit**  
Haz una función llamada `celsiusAFahrenheit` que reciba un valor en grados Celsius y devuelva su conversión a Fahrenheit usando la fórmula `(Celsius * 9/5) + 32`.

```javascript
function celsiusAFahrenheit(celsius) {
    let fahrenheit = (celsius * 9 / 5) + 32
    return fahrenheit
}

// ================== MAIN ================== //

let fahrenheit = celsiusAFahrenheit(25)
console.log(fahrenheit)
```

## 8. **Encontrar el número mayor**  
Crea una función llamada `mayor` que reciba dos números y devuelva el mayor de los dos.

```javascript
function mayor(a, b) {
    let maximo = a

    if (b > a) {
        maximo = b
    }

    return maximo
}

// ================== MAIN ================== //

let maximo = mayor(10, 15)
console.log(maximo)
```

## 9. **Obtener el menor de tres números**  
Crea una función llamada `menorDeTres` que reciba tres números y devuelva el menor de los tres.

```javascript
function menorDeTres(a, b, c) {
    let minimo = a
    if (b < minimo) {
        minimo = b
    }
    if (c < minimo) {
        minimo = c
    }
    return minimo
}

// ================== MAIN ================== //

let minimo = menorDeTres(3, 7, 1)
console.log(minimo)
```

## 10. **Calcular el área de un triángulo**  
Crea una función llamada `areaTriangulo` que reciba la base y la altura de un triángulo y devuelva su área calculada con la fórmula `(base * altura) / 2`.

```javascript
function areaTriangulo(base, altura) {
    let area = (base * altura) / 2
    return area
}

// ================== MAIN ================== //

let area = areaTriangulo(10, 5)
console.log(area)
```

---

# Manipulación de Arrays

## 11. **Sumar todos los números de un array**  
Crea una función llamada `sumarArray` que reciba un array de números y devuelva la suma de todos sus elementos.

```javascript
function sumarArray(array) {
    let suma = 0

    for (let numero of array) {
        suma += numero
    }

    return suma
}

// ================== MAIN ================== //

let sumaArray = sumarArray([1, 2, 3, 4, 5])
console.log(sumaArray)
```

## 12. **Obtener números impares de un array**  
Crea una función llamada `obtenerImpares` que reciba un array y devuelva un nuevo array con los números impares.

```javascript
function obtenerImpares(array) {
    let impares = []

    for (let numero of array) {
        if (numero % 2 != 0) {
            impares.push(numero)
        }
    }

    return impares
}


// ================== MAIN ================== //

let impares = obtenerImpares([1, 2, 3, 4, 5, 6])
console.log(impares)
```

## 13. **Invertir un array**  
Crea una función llamada `invertirArray` que reciba un array y devuelva un nuevo array con los elementos en orden inverso.

```javascript
function invertirArray(array) {
    let invertido = []

    for (let i = array.length - 1; i >= 0; i--) {
        invertido.push(array[i])
    }

    return invertido
}

// ================== MAIN ================== //

let invertido = invertirArray([1, 2, 3, 4, 5])
console.log(invertido)
```

## 14. **Calcular el promedio de un array**  
Crea una función llamada `promedioArray` que reciba un array de números y devuelva su promedio.

```javascript
function promedioArray(array) {
    let suma = 0
    
    for (let numero of array) {
        suma += numero
    }

    let promedio = suma / array.length

    return promedio
}


// ================== MAIN ================== //

let promedio = promedioArray([1, 2, 3, 4, 5])
console.log(promedio)
```

## 15. **Filtrar números mayores a un valor**  
Crea una función llamada `filtrarNumerosMayores` que reciba un array de números y un valor, y devuelva un nuevo array con los números mayores que el valor dado.

```javascript
function filtrarNumerosMayores(array, valor) {
    let mayores = []

    for (let numero of array) {
        if (numero > valor) {
            mayores.push(numero)
        }
    }

    return mayores
}


// ================== MAIN ================== //

let mayores = filtrarNumerosMayores([1, 2, 3, 4, 5, 6], 3)
console.log(mayores)
```

## 16. **Verificar si un número está en un array**  
Crea una función llamada `verificarNumeroEnArray` que reciba un número y un array, y devuelva `true` si el número está presente en el array o `false` si no lo está.

```javascript
function verificarNumeroEnArray(numero, array) {
    let encontrado = false

    for (let i = 0; i < array.length && !encontrado; i++) {
        if (array[i] == numero) {
            encontrado = true
        }
    }

    return encontrado
}


// ================== MAIN ================== //

let estaEnArray = verificarNumeroEnArray(3, [1, 2, 3, 4, 5])
console.log(estaEnArray)
```

---

# **Manipulación de Cadenas**

## 17. **Revertir una cadena**  
Crea una función llamada `revertirCadena` que reciba una cadena de texto y devuelva la misma cadena con los caracteres en orden inverso.

```javascript
function revertirCadena(cadena) {
    let invertida = ""

    for (let i = cadena.length - 1; i >= 0; i--) {
        invertida += cadena[i]
    }

    return invertida
}

// ================== MAIN ================== //

let cadenaInvertida = revertirCadena("Hola Mundo")
console.log(cadenaInvertida)
```

## 18. **Contar vocales en una cadena**  
Crea una función llamada `contarVocalesEnCadena` que reciba una cadena de texto y devuelva la cantidad total de vocales que contiene.

```javascript
// Función auxiliar para verificar si un carácter es una vocal
function esVocal(caracter) {
    let vocales = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    let esVocal = false

    for (let i = 0; i < vocales.length && !esVocal; i++) {
        if (caracter == vocales[i]) {
            esVocal = true
        }
    }

    return esVocal
}

// Función principal para contar las vocales en una cadena
function contarVocalesEnCadena(cadena) {
    let cantidadVocales = 0
    for (let caracter of cadena) {
        if (esVocal(caracter)) {
            cantidadVocales++
        }
    }
    return cantidadVocales
}

// ================== MAIN ================== //

let totalVocales = contarVocalesEnCadena('Hola Mundo')
console.log(totalVocales)
```

## 19. **Capitalizar la primera letra de una palabra**  
Crea una función llamada `capitalizarPrimeraLetra` que reciba una palabra y devuelva la misma palabra con la primera letra en mayúscula. Investiga el uso de `toUpperCase()`.

```javascript

/*Los strings son inmutables en JavaScript, lo que significa que
 no puedes modificar directamente un carácter dentro de un 
 string utilizando su índice (palabra[0]), ni siquiera cuando 
 aplicas un método como toUpperCase().*/

function capitalizarPrimeraLetra(palabra) {
    // Obtener la primera letra de la palabra y convertirla a mayúsculas
    let primeraLetra = palabra[0].toUpperCase()
    
    // Construir el resto de la palabra manualmente
    let restoPalabra = ''
    for (let i = 1; i < palabra.length; i++) {
        restoPalabra += palabra[i]
    }
    
    // Combinar la primera letra capitalizada con el resto de la palabra
    let resultado = primeraLetra + restoPalabra
    
    return resultado
}

// ================== MAIN ================== //

let palabraCapitalizada = capitalizarPrimeraLetra('hola')
console.log(palabraCapitalizada)
```

## 20. **Contar palabras en una cadena**  
Crea una función llamada `contarPalabrasEnCadena` que reciba una cadena y devuelva el número de palabras que contiene, asumiendo que están separadas por espacios. Investiga el uso de `split()`.

```javascript
function contarPalabrasEnCadena(cadena) {
    let palabras = cadena.split(' ')
    let totalPalabras = palabras.length
    return totalPalabras
}

// ================== MAIN ================== //

let numeroPalabras = contarPalabrasEnCadena('Hola Mundo este es un ejemplo')
console.log(numeroPalabras)
```