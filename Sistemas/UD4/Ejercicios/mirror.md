# Ejercicio: Manejo de Archivos en Bash - Mirror of Kalanda

## Objetivo
El objetivo de este ejercicio es crear un script en **bash** que permita practicar la creación, lectura y eliminación de archivos, así como el manejo de bucles y condiciones en un programa interactivo.

## Temática
El ejercicio se basa en la temática **"Mirror of Kalanda"**, un mundo ficticio lleno de artefactos legendarios que debes crear, consultar y finalmente destruir.

---

## Requisitos del Programa

1. **Creación inicial de archivos**:
   - Al comenzar, el programa debe crear tres archivos de texto con los siguientes nombres y contenidos:
     - `espada_de_verdad.txt`: Contiene el texto *"Una hoja brillante hecha para cortar la oscuridad."*
     - `escudo_eterno.txt`: Contiene el texto *"Un escudo que puede soportar cualquier ataque."*
     - `amuleto_del_destino.txt`: Contiene el texto *"Un amuleto que concede visiones del futuro."*

2. **Menú interactivo dentro de un bucle**:
   - El programa debe mostrar un menú con las siguientes opciones:
     1. **Leer las escrituras de los artefactos**:
        - Si se selecciona esta opción, el programa debe mostrar el contenido de los tres archivos creados.
     2. **Destruir los artefactos y salir del mundo de Kalanda**:
        - Si se selecciona esta opción, el programa debe salir del menú.

3. **Destrucción de archivos al final**:
   - Al finalizar el programa, después de salir del menú, se deben eliminar los tres archivos creados inicialmente.


---

## Pistas
- Usa `echo` para mostrar mensajes al usuario.
- Utiliza `[ -f <archivo> ]` para comprobar si un archivo existe.
- Para borrar archivos, usa el comando `rm`.
- Controla el bucle usando una variable booleana (por ejemplo, `seguir=true`).

---

## Ejemplo de Ejecución

```plaintext
Creando los artefactos sagrados del Mirror of Kalanda...
Artefactos creados:
amuleto_del_destino.txt
escudo_eterno.txt
espada_de_verdad.txt

===== Mirror of Kalanda =====
1. Leer las escrituras de los artefactos
2. Destruir los artefactos y salir del mundo de Kalanda
==============================
Elige una opción (1-2): 1

=== Escrituras de los Artefactos ===
Espada de Verdad:
Una hoja brillante hecha para cortar la oscuridad.

Escudo Eterno:
Un escudo que puede soportar cualquier ataque.

Amuleto del Destino:
Un amuleto que concede visiones del futuro.
====================================

===== Mirror of Kalanda =====
1. Leer las escrituras de los artefactos
2. Destruir los artefactos y salir del mundo de Kalanda
==============================
Elige una opción (1-2): 2
Has elegido salir del mundo del Mirror of Kalanda.

Destruyendo los artefactos sagrados...
Artefactos destruidos. Adiós al Mirror of Kalanda.
