# **Unidad Didáctica 4: Desarrollo de Scripts de Bash**  

---

## **1. Introducción a Bash**  

### **1.1. ¿Qué es Bash?**  
Bash (Bourne Again SHell) es un intérprete de línea de comandos y lenguaje de scripting que extiende las capacidades del shell original de UNIX (sh). Bash permite ejecutar comandos del sistema, manipular archivos, administrar procesos y automatizar tareas a través de scripts.  

**Características principales:**  
- **Open-source:** Disponible en casi todas las distribuciones de Linux y macOS.  
- **Automatización:** Permite la automatización de tareas repetitivas.  
- **Eficiencia:** Facilita la administración del sistema y el procesamiento de archivos.  
- **Compatibilidad:** Es compatible con herramientas clásicas de UNIX (`awk`, `sed`, `grep`).  

### **1.2. ¿Por qué aprender Bash?**  
- Es esencial para la administración de sistemas y DevOps.  
- Permite realizar tareas de mantenimiento de forma rápida y sencilla.  
- Optimiza el tiempo y reduce errores en tareas repetitivas.  
- Es utilizado en scripts de configuración, instalación y mantenimiento de sistemas.  

---

## **2. Creación y Ejecución de Scripts de Bash**  

### **2.1. Estructura de un Script Básico**  
Cada script de Bash sigue una estructura básica que consta de:  

1. **Encabezado del intérprete:**  
   La primera línea (`#!/bin/bash`) indica al sistema que el script debe ejecutarse con Bash.  
   ```bash
   #!/bin/bash
   ```  

2. **Comandos:**  
   Los comandos se escriben en líneas sucesivas como si fueran introducidos manualmente en la terminal.  
   ```bash
   echo "Hola, mundo"
   ```  

3. **Comentarios:**  
   Se agregan usando `#` para explicar partes del código sin afectar su ejecución.  
   ```bash
   # Este script imprime un mensaje simple
   ```  

### **2.2. Pasos para Crear y Ejecutar un Script**  
1. **Crear el archivo del script:**  
   ```bash
   nano script.sh
   ```  
2. **Añadir permisos de ejecución:**  
   ```bash
   chmod +x script.sh
   ```  
3. **Ejecutar el script:**  
   ```bash
   ./script.sh
   ```  
   - Alternativamente, puede ejecutarse con:  
     ```bash
     bash script.sh
     ```  

### **2.3. Ejemplo Práctico: Script Simple de Saludo**  
```bash
#!/bin/bash
nombre="Carlos"
echo "¡Hola, $nombre! Bienvenido al sistema."
```  
**Explicación:**  
- Se define una variable llamada `nombre` con el valor "Carlos".  
- Se usa `echo` para imprimir un mensaje personalizado.  

---

## **3. Variables en Bash**  

Las variables en Bash son fundamentales para el desarrollo de scripts, ya que permiten almacenar información y manipular datos durante la ejecución del programa. Las variables pueden contener texto, números, resultados de comandos y más. Al trabajar con variables, se pueden automatizar tareas y hacer que los scripts sean más dinámicos y reutilizables.  

### **3.1. Declaración y Uso de Variables**  

**¿Qué es una variable en Bash?**  
Una variable es un contenedor que almacena un valor, como un número o una cadena de texto. Al igual que en otros lenguajes de programación, las variables permiten reutilizar datos y mantener el código más limpio y organizado.  

**Reglas para declarar variables en Bash:**  
1. **No se usan espacios alrededor del signo `=`.**  
   - Correcto: `variable="valor"`  
   - Incorrecto: `variable = "valor"`  
2. **Los nombres de las variables son sensibles a mayúsculas y minúsculas.**  
   - `miVariable` y `MiVariable` son variables diferentes.  
3. **Por convención, se utilizan nombres descriptivos y en minúsculas para las variables.**  

**Declaración de una variable:**  
```bash
variable="valor"
```  
- Aquí se declara una variable llamada `variable` y se le asigna el texto `"valor"`.  

**Llamar o usar una variable:**  
Para acceder al valor almacenado en una variable, se coloca el símbolo `$` antes del nombre de la variable.  

```bash
echo $variable
```  
- El comando `echo` imprimirá el valor de la variable en la terminal.  

**Ejemplo completo de declaración y uso:**  
```bash
usuario="María"
echo "Hola, $usuario"
```  
**Explicación:**  
- Se declara una variable llamada `usuario` y se le asigna el valor `"María"`.  
- Luego, el script imprime un mensaje que incluye el valor de la variable: `"Hola, María"`.  

Si la variable `usuario` cambia a `"Carlos"`, el mismo script imprimirá: `"Hola, Carlos"`. Esto muestra cómo las variables hacen que los scripts sean flexibles y reutilizables.  

### **3.2. Tipos de Variables**  

En Bash, existen varios tipos de variables que se utilizan en diferentes contextos. A continuación, se describen los principales tipos:  

#### **1. Variables Locales**  
- Son variables que se definen y existen solo dentro del script o función donde se declaran.  
- No se pueden usar fuera del ámbito en el que fueron creadas.  

**Ejemplo:**  
```bash
#!/bin/bash
mensaje="Hola mundo"
echo $mensaje  # Funciona dentro del script
```  

Si intentamos usar `mensaje` desde otro script o terminal, no estará disponible.  

#### **2. Variables Globales**  
- Son variables definidas por el sistema operativo y están disponibles para todos los scripts y procesos.  
- Se pueden usar en cualquier parte del sistema.  

**Ejemplos comunes:**  
- `$HOME` – Ruta del directorio personal del usuario.  
- `$PATH` – Lista de directorios donde Bash busca comandos ejecutables.  
- `$USER` – Nombre del usuario actual.  

**Ejemplo de uso de variables globales:**  
```bash
echo "Tu directorio personal es: $HOME"
```  
- Imprime el directorio del usuario actual usando la variable global `$HOME`.  

#### **3. Variables Especiales de Bash**  
Bash proporciona variables especiales que contienen información útil durante la ejecución de scripts. Algunas de las más importantes son:  

- `$0` – Nombre del script.  
- `$1, $2, $3...` – Argumentos pasados al script.  
- `$#` – Número de argumentos pasados al script.  
- `$?` – Estado de salida del último comando (0 si fue exitoso, diferente de 0 si hubo un error).  

**Ejemplo:**  
```bash
#!/bin/bash
echo "Nombre del script: $0"
echo "Primer argumento: $1"
```  
- Si el script se ejecuta con:  
  ```bash
  ./mi_script.sh archivo.txt
  ```  
  - Imprimirá:  
    ```
    Nombre del script: ./mi_script.sh
    Primer argumento: archivo.txt
    ```  

### **3.3. Operaciones con Variables**  

Las variables no solo almacenan texto, sino que también se pueden utilizar para realizar cálculos aritméticos. Bash permite operar con números mediante la sintaxis `$(( ))`.  

**Ejemplo de operaciones básicas:**  
```bash
a=10
b=5
suma=$((a + b))
echo "La suma es: $suma"
```  

**Explicación paso a paso:**  
1. Se definen dos variables `a` y `b` con los valores `10` y `5`.  
2. Se realiza una suma con `((a + b))` y se almacena en la variable `suma`.  
3. Finalmente, se imprime el resultado usando `echo`.  

**Operadores Aritméticos en Bash:**  

- `+` – Suma.  
- `-` – Resta.  
- `*` – Multiplicación.  
- `/` – División.  
- `%` – Módulo (resto de la división).  
- `**` – Exponenciación (potencia).  


**Ejemplo con diferentes operaciones:**  
```bash
x=15
y=4

echo "Suma: $((x + y))"
echo "Resta: $((x - y))"
echo "Multiplicación: $((x * y))"
echo "División: $((x / y))"
echo "Módulo: $((x % y))"
echo "Potencia: $((x ** y))"
```  

**Resultados esperados:**  
```
Suma: 19
Resta: 11
Multiplicación: 60
División: 3
Módulo: 3
Potencia: 50625
```  

**Nota importante:**  
- Bash realiza operaciones aritméticas con enteros. No maneja decimales de forma nativa.  
- Para trabajar con decimales, se recomienda usar comandos como `bc` (calculator).  

---

## **4. Estructuras de Control en Bash**  

Las estructuras de control en Bash permiten ejecutar diferentes bloques de código en función de ciertas condiciones o repetir una serie de comandos hasta que se cumpla una condición específica. Estas estructuras hacen que los scripts sean más dinámicos y potentes, facilitando la automatización de tareas complejas.  

En esta sección, se explican los condicionales (`if-else`) y los bucles (`for` y `while`), dos de las herramientas más utilizadas para controlar el flujo de ejecución de un script.  

### **4.1. Condicionales If-Else**  

Los condicionales `if-else` permiten ejecutar diferentes comandos dependiendo de si una condición es verdadera o falsa.  

**Sintaxis básica del condicional `if-else`:**  
```bash
if [ condición ]; then
  # Bloque de comandos si la condición es verdadera
else
  # Bloque de comandos si la condición es falsa
fi
```  

**Importante:**  
- El condicional comienza con `if` y termina con `fi` (inverso de `if`).  
- Los corchetes `[ ]` en Bash evalúan la condición, pero requieren espacios alrededor de la condición.  
- `then` indica el inicio del bloque de código que se ejecuta si la condición es verdadera.  
- `else` es opcional y se usa para definir el bloque que se ejecuta cuando la condición es falsa.  

**Ejemplo Práctico: Comprobación de Edad**  
```bash
#!/bin/bash
edad=20
if [ $edad -ge 18 ]; then
  echo "Eres mayor de edad"
else
  echo "Eres menor de edad"
fi
```  

**Explicación del script:**  
1. Se define una variable `edad` con el valor `20`.  
2. El condicional `if` evalúa si `edad` es mayor o igual a `18` usando el operador `-ge` (greater or equal).  
3. Si la condición es verdadera (`20 >= 18`), se imprime:  
   ```
   Eres mayor de edad
   ```  
4. Si `edad` es menor de `18`, se ejecuta el bloque del `else`, imprimiendo:  
   ```
   Eres menor de edad
   ```  

### **Operadores de Comparación en Bash**  

Los operadores de comparación permiten evaluar condiciones numéricas en Bash. A continuación, se muestra una lista de los operadores más comunes:  

- `-eq` – **Igual a** (`a -eq b` es cierto si `a` es igual a `b`).  
- `-ne` – **No es igual a** (`a -ne b` es cierto si `a` no es igual a `b`).  
- `-lt` – **Menor que** (`a -lt b` es cierto si `a` es menor que `b`).  
- `-le` – **Menor o igual que** (`a -le b` es cierto si `a` es menor o igual a `b`).  
- `-gt` – **Mayor que** (`a -gt b` es cierto si `a` es mayor que `b`).  
- `-ge` – **Mayor o igual que** (`a -ge b` es cierto si `a` es mayor o igual a `b`).  

**Ejemplo con varios operadores:**  
```bash
#!/bin/bash
num=15
if [ $num -lt 10 ]; then
  echo "$num es menor que 10"
elif [ $num -eq 10 ]; then
  echo "$num es igual a 10"
else
  echo "$num es mayor que 10"
fi
```  
**Explicación:**  
- Se evalúa si `num` es menor que `10`.  
- Si no es menor que `10`, se verifica si `num` es igual a `10`.  
- Si ambas condiciones anteriores son falsas, se ejecuta el bloque `else`.  

Resultado:  
```
15 es mayor que 10
```  

### **4.2. Bucles en Bash**  

Los bucles permiten ejecutar repetidamente un bloque de código mientras se cumpla una condición (`while`) o iterar a través de una secuencia (`for`). Esto es útil para automatizar tareas repetitivas.  

### **4.2.1. Bucle For**  

El bucle `for` itera sobre una lista de elementos o un rango de números y ejecuta un conjunto de comandos para cada elemento.  

**Sintaxis básica del bucle `for`:**  
```bash
for variable in lista; do
  # Comandos a ejecutar en cada iteración
done
```  

**Ejemplo Práctico: Iterar del 1 al 5**  
```bash
for i in {1..5}; do
  echo "Número: $i"
done
```  
**Explicación del script:**  
1. El bucle `for` recorre la secuencia `{1..5}`.  
2. En cada iteración, la variable `i` toma un valor del 1 al 5.  
3. El comando `echo` imprime el valor actual de `i`.  

Resultado esperado:  
```
Número: 1
Número: 2
Número: 3
Número: 4
Número: 5
```  

**Ejemplo: Iterar una lista de palabras**  
```bash
for nombre in Juan María Luis; do
  echo "Hola, $nombre"
done
```  
**Resultado:**  
```
Hola, Juan
Hola, María
Hola, Luis
```  

### **4.2.2. Bucle While**  

El bucle `while` ejecuta repetidamente un bloque de código **mientras una condición sea verdadera**.  

**Sintaxis básica del bucle `while`:**  
```bash
while [ condición ]; do
  # Comandos a ejecutar mientras se cumpla la condición
done
```  

**Ejemplo Práctico: Contador del 1 al 5**  
```bash
contador=1
while [ $contador -le 5 ]; do
  echo "Iteración $contador"
  ((contador++))
done
```  

**Explicación del script:**  
1. Se inicializa una variable `contador` con el valor `1`.  
2. El bucle `while` evalúa si `contador` es menor o igual a `5`.  
3. Durante cada iteración, se imprime el valor de `contador` y se incrementa en 1 usando `((contador++))`.  
4. Cuando `contador` es mayor que `5`, el bucle finaliza.  

Resultado esperado:  
```
Iteración 1
Iteración 2
Iteración 3
Iteración 4
Iteración 5
```  

---

## **5. Arrays en Bash**  

Los arrays en Bash permiten almacenar múltiples valores bajo una misma variable, lo que facilita la manipulación de listas de datos. A diferencia de otros lenguajes, los arrays en Bash son unidimensionales y no es necesario definir su tamaño al declararlos.  

Los arrays son útiles para manejar colecciones de elementos, como listas de nombres, rutas de archivos, resultados de comandos, etc.  

### **5.1. Declaración y Asignación de Arrays**  

#### **Declaración de un array vacío:**  
```bash
mi_array=()
```  

#### **Asignación de valores a un array:**  
```bash
mi_array=("Juan" "María" "Luis" "Ana")
```  
- Los elementos se separan por espacios y se colocan entre paréntesis `()`.  
- Las comillas alrededor de los elementos no son obligatorias, pero se recomiendan para evitar errores con elementos que contengan espacios.  

### **5.2. Acceso a Elementos del Array**  

Para acceder a un elemento específico del array, se utiliza la notación `${array[indice]}`. **Los índices comienzan en 0**.  

**Ejemplo:**  
```bash
echo ${mi_array[0]}  # Imprime "Juan"
echo ${mi_array[2]}  # Imprime "Luis"
```  

### **5.3. Mostrar Todos los Elementos del Array**  

Para imprimir todos los elementos de un array, se usa `@` o `*` dentro de las llaves.  

```bash
echo ${mi_array[@]}  # Imprime "Juan María Luis Ana"
```  

**Diferencias entre `@` y `*`:**  
- `${mi_array[@]}` – Mantiene los elementos como unidades individuales.  
- `${mi_array[*]}` – Los elementos se tratan como una cadena de texto.  

### **5.4. Añadir y Modificar Elementos**  

#### **Añadir un nuevo elemento al array:**  
```bash
mi_array+=("Carlos")
```  
- El operador `+=` agrega elementos al final del array.  

#### **Modificar un elemento existente:**  
```bash
mi_array[1]="Marta"  # Cambia "María" por "Marta"
```  

### **5.5. Longitud del Array**  

Para conocer el número de elementos en un array, se usa `${#array[@]}`.  

**Ejemplo:**  
```bash
echo "Número de elementos: ${#mi_array[@]}"
```  

### **5.6. Iterar sobre un Array**  

El bucle `for` es útil para recorrer todos los elementos de un array y realizar operaciones sobre ellos.  

**Ejemplo:**  
```bash
for nombre in "${mi_array[@]}"; do
  echo "Hola, $nombre"
done
```  
**Resultado:**  
```
Hola, Juan
Hola, Marta
Hola, Luis
Hola, Ana
Hola, Carlos
```  

### **5.7. Eliminar Elementos de un Array**  

Para eliminar elementos de un array, se utiliza el comando `unset`.  

**Ejemplo:**  
```bash
unset mi_array[2]  # Elimina "Luis"
```  
- Los índices no se reordenan automáticamente.  
- Si se imprime el array después de eliminar un elemento, los índices seguirán reflejando la posición original de los elementos restantes.  

**Ejemplo completo:**  
```bash
mi_array=("Juan" "María" "Luis")
echo "Array inicial: ${mi_array[@]}"

# Añadir un elemento
mi_array+=("Carlos")
echo "Después de añadir: ${mi_array[@]}"

# Modificar un elemento
mi_array[1]="Marta"
echo "Después de modificar: ${mi_array[@]}"

# Eliminar un elemento
unset mi_array[2]
echo "Después de eliminar: ${mi_array[@]}"

# Imprimir longitud del array
echo "Número de elementos: ${#mi_array[@]}"
```  

**Resultado esperado:**  
```
Array inicial: Juan María Luis
Después de añadir: Juan María Luis Carlos
Después de modificar: Juan Marta Luis Carlos
Después de eliminar: Juan Marta Carlos
Número de elementos: 3
```  

### **5.8. Aplicaciones Comunes de Arrays**  
- **Listas de archivos:**  
  ```bash
  archivos=(*.txt)
  echo "Archivos de texto: ${archivos[@]}"
  ```  
- **Resultados de comandos:**  
  ```bash
  procesos=($(ps aux | awk '{print $1}'))
  echo "Usuarios con procesos activos: ${procesos[@]}"
  ```  
- **Gestión de parámetros múltiples:**  
  ```bash
  argumentos=("$@")
  echo "Se pasaron los siguientes argumentos: ${argumentos[@]}"
  ```  