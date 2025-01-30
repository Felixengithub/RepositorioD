## Ejemplo 1
Crea una función que reciba un número y devuelva una lista con los números pares menores que dicho número

*Solución:*
```javascript
function numerosPares(numero) {
    const listaNumerosPares = []

    for (let i = 2; i < numero; i++) {
        // Si el número es divisible entre dos (resto 0) significa que es par
        if (i % 2 == 0){
            // Si el número es par, lo añado al array
            listaNumerosPares.push(i)
        }
    }

    return listaNumerosPares
}
```

## Ejemplo 2
Crea un programa que reciba un número y devuelva un array con los primos menores que ese número

*Solución:*
```javascript
function obtenerListaPrimos(numero) {
    const listaNumerosPrimos = []

    for (let i = 2; i < numero; i++) {
        if (esPrimo(i)){
            // Si el número es primo, lo añado al array 
            listaNumerosPrimos.push(i)
        }
    }

    return listaNumerosPrimos
}

// 
function esPrimo(numero){
    let esPrimo = true

    // Un número es primo si solo es divisible entre 1 y si mismo
    for (let i = 2; i < numero && esPrimo; i++) {
        if( numero % i == 0){
            // En cuanto el número es divisible por otro, ya no es primo
            esPrimo = false
        }
    }

    return esPrimo
}


// =========================== MAIN =========================== //

let numero = Number(prompt("Introduce el número:"))

const listaDePrimos = obtenerListaPrimos(numero)

console.log(listaDePrimos)
```