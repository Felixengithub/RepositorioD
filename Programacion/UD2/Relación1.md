### 1. **Crear un array y acceder a los elementos**
   - Crea un array llamado `numeros` que contenga los números `[5, 10, 15, 20]`.
   - Imprime en la consola el primer y el último elemento accediendo directamente por su índice.

*Solución:*
```javascript
const numeros = [5, 10, 15, 20]

console.log(numeros[0])
console.log(numeros[3])
```

### 2. **Añadir elementos**
   - Crea un array vacío llamado `colores`.
   - Añade los colores `"rojo"`, `"verde"` y `"azul"` al final del array y luego imprime el array.

*Solución:*
```javascript
const colores = []

colores.push("rojo")
colores.push("verde")
colores.push("azul")

// colores.push("rojo", "verde", "azul")

console.log(colores)
```

### 3. **Eliminar el último elemento**
   - Usando el array `colores` del ejercicio anterior, elimina el último color.
   - Muestra el array resultante y el valor del color eliminado.

*Solución:*
```javascript
const colores = []

colores.push("rojo")
colores.push("verde")
colores.push("azul")

let colorEliminado = colores.pop()

console.log(colorEliminado)
console.log(colores)
```

### 4. **Añadir elementos al inicio**
   - Crea un array llamado `animales` que contenga los elementos `"perro"`, `"gato"`.
   - Añade `"loro"` y `"tortuga"` al inicio del array y luego imprime el array.

*Solución:*
```javascript
const animales = ["perro", "gato"]

animales.unshift("loro")
animales.unshift("tortuga")

console.log(animales)
```

### 5. **Eliminar el primer elemento**
   - Usando el array `animales` del ejercicio anterior, elimina el primer elemento.
   - Muestra el array después de la eliminación y el valor del elemento eliminado.

*Solución:*
```javascript
const animales = ["perro", "gato"]

animales.unshift("loro")
animales.unshift("tortuga")

let elementoEliminado = animales.shift()

console.log(elementoEliminado)
console.log(animales)
```

### 6. **Añadir y eliminar elementos simultáneamente**
   - Crea un array llamado `frutas` que contenga los elementos `"manzana"`, `"banana"`, `"naranja"`.
   - Elimina el primer elemento y añade `"fresa"` al final.
   - Imprime el array resultante.

*Solución:*
```javascript
const frutas = ["manzana", "banana", "naranja"]

frutas.shift()
frutas.push("fresa")

console.log(frutas)
```

### 7. **Acceso y modificación directa**
   - Crea un array llamado `dias` que contenga los días de la semana de lunes a domingo.
   - Cambia el valor del día `"domingo"` por `"Domingo (fin de semana)"` accediendo directamente al índice.

*Solución:*
```javascript
const diasSemana = ["lunes", "martes", "miércoles", "jueves", "viernes", "sábado", "domingo"]

diasSemana[6] = "Domingo (fin de semana)"

console.log(diasSemana)
```

### 8. **Intercambio de elementos del array**
   - Crea un array con los números `[100, 200, 300]`.
   - Usa una variable temporal para intercambiar los valores del primer y tercer elemento, e imprime el array después del cambio.

*Solución:*
```javascript
const numeros = [100, 200, 300] // numeros = [100, 200, 300] | temporal = undefined

let temporal = numeros[0] // numeros = [100, 200, 300] | temporal = 100
numeros[0] = numeros[2] // numeros = [300, 200, 300] | temporal = 100
numeros[2] = temporal // numeros = [300, 200, 100] | temporal = 100

console.log(numeros)
```

### 9. **Simulación de una cola (FIFO)**
   - Crea un array vacío llamado `cola`.
   - Añade los elementos `"cliente1"`, `"cliente2"` y `"cliente3"` al final del array.
   - Simula el proceso de atender a los clientes eliminando el primero e imprime el cliente atendido y el estado de la cola.

*Solución:*
```javascript
// FIFO = First In First Out
const cola = []

cola.push("cliente1")
cola.push("cliente2")
cola.push("cliente3")

let clienteAtendido = cola.shift()

console.log(clienteAtendido)
console.log(cola)
```

### 10. **Simulación de una pila (LIFO)**
   - Crea un array vacío llamado `pila`.
   - Añade los números `10`, `20` y `30` al final de la pila.
   - Simula el proceso de extraer elementos de la pila eliminando el último elemento e imprime el número extraído y el estado de la pila.

*Solución:*
```javascript
// LIFO = Last In First Out
const pila = []

pila.push("10")
pila.push("20")
pila.push("30")

let numeroExtraido = pila.pop()

console.log(numeroExtraido)
console.log(pila)
```

### 11. **Añadir varios elementos al final y al principio**
   - Crea un array llamado `nombres` con los valores `"Ana"`, `"Pedro"`.
   - Añade `"Laura"` al final del array y `"Carlos"` al inicio.
   - Imprime el array después de realizar las operaciones.

*Solución:*
```javascript
const nombres = ["Ana", "Pedro"]
nombres.push("Laura")
nombres.unshift("Carlos")

console.log(nombres)
```

### 12. **Eliminar varios elementos del inicio y del final**
   - Usando el array `nombres` del ejercicio anterior, elimina el primer y el último elemento.
   - Imprime el array resultante y los valores eliminados.

*Solución:*
```javascript
const nombres = ["Ana", "Pedro"]
nombres.push("Laura")
nombres.unshift("Carlos")

let primerElementoEliminado = nombres.shift()
let ultimoElementoEliminado = nombres.pop()

console.log(primerElementoEliminado)
console.log(ultimoElementoEliminado)
console.log(nombres)
```

### 13. **Invertir un array manualmente**
   - Crea un array llamado `letras` con los valores `"a"`, `"b"`, `"c"`, `"d"`.
   - Invierte el array utilizando alguno (o varios) de las siguientes funciones: `push()`, `pop()`, `shift()` y `unshift()`.
   - Imprime el array invertido.

*Solución:*
```javascript
const letras = ["a", "b", "c", "d", "e", "f", "g", "h"]
const invertido = []

for (let i = letras.length - 1; i >= 0; i--) {
    let letraActual = letras[i]
    invertido.push(letraActual)    
}

console.log(invertido)

// OPCIÓN MENOS EFICIENTE POR EL USO DE UNSHIFT:
// for (let i = 0; i < letras.length; i++) {
//     let letraActual = letras[i]
//     invertido.unshift(letraActual)    
// }
```

### 14. **Mover un elemento al final**
   - Dado el array `numeros = [5, 10, 15, 20]`, mueve el primer número al final del array usando `shift()` y `push()`.
   - Imprime el array después del movimiento.

*Solución:*
```javascript
const numeros = [5, 10, 15, 20]

let primerNumero = numeros.shift()
numeros.push(primerNumero)

console.log(numeros)

```

### 15. **Eliminar todos los elementos de un array uno por uno**
   - Crea un array con los valores `[1, 2, 3, 4, 5]`.
   - Elimina todos los elementos uno por uno utilizando `pop()` hasta que el array quede vacío.
   - Imprime el estado del array después de cada eliminación.

*Solución:*
```javascript
const numeros = [1, 2, 3, 4, 5]
let tamanioInicial = numeros.length

for (let i = 0; i < tamanioInicial; i++) {
    numeros.pop()
    console.log(numeros)
}
```

### 16. **Rellenar un array con elementos secuenciales**
   - Crea un array vacío llamado `secuencia`.
   - Usando un bucle, añade los números del 1 al 5 al final del array.
   - Imprime el array resultante.

*Solución:*
```javascript
const numeros = []

for (let i = 1; i <= 5; i++) {
    numeros.push(i)
}

console.log(numeros)
```