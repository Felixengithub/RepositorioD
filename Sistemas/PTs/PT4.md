---

## **Prueba Técnica 4: Configuración de un PC en Linux**


## [Enlace GitHub](https://classroom.github.com/a/DQz8CMPt)


---

## **Descripción del Ejercicio**
En esta prueba técnica, configurarás un sistema Linux para cumplir con los requisitos específicos de un entorno multiusuario. Practicarás la creación y gestión de usuarios, permisos de archivos y directorios, uso de variables, contadores y estructuras de control. Además, utilizarás comandos básicos de administración del sistema y practicarás el uso de variables globales como `$USER`.

---

## **Requisitos del Ejercicio**

### **1. Introducción y Bienvenida:**
   - El script debe mostrar un mensaje inicial indicando que se va a realizar una configuración de sistema.
   - Recibir el nombre y el apodo como argumentos al script.
   - Después del mensaje de bienvenida, debe saludar al usuario con el nombre y apodo proporcionados.
   - Verificar que se pasaron los argumentos necesarios con el siguiente bloque de código:
     ```bash
     if [ $# -lt 2 ]; then
         echo "Uso: $0 <nombre> <apodo>"
         exit 1
     fi
     ```

### **2. Creación de Usuarios:**
   - Crear los siguientes usuarios, uno por uno dentro del script:
     - Usuario: `admin1`
     - Usuario: `dev1`
     - Usuario: `design1`
   - Cada usuario debe tener un directorio personal.
   - Configura una contraseña temporal para cada usuario (puedes usar el comando `passwd`).

### **3. Permisos de Archivos y Directorios:**
   - Crea un directorio compartido llamado `/proyectos`.
   - Asigna permisos para que:
     - Solo los usuarios puedan acceder al directorio.
     - Los usuarios puedan leer, escribir y ejecutar archivos dentro del directorio.

### **4. Menú Interactivo:**
   Una vez completadas las configuraciones iniciales, el script debe mostrar un menú interactivo con las siguientes opciones:

   #### **Opciones del Menú:**
   1. Mostrar el árbol de directorios desde la raíz usando el comando `tree`.
   2. Ver directorios creados y sus permisos.
   3. Crear un nuevo usuario.
   4. Mostrar un directorio del array predefinido de directorios compartidos.
   5. Mostrar el nombre del usuario actual y el directorio personal del mismo usando las variables globales `$USER` y `$HOME`.
   6. Listar los elementos de un array predefinido (por ejemplo: `proyecto1`, `proyecto2`, etc.) usando un bucle `for`.
   7. Salir del menú y mostrar cuántas opciones del menú fueron seleccionadas.

   ---

## **Pistas y Consejos**

- Usa el comando `useradd` para crear usuarios.
- Los permisos del directorio `/proyectos` pueden configurarse con `chmod`.
- Usa `tree` para visualizar la estructura de directorios desde la raíz.
- Declara e inicializa un contador con una variable y utiliza un bucle `while` o `for` para iterar.
- Las variables globales `$USER` y `$HOME` están disponibles en el sistema y contienen información útil del usuario actual.
- Los arrays son útiles para manejar listas de datos, como directorios predefinidos.
- Busca las opciones 

---

## **Menú**

```
    echo -e "\nMenú Principal:"
    echo "1. Mostrar el árbol de directorios desde la raíz"
    echo "2. Ver directorios creados y sus permisos"
    echo "3. Crear un nuevo usuario"
    echo "4. Mostrar un directorio del array predefinido de directorios compartidos"
    echo "5. Mostrar el usuario actual y su directorio personal"
    echo "6. Listar todos los elementos del array predefinido"
    echo "7. Salir"
    read -p "Selecciona una opción (1-7): " opcion
```

---

## **Ejemplo de Ejecución**

```
$ ./configurar_sistema.sh Puyol Tiburon
Bienvenido a la Configuración de Sistema Linux
¡Hola, Puyol! También conocido como "Tiburon".

Creando usuarios iniciales...
- Usuario 'admin1' creado.
- Usuario 'dev1' creado.
- Usuario 'design1' creado.

Configurando directorios...
- Directorio '/proyectos' creado.
- Permisos asignados correctamente.

Configuración inicial completada.

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 1

Estructura de directorios:
/
├── bin
├── boot
├── dev
...

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 2

Directorios creados y permisos:
drwxrwx--- 2 root root 4096 /proyectos

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 3

Ingresa el nombre del nuevo usuario: user2
Usuario 'user2' creado.

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 4

Directorio seleccionado del array: proyecto3

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 5

Usuario actual: admin
Directorio personal: /home/admin

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 6

Elementos del array predefinido:
proyecto1
proyecto2
proyecto3
proyecto4
proyecto5

Menú Principal:
1. Mostrar el árbol de directorios desde la raíz
2. Ver directorios creados y sus permisos
3. Crear un nuevo usuario
4. Mostrar un directorio del array predefinido de directorios compartidos
5. Mostrar el usuario actual y su directorio personal
6. Listar todos los elementos del array predefinido
7. Salir
Selecciona una opción (1-7): 7

Has seleccionado 6 opciones del menú. Gracias por usar el configurador de sistema. ¡Hasta pronto!
