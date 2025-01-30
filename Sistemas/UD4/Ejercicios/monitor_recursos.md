# **Ejercicio Práctico: Monitor de Recursos del Sistema**

## **Descripción del Ejercicio**
Desarrollarás un script en Bash que actúe como un monitor básico de recursos del sistema. Este script permitirá al usuario interactuar con opciones para obtener información sobre el uso de CPU, memoria, espacio en disco, procesos activos y usuarios conectados. Durante el ejercicio, practicarás estructuras de control, manejo de variables, bucles y validación de entrada.

---

## **Requisitos del Script**

1. **Introducción y Bienvenida:**
   - Mostrar un mensaje de bienvenida explicando que el script permite monitorear el estado del sistema.
   - Presentar un menú con diferentes opciones de monitoreo.

2. **Menú de Opciones:**
   - Mostrar un menú con las siguientes opciones:
     1. Ver uso de CPU.
     2. Ver uso de memoria RAM.
     3. Ver espacio en disco.
     4. Ver procesos activos.
     5. Ver usuarios conectados.
     6. Salir del script.

3. **Funcionalidades de las Opciones:**
   - **Uso de CPU:**
     - Mostrar el porcentaje de uso actual de la CPU.
     - Comando a utilizar:
       ```bash
       top -bn1 | grep "%Cpu(s)" | awk '{print "Uso actual: " $2 "%"}'
       ```
   - **Uso de Memoria RAM:**
     - Mostrar el uso de memoria RAM (total, usada y disponible).
     - Comando a utilizar:
       ```bash
       free -h | awk '/Mem:/ {print "Total: "$2 " Usada: "$3 " Disponible: "$4}'
       ```
   - **Espacio en Disco:**
     - Mostrar el espacio en disco de todas las particiones montadas.
     - Comando a utilizar:
       ```bash
       df -h | grep -v tmpfs
       ```
   - **Procesos Activos:**
     - Listar los 5 procesos que más CPU están utilizando en ese momento.
     - Comando a utilizar:
       ```bash
       ps aux --sort=-%cpu | head -n 6
       ```
   - **Usuarios Conectados:**
     - Mostrar la lista de usuarios actualmente conectados al sistema.
     - Comando a utilizar:
       ```bash
       who
       ```
   - **Salir del Script:**
     - Finalizar el script con un mensaje de despedida.

4. **Validación de Entrada:**
   - Validar que el usuario elija solo una de las opciones del menú.
   - Si ingresa una opción no válida, mostrar un mensaje de error y volver a mostrar el menú.

---

## **Pistas y Consejos**
- Usa un bucle `while` para mantener el menú activo hasta que el usuario elija salir.
- Valida la entrada del usuario con condicionales `if` para asegurarte de que sea una opción válida.
- Usa variables para personalizar mensajes.
- Cada opción debe estar implementada como un bloque lógico separado dentro del script.

---

## **Ejemplo de Ejecución**

```
Bienvenido al Monitor de Recursos del Sistema

Menú Principal:
1. Ver uso de CPU
2. Ver uso de memoria RAM
3. Ver espacio en disco
4. Ver procesos activos
5. Ver usuarios conectados
6. Salir
Selecciona una opción (1-6): 1

Uso de CPU:
Uso actual: 10.5%

Menú Principal:
1. Ver uso de CPU
2. Ver uso de memoria RAM
3. Ver espacio en disco
4. Ver procesos activos
5. Ver usuarios conectados
6. Salir
Selecciona una opción (1-6): 6
Gracias por usar el monitor de recursos. ¡Hasta pronto!
```
