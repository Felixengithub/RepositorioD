## Relación de ejercicios 2: if-else

### 1. **Calcular el área de un círculo**:
  - Pide al usuario el radio de un círculo y calcula el área.
  ```javascript
  let radio = prompt("Introduzca el radio del círculo")
  radio = Number(radio)

  let area = 3.14 * radio * radio

  console.log("El área del círculo es: " + area)
  ```

### 2. **Comprobar si un número es par o impar**:
  - Pide un número al usuario y determina si es par o impar.
  ```javascript
  let numero = prompt("Introduzca el numero")
  numero = Number(numero)

  let esPar = (numero % 2 == 0)

  if ( esPar ){
      console.log("Es un número par")
  }else{
      console.log("No es un número par")
  }
  ```

### 3. **Calcular el promedio de tres números**:
  - Solicita tres números y calcula el promedio.
  ```javascript
  let numero1 = prompt("Introduzca el primer número")
  numero1 = Number(numero1)

  let numero2 = prompt("Introduzca el segundo número")
  numero2 = Number(numero2)

  let numero3 = prompt("Introduzca el tercer número")
  numero3 = Number(numero3)

  let sumatorio = numero1 + numero2 + numero3
  let promedio = sumatorio / 3

  console.log("La media de los números introducidos es: " + promedio)
  ```

### 4. **Determinar si un número es múltiplo de 5**:
  - Solicita un número y determina si es múltiplo de 5.
  ```javascript
  let numero = prompt("Introduzca el numero")
  numero = Number(numero)

  let esMultiploDe5 = (numero % 5 == 0)

  if ( esMultiploDe5 ){
      console.log("Es un número múltiplo de 5")
  }else{
      console.log("No es un número múltiplo de 5")
  }
  ```

### 5. **Determinar si un número está en un rango**:
  - Solicita un número e indica si está entre 10 y 20 (inclusive).
  ```javascript
  let numero = prompt("Introduzca el numero")
  numero = Number(numero)

  let estaEntre10y20 = ( numero >= 10 && numero <= 20 )

  if(estaEntre10y20){
      console.log("El número está entre 10 y 20")
  }else{
      console.log("El número NO está entre 10 y 20")
  }
  ```

### 6. **Determinar si un año es bisiesto**:
  - Solicita un año y determina si es bisiesto.
  ```javascript
  let anio = prompt("Introduzca un año")
  anio = Number(anio)

  let divisible4 = (anio % 4 == 0)
  let divisible100 = (anio % 100 == 0)
  let divisible400 = (anio % 400 == 0)

  let esBisiesto = ( ( divisible4 && !divisible100 ) || divisible400 )

  if( esBisiesto ){
      console.log("El año introducido es bisiesto")
  }else{
      console.log("El año introducido NO es bisiesto")
  }
  ```


### 7. **Simular una calculadora simple**:
  - Pide dos números y una operación (`+`, `-`, `*`, `/`) e imprime el resultado correspondiente.
  ```javascript
  let resultado

  let numero1 = prompt("Introduzca un número")
  numero1 = Number(numero1)

  let numero2 = prompt("Introduzca otro número")
  numero2 = Number(numero2)

  let operador = prompt("Introduzca el operador (+, -, *, /)")

  if(operador == "+"){
      resultado = numero1 + numero2
  }else if(operador == "-"){
      resultado = numero1 - numero2
  }else if(operador == "*"){
      resultado = numero1 * numero2
  }else if(operador == "/"){
      resultado = numero1 / numero2
  }else{
      console.log("Operador incorrecto")
  }

  console.log("El resultado de " + numero1 + operador + numero2 + " es " + resultado)
  ```

### 8. **Determinar si un número es positivo, negativo o cero**:
  - Solicita un número y determina si es positivo, negativo o cero.
  ```javascript
  let numero = prompt("Introduzca un número")
  numero = Number(numero)

  if(numero < 0){
      console.log("El número es negativo")
  }else if(numero > 0){
      console.log("El número es positivo")
  }else{
      console.log("El número es 0")
  }
  ```

### 9. **Sumar los dígitos de un número de dos cifras**:
  - Pide un número de dos cifras e imprime la suma de sus dígitos.
  - Si el número introducido no es de dos cifras, se debe avisar al usuario.

```javascript
    let numero = prompt("Introduzca un número de dos dígitos:")
    numero = Number(numero)

    // if (numero1/10 >= 1 && numero1/10 < 10){
    // ¿Qué pasa con los números negativos? En este código no lo hemos tenido en cuenta.

    if( numero >= 10 && numero <= 99 ){
        // Creamos las variables dentro del if, porque solo se van a utilizar si el número tiene dos cifras.
        let digitoDecenas = parseInt(numero/10)
        let digitoUnidades = numero%10
        let suma = digitoDecenas + digitoUnidades
        console.log("El número tiene dos cifras, la suma de sus cifras es: " + suma)
    }else{
        console.log("El número no tiene dos cifras")
    }
```

### 10. **Calificación de un examen**:
  - Pide al usuario su calificación (entre 0 y 100) y devuelve su letra correspondiente:
    - A (90-100).
    - B (80-89).
    - C (70-79).
    - D (60-69).
    - F (0-59).

```javascript
    let numero = prompt("Introduzca un número entre 0 y 100:")
    numero = Number(numero)

    if (numero >= 90 && numero <= 100){
        console.log("La calificación es de A.")
    } else if (numero >= 80 && numero <= 89){
        console.log("La calificación es de B.")
    } else if (numero >= 70 && numero <= 79){
        console.log("La calificación es de C.")
    } else if (numero >= 60 && numero <= 69){
        console.log("La calificación es de D.")
    } else if (numero >= 0 && numero <= 59){
        console.log("La calificación es de F.")
    } else {
        console.log("La calificación es incorrecta.")
    }

    // Otra forma de hacerlo
    if (numero > 100){
        console.log("La calificación supera 100... Es incorrecta.")
    } else if (numero >= 90){
        console.log("La calificación es de A.")
    } else if (numero >= 80){
        console.log("La calificación es de B.")
    } else if (numero >= 70){
        console.log("La calificación es de C.")
    } else if (numero >= 60){
        console.log("La calificación es de D.")
    } else if (numero >= 0){
        console.log("La calificación es de F.")
    } else {
        console.log("La calificación es inferior a 0... Es incorrecta.")
    }
```

### 11. **Día de la semana**:
  - Solicita un número del 1 al 7 e imprime el día de la semana correspondiente (1 para lunes, 2 para martes, etc.).

    *Solución:*
    ```javascript
    let numero = prompt("Introduzca un número entre 1 y 7:")
        numero = Number(numero)

        if (numero == 1){
            console.log("LUNES")
        } else if (numero == 2){
            console.log("MARTES")
        } else if (numero == 3){
            console.log("MIÉRCOLES")
        } else if (numero == 4){
            console.log("JUEVES")
        } else if (numero == 5){
            console.log("VIERNES")
        } else if (numero == 6){
            console.log("SÁBADO")
        } else if (numero == 7){
            console.log("DOMINGO")
        } else {
            console.log("No existe ese día de la semana.")
        }
    ```

### 12. **Identificar el tipo de triángulo**:
  - Pide al usuario las longitudes de los tres lados de un triángulo e indica si es equilátero (todos los lados iguales), isósceles (dos lados iguales) o escaleno (todos los lados diferentes).

    *Solución:*
    ```javascript
    let lado1 = prompt("Introduzca la longitud del primer lado: ")
    let lado2 = prompt("Introduzca la longitud del segundo lado: ")
    let lado3 = prompt("Introduzca la longitud del tercer lado: ")

    lado1 = Number(lado1)
    lado2 = Number(lado2)
    lado3 = Number(lado3)

    if (lado1 == lado2 && lado1 == lado3){
        console.log("Todos los lados son iguales: Equilátero.")
    } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3){
        console.log("Solo dos lados iguales: Isósceles.")
    } else {
        console.log("Todos los lados desiguales: Escaleno.")
    }
    ```

### 13. **Determinar si un carácter es vocal o consonante**:
  - Pide una letra al usuario e indica si es una vocal (`a`, `e`, `i`, `o`, `u`) o una consonante.
  *Solución:*
    ```javascript
    let letra = prompt("Introduzca una letra: ")

        if (letra == "a" || letra == "e" || letra == "i" || letra == "o" || letra == "u" ){
            console.log("Es vocal.")
        } else {
            console.log("Es consonante.")
        }
    ```

### 14. **Estado del clima**:
  - Solicita la temperatura actual e imprime:
    - "Muy frío" si es menor a 0°C.
    - "Frío" si es entre 0°C y 15°C.
    - "Templado" si es entre 16°C y 25°C.
    - "Caliente" si es mayor a 25°C.

    *Solución:*
    ```javascript
        let temperatura = prompt("Introduzca una temperatura:")
        temperatura = Number(temperatura)

        if (temperatura < 0){
            console.log("Hace mucho frio...")
        } else if (temperatura <= 15){
            console.log("Hace frio...")
        } else if (temperatura <= 25){
            console.log("Hace buena temperatura :)")
        } else {
            console.log("Hace calor...")
        }
    ```

### 15. **Determinar el tipo de ángulo**:
  - Solicita el valor de un ángulo y determina si es:
    - Ángulo agudo (< 90°).
    - Ángulo recto (= 90°).
    - Ángulo obtuso (> 90° pero < 180°).
    - Ángulo llano (= 180°).

    *Solución:*
    ```javascript
        let angulo = prompt("Introduzca una angulo:")
        angulo = Number(angulo)

        if (angulo > 0 && angulo < 90){
            console.log("Agudo")
        } else if (angulo == 90){
            console.log("Recto")
        } else if (angulo > 90 && angulo < 180){
            console.log("Obtuso")
        } else if (angulo == 180) {
            console.log("Llano")
        }
    ```

### 16. **Calculadora de impuestos progresivos**:
  - Pide al usuario su salario anual e imprime el impuesto a pagar según estos tramos:
    - Menos de 10.000€: 0% de impuestos.
    - De 10.000€ a 20.000€: 10%.
    - De 20.000€ a 40.000€: 20%.
    - Más de 40.000€: 30%.

    *Solución:*
    ```javascript
        let salario = prompt("Introduzca una salario:")
        let impuesto = 0
        salario = Number(salario)

        if (salario <= 0){
            // console.log("Impuestos a pagar: " + impuesto)
            console.log("Que lástima...")
        } else if (salario <= 10000){
            // console.log("Impuestos a pagar: " + impuesto)
            console.log("Todavía no pagas impuestos!")
        } else if (salario <= 20000){
            impuesto = salario*0.1
            // console.log("Impuestos a pagar: " + impuesto)
        } else if (salario <= 40000) {
            impuesto = salario*0.2
            // console.log("Impuestos a pagar: " + impuesto)
        } else {
            impuesto = salario*0.3
            // console.log("Impuestos a pagar: " + impuesto)
        }
        console.log("Impuestos a pagar: " + impuesto)
    ```

### 17. **Calcular el precio de una llamada telefónica**:
  - Pide al usuario la duración de una llamada (en minutos) y calcula el coste total según estas reglas:
    - Los primeros 3 minutos son gratis.
    - De 3 a 10 minutos cuesta 0.50€ por minuto.
    - Más de 10 minutos cuesta 0.30€ por minuto adicional.

    *Solución:*
    ```javascript
        let duracion = prompt("Introduzca una duracion en minutos:")
        let precio = 0
        duracion = Number(duracion)

        let maxPrimerTramo = 3
        let maxSegundoTramo = 10

        let precioSegundoTramo = 0.5
        let precioTercerTramo = 0.3

        
        if (duracion > maxSegundoTramo){
            precio +=  (duracion - maxSegundoTramo) * precioTercerTramo 
            duracion = maxSegundoTramo
        }
        if (duracion > maxPrimerTramo){
            precio += (duracion - maxPrimerTramo) * precioSegundoTramo
            duracion = maxPrimerTramo
        }

        console.log("Pagamos " + precio + " por la llamada")
    ```

### 18. **Sistema de becas basado en promedio y situación económica**:
  - Solicita el promedio académico del estudiante y su ingreso familiar anual:
    - Si tiene un promedio mayor o igual a 8 y su ingreso es menor a 20.000€, recibe una beca completa.
    - Si tiene un promedio mayor o igual a 8, pero su ingreso es mayor a 20.000€, recibe una beca parcial.
    - Si tiene un promedio menor a 8, no recibe beca.

    *Solución:*
    ```javascript
    let promedio = Number(prompt("Inserte su nota pormedio:"))
    let ingreso = Number(prompt("Inserte su ingreso anual:"))

    const notaMinima = 8
    const umbralRenta = 20000

    if(promedio >= notaMinima && ingreso < umbralRenta ){
        console.log("Beca completa")
    }else if(promedio >= notaMinima && ingreso > umbralRenta){
        console.log("Beca parcial")
    }else{
        console.log("Sin beca")
    }
    ```

    *Otra solución:*
    ```javascript
    let promedio = Number(prompt("Inserte su nota pormedio:"))
    let ingreso = Number(prompt("Inserte su ingreso anual:"))

    const notaMinima = 8
    const umbralRenta = 20000

    if(promedio < notaMinima){
        console.log("Sin beca")
    }else if(ingreso < umbralRenta){
        console.log("Beca completa")
    }else if(ingreso > umbralRenta){
        console.log("Beca parcial")
    }
    ```

### 19. **Cálculo de coste de estacionamiento**:
  - Pide al usuario el tiempo que estuvo estacionado (en horas) y calcula el coste:
    - Primeras 2 horas: 5€ cada hora.
    - De 2 a 5 horas: 4€ cada hora.
    - Más de 5 horas: 3€ cada hora adicional.

    ```javascript
        
    ```

### 20. **Evaluación de crédito según historial**:
  - Solicita la puntuación de crédito del usuario y el tiempo que ha estado en el banco:
    - Si la puntuación es mayor a 750 y lleva más de 5 años como cliente, se le aprueba un crédito premium.
    - Si la puntuación es mayor a 650 y lleva entre 2 y 5 años, se le aprueba un crédito estándar.
    - Si la puntuación es menor a 650 o lleva menos de 2 años, se le rechaza el crédito.

    ```javascript
        
    ```

### 21. **Sistema de clasificación de IMC**:
  - Pide el peso y la altura del usuario para calcular el IMC, luego clasifica en:
    - Bajo peso (IMC < 18.5).
    - Normal (IMC entre 18.5 y 24.9).
    - Sobrepeso (IMC entre 25 y 29.9).
    - Obesidad (IMC >= 30).

    ```javascript
        
    ```

### 22. **Determinar el ganador de un juego de piedra, papel o tijera**:
  - Pide a dos jugadores que ingresen "piedra", "papel" o "tijera" y determina el ganador según las reglas del juego:
    - Piedra gana a tijera.
    - Tijera gana a papel.
    - Papel gana a piedra.
    - Si ambos eligen lo mismo, es un empate.

    ```javascript
        
    ```

  ### BONUS. **Calculadora de impuestos progresivos**:
  - Pide al usuario su salario anual e imprime el tipo real que deberá pagar (lo que le retendrán de su renta):
    - Menos de 10.000€: 0% de impuestos.
    - De 10.000€ a 20.000€: 10%.
    - De 20.000€ a 40.000€: 20%.
    - Más de 40.000€: 30%.

    ```javascript
        let salario = prompt("Introduzca una salario:")
        salario = Number(salario)

        let impuesto = 0

        if (salario > 40000){
            impuesto +=  (salario - 40000) * 0.3 // Calculo los impuestos para más de 40.000
            salario = 40000
        }
        if (salario > 20000){
            impuesto += (salario - 20000) * 0.2 // Calculo los impuesto para entre 20.000 y 40.000
            salario = 20000
        }
        if (salario > 10000){
            impuesto += (salario - 10000) * 0.1 // Calculo los impuesto para entre 10.000 y 20.000
        }

        console.log("Impuestos a pagar: " + impuesto)
    ```