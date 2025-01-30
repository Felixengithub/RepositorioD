## Relación de ejercicios 1: variables y operaciones aritméticas

### 1. **Adivina el Año de Nacimiento**
   - Pide al usuario su edad y calcula en qué año nació.
   ``` javascript
   let anioActual = 2024;

   let edadUsuario = prompt("Introduzca su edad:")
   edadUsuario = Number(edadUsuario)

   let anioNacimiento = anioActual - edadUsuario

   console.log("Naciste en " + anioNacimiento)
   ```

### 2. **Calculadora de Propinas**
   - Pide al usuario el total de una cuenta y el porcentaje de propina que quiere dejar. Calcula y muestra la propina.
   ``` javascript
   let totalCuenta = prompt("Introduzca el total de la cuenta:")
   let porcentajePropina = prompt("Introduzca porcentaje de propina:")

   totalCuenta = Number(totalCuenta)
   porcentajePropina = Number(porcentajePropina)

   let propina = totalCuenta * porcentajePropina / 100

   console.log("Debes aportar una propina de " + propina + "€" )
   ```

### 3. **Conversor de Edad de Perro a Edad Humana**
   - Pide la edad del perro y convierte su edad a "edad humana" (un año de perro son aproximadamente 7 años de humano).
   ``` javascript
   let edadPerro = prompt("Introduzca la edad de su perro:")
   edadPerro = Number(edadPerro)

   let edadHumana = edadPerro * 7

   console.log("La edad humana de tu perro es: " + edadHumana)
   ```

### 4. **Cálculo de Tiempo Restante**
   - Pregunta al usuario su edad y calcula cuántos días le quedan para cumplir 80 años (usa una estimación de días).
   ``` javascript
   let edad = prompt("Introduzca su edad:")
   edad = Number(edad)

   aniosQueFaltan = 80 - edad
   diasHasaLos80 = aniosQueFaltan * 365

   // diasHasaLos80 = (80 - edad) * 365

   console.log("Te faltan " + diasHasaLos80 + " días para los 80 años. Buena suerte!")
   ```

### 5. **Calculadora de Peso en la Luna**
   - Pide el peso del usuario y calcula cuánto pesaría en la Luna (aproximadamente el 16.5% de su peso en la Tierra).
   ``` javascript
   let pesoEnLaTierra = prompt("Introduzca su peso: ")
   pesoEnLaTierra = Number(pesoEnLaTierra)

   let pesoEnLaLuna = pesoEnLaTierra * 0.165 // 16.5 / 100 = 0.165

   console.log("En la Luna pesarías: " + pesoEnLaLuna + "kg")
   ```

### 6. **Conversor de Edad en Segundos**
   - Pide la edad del usuario y convierte esa edad a segundos.
   ```javascript
   let edad = prompt("Introduzca su edad: ")
   edad = Number(edad)

   let edadSegundos = edad * 31536000 // 365 * 24 * 60 * 60 = 31536000

   console.log("Has vivido al menos " + edadSegundos + " segundos!")
   ```

### 7. **Cálculo del Índice de Masa Corporal (IMC)**
   - Pide al usuario su peso y altura, y calcula su Índice de Masa Corporal (IMC) (fórmula: IMC = peso/altura^2).
   ```javascript
   let pesoKg = prompt("Introduzca su peso en Kg: ")
   let altura = prompt("Introduzca su altura en metros: ")

   pesoKg = Number(pesoKg)
   altura = Number(altura)

   let IMC = pesoKg / (altura * altura)

   console.log("Tu IMC es: " + IMC)
   ```

### 8. **Cálculo de la Velocidad Media**
   - Pide al usuario la distancia recorrida en kilómetros y el tiempo en minutos, y calcula la velocidad media en km/h.
   ```javascript
   let distanciaKm = prompt("Introduzca la distancia recorrida en km: ")
   let tiempoMinutos = prompt("Introduzca el tiempo que ha tardado en minutos:")

   distanciaKm=Number(distanciaKm)
   tiempoMinutos=Number(tiempoMinutos)

   let tiempoHoras = tiempoMinutos / 60

   let velocidad = distanciaKm / tiempoHoras

   console.log("Su velocidad media ha sido: " + velocidad + "km/h")
   ```

### 9. **Repartir caramelos entre niños**
   - Pide al usuario cuántos caramelos tiene y cuántos niños hay. Calcula cuántos caramelos recibe cada niño y cuántos sobran.
   ```javascript
   let numeroDeCaramelos = prompt("¿Cuántos caramelos tienes?")
   let numeroDeNinios = prompt("¿Cuántos niños hay?")

   numeroDeCaramelos = Number(numeroDeCaramelos)
   numeroDeNinios = Number(numeroDeNinios)

   let caramelosPorNinio = parseInt(numeroDeCaramelos / numeroDeNinios) //parseInt transforma a número entero
   let restoDeCaramelos = numeroDeCaramelos % numeroDeNinios

   console.log("A cada niño le tocan " + caramelosPorNinio + " caramelos y han sobrado " + restoDeCaramelos)
   ```

### 10. **Convertir Minutos a Horas y Minutos**
   - Pide al usuario una cantidad de minutos y conviértela a horas y minutos (por ejemplo, 150 minutos son 2 horas y 30 minutos).
   ```javascript
   let minutosUsuario = prompt ("Introduzca cantidad de minutos:")
   minutosUsuario = Number(minutosUsuario)

   let horas = minutosUsuario / 60
   horas = parseInt(horas)

   let minutos = minutosUsuario % 60

   console.log(minutosUsuario + " minutos son " + horas + " horas y " + minutos + " minutos")
   ```

### 11. **Conversión de segundos a horas, minutos y segundos**
   - Pide una cantidad de segundos y conviértela a horas, minutos y segundos.
   ```javascript
   let segundosUsuario = prompt ("Introduzca cantidad de segundos:")
   segundosUsuario = Number(segundosUsuario)

   let minutosTotales = parseInt( segundosUsuario / 60)
   let segundos = segundosUsuario % 60

   let horas = parseInt( minutosTotales / 60 )
   let minutos = minutosTotales % 60

   console.log(segundosUsuario + " segundos son " + horas + " horas, " + minutos + " minutos y " + segundos + " segundos")
   ```