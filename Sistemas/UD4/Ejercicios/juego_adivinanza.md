# **Ejercicio Práctico: Juego de Adivinanza en Bash**

## **Descripción del Ejercicio**
Desarrollarás un script en Bash que implementa un sencillo juego de adivinanza de números. Este juego permitirá al usuario interactuar con el sistema, realizando intentos para adivinar un número generado aleatoriamente. Durante el ejercicio, practicarás las estructuras de control, manejo de variables, bucles y validación de entrada.

---

## **Requisitos del Script**

1. **Introducción y Bienvenida:**
   - Mostrar un mensaje de bienvenida al iniciar el script.
   - Explicar brevemente las reglas del juego al usuario.

2. **Generación de un Número Aleatorio:**
   - El script generará un número aleatorio entre 1 y 100 utilizando `$RANDOM`.
   - Este número será el objetivo a adivinar.

3. **Iteración de Intentos:**
   - Permitir al usuario hacer intentos para adivinar el número.
   - Informar al usuario si el número ingresado es mayor o menor que el número objetivo.
   - Continuar hasta que el usuario adivine el número o escriba `salir`.

4. **Final del Juego:**
   - Si el usuario adivina el número, mostrar un mensaje de felicitación indicando el número de intentos realizados.
   - Si el usuario escribe `salir`, terminar el juego mostrando un mensaje de despedida.

5. **Opciones de Repetición:**
   - Una vez finalizada la partida, preguntar al usuario si desea volver a jugar o salir.
   - Si elige volver a jugar, reiniciar el juego desde el principio.
   - Si elige salir, mostrar un mensaje de despedida y finalizar el script.

6. **Validación de Entrada:**
   - Asegúrate de que el usuario ingrese un número entre 1 y 100 o la palabra `salir`.
   - Evita el uso de expresiones regulares complejas y valida directamente el rango de números.

---

## **Pistas y Consejos**
- Usa un bucle `while` para mantener el juego activo hasta que el usuario gane o decida salir.
- Valida que el número ingresado sea mayor que 0 y menor o igual a 100.
- Usa una **variable de control** como `salir=false` para gestionar cuándo debe terminar el bucle.
- En el menú de repetición, utiliza otra variable como `seguir_jugando=true` para controlar si el usuario quiere volver a jugar.
- Incrementa el contador de intentos con: `intentos=$((intentos + 1))`.

---

## **Ejemplo de Ejecución**

```
Bienvenido al Juego de Adivinanza
Reglas: El sistema generará un número entre 1 y 100. Tú deberás adivinarlo.
Si quieres salir del juego, escribe 'salir'.

Ingresa un número entre 1 y 100 (o 'salir' para terminar):
50
El número es mayor que 50.

Ingresa un número entre 1 y 100 (o 'salir' para terminar):
75
El número es menor que 75.

Ingresa un número entre 1 y 100 (o 'salir' para terminar):
62
El número es mayor que 62.

Ingresa un número entre 1 y 100 (o 'salir' para terminar):
70
¡Felicidades! Has adivinado el número 70 en 4 intentos.

¿Quieres volver a jugar?
1. Sí
2. No

Selecciona una opción: 1

Bienvenido al Juego de Adivinanza
Reglas: El sistema generará un número entre 1 y 100. Tú deberás adivinarlo.
Si quieres salir del juego, escribe 'salir'.

Ingresa un número entre 1 y 100 (o 'salir' para terminar):...
