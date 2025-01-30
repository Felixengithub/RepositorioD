

## Unidad 1: XML

### Introducción a XML
XML (Extensible Markup Language) es un lenguaje de marcado diseñado para estructurar, almacenar y transferir información de forma estandarizada entre sistemas. Su flexibilidad lo hace esencial en aplicaciones modernas, desde configuraciones hasta servicios web.

- **Características principales**:
  - **Extensible**: Los usuarios pueden definir sus propias etiquetas.
  - **Autodescriptivo**: La estructura y el contenido están integrados en el documento.
  - **Legible por humanos y máquinas**: Facilita la depuración y la interoperabilidad.

**Ejemplo básico**:
```xml
<?xml version="1.0" encoding="UTF-8"?>
<catalogo>
    <producto id="1">
        <nombre>Manzana</nombre>
        <precio>1.50</precio>
    </producto>
    <producto id="2">
        <nombre>Banana</nombre>
        <precio>1.00</precio>
    </producto>
</catalogo>
```

### DTD: Definición de Tipo de Documento
DTD define las reglas estructurales de un documento XML, asegurando su validez y consistencia.

- **Tipos de DTD**:
  - **Interna**: Incluida directamente en el documento XML.
  - **Externa**: Referenciada desde un archivo separado.

**Ejemplo de DTD externa**:
```xml
<!DOCTYPE catalogo SYSTEM "catalogo.dtd">
<catalogo>
    <producto id="1">
        <nombre>Manzana</nombre>
        <precio>1.50</precio>
    </producto>
</catalogo>
```

**Archivo `catalogo.dtd`**:
```xml
<!ELEMENT catalogo (producto+)>
<!ELEMENT producto (nombre, precio)>
<!ATTLIST producto id ID #REQUIRED>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT precio (#PCDATA)>
```

### XML Schema Definition (XSD)
XSD amplía las capacidades de DTD, permitiendo definir tipos de datos precisos y validaciones más complejas.

**Ejemplo con XSD**:
```xml
<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">
  <xs:element name="producto">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="nombre" type="xs:string"/>
        <xs:element name="precio" type="xs:decimal"/>
      </xs:sequence>
      <xs:attribute name="id" type="xs:ID" use="required"/>
    </xs:complexType>
  </xs:element>
</xs:schema>
```

### Ventajas y desventajas de XML
**Ventajas**:
- Interoperabilidad universal.
- Extensible y escalable.
- Amplio soporte en herramientas y lenguajes de programación.

**Desventajas**:
- Mayor tamaño en comparación con otros formatos como JSON.
- Menor rendimiento en procesamiento.

---

## Unidad 2: HTML

### Historia y Evolución
Desde HTML 1.0 hasta HTML5, este lenguaje ha evolucionado significativamente:
- **HTML 4.01 (1999)**: Introdujo hojas de estilo CSS, mejorando la separación entre contenido y presentación.
- **HTML5 (2014)**: Añadió soporte nativo para multimedia, API avanzadas y etiquetas semánticas como `<article>`, `<section>`, y `<header>`.

### Estructura básica de HTML
Un documento HTML sigue una jerarquía de etiquetas:
1. **`<!DOCTYPE html>`**: Indica la versión de HTML utilizada.
2. **`<html>`**: Contenedor principal.
3. **`<head>`**: Incluye metadatos, títulos y enlaces externos.
4. **`<body>`**: Contiene el contenido visible.

**Ejemplo de documento básico**:
```html
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Ejemplo HTML</title>
</head>
<body>
  <header>
    <h1>Bienvenido a Mi Sitio</h1>
  </header>
  <main>
    <section>
      <h2>Acerca de Nosotros</h2>
      <p>Proveemos servicios web de alta calidad.</p>
    </section>
  </main>
  <footer>
    <p>&copy; 2024 Mi Sitio. Todos los derechos reservados.</p>
  </footer>
</body>
</html>
```

### Etiquetas semánticas
- **`<header>`**: Encabezado de la página.
- **`<nav>`**: Menú de navegación.
- **`<article>`**: Artículo independiente.
- **`<footer>`**: Información del pie de página.

Estas etiquetas mejoran la accesibilidad y el SEO al proporcionar un significado claro al contenido.

---

## Unidad 3: Listas y Tablas en HTML

### Listas
Las listas organizan información en forma de elementos agrupados.
1. **Ordenadas (`<ol>`)**:
   - Presentan ítems numerados en secuencia.
   - Atributos como `type` y `start` personalizan el estilo.

**Ejemplo**:
```html
<ol type="I" start="3">
  <li>Tercer Elemento</li>
  <li>Cuarto Elemento</li>
</ol>
```

2. **No ordenadas (`<ul>`)**:
   - Usan viñetas predeterminadas que pueden personalizarse con CSS.

**Ejemplo con viñetas cuadradas**:
```html
<ul style="list-style-type: square;">
  <li>Primero</li>
  <li>Segundo</li>
</ul>
```

3. **Anidación de listas**:
   - Se pueden combinar listas ordenadas y no ordenadas para crear jerarquías.

**Ejemplo**:
```html
<ol>
  <li>Categoría 1</li>
  <li>Categoría 2
    <ul>
      <li>Subcategoría A</li>
      <li>Subcategoría B</li>
    </ul>
  </li>
</ol>
```

### Tablas
Las tablas son estructuras tabulares organizadas en filas y columnas.

- **Elementos principales**:
  - `<table>`: Define la tabla.
  - `<tr>`: Representa una fila.
  - `<td>`: Define una celda de datos.
  - `<th>`: Define un encabezado de columna o fila.

**Ejemplo básico**:
```html
<table border="1">
  <tr>
    <th>Producto</th>
    <th>Precio</th>
  </tr>
  <tr>
    <td>Manzana</td>
    <td>$1.50</td>
  </tr>
</table>
```

### Buenas prácticas en el diseño de tablas
- **Accesibilidad**:
  - Uso de `scope="col"` o `scope="row"` para mejorar la interpretación en lectores de pantalla.
- **Estilización con CSS**:
  - Personalización del diseño y bordes mediante reglas CSS.

**Ejemplo de estilización avanzada**:
```html
<style>
  table {
    border-collapse: collapse;
    width: 100%;
  }
  th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
</style>
```
