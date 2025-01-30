# Ejercicio de Creación de Base de Datos - EJERCICIO3

En este ejercicio, crearás una base de datos llamada `EJERCICIO3`, donde diseñarás varias tablas sin especificaciones exactas de los tipos de datos para que determines cuál es el tipo más adecuado para cada campo. Considera aspectos como restricciones de longitud y precisión, claves primarias y foráneas, y otros detalles que aseguren la integridad de los datos.

## Instrucciones

1. **Crea la Base de Datos**
   - Crea una base de datos llamada `EJERCICIO3`.
   - Usa la base de datos EJERCICIO3
2. **Diseña las Tablas**

   ### Tabla `Usuarios`
   
   - **id_usuario**: Identificador único para cada usuario.
   - **nombre**: Nombre del usuario.
   - **apellido**: Apellido del usuario.
   - **email**: Correo electrónico, único para cada usuario.
   - **fecha_registro**: Fecha y hora en la que el usuario se registró.

   ### Tabla `Libros`
   
   - **id_libro**: Identificador único de cada libro.
   - **titulo**: Título del libro.
   - **autor**: Autor del libro.
   - **editorial**: Editorial que publica el libro.
   - **precio**: Precio del libro.
   - **stock**: Cantidad de ejemplares disponibles en inventario.

   ### Tabla `Prestamos`
   
   - **id_prestamo**: Identificador único del préstamo.
   - **id_usuario**: Identificador del usuario que realizó el préstamo (clave foránea hacia `Usuarios`).
   - **id_libro**: Identificador del libro prestado (clave foránea hacia `Libros`).
   - **fecha_prestamo**: Fecha en la que se realizó el préstamo.
   - **fecha_devolucion**: Fecha límite para devolver el libro.

   ### Tabla `Categorias_Libros`
   
   - **id_categoria**: Identificador único de la categoría de libros.
   - **nombre_categoria**: Nombre de la categoría (Ej. Ciencia Ficción, Historia).
   - **descripcion**: Descripción de la categoría.

   ### Tabla `Categorias_Prestamos`
   
   - **id_categoria**: Identificador de la categoría de préstamo (clave foránea hacia `Categorias_Libros`).
   - **id_prestamo**: Identificador del préstamo (clave foránea hacia `Prestamos`).

## Consideraciones

- Asegúrate de incluir restricciones como `UNIQUE`, `NOT NULL` y `DEFAULT` donde sea necesario.
- Define las relaciones adecuadas entre tablas mediante claves foráneas.
- Asigna tipos de datos adecuados para cada campo según la información que se almacenará en ellos.



