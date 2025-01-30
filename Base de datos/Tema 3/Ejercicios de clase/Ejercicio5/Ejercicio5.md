
# Ejercicio Práctico: Optimización con Índices en MySQL

En este ejercicio, practicarás la creación y el uso de índices simples y compuestos en una base de datos MySQL. También analizarás el impacto de los índices en las consultas mediante pruebas de rendimiento.

## Contexto

Estás trabajando con una base de datos para gestionar una tienda de productos electrónicos. La base de datos contiene una tabla llamada `Elementos` con las siguientes columnas:

- `id_elemento` (INT, PRIMARY KEY)
- `nombre_elemento` (VARCHAR(100))
- `costo` (DECIMAL(10,2))
- `detalle` (TEXT)
- `fecha_creacion` (DATE)

Tu objetivo es optimizar el rendimiento de las consultas en esta tabla mediante el uso de índices.

## Parte 1: Creación de Índices

1. Crea un índice simple en la columna `nombre_elemento` para optimizar las consultas que buscan productos por su nombre.

2. Crea un índice compuesto en las columnas `nombre_elemento` y `costo` para optimizar las consultas que filtran productos por nombre y costo.

## Parte 2: Inserción de Datos

1. Inserta 100 registros iniciales en la tabla sin índices.

2. Inserta 100 registros adicionales en la tabla después de crear los índices.

## Parte 3: Comprobación del Impacto de los Índices

1. Realiza una consulta que busque un producto específico por su nombre (`nombre_elemento`) y mide el tiempo que tarda en ejecutarse sin índices.

2. Realiza la misma consulta después de crear los índices y compara los tiempos de ejecución.

3. Realiza una consulta que busque productos por nombre y costo (`nombre_elemento` y `costo`) y mide el tiempo de ejecución antes y después de crear los índices.

