# Ejercicio de Creación de Base de Datos - EJERCICIO2

En este ejercicio, se te pide que practiques la creación de tablas con una variedad de tipos de datos en una base de datos llamada `EJERCICIO2`. Además, deberás incluir claves primarias, atributos específicos, y claves foráneas para definir relaciones entre las tablas.

## Instrucciones

1. **Crea la Base de Datos**

   - Crea una base de datos llamada `EJERCICIO2`.

   CREATE DATABASE EJERCICIO2;
    USE EJERCICIO2;

2. **Diseña las Tablas**

   A continuación, crea las siguientes tablas en la base de datos `EJERCICIO2` según los requisitos proporcionados.

   ### Tabla `Clientes`
   
   - Crea una tabla llamada `Clientes` con los siguientes campos:
     - **id_cliente**: Clave primaria de tipo entero, auto-incremental.
     - **nombre**: Cadena de texto (VARCHAR) de hasta 50 caracteres. No puede ser nulo.
     - **apellido**: Cadena de texto (VARCHAR) de hasta 50 caracteres. No puede ser nulo.
     - **fecha_nacimiento**: Fecha de nacimiento (DATE) del cliente.
     - **email**: Dirección de correo electrónico (VARCHAR) de hasta 100 caracteres, única para cada cliente.
     - **telefono**: Número de teléfono de 10 caracteres de longitud fija (CHAR).
     - **direccion**: Texto (TEXT) para almacenar la dirección del cliente.
     - **fecha_registro**: Fecha y hora de registro (TIMESTAMP), con valor predeterminado al momento actual.

   ### Tabla `Productos`
   
   - Crea una tabla llamada `Productos` con los siguientes campos:
     - **id_producto**: Clave primaria de tipo entero, auto-incremental.
     - **nombre_producto**: Cadena de texto (VARCHAR) de hasta 100 caracteres. No puede ser nulo.
     - **descripcion**: Texto extenso (MEDIUMTEXT) para almacenar la descripción del producto.
     - **precio**: Número decimal con una precisión de 7 dígitos en total y 2 decimales.
     - **stock**: Número entero que representa la cantidad de productos en inventario, con un valor predeterminado de 0.
     - **categoria_id**: Identificador de la categoría (INT) como clave foránea para relacionar con la tabla `Categorias`.

   ### Tabla `Categorias`
   
   - Crea una tabla llamada `Categorias` con los siguientes campos:
     - **id_categoria**: Clave primaria de tipo entero, auto-incremental.
     - **nombre_categoria**: Cadena de texto (VARCHAR) de hasta 50 caracteres. No puede ser nulo.

   ### Tabla `Pedidos`
   
   - Crea una tabla llamada `Pedidos` con los siguientes campos:
     - **id_pedido**: Clave primaria de tipo entero, auto-incremental.
     - **id_cliente**: Identificador del cliente (INT), como clave foránea para conectar con la tabla `Clientes`.
     - **fecha_pedido**: Fecha y hora del pedido (DATETIME).
     - **total**: Número decimal con una precisión de 10 dígitos en total y 2 decimales, que representa el monto total del pedido.

   ### Tabla `Detalles_Pedidos`
   
   - Crea una tabla llamada `Detalles_Pedidos` con los siguientes campos:
     - **id_detalle**: Clave primaria de tipo entero, auto-incremental.
     - **id_pedido**: Identificador del pedido (INT), como clave foránea para conectar con la tabla `Pedidos`.
     - **id_producto**: Identificador del producto (INT), como clave foránea para conectar con la tabla `Productos`.
     - **cantidad**: Número entero, que representa la cantidad de productos en el pedido. Tiene un valor predeterminado de 1.
     - **precio_unitario**: Número decimal con una precisión de 7 dígitos en total y 2 decimales, que almacena el precio del producto al momento del pedido.

## Consideraciones

- Asegúrate de definir correctamente cada tipo de dato, incluyendo la longitud de los `VARCHAR` y la precisión de los `DECIMAL`.
- Incluye restricciones adicionales como `UNIQUE`, `NOT NULL`, y `DEFAULT` donde corresponda para asegurar la integridad de los datos.
- Implementa las claves foráneas para definir las relaciones entre las tablas especificadas.

## Objetivo

Este ejercicio te ayudará a practicar la creación de estructuras de bases de datos con una variedad de tipos de datos, restricciones y relaciones entre tablas. La correcta implementación de claves foráneas y atributos adicionales garantizará la integridad y consistencia de los datos almacenados en tu base de datos `EJERCICIO2`.
