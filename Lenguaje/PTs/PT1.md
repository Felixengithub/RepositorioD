[Enlace Repositorio Examen](https://classroom.github.com/a/RqHxGPDB)




## PT1: XML, DTD y XSD

## Ejercicio 1 

### Enunciado:

Una tienda de videojuegos llamada **GameWorld** desea crear un sistema de inventario y seguimiento de ventas para sus videojuegos. Necesitas construir un archivo **XML** que contenga la información de los videojuegos, sus detalles y sus ventas, y crear un archivo **XSD** para definir las restricciones del XML. 

### Parte 1: Crear el archivo XML

Debes crear un archivo XML con la siguiente estructura:

1. **tienda**: El elemento raíz del documento.
2. **videojuego**: Cada elemento `videojuego` debe tener los siguientes subelementos:
   - **titulo**: El nombre del videojuego.
   - **plataforma**: La plataforma en la que está disponible el videojuego (`PlayStation`, `Xbox`, `PC`, `Switch`).
   - **precio**: El precio del videojuego, en formato decimal (ejemplo: `59.99`).
   - **fechaLanzamiento**: La fecha de lanzamiento del videojuego en formato `YYYY-MM-DD`.
   - **mesLanzamiento**: El mes en el que se lanzó el videojuego, solo permitiendo valores de meses.
   - **clasificacion**: La clasificación del videojuego según el sistema de clasificación por edades (`E`, `T`, `M`, `A`).
   - **desarrollador**: El nombre del desarrollador del videojuego.
   - **version**: La versión del videojuego en formato `vX.Y` (ejemplo: `v1.0`).
3. **venta**: Cada elemento `venta` debe tener los siguientes subelementos:
   - **id**: Un identificador único de la venta, siguiendo el formato `VENTA-XXXX`, donde "XXXX" son dígitos (ejemplo: `VENTA-0001`).
   - **fechaVenta**: La fecha de la venta, en formato `YYYY-MM-DD`.
   - **mesVenta**: El mes en el que se realizó la venta, solo permitiendo valores de meses.
   - **unidadesVendidas**: La cantidad de unidades vendidas del videojuego.
   - **metodoPago**: El método de pago utilizado para la venta (`Tarjeta`, `Efectivo`, `PayPal`).
   - **videojuego**: El título del videojuego vendido.

### Parte 2: Crear el archivo XSD

Debes crear un archivo XSD que defina las siguientes restricciones adicionales para el archivo XML:

1. **Desarrollador**: El nombre del desarrollador debe tener una longitud mínima de 3 caracteres y maximo indefinido.
2. **Precio**: El precio debe ser mayor que 0.
3. **Version**: La versión debe seguir un patrón específico en formato `vX.Y`, donde "X" e "Y" son dígitos.
4. **Ocurrencias**: Un videojuego debe aparecer al menos una vez, y puede aparecer un máximo de 5 veces.



## Ejercicio 2

### Enunciado:

La tienda de videojuegos **GameWorld** ha proporcionado una definición **DTD** para organizar la información de su inventario de videojuegos y las promociones especiales que ofrecen. Debes crear un archivo **XML** que cumpla con las restricciones de esta definición **DTD**.


### Parte 1: Crear el archivo XML

Debes crear un archivo XML que contenga al menos **dos secciones** con tres productos cada una. Incluye al menos una promoción para uno de los productos de cada sección.

Definición DTD:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE tienda [
    <!ELEMENT tienda (seccion+)>
    <!ELEMENT seccion (nombre, productos)>
    <!ELEMENT nombre (#PCDATA)>
    <!ELEMENT productos (producto+)>
    <!ELEMENT producto (titulo, detalles, precio, stock, promociones)>
    <!ELEMENT titulo (#PCDATA)>
    <!ELEMENT detalles (#PCDATA)>
    <!ELEMENT precio (#PCDATA)>
    <!ELEMENT stock (#PCDATA)>
    <!ELEMENT promociones (promocion+)>
    <!ELEMENT promocion (nombrePromocion, descripcion, fechaInicio, fechaFin)>
    <!ELEMENT nombrePromocion (#PCDATA)>
    <!ELEMENT descripcion (#PCDATA)>
    <!ELEMENT fechaInicio (#PCDATA)>
    <!ELEMENT fechaFin (#PCDATA)>
    <!ATTLIST seccion tipo CDATA #REQUIRED>
]>

```