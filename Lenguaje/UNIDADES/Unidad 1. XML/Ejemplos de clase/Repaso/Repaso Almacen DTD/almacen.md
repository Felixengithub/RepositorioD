# Ejercicio de conversión DTD a XML

### Enunciado:

Tienes el siguiente documento **DTD** que define la estructura de un sistema de inventario para un **almacén de tecnología**. Tu tarea es crear un archivo **XML** que cumpla con las restricciones de esta definición.

#### Definición DTD:

```xml
<!ELEMENT inventario (producto+)>
<!ELEMENT producto (nombre, categoria, precio, stock)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT categoria (#PCDATA)>
<!ELEMENT precio (#PCDATA)>
<!ELEMENT stock (#PCDATA)>
<!ATTLIST producto id ID #REQUIRED>
````

