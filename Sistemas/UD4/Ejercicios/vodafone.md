# **Ejercicio Práctico: Chatbot de Vodafone**

## **Descripción del Ejercicio**
Desarrollarás un script en Bash que simula un chatbot básico de atención al cliente de Vodafone. Este chatbot permitirá interactuar con el usuario para resolver consultas comunes. Durante el ejercicio, practicarás las estructuras de control, manejo de variables, arrays, y bucles.

---

## **Requisitos del Script**

1. **Introducción y Bienvenida:**
   - Al iniciar el script, se debe mostrar un mensaje de bienvenida al chatbot.
   - Preguntar al usuario su nombre y almacenarlo en una variable.

2. **Menú Principal:**
   - Mostrar un menú con las siguientes opciones:
     1. Consultar saldo.
     2. Activar un bono de datos.
     3. Hablar con soporte técnico.
     4. Salir.

3. **Opciones del Menú:**
   - **Consultar saldo:**
     - Generar un saldo aleatorio entre 0 y 50 euros y mostrarlo al usuario.
   - **Activar un bono de datos:**
     - Mostrar una lista de bonos disponibles (usando un array):
       - Bono 1GB: 5 euros.
       - Bono 5GB: 15 euros.
       - Bono 10GB: 25 euros.
     - Pedir al usuario que seleccione un bono e informar del costo.
   - **Hablar con soporte técnico:**
     - Pedir al usuario que describa su problema y simular una respuesta genérica (por ejemplo, "Gracias por tu mensaje, un agente te contactará pronto").
   - **Salir:**
     - Mostrar un mensaje de despedida y terminar el script.

4. **Validación de Entrada:**
   - Asegúrate de que el usuario no pueda ingresar opciones no válidas en el menú.
   
---

## **Enunciado del Ejercicio**
Crea un archivo Bash llamado `chatbot_vodafone.sh` que implemente las funcionalidades descritas.

---

## **Pistas y Consejos**
- Usa un bucle `while` para mantener el menú activo hasta que el usuario elija la opción de salir.
- Utiliza el comando `read` para capturar las respuestas del usuario.
- Usa estructuras `if-elif-else` para manejar las opciones del menú.
- Valida la entrada del usuario en cada paso para evitar errores.


## **Ejemplo de Ejecución**

```
Bienvenido al Chatbot de Vodafone
¿Cómo te llamas?
Miguel
Hola, Miguel. ¿En qué puedo ayudarte hoy?

Menú Principal:
1. Consultar saldo
2. Activar un bono de datos
3. Hablar con soporte técnico
4. Salir
Selecciona una opción (1-4):
1
Tu saldo actual es: 42 euros

Menú Principal:
1. Consultar saldo
2. Activar un bono de datos
3. Hablar con soporte técnico
4. Salir
Selecciona una opción (1-4):
2

Bonos disponibles:
1. 1GB por 5 euros
2. 5GB por 15 euros
3. 10GB por 25 euros
Selecciona un bono (1-3):
2
Has activado el Bono 5GB por 15 euros.

Menú Principal:
1. Consultar saldo
2. Activar un bono de datos
3. Hablar con soporte técnico
4. Salir
Selecciona una opción (1-4):
4
Gracias por usar el Chatbot de Vodafone. ¡Hasta pronto, Miguel!
```
