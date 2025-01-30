
# Ejercicio Práctico: Creación y Manipulación de Base de Datos en MySQL

En este ejercicio, vas a crear una base de datos con 5 tablas relacionadas, aplicarás los conceptos de diseño físico, y practicarás con distintas técnicas de inserción de datos utilizando palabras clave y tipos de datos vistos en el tema.

## Objetivo
1. Crear una base de datos con 5 tablas relacionadas.
2. Definir tipos de datos específicos, claves primarias y externas, restricciones de integridad, y aplicar índices en las columnas necesarias.
3. Insertar datos en las tablas utilizando tanto inserciones simples como en bloque.

---

## Instrucciones

### Paso 1: Creación de la Base de Datos

1. **Crea una base de datos** llamada `EmpresaLogistica`.
2. **Selecciona** la base de datos para trabajar en ella.

```sql
CREATE DATABASE EmpresaLogistica;
USE EmpresaLogistica;
```

### Paso 2: Creación de Tablas

Define 5 tablas siguiendo el modelo físico visto, incluyendo claves primarias, claves externas, restricciones de integridad, y tipos de datos específicos. Asegúrate de cubrir todos los conceptos:

1. **Empleados**: `id_empleado` (INT, PK, AUTO_INCREMENT), `nombre` (VARCHAR), `apellido` (VARCHAR), `salario` (DECIMAL), `fecha_contratacion` (DATE), `id_departamento` (INT, FK).
2. **Departamentos**: `id_departamento` (INT, PK, AUTO_INCREMENT), `nombre_departamento` (VARCHAR, UNIQUE).
3. **Productos**: `id_producto` (INT, PK, AUTO_INCREMENT), `nombre_producto` (VARCHAR), `precio` (DECIMAL), `stock` (INT, DEFAULT 0), `fecha_adicion` (DATETIME).
4. **Clientes**: `id_cliente` (INT, PK, AUTO_INCREMENT), `nombre_cliente` (VARCHAR), `correo` (VARCHAR, UNIQUE), `telefono` (CHAR).
5. **Pedidos**: `id_pedido` (INT, PK, AUTO_INCREMENT), `id_cliente` (INT, FK), `id_producto` (INT, FK), `cantidad` (INT, CHECK > 0), `fecha_pedido` (TIMESTAMP).


### Paso 3: Inserción de Datos

#### Inserción Simple

1. Inserta 5 registros en la tabla `Empleados` con inserciones individuales, usando la palabra clave `INSERT INTO` y especificando valores para cada columna.


#### Inserción en Bloque

1. Inserta 10 registros en la tabla `Productos` en un solo comando `INSERT INTO`.


### Paso 4: Validación y Consulta de Datos

1. **Consulta los datos** insertados en cada tabla para asegurarte de que las inserciones se han realizado correctamente:

```sql
SELECT * FROM Empleados;
SELECT * FROM Productos;
```
