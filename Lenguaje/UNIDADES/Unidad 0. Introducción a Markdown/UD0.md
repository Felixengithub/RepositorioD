### Unidad Didáctica 0: **Introducción a Markdown**

Markdown es un lenguaje de marcado ligero que permite a los usuarios formatear texto de manera sencilla y eficiente. Es especialmente popular en la creación de documentación, blogs y otros contenidos web, ya que ofrece una sintaxis intuitiva que se puede convertir fácilmente en HTML, PDF u otros formatos. A continuación, se presentan de manera detallada los conceptos, la sintaxis y las mejores prácticas para trabajar con Markdown de manera profesional.

---

### **1. Introducción a Markdown**

#### 1.1. ¿Qué es Markdown?

Markdown es un lenguaje de marcado creado por John Gruber en 2004, con la intención de ofrecer una forma sencilla de escribir documentos en texto plano que se pueden convertir fácilmente a HTML y otros formatos. Su objetivo es permitir que la escritura sea lo más legible posible en su forma sin procesar, a la vez que ofrece la posibilidad de generar contenido con formato.

- **Texto plano**: Los documentos en Markdown son completamente legibles sin procesamiento, lo que permite que cualquier usuario pueda leer y editar archivos `.md` o `.markdown` sin necesidad de software especializado.
- **Convertibilidad**: Los archivos escritos en Markdown se pueden convertir fácilmente a HTML para ser utilizados en sitios web, o incluso exportar a formatos como PDF, DOCX, o LaTeX.

##### **Ejemplo básico de Markdown**:
```markdown
# Título de nivel 1

Este es un párrafo con **negrita** y *cursiva*. Aquí hay un [enlace](https://www.ejemplo.com).

- Elemento de lista no ordenada
- Otro elemento de la lista
```

#### 1.2. Historia y evolución del lenguaje

Markdown fue concebido con la idea de hacer que la escritura en HTML sea más sencilla, a fin de que los escritores no técnicos pudieran generar contenido web sin tener que aprender lenguajes complejos. Desde su creación, Markdown ha sido adoptado por plataformas como GitHub, StackOverflow, Reddit, y muchas más. Hoy en día, existen múltiples variantes y extensiones de Markdown, como GitHub Flavored Markdown (GFM) o CommonMark, que añaden características más avanzadas como tablas y listas de tareas.

#### 1.3. Ventajas del uso de Markdown

- **Simplicidad**: La sintaxis de Markdown es fácil de aprender y usar. No requiere de conocimientos avanzados de programación ni de diseño web.
- **Portabilidad**: Markdown es texto plano, por lo que es compatible con cualquier plataforma y sistema operativo.
- **Conversión flexible**: Markdown puede convertirse en una amplia variedad de formatos, lo que lo hace ideal para generar contenido que debe ser distribuido en múltiples plataformas (web, PDF, Word, etc.).
- **Accesibilidad y colaboración**: Al ser legible en su formato base, es fácil colaborar en archivos Markdown usando sistemas de control de versiones como Git.

#### 1.4. Casos de uso comunes

- **Documentación técnica**: Markdown es el estándar en plataformas como GitHub para escribir archivos de documentación (`README.md`).
- **Blogs y publicaciones**: Muchas plataformas de blogs y gestores de contenido, como Jekyll, Hugo o Ghost, utilizan Markdown para la creación de publicaciones.
- **Emails**: Algunas herramientas de correo electrónico permiten escribir en Markdown para formatear los correos de manera rápida.
- **Notas y listas**: Markdown es útil para tomar notas o crear listas organizadas y claras.

---

### **2. Sintaxis Básica de Markdown**

Markdown se basa en una serie de caracteres especiales que permiten aplicar formato al texto de manera simple. La sintaxis básica incluye títulos, párrafos, listas, enlaces, imágenes y más. A continuación se detallan los principales elementos de la sintaxis.

#### 2.1. **Encabezados**

Los encabezados en Markdown se crean utilizando el símbolo de almohadilla `#`. Cuantas más almohadillas se utilicen, menor será el nivel del encabezado (del 1 al 6).

```markdown
# Encabezado de nivel 1
## Encabezado de nivel 2
### Encabezado de nivel 3
```

**Resultado HTML**:
```html
<h1>Encabezado de nivel 1</h1>
<h2>Encabezado de nivel 2</h2>
<h3>Encabezado de nivel 3</h3>
```

#### 2.2. **Párrafos y saltos de línea**

Para crear párrafos, simplemente se deja una línea en blanco entre bloques de texto. Los saltos de línea dentro de un mismo párrafo se generan con dos espacios al final de una línea.

```markdown
Este es el primer párrafo.

Este es el segundo párrafo.  
Este es el mismo párrafo, pero con un salto de línea.
```

**Resultado HTML**:
```html
<p>Este es el primer párrafo.</p>
<p>Este es el segundo párrafo.<br>Este es el mismo párrafo, pero con un salto de línea.</p>
```

#### 2.3. **Énfasis: negrita y cursiva**

Markdown permite aplicar énfasis a palabras o frases utilizando asteriscos `*` o guiones bajos `_` para cursiva, y dobles asteriscos o dobles guiones bajos para negrita.

- **Cursiva**:  
  ```markdown
  *Texto en cursiva* o _Texto en cursiva_
  ```

- **Negrita**:  
  ```markdown
  **Texto en negrita** o __Texto en negrita__
  ```

- **Negrita y cursiva**:  
  ```markdown
  ***Texto en negrita y cursiva*** o ___Texto en negrita y cursiva___
  ```

#### 2.4. **Listas ordenadas y no ordenadas**

Las listas en Markdown pueden ser ordenadas o no ordenadas. Para listas no ordenadas, se utilizan guiones `-`, asteriscos `*` o signos `+` como viñetas. Las listas ordenadas usan números seguidos de un punto.

- **Lista no ordenada**:
  ```markdown
  - Primer elemento
  - Segundo elemento
  ```

- **Lista ordenada**:
  ```markdown
  1. Primer elemento
  2. Segundo elemento
  ```

#### 2.5. **Enlaces y URLs**

Los enlaces se crean usando corchetes `[]` para el texto y paréntesis `()` para la URL. Es posible también añadir un texto alternativo usando comillas dentro de los paréntesis.

```markdown
[Texto del enlace](https://www.ejemplo.com "Texto alternativo")
```

**Resultado HTML**:
```html
<a href="https://www.ejemplo.com" title="Texto alternativo">Texto del enlace</a>
```

#### 2.6. **Imágenes**

Para insertar imágenes, se usa una sintaxis similar a la de los enlaces, pero con un signo de exclamación `!` antes de los corchetes.

```markdown
![Texto alternativo](https://www.ejemplo.com/imagen.png "Título de la imagen")
```

**Resultado HTML**:
```html
<img src="https://www.ejemplo.com/imagen.png" alt="Texto alternativo" title="Título de la imagen">
```

#### 2.7. **Citas**

Las citas se crean anteponiendo el símbolo `>` al texto. Las citas pueden contener varios párrafos y otros elementos de Markdown como listas o enlaces.

```markdown
> Esto es una cita.
>
> Y este es un segundo párrafo dentro de la misma cita.
```

**Resultado HTML**:
```html
<blockquote>
  <p>Esto es una cita.</p>
  <p>Y este es un segundo párrafo dentro de la misma cita.</p>
</blockquote>
```

---

### **3. Elementos Avanzados en Markdown**

Markdown también incluye elementos avanzados para la creación de contenido más estructurado, como tablas, bloques de código y listas anidadas. En esta sección, exploramos estos elementos con más detalle.

#### 3.1. **Tablas**

Aunque Markdown básico no incluye soporte para tablas, las variantes como GitHub Flavored Markdown (GFM) permiten crear tablas usando tuberías `|` y guiones `-` para definir las celdas y las filas.

```markdown
| Columna 1 | Columna 2 |
|-----------|-----------|
| Dato 1    | Dato 2    |
| Dato 3    | Dato 4    |
```

**Resultado HTML**:
```html
<table>
  <tr>
    <th>Columna 1</th>
    <th>Columna 2</th>
  </tr>
  <tr>
    <td>Dato 1</td>
    <td>Dato 2</td>
  </tr>
  <tr>
    <td>Dato 3</td>
    <td>Dato 4</td>
  </tr>
</table>
```

#### 3.2. **Código en línea y bloques de código**

Para incluir fragmentos de código en el texto, se utiliza el símbolo de acento grave `` ` `` para código en línea, y tres acentos graves ``` para bloques de código.

- **Código en línea**:  
  ```markdown
  Aquí hay una `función()` de ejemplo.
  ```

- **Bloque de código**:
  ```markdown
  function ejemplo() {
    return "Hola, Mundo!";
  }
  ```

####

 3.3. **Listas anidadas**

Markdown soporta listas anidadas, que permiten incluir una lista dentro de otra. Las listas se anidan agregando cuatro espacios o un tabulador antes del nuevo nivel de la lista.

```markdown
- Elemento 1
    - Sub-elemento 1
    - Sub-elemento 2
- Elemento 2
```

#### 3.4. **Comentarios**

Markdown no incluye una sintaxis nativa para comentarios, pero cuando se usa Markdown dentro de un entorno HTML, se pueden agregar comentarios utilizando la sintaxis de comentarios de HTML.

```html
<!-- Este es un comentario que no se mostrará en la salida -->
```

#### 3.5. **Escapando caracteres especiales**

Si necesitas mostrar los caracteres especiales usados por Markdown (como `*`, `#`, `-`), puedes "escaparlos" usando la barra invertida `\`.

```markdown
\# Esto no será un encabezado
```

#### 3.6. **Notas al pie (footnotes)**

Algunas implementaciones de Markdown, como en GitHub, permiten el uso de notas al pie utilizando referencias entre corchetes `[^1]` y el contenido de la nota en otra parte del documento.

```markdown
Este es un texto con una nota al pie[^1].

[^1]: Aquí está la nota al pie.
```

---

### **4. Prácticas y Herramientas para Markdown**

#### 4.1. **Herramientas para escribir y visualizar Markdown**

Existen múltiples editores de Markdown que facilitan la escritura y visualización en tiempo real del contenido. Algunos de los más populares incluyen:

- **Visual Studio Code**: Con soporte integrado para Markdown y extensiones para previsualización.
- **Typora**: Un editor WYSIWYG para Markdown que muestra el formato final a medida que se escribe.
- **Dillinger**: Un editor en línea de Markdown que permite la edición y exportación a múltiples formatos.

#### 4.2. **Exportación a HTML, PDF y otros formatos**

Markdown es extremadamente versátil y puede exportarse a varios formatos. Herramientas como `Pandoc` permiten convertir archivos `.md` en HTML, PDF, DOCX, y otros formatos con facilidad.

```bash
pandoc -o salida.html archivo.md
pandoc -o salida.pdf archivo.md
```