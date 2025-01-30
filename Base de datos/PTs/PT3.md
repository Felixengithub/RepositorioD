# **Prueba Técnica 3 - Paso de Modelo Relacional a Modelo Físico**

[Enlace Repositorio](https://classroom.github.com/a/2SICdmxV)

## **Ejercicio 1: Gestión de Empleados y Departamentos**

### **Descripción del ejercicio:**

Se requiere crear una base de datos que permita gestionar información sobre empleados y los departamentos en los que trabajan. Para ello, deberás crear dos tablas principales: una para los departamentos y otra para los empleados. Además, deberás realizar varias consultas para extraer y ordenar la información de ambas tablas. Valora qué campos pueden ser nulos y cuales no, según tu criterio.

### **Tablas a crear:**

1. **Tabla `Departamentos`:**
   Crea una tabla llamada `Departamentos` que almacene la información de los distintos departamentos de la empresa. Esta tabla debe tener las siguientes columnas:
   - Un campo `id_departamento` que sea un número entero y se autoincremente con cada nuevo registro. Este campo debe ser la clave primaria de la tabla.
   - Un campo `nombre_departamento` que almacene el nombre del departamento.

2. **Tabla `Empleados`:**
   Crea una tabla llamada `Empleados` que almacene la información de los empleados. Esta tabla debe incluir:
   - Un campo `id_empleado` que sea un número entero y se autoincremente con cada nuevo registro. Este campo debe ser la clave primaria.
   - Un campo `nombre` que almacene el nombre del empleado.
   - Un campo `apellido` que almacene el apellido del empleado.
   - Un campo `id_departamento` que almacene el `id_departamento` del departamento en el que trabaja el empleado. Este campo debe ser una clave foránea que haga referencia al `id_departamento` en la tabla `Departamentos`.

3. **Tabla `Proyectos`:**
   Crea una tabla llamada `Proyectos` que almacene la información de los proyectos en los que la empresa está involucrada. Esta tabla debe tener:
   - Un campo `id_proyecto` como clave primaria y autoincrementable.
   - Un campo `nombre_proyecto` para almacenar el nombre del proyecto.
   - Un campo `fecha_inicio` para la fecha de inicio del proyecto.

4. **Tabla `Empleados_Proyectos`:**
   Crea una tabla de relación llamada `Empleados_Proyectos` que indique qué empleados están asignados a qué proyectos. Esta tabla debe contener:
   - Un campo `id_empleado` que sea una clave foránea que haga referencia al `id_empleado` en la tabla `Empleados`.
   - Un campo `id_proyecto` que sea una clave foránea que haga referencia al `id_proyecto` en la tabla `Proyectos`.

### **Inserciones:**

1. Inserta 4 departamentos en la tabla `Departamentos`.
2. Inserta 4 empleados en la tabla `Empleados`.
3. Inserta 3 proyectos en la tabla `Proyectos`.
4. Asocia algunos empleados con los proyectos mediante la tabla `Empleados_Proyectos`.

### **Archivos a entregar:**

1. **Archivo 1: `ejercicio1_create_insert.sql`**
   - Este archivo debe contener los comandos `CREATE` e `INSERT` para crear las tablas mencionadas y agregar datos de ejemplo. Debes realizar los siguientes `INSERT`:
     - 4 inserciones en la tabla `Departamentos`.
     - 4 inserciones en la tabla `Empleados`.
     - 3 inserciones en la tabla `Proyectos`.
     - 3 inserciones en la tabla `Empleados_Proyectos`.
   
2. **Archivo 2: `ejercicio1_select.sql`**
   - Este archivo debe contener las consultas `SELECT` para realizar las siguientes operaciones:
     1. Selecciona todos los empleados de la tabla `Empleados`.
     2. Selecciona todos los empleados que pertenezcan al departamento con `id_departamento` igual a `2`.
     3. Selecciona todos los empleados y ordénalos por apellido de manera ascendente.
     4. Selecciona todos los empleados cuyo apellido sea `García` y ordénalos por nombre de manera descendente.


---

## **Ejercicio 2: Gestión de Productos y Ventas**

### **Descripción del ejercicio:**

El objetivo de este ejercicio es crear una base de datos que permita gestionar productos y ventas en una tienda. Para ello, deberás crear dos tablas principales: una para los productos y otra para las ventas. Además, deberás realizar varias consultas para extraer y ordenar la información de ambas tablas. También agregarás algunas tablas relacionadas con categorías de productos y clientes para enriquecer el ejercicio.

### **Tablas a crear:**

1. **Tabla `Productos`:**
   Crea una tabla llamada `Productos` que almacene la información de los productos disponibles en la tienda. Esta tabla debe incluir:
   - Un campo `id_producto` que sea un número entero y se autoincremente con cada nuevo producto. Este campo será la clave primaria de la tabla.
   - Un campo `nombre_producto` para almacenar el nombre del producto.
   - Un campo `precio` para el precio del producto, que debe ser un número decimal con dos lugares decimales.
   - Un campo `stock` que indique la cantidad de unidades disponibles en inventario, que debe ser un número entero.

2. **Tabla `Ventas`:**
   Crea una tabla llamada `Ventas` que registre cada venta realizada. Esta tabla debe incluir:
   - Un campo `id_venta` que sea un número entero y se autoincremente con cada venta realizada. Este campo debe ser la clave primaria.
   - Un campo `id_producto` que almacene el `id_producto` del producto vendido. Este campo debe ser una clave foránea que haga referencia a `id_producto` en la tabla `Productos`.
   - Un campo `cantidad` que indique cuántas unidades del producto se han vendido, que debe ser un número entero.
   - Un campo `fecha_venta` que indique la fecha en la que se realizó la venta, que debe ser de tipo `DATE`.

3. **Tabla `Clientes`:**
   Crea una tabla llamada `Clientes` que almacene la información de los clientes de la tienda. Esta tabla debe incluir:
   - Un campo `id_cliente` que sea un número entero y se autoincremente con cada nuevo cliente. Este campo debe ser la clave primaria.
   - Un campo `nombre_cliente` para almacenar el nombre del cliente.
   - Un campo `email_cliente` para almacenar el correo electrónico del cliente, que debe ser único.

4. **Tabla `Categorias`:**
   Crea una tabla llamada `Categorias` que almacene las categorías de los productos disponibles en la tienda. Esta tabla debe incluir:
   - Un campo `id_categoria` que sea un número entero y se autoincremente con cada nueva categoría. Este campo debe ser la clave primaria.
   - Un campo `nombre_categoria` para almacenar el nombre de la categoría.

### **Inserciones:**

1. Inserta 4 productos en la tabla `Productos`.
2. Inserta 4 ventas en la tabla `Ventas`.
3. Inserta 3 clientes en la tabla `Clientes`.
4. Inserta 3 categorías en la tabla `Categorias`.

### **Archivos a entregar:**

1. **Archivo 1: `ejercicio2_create_insert.sql`**
   - Este archivo debe contener los comandos `CREATE` e `INSERT` para crear las tablas mencionadas y agregar datos de ejemplo. Debes realizar los siguientes `INSERT`:
     - 4 inserciones en la tabla `Productos`.
     - 4 inserciones en la tabla `Ventas`.
     - 3 inserciones en la tabla `Clientes`.
     - 3 inserciones en la tabla `Categorias`.

2. **Archivo 2: `ejercicio2_select.sql`**
   - Este archivo debe contener las consultas `SELECT` para realizar las siguientes operaciones:
     1. Selecciona todos los productos con su precio y stock disponibles.
     2. Selecciona todas las ventas donde la cantidad vendida sea mayor que 3 unidades, y ordena los resultados por `fecha_venta` de manera descendente.
     3. Selecciona todos los productos cuyo `stock` sea menor a 50 unidades, y ordénalos por `precio` de manera ascendente.
     4. Selecciona todos los productos cuyo `stock` sea igual a 0 (es decir, productos que no están disponibles en inventario).

---

## **Ejercicio 3: Gestión de Clientes y Pedidos**

### **Descripción del ejercicio:**

Este ejercicio tiene como objetivo crear una base de datos para gestionar clientes y pedidos realizados en una tienda. Debes crear las tablas necesarias para almacenar la información de los clientes y los pedidos. Posteriormente, realizarás varias consultas para extraer y ordenar la información de estas tablas, agregando también tablas adicionales que permitan almacenar información relacionada con direcciones y productos.

### **Tablas a crear:**

1. **Tabla `Clientes`:**
   Crea una tabla llamada `Clientes` que almacene los datos de los clientes de la tienda. Esta tabla debe incluir:
   - Un campo `id_cliente` que sea un número entero y se autoincremente con cada nuevo cliente. Este campo debe ser la clave primaria de la tabla.
   - Un campo `nombre_cliente` que almacene el nombre completo del cliente.
   - Un campo `correo_cliente` para almacenar el correo electrónico del cliente, que debe ser único.

2. **Tabla `Pedidos`:**
   Crea una tabla llamada `Pedidos` que registre los pedidos realizados por los clientes. Esta tabla debe tener:
   - Un campo `id_pedido` que sea un número entero y se autoincremente con cada nuevo pedido. Este campo debe ser la clave primaria.
   - Un campo `id_cliente` que almacene el `id_cliente` del cliente que realizó el pedido. Este campo debe ser una clave foránea que haga referencia al `id_cliente` en la tabla `Clientes`.
   - Un campo `fecha_pedido` que indique la fecha en la que se realizó el pedido, que debe ser de tipo `DATE`.
   - Un campo `total_pedido` que almacene el total del pedido como un valor decimal con dos decimales.

3. **Tabla `Direcciones`:**
   Crea una tabla llamada `Direcciones` para almacenar las direcciones de envío de los clientes. Esta tabla debe incluir:
   - Un campo `id_direccion` que sea un número entero y se autoincremente con cada nueva dirección. Este campo debe ser la clave primaria.
   - Un campo `id_cliente` que almacene el `id_cliente` del cliente asociado a esta dirección. Este campo debe ser una clave foránea que haga referencia a `id_cliente` en la tabla `Clientes`.
   - Un campo `direccion` para almacenar la dirección completa del cliente, que no puede ser nula.

4. **Tabla `Productos`:**
   Crea una tabla llamada `Productos` que almacene la información de los productos vendidos en la tienda. Esta tabla debe incluir:
   - Un campo `id_producto` que sea un número entero y se autoincremente con cada nuevo producto. Este campo debe ser la clave primaria.
   - Un campo `nombre_producto` para almacenar el nombre del producto.
   - Un campo `precio_producto` que almacene el precio del producto, que debe ser un valor decimal con dos decimales.

### **Inserciones:**

1. Inserta 4 clientes en la tabla `Clientes`.
2. Inserta 4 pedidos en la tabla `Pedidos`.
3. Inserta 3 direcciones de envío en la tabla `Direcciones`.
4. Inserta 4 productos en la tabla `Productos`.

### **Archivos a entregar:**

1. **Archivo 1: `ejercicio3_create_insert.sql`**
   - Este archivo debe contener los comandos `CREATE` e `INSERT` para crear las tablas mencionadas y agregar datos de ejemplo. Debes realizar los siguientes `INSERT`:
     - 4 inserciones en la tabla `Clientes`.
     - 4 inserciones en la tabla `Pedidos`.
     - 3 inserciones en la tabla `Direcciones`.
     - 4 inserciones en la tabla `Productos`.

2. **Archivo 2: `ejercicio3_select.sql`**
   - Este archivo debe contener las consultas `SELECT` para realizar las siguientes operaciones:
     1. Selecciona todos los clientes y sus correos electrónicos.
     2. Selecciona todos los pedidos realizados por el cliente con `id_cliente = 2` y ordena los resultados por `fecha_pedido` en orden ascendente.
     3. Selecciona todos los pedidos realizados después del 1 de noviembre de 2024 y ordena los resultados por `total_pedido` en orden descendente.
     4. Selecciona los pedidos cuyo `total_pedido` sea superior a 150 y ordena los resultados por `fecha_pedido` en orden ascendente.
