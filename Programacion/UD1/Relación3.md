# Relación de ejercicios 3: BUCLES

### 1.- Solicitar un color. Mostrar por pantalla 5 veces el color.  
*Ejemplo:*
```
{color}
{color}
{color}
{color}
{color}
```
*Solución:*
```javascript
let color = prompt("Introduce un color:")

for (let i = 0; i < 5; i++) {
  console.log(color);
}
```
### 2.- Solicitar un color. Mostrar por pantalla 5 veces el color separado por espacios.  
*Ejemplo:*
```
{color} {color} {color} {color} {color}
```
*Solución:*
```javascript
let color = prompt("Introduce un color:")
let salida = ""

for (let i = 0; i < 5; i++) {
    salida += color + " "
}

console.log(salida)
```
### 3.- Solicitar un color. Mostrar por pantalla 5 veces el color separado por guiones.  
*Ejemplo:*
```
{color} - {color} - {color} - {color} - {color}
```
*Solución:*
```javascript
let color = prompt("Introduce un color:")
let salida = ""

for (let i = 0; i < 5; i++) {
    salida += color + "-"
}

console.log(salida)
```
```javascript
// Versión para que no salga un - al final

let color = prompt("Introduce un color:")
let salida = ""

for (let i = 0; i < 4; i++) {
    salida += color + "-"
}

salida += color 
console.log(salida)
```
### 4.- Solicitar un número entero y un color. Mostrar por pantalla el color separado por espacios tantas veces como nos indique el número.  
*Ejemplo:*
```
// Si el numero vale 5:
{color} {color} {color} {color} {color}
```
*Solución:*
```javascript
let numero = prompt("Introduce un numero: ")
numero = Number(numero)
let color = prompt("Introduce un color:")
let salida = ""

for (let i = 0; i < numero; i++) {
    salida += color + " "
}

console.log(salida)
```
### 5.- Solicitar un número entero y un color. Mostrar por pantalla el color tantas veces como nos indique el número, numerando las apariciones del color.  
*Ejemplo:*
```
// Si el numero vale 5:
1. {color}
2. {color}
3. {color}
4. {color}
5. {color}
```
*Solución:*
```javascript
let numero = prompt("Introduce un numero: ")
numero = Number(numero)
let color = prompt("Introduce un color:")

for (let i = 0; i < numero; i++) {
    // (i+1) es para que se muestre la numeración por pantalla empezando por el 1 y no por el 0, que es el primer valor de i.
    console.log((i+1) + ".- " + color) 
}
```
### 6.- Solicitar un número entero. Mostrar por pantalla todos los números desde 0 hasta el número.   
*Ejemplo:*
```
0
1
2
3
.
.
.
{numero}
```
*Solución:*
```JavaScript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)
for (let i = 0; i <= numero; i++) {
  console.log(i)
}
```
### 7.- Solicitar un número entero. Mostrar por pantalla todos los números desde el número hasta el 0.  
*Ejemplo:*
```
{numero}
.
.
.
3
2
1
0
```
*Solución:* 
```JavaScript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

for (let i = numero; i >= 0; i--) {
  console.log(i)
}
```
### 8.- Solicitar un número entero. Mostrar por pantalla todos los números pares desde 0 hasta el número.  
*Ejemplo:*
```
0
2
4
.
.
.
{numero}
```
*Solución:*
```JavaScript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

for (let i = 0; i <= numero; i+=2) {
    console.log(i)
}
```
### 9.- Solicitar un número entero. Mostrar por pantalla todos los números impares desde 0 hasta el número.  
*Ejemplo:*
```
1
3
5
.
.
.
{numero}
```
*Solución:*
```JavaScript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

for (let i = 1; i <= numero; i+=2) {
    console.log(i)
}
```
### 10.- Solicitar dos números enteros. Mostrar por pantalla todos los números desde el primer número introducido hasta el segundo número introducido. Comprueba que el primero es menor que el segundo.  
*Ejemplo:*
```
{numero1}
.
.
.
12
13
14
.
.
.
{numero2}
```
*Solución:*
```javascript
let numero1 = prompt("Introduce un número entero:")
numero1 = Number(numero1)
let numero2 = prompt("Introduce otro número entero:")
numero2 = Number(numero2)

if (numero1 <= numero2){
    for (let i = numero1; i <= numero2; i++) {
        console.log(i)
    }
} else {
    console.log("El segundo número es menor que el primero... Podemos darles la vuelta:")
    for (let i = numero2; i <= numero1; i++) {
        console.log(i)
    }
}
```
### 11.- Solicitar dos números enteros. Mostrar por pantalla todos los números desde el segundo número introducido hasta el primer número introducido. Comprueba primero que el primero es menor que el segundo.  
*Ejemplo:*
```
{numero2}
.
.
.
14
13
12
.
.
.
{numero1}
```
### 12.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 2 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 2 es el {siguienteNumero}
```
*Solución:* 
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)
// numero%2 == 0 -> Es múltiplo de 2
// numero%2 != 0 -> No es múltiplo de 2

// Este numero++ es para empezar a comprobar desde el siguiente número del que se ha introducido
numero++ // numero = numero + 1
console.log("Incremento el número para empezar a comprobar desde el siguiente: " + numero)

while (numero%2 != 0) {
    numero++
    console.log("Dentro del bucle: Ahora el número vale " + numero)
}
console.log("Salgo del bucle")
console.log("El siguiente número multiplo de 2: " + numero)
```
### 13.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 3 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 3 es el {siguienteNumero}
```
*Solución:*
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)
// numero%3 == 0 -> Es múltiplo de 3
// numero%3 != 0 -> No es múltiplo de 3

// Este numero++ es para empezar a comprobar desde el siguiente número del que se ha introducido
// numero++ // numero = numero + 1 -> Con el for se escribe en el primer apartado
console.log("Incremento el número para empezar a comprobar desde el siguiente: " + numero)

/*while (numero%3 != 0) {
    numero++
    console.log("Dentro del bucle: Ahora el número vale " + numero)
}*/

for(numero++ ; numero%3 != 0 ; numero++){
    console.log("Dentro del bucle: Ahora el número vale " + numero)
}

console.log("Salgo del bucle")
console.log("El siguiente número multiplo de 3: " + numero)
```
### 14.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 5 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 5 es el {siguienteNumero}
```
*Solución:*
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)
// numero%5 == 0 -> Es múltiplo de 5
// numero%5 != 0 -> No es múltiplo de 5

console.log("Incremento el número para empezar a comprobar desde el siguiente: " + numero)

let i // Declarando la i, para que exista fuera del bucle for y podamos usarla al final del programa
for(i = numero+1 ; i%5 != 0 ; i++){
    console.log("Dentro del bucle: Ahora el i vale " + i)
    console.log("Dentro del bucle: Ahora el número vale " + numero)
}

console.log("Salgo del bucle")
console.log("El siguiente número multiplo de 5: " + i)
```
### 15.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 2 y 3 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 2 y de 3 es el {siguienteNumero}
```
*Solución:*
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

for(numero++ ; numero%2 != 0 || numero%3 != 0 ; numero++){
    console.log("Dentro del bucle: Ahora el número vale " + numero)
}

console.log("El siguiente número multiplo de 2 y 3 es " + numero)
```
### 16.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 2 y 5 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 2 y de 5 es el {siguienteNumero}
```
### 17.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 3 y 5 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 2 y de 5 es el {siguienteNumero}
```
### 18.- Solicitar un número entero. Mostrar el siguiente número múltiplo de 2, 3 y 5 apartir del número.  
*Ejemplo:*
```
El siguiente número después de {número} que es múltiplo de 2, de 3 y de 5 es el {siguienteNumero}
```
### 19.- Solicitar dos números enteros. Mostrar el siguiente número múltiplo del primer número introducido, apartir del segundo número introducido.  
*Ejemplo:*
```
El siguiente número después de {número2} que es múltiplo de {numero1} es el {siguienteNumero}
```
### 20.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
*
**
***
****
*****
```
*Solución:*
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

let fila = ""

for(let i = 0 ;  i < numero; i++){
    fila += "*" // fila = fila + "*"
    console.log(fila)
}
```
### 21.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
    *
   **
  ***
 ****
*****
```

*Solución:*
```javascript
let numero = prompt("Introduce un número entero:")
numero = Number(numero)

let fila = ""
let espacios = ""

for(let i = 0 ;  i < numero ; i++){
    fila += "*"
    espacios = ""
    for(let j = 0 ; j < numero-i ; j++){
        espacios += " "
    }
    console.log(espacios + fila)
}
```

### 22.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
*****
****
***
**
*
```

*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let asteriscos = ""

for (let i = 0; i < filas; i++) {

    asteriscos = ""
    for (let j = 0; j < filas - i; j++) {
        asteriscos += "*"
    }

    console.log(asteriscos)
}
```

### 23.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
*****
 ****
  ***
   **
    *
```

*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let asteriscos = ""
let espacios = ""

for (let i = 0; i < filas; i++) {

    espacios+=" "
    asteriscos = ""

    for (let j = 0; j < filas - i; j++) {
        asteriscos += "*"
    }

    console.log(espacios+asteriscos)
}
```

### 24.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
    **
   ****
  ******
 ********
**********
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let asteriscos = ""
let espacios = ""

for(let i = 0 ;  i < filas ; i++){
    asteriscos += "**"
    espacios = ""
    for(let j = 0 ; j < filas-i ; j++){
        espacios += " "
    }
    console.log(espacios + asteriscos)
}
```

### 25.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
     *
    ***
   *****
  *******
 *********
***********
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let asteriscos = "*" // Se crea la primera fila, con un solo asterisco
let espacios = ""

for(let i = 0 ;  i < filas ; i++){
    
    for(let j = 0 ; j < filas-i ; j++){ // Se rellenan los espacios
        espacios += " "
    }
    
    console.log(espacios + asteriscos)  // Se muestra por pantalla

    asteriscos += "**"                  // Se actualiza el número de asterisco
    espacios = ""
}
```

### 26.- Solicitar dos números enteros. Dibujar un cuadrado con tantas filas como indique el primer número introducido y tantas columnas como indique el segundo número.  
*Ejemplo:*
```
*****
*****
*****
*****
*****
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let columnas = prompt("Introduce número de columnas:")
columnas = Number(columnas)

let asteriscos = ""
for (let j = 0; j < columnas; j++) {
    asteriscos += "*"
}

for (let i = 0; i < filas; i++) {
    console.log(asteriscos)
}
```

### 27.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
1
12
123
1234
12345
```
*Solución:*
```javascript
let filas = prompt("Introduce un número entero:")
filas = Number(filas)

let numeros = ""

for (let i = 1; i <= filas; i++) {
    numeros += i // numeros = numeros + "*"
    console.log(numeros)
}
```

### 28.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
    1
   21
  321
 4321
54321
```
*Solución:*
```javascript
let filas = prompt("Introduce el número de filas:")
filas = Number(filas)

let numeros = ""
let espacios = ""

for(let i = 1 ;  i <= filas ; i++){
    numeros += i
    espacios = ""
    for(let j = 0 ; j < filas-i ; j++){
        espacios += " "
    }
    console.log(espacios + numeros)
}
```

### 29.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
    11
   2112
  321123
 43211234
5432112345
```
*Solución:*
```javascript
let filas = prompt("Introduce el número de filas:")
filas = Number(filas)

let numeros = ""
let espacios = ""

for(let i = 1 ;  i <= filas ; i++){
    numeros = i + numeros + i 
    espacios = ""
    for(let j = 0 ; j < filas-i ; j++){
        espacios += " "
    }
    console.log(espacios + numeros)
}
```

### 30.- Solicitar un número entero. Dibujar una pirámide con tantas filas como indique el número.  
*Ejemplo:*
```
     1
    121
   12321
  1234321
 123454321
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let izquierda = ""
let derecha = ""
let espacios = ""

for(let i = 1 ;  i <= filas ; i++){
    
    for(let j = 0 ; j <= filas-i ; j++){
        espacios += " "
    }

    izquierda = izquierda + i
    
    console.log(espacios + izquierda + derecha)

    derecha = i + derecha
    espacios = ""
}
```

### 31.- Solicitar dos números enteros. Dibujar un cuadrado con tantas filas como indique el primer número introducido y tantas columnas como indique el segundo número.  
*Ejemplo:*
```
12345
12345
12345
12345
12345
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let columnas = prompt("Introduce número de columnas:")
columnas = Number(columnas)

let asteriscos = ""
for (let j = 1; j <= columnas; j++) {
    asteriscos += j
}

for (let i = 0; i < filas; i++) {
    console.log(asteriscos)
}
```

### 32.- Solicitar dos números enteros. Dibujar un cuadrado con tantas filas como indique el primer número introducido y tantas columnas como indique el segundo número.  
*Ejemplo:*
```
x-x-x
x-x-x
x-x-x
x-x-x
x-x-x
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let columnas = prompt("Introduce número de columnas:")
columnas = Number(columnas)

let patron = ""
for (let j = 0; j < columnas; j++) {
    if (j % 2 == 0) {
        patron += "x"
    }else{
        patron += "-"
    }
}

for (let i = 0; i < filas; i++) {
    console.log(patron)
}
```
### 33.- Solicitar dos números enteros. Dibujar un cuadrado con tantas filas como indique el primer número introducido y tantas columnas como indique el segundo número.  
*Ejemplo:*
```
x-x-x
-x-x-
x-x-x
-x-x-
x-x-x
```
*Solución:*
```javascript
let filas = prompt("Introduce número de filas:")
filas = Number(filas)

let columnas = prompt("Introduce número de columnas:")
columnas = Number(columnas)

let patronFilasImpares = ""
let patronFilasPares = ""
for (let j = 0; j < columnas; j++) {
    if (j % 2 == 0) {
        patronFilasImpares += "-"
        patronFilasPares += "x"
    }else{
        patronFilasImpares += "x"
        patronFilasPares += "-"
    }
}

for (let i = 0; i < filas; i++) {
    if (i % 2 == 0) {
        console.log(patronFilasPares)
    }else{
        console.log(patronFilasImpares)
    }
}
```
### 34.- Solicitar un número entero. Calcular si el número es primo o no. Esto significa que no tenga ningun divisor aparte de sí mismo y el 1.  
*Ejemplo:*
```
// Si el número es primo.
El número {numero} es primo.
// Si no es primo.
El número {numero} no es primo.
```
*Solución:*
```javascript
let numero = prompt("Introduce número:")
numero = Number(numero)

let esPrimo = true

for (let i = 2; i < numero && esPrimo; i++) {
    if( numero%i == 0){
        esPrimo = false
    }
}

if(esPrimo){
    console.log("El número " + numero + " es primo")
}else{
    console.log("El número " + numero + " NO es primo")
}
```
### 35.- Solicitar un número entero. Calcular si el número introducido es primo o no, y si no lo es, calcula el siguiente número primo. Esto significa que no tenga ningun divisor aparte de sí mismo y el 1.  
*Ejemplo:*
```
// Si el número es primo.
El número {numero1} es primo.
// Si no es primo.
El número {numero1} no es primo pero el {siguienteNumero} sí que lo es.
```
*Solución:*
```javascript
let numero = prompt("Introduce número:")
numero = Number(numero)

let esPrimo = true

for (let i = 2; i < numero && esPrimo; i++) {
    if (numero % i == 0) {
        esPrimo = false
    }
}

if (esPrimo) {
    console.log("El número " + numero + " es primo")
} else {
    let siguienteNumero = numero++
    let siguientePrimo = false

    while (!siguientePrimo) {
        siguientePrimo=true
        for (let i = 2; i < siguienteNumero && siguientePrimo; i++) {
            if (siguienteNumero % i == 0) {
                siguientePrimo = false
            }
        }
        if(!siguientePrimo){
            siguienteNumero++
        }
    }

    console.log("El siguiente primo es " + siguienteNumero)
}
```
### 36.- Solicitar palabras por pantalla hasta que la palabra introducida sea SALIR.  
*Ejemplo:*
```
Introduce una palabra: palabra1
Introduce una palabra: palabra2
Introduce una palabra: palabra3
.
.
.
Introduce una palabra: SALIR
```
*Solución:*
```JavaScript
let palabra = ""

while (palabra != "SALIR") {
  palabra = prompt("Introduce una palabra:")
  console.log("Palabra introducida: " + palabra)
}
```
### 37.- Solicitar una palabra. Solicitar otra palabra hasta que la segunda palabra coincida con la palabra inicial.  
*Ejemplo:*
```
Introduce una herramienta: herramienta1
Introduce una herramienta: herramienta2
Introduce una herramienta: herramienta3
.
.
.
Introduce una herramienta: {herramienta}
```
*Solución:*
```javascript
let primeraHerramienta = prompt("Introduce una herramienta:")
let herramienta = ""

while (herramienta != primeraHerramienta) {
    herramienta = prompt("Introduce una herramienta:")
    console.log("Herramienta introducida: " + herramienta)
}
```
### 38.- Solicitar un número entero. Solicitar otro número por pantalla hasta que este se corresponda con el primer número introducido.  
*Ejemplo:*
```
Introduce un número: 12
No es el número correcto. Introduce otro número: 23
.
.
.
¡Es el número correcto!
```
*Solución:*
```javascript
let primerNumero = prompt("Introduce un número:")
primerNumero = Number(primerNumero)
let segundoNumero = prompt("Introduce otro número:")
segundoNumero = Number(segundoNumero)

while (segundoNumero != primerNumero) {
    segundoNumero = prompt("No es el número correcto. Introduce otro número:")
    // console.log("número introducido: " + segundoNumero)
}

console.log("¡Es el número correcto!")
```
### 39.- Solicitar un número entero. Solicitar otro número por pantalla hasta que este se corresponda con el primer número introducido. Indicar si el número buscado es mayor o menor que el introducido.  
*Ejemplo:*
```
Introduce un número: 12
El número que debes introducir es mayor. Introduce otro número: 23
El número que debes introducir es menor. Introduce otro número: 17
.
.
.
¡Es el número correcto!
```
*Solución:*
```javascript
let primerNumero = prompt("Introduce un número:")
primerNumero = Number(primerNumero)
let segundoNumero = prompt("Introduce otro número:")
segundoNumero = Number(segundoNumero)

while (segundoNumero != primerNumero) {
    if(segundoNumero > primerNumero){
        segundoNumero = prompt("El número que debes introducir es menor. Introduce otro número:")
    }
    else{
        segundoNumero = prompt("El número que debes introducir es mayor. Introduce otro número:")
    }
    
    // console.log("número introducido: " + segundoNumero)
}

console.log("¡Es el número correcto!")
```
### 40.- Solicitar un número entero. Sumar todos los dígitos del número.  
*Ejemplo:*
```
Introduce un número: 1234
Los dígitos del número 1234 suman: 10
``` 
*Solución:*
```javascript
let numeroUsuario = prompt("Introduce un número:")
numeroUsuario = Number(numeroUsuario)

let cifrasRestantes = numeroUsuario
let resto
let suma = 0

while (cifrasRestantes != 0) {
    resto = cifrasRestantes % 10
    cifrasRestantes = parseInt(cifrasRestantes / 10)

    suma+=resto
}

console.log("Los dígitos del número "+ numeroUsuario +" suman: " + suma)
```

### 41.- Solicitar un número entero. Calcular el factorial de dicho número.
*Ejemplo:*
```
El factorial de 5 es: 120
``` 
*Solución:*
```javascript
let numero = prompt("Introduce un número:")
numero = Number(numero)

let factorial = 1
for (let i = 1; i <=numero; i++) {
       factorial = factorial * i
    // factorial *= i -> otra forma de escribir lo mismo
}

console.log("El factorial de " + numero + " es " + factorial)
```

### 42.- Solicitar un número entero. Calcular todos factoriales hasta dicho número.
*Ejemplo:*
```
Introduce un número: 5
Los factoriales hasta 5 son:
1! = 1
2! = 2
3! = 6
4! = 24
5! = 120
``` 
*Solución:*
```javascript
let numero = prompt("Introduce un número:")
numero = Number(numero)

console.log("Los factoriales hasta " + numero + " son:")

let factorial = 1
for (let i = 1; i <=numero; i++) {
    factorial = factorial * i
    console.log(i + "! = " + factorial)
}
```

### 43.- Solicitar un número entero. Calcular todos los primos menores que dicho número.
*Ejemplo:*
```
Introduce un número: 10
Los primos menores que 10 son:
2
3
5
7
``` 
*Solución:*
```javascript
let numero = prompt("Introduce número:")
numero = Number(numero)

console.log("Los primos menores que "+ numero +" son:")

for (let i = 2; i < numero; i++) {
    let esPrimo = true
    for (let j = 2; j < i && esPrimo; j++) {
        if (i % j == 0) {
            esPrimo = false
        }
    }
    if (esPrimo) {
        console.log(i)
    }
}
```

### 44.- Solicitar un número entero. Multiplicar todos los dígitos del número.  
*Ejemplo:*
```
Introduce un número: 1234
El producto de los dígitos del número 1234 es: 24
``` 
*Solución:*
```javascript
let numeroUsuario = prompt("Introduce un número:")
numeroUsuario = Number(numeroUsuario)

let cifrasRestantes = numeroUsuario
let resto
let producto = 1

while (cifrasRestantes != 0) {
    resto = cifrasRestantes % 10
    cifrasRestantes = parseInt(cifrasRestantes / 10)

    producto*=resto
}

console.log("Los dígitos del número "+ numeroUsuario +" multiplican: " + producto)

```