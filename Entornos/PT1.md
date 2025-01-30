# Prueba Técnica 1: Git y GitHub básico

## [Enlace GitHub](https://classroom.github.com/a/6EAEe4HM)

De una forma extremadamente sencilla y básica, vamos a simular que creamos y editamos una página web usando git. <u>Importante</u> Recuerda añadir mensajes útiles a las confirmaciones de cambios (commits) para que quien vea tu repositorio (en este caso yo) pueda navegar de forma más o menos intuitiva. Lo ideal sería indicar qué ejercicio estás haciendo en cada commit y alguna acción descriptiva. Por ejemplo: "Ejercicio 2. Elimino el archivo" 

## Ejercicio 0: Configuración inicial

Este paso ya debería estar hecho de los ejercicios realizados en clase, pero si no lo has hecho aún: **configura** tu nombre y correo electrónico en git para que los commits, push al repositorio online, etc. tengan tus datos. 

Si no estás segura/o puedes ejecutar `git config --global --list` para ver en la terminal toda tu configuración global.

## Ejercicio 1: Crear el repositorio local

Usando Windows o la terminal de comandos, crea un nuevo directorio/carpeta para la prueba llamado `prueba1` y una vez lo tengas hecho, crea un repositorio de esa carpeta/directorio.

Desde el propio Windows, crea los siguientes 3 archivos: `AboutUs.md`, `main.cpp` e `index.html`. Debemos dejar los archivos sin contenido.

Agrega los archivos al staging area y realiza el **primer commit** del repositorio.

## Ejercicio 2: Eliminar archivos

Resulta que `main.cpp` no pertenece a este proyecto y lo hemos agregado por error. Vamos a eliminarlo. Cuando lo hagas, recuerda hacer un commit para confirmar los cambios.

## Ejercicio 3: Añadir contenido

En el `index.html` añade el siguiente contenido (puedes copiar y pegar):

```
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Página de presentación de la asignatura Entornos de Desarrollo.">
    <title>Entornos de Desarrollo</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        header {
            background-color: #007acc;
            color: white;
            padding: 1rem;
            text-align: center;
        }
        main {
            padding: 2rem;
        }
        section {
            margin-bottom: 2rem;
        }
        h1, h2 {
            color: #007acc;
        }
        footer {
            background-color: #007acc;
            color: white;
            text-align: center;
            padding: 1rem;
            position: fixed;
            width: 100%;
            bottom: 0;
        }
    </style>
</head>
<body>

<header>
    <h1>Entornos de Desarrollo</h1>
</header>

<main>
    <section>
        <h2>Descripción de la Asignatura</h2>
        <p>La asignatura de Entornos de Desarrollo está orientada a familiarizar a los estudiantes con las herramientas, metodologías y plataformas que se utilizan en el ciclo de vida del desarrollo de software. Se centra en la correcta configuración y uso de entornos para la creación y prueba de aplicaciones.</p>
    </section>

    <section>
        <h2>Objetivos del Curso</h2>
        <ul>
            <li>Desarrollar habilidades en el uso de herramientas como IDEs, sistemas de control de versiones, y compiladores.</li>
            <li>Familiarizarse con la integración continua y el despliegue de aplicaciones.</li>
	    <li>Elaboración de diagramas para la ingeniería del software.</li>
        </ul>
    </section>

    <section>
        <h2>Herramientas Comunes</h2>
        <p>En el curso se trabajará con una variedad de herramientas y plataformas, entre las cuales destacan:</p>
        <ul>
            <li><strong>IDEs:</strong> Visual Studio Code, Eclipse, IntelliJ IDEA.</li>
            <li><strong>Sistemas de control de versiones:</strong> Git, GitHub, GitLab.</li>
        </ul>
    </section>
</main>

<footer>
    <p>© 2024 STEM Granada - Todos los derechos reservados.</p>
</footer>

</body>
</html>
```

Agrega los cambios al staging área y confirma los cambios.

## Ejercicio 4: Crear ramas

Crea la rama `testing` y cámbiate a esa rama. Ahora que estás en la rama `testing`, escribe en el archivo `AboutUs.md` una descripción en pocas palabras de qué crees que se estudia en la asignatura Entornos de Desarrollo.

Cuando hayas concluido de redactar, agrega tus cambios al staging area y realiza un commit.

Ahora regresa a la rama `master`. Crea otra rama: `diseno`, y cámbiate a la rama. Crea un nuevo archivo llamado `estilo.css` con el siguiente contenido (puedes copiarlo):

```
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

header {
    background-color: #007acc;
    color: white;
    padding: 1rem;
    text-align: center;
}

main {
    padding: 2rem;
}

section {
    margin-bottom: 2rem;
}

h1, h2 {
    color: #007acc;
}

footer {
    background-color: #007acc;
    color: white;
    text-align: center;
    padding: 1rem;
    position: fixed;
    width: 100%;
    bottom: 0;
}
```

Modifica el archivo `index.html` para que en la cabecera se enlace el .css externo en lugar de usar los estilos directamente en el `.html`. Para ello, se debería quedar algo parecido a:

```
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Página de presentación de la asignatura Entornos de Desarrollo.">
    <title>Entornos de Desarrollo</title>
    <link rel="stylesheet" href="estilo.css">
</head>
``` 

Agrega los cambios al staging area y realiza un commit.

## Ejercicio 5: Unión de ramas

Colócate en la rama principal e incorpora los cambios de `testing`. 

## Ejercicio 6: Aparición de conflictos

En la rama principal, incorpora los cambios de `diseno`. Esto añadirá el fichero `estilo.css` sin problema, ya que no se encontraba en la rama principal, pero puede causar un conflicto en el archivo `index.html` ya que el head antes tenía una cosa y diseño le ha puesto otra. No sólo ha añadido contenido, sino que lo ha modificado. 

## Ejercicio 7: Resolución de conflictos

Soluciona el conflicto manualmente usando un editor de texto como consideres oportuno. Existen al menos 2 soluciones válidas, pero una es mejor que otra. En este caso, lo óptimo sería lo que aportaba la rama de `diseno` que nos deja el `.css` separado del `.html`.

Recuerda hacer un commit con los cambios al terminar de resolver el conflicto.

## Ejercicio 8: Más cambios

En la rama `diseno`: Incorpora más cambios en el fichero `estilo.css`. Modifica todos los colores (puedes poner nombres, no tienen que ser códigos hexadecimales a la fuerza).

## Ejercicio 9: ¿Más conflictos?

Incorpora a la rama principal los cambios hechos en `diseno` en el ejercicio anterior. Si hubiera conflictos, resuélvelos a mano con un editor de texto. Aquí harás el último commit de la prueba, por lo que lo puedes guardar como "Versión 1.0".

## Ejercicio 10: Repositorio de GitHub

Como ya sabéis, para la prueba se os crea un repositorio. Empuja (push) los cambios de tu rama principal a ese repositorio de GitHub. Cuando lo consigas, haz push también de la rama `diseno` para tenerla también en `origin` (en remoto). 



