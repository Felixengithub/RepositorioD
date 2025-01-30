### Unidad Didáctica 3

---

### 1. **Etiquetas de Listas y Tablas en HTML**

Las listas y tablas son dos estructuras fundamentales en el desarrollo web, usadas para organizar y presentar información de manera clara y estructurada. Las listas permiten agrupar elementos relacionados, mientras que las tablas facilitan la visualización de datos tabulares. HTML ofrece un conjunto de etiquetas específicas para crear listas ordenadas, no ordenadas y tablas de datos, permitiendo tanto una estructuración lógica como una presentación visual coherente. A continuación, se describen en profundidad las etiquetas relacionadas con estas estructuras, sus atributos, usos comunes, y ejemplos detallados.

---

#### 1.1. **Listas Ordenadas: `<ol>`**

Las listas ordenadas en HTML se crean con la etiqueta `<ol>` (ordered list). Esta etiqueta genera una lista donde los elementos se presentan en un orden secuencial y numerado automáticamente. Son útiles cuando el orden de los ítems es importante, como en una lista de pasos en un procedimiento o una enumeración de elementos priorizados.

##### **Sintaxis y estructura básica**

La estructura de una lista ordenada en HTML comienza con la etiqueta de apertura `<ol>` y se cierra con `</ol>`. Los ítems de la lista se definen con la etiqueta `<li>` (list item), colocada entre las etiquetas de apertura y cierre de la lista.

```html
<ol>
  <li>Primero</li>
  <li>Segundo</li>
  <li>Tercero</li>
</ol>
```

**Resultado visual:**
1. Primero
2. Segundo
3. Tercero

##### **Atributos de la etiqueta `<ol>`**

El comportamiento y la presentación de las listas ordenadas pueden modificarse con varios atributos:

- **`type`**: Define el estilo de numeración de los elementos de la lista. Los valores posibles incluyen:
  - `"1"`: Números (1, 2, 3, …). Este es el valor por defecto.
  - `"A"`: Letras mayúsculas (A, B, C, …).
  - `"a"`: Letras minúsculas (a, b, c, …).
  - `"I"`: Números romanos en mayúsculas (I, II, III, …).
  - `"i"`: Números romanos en minúsculas (i, ii, iii, …).

- **`start`**: Permite definir el número inicial desde el que se comenzará a contar en la lista. Esto es útil si se desea que la numeración no comience desde 1.

##### **Ejemplos con atributos**

1. Lista numerada con letras mayúsculas y un punto de inicio diferente:

```html
<ol type="A" start="3">
  <li>Elemento C</li>
  <li>Elemento D</li>
  <li>Elemento E</li>
</ol>
```

**Resultado visual:**
C. Elemento C  
D. Elemento D  
E. Elemento E

2. Lista con numeración romana en minúscula:

```html
<ol type="i">
  <li>Primero</li>
  <li>Segundo</li>
  <li>Tercero</li>
</ol>
```

**Resultado visual:**
i. Primero  
ii. Segundo  
iii. Tercero

##### **Consideraciones adicionales**

- Las listas ordenadas pueden anidarse, lo que significa que se pueden incluir listas dentro de listas para crear una jerarquía estructurada de elementos. En este caso, las listas internas pueden tener un estilo de numeración distinto.
  
**Ejemplo de lista anidada:**

```html
<ol>
  <li>Elemento uno</li>
  <li>Elemento dos
    <ol type="a">
      <li>Subelemento dos-a</li>
      <li>Subelemento dos-b</li>
    </ol>
  </li>
  <li>Elemento tres</li>
</ol>
```

**Resultado visual:**

1. Elemento uno  
2. Elemento dos  
  a. Subelemento dos-a  
  b. Subelemento dos-b  
3. Elemento tres

---

#### 1.2. **Listas No Ordenadas: `<ul>`**

A diferencia de las listas ordenadas, las listas no ordenadas (`<ul>`, unordered list) presentan sus elementos sin ningún tipo de numeración o secuencia específica. En lugar de números, los elementos de la lista se marcan con viñetas o símbolos. Este tipo de lista es ideal cuando no es necesario seguir un orden particular, por ejemplo, al listar características, elementos de un menú o recursos.

##### **Sintaxis y estructura básica**

Una lista no ordenada también se inicia con la etiqueta de apertura `<ul>` y se cierra con `</ul>`. Los ítems de la lista, definidos por la etiqueta `<li>`, se muestran con una viñeta (o símbolo predeterminado) por defecto.

```html
<ul>
  <li>Primero</li>
  <li>Segundo</li>
  <li>Tercero</li>
</ul>
```

**Resultado visual:**
- Primero  
- Segundo  
- Tercero

##### **Atributos de la etiqueta `<ul>`**

El estilo de las viñetas que preceden a los elementos de la lista puede modificarse mediante el atributo `list-style-type` en CSS.

- **`list-style-type`**: Controla el estilo de la viñeta. Los valores comunes incluyen:
  - `disc`: Viñeta sólida (valor por defecto).
  - `circle`: Círculo hueco.
  - `square`: Cuadrado.

**Ejemplo de lista con viñetas cuadradas:**

```html
<ul style="list-style-type: square;">
  <li>Elemento uno</li>
  <li>Elemento dos</li>
  <li>Elemento tres</li>
</ul>
```

**Resultado visual:**

■ Elemento uno  
■ Elemento dos  
■ Elemento tres

##### **Consideraciones adicionales**

- Al igual que las listas ordenadas, las listas no ordenadas también pueden anidarse para crear jerarquías.
- Las listas no ordenadas pueden ser estilizadas aún más con CSS para personalizar las viñetas con imágenes o gráficos.

**Ejemplo de lista anidada:**

```html
<ul>
  <li>Elemento uno</li>
  <li>Elemento dos
    <ul style="list-style-type: circle;">
      <li>Subelemento dos-a</li>
      <li>Subelemento dos-b</li>
    </ul>
  </li>
  <li>Elemento tres</li>
</ul>
```

**Resultado visual:**
- Elemento uno  
- Elemento dos  
  ○ Subelemento dos-a  
  ○ Subelemento dos-b  
- Elemento tres

---

#### 1.3. **Elementos de Lista: `<li>`**

La etiqueta `<li>` (list item) es esencial tanto en las listas ordenadas como en las no ordenadas. Esta etiqueta define cada uno de los elementos que conforman la lista, ya sea con numeración (en el caso de `<ol>`) o con viñetas (en el caso de `<ul>`).

##### **Características de la etiqueta `<li>`**

- Cada ítem en la lista es independiente y no tiene un límite fijo de contenido. Esto significa que dentro de un `<li>` se pueden incluir otros elementos HTML, como párrafos, imágenes, enlaces, o incluso otras listas anidadas.
- Las listas anidadas dentro de un `<li>` permiten crear estructuras jerárquicas complejas.

##### **Ejemplo avanzado con contenido dentro de un `<li>`:**

```html
<ul>
  <li>
    Primer ítem
    <p>Este es un párrafo dentro del primer ítem de la lista.</p>
  </li>
  <li>Segundo ítem</li>
  <li>Tercer ítem con lista anidada:
    <ul>
      <li>Subítem uno</li>
      <li>Subítem dos</li>
    </ul>
  </li>
</ul>
```

**Resultado visual:**
- Primer ítem  
  Este es un párrafo dentro del primer ítem de la lista.
- Segundo ítem  
- Tercer ítem con lista anidada:
  - Subítem uno  
  - Subítem dos

---

### 2. **Tablas en HTML: Estructura, Atributos y Buenas Prácticas**

Las tablas en HTML son un mecanismo esencial para organizar y presentar datos en un formato estructurado de filas y columnas. Son especialmente útiles para mostrar información tabular, como resultados financieros, horarios, datos estadísticos o comparativas de productos. Aunque el uso de tablas en diseño web ha disminuido con la llegada de CSS para la disposición de elementos visuales, las tablas siguen siendo imprescindibles para representar información que requiere un formato tabular preciso. Este apartado cubre en profundidad las principales etiquetas relacionadas con las tablas en HTML, así como los atributos y técnicas necesarias para crear tablas accesibles y bien estructuradas.

---

#### 2.1. **`<table>` – Contenedor de la Tabla**

La etiqueta `<table>` es el elemento principal y fundamental que define una tabla en HTML. Sirve como contenedor para todos los elementos que componen la tabla, incluidos los encabezados, las filas y las celdas de datos. Es importante destacar que una tabla se compone de al menos una fila y una columna, aunque puede llegar a tener una complejidad considerable dependiendo de la cantidad de datos y la organización necesaria.

##### **Sintaxis básica**

La estructura básica de una tabla requiere la apertura y cierre de la etiqueta `<table>`, dentro de la cual se anidan etiquetas que definen las filas y las celdas.

```html
<table>
  <tr>
    <th>Encabezado 1</th>
    <th>Encabezado 2</th>
  </tr>
  <tr>
    <td>Dato 1</td>
    <td>Dato 2</td>
  </tr>
</table>
```

**Resultado visual:**

| Encabezado 1 | Encabezado 2 |
|--------------|--------------|
| Dato 1       | Dato 2       |

##### **Atributos útiles de la etiqueta `<table>`**

La etiqueta `<table>` admite varios atributos que permiten ajustar el comportamiento visual y estructural de la tabla. Aunque muchos de estos atributos han sido reemplazados por CSS en las prácticas modernas, siguen siendo relevantes en algunos contextos y están disponibles para una rápida implementación.

- **`border`**: Este atributo especifica el grosor del borde de la tabla en píxeles. Aunque en el diseño moderno es preferible usar CSS para estilizar bordes, el atributo `border` sigue siendo un método rápido para definir un borde.
  
  ```html
  <table border="1"> <!-- Borde de 1 píxel -->
  ```

- **`cellpadding`**: Define el espacio interior (relleno) de las celdas, es decir, la distancia entre el contenido de una celda y su borde.
  
  ```html
  <table cellpadding="10"> <!-- Relleno de 10 píxeles -->
  ```

- **`cellspacing`**: Especifica el espacio entre las celdas de la tabla. Este atributo puede ser útil cuando se desea dar separación visual entre celdas.

  ```html
  <table cellspacing="5"> <!-- Separación de 5 píxeles entre celdas -->
  ```

- **`width`**: Permite definir el ancho de la tabla. Aunque este atributo se ha depreciado en favor de CSS, puede ser utilizado para establecer rápidamente una anchura en porcentajes o píxeles.

  ```html
  <table width="100%"> <!-- La tabla ocupará el 100% del ancho disponible -->
  ```

##### **Ejemplo de tabla con atributos:**

```html
<table border="1" cellpadding="5" cellspacing="2" width="50%">
  <tr>
    <th>Producto</th>
    <th>Precio</th>
  </tr>
  <tr>
    <td>Manzana</td>
    <td>$1</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
</table>
```

**Resultado visual:**

| Producto | Precio |
|----------|--------|
| Manzana  | $1     |
| Banana   | $0.50  |

---

#### 2.2. **`<tr>` – Fila de la Tabla**

La etiqueta `<tr>` (table row) se utiliza para definir una fila dentro de una tabla. Cada fila puede contener una combinación de celdas de encabezado (`<th>`) o celdas de datos (`<td>`). En HTML, una tabla está formada por varias filas, cada una de las cuales puede tener una cantidad variable de columnas.

##### **Sintaxis básica**

Una fila en una tabla se define utilizando la etiqueta `<tr>`. Dentro de esta etiqueta se colocan las celdas de la fila, que pueden ser encabezados (`<th>`) o celdas de datos (`<td>`).

```html
<tr>
  <td>Dato 1</td>
  <td>Dato 2</td>
</tr>
```

##### **Ejemplo de varias filas:**

```html
<table border="1">
  <tr>
    <th>Nombre</th>
    <th>Edad</th>
  </tr>
  <tr>
    <td>Juan</td>
    <td>25</td>
  </tr>
  <tr>
    <td>María</td>
    <td>30</td>
  </tr>
</table>
```

**Resultado visual:**

| Nombre | Edad |
|--------|------|
| Juan   | 25   |
| María  | 30   |

##### **Consideraciones importantes sobre filas:**

- Es posible utilizar atributos CSS como `background-color` o `text-align` dentro de las etiquetas `<tr>` para personalizar la apariencia de las filas.
- Las filas pueden anidarse en estructuras más complejas mediante el uso de elementos como `<thead>`, `<tbody>`, y `<tfoot>` para organizar las tablas en secciones más legibles (explicadas más adelante).

---

#### 2.3. **`<th>` – Encabezado de Columna**

La etiqueta `<th>` (table header) se utiliza para definir una celda que actúa como encabezado de una columna o fila en una tabla. Las celdas definidas con `<th>` suelen estar estilizadas por defecto en negrita y centradas. Las tablas con encabezados bien definidos no solo mejoran la presentación visual, sino que también aumentan la accesibilidad, ya que los lectores de pantalla pueden identificar y leer correctamente los encabezados de las tablas.

##### **Sintaxis básica**

```html
<th>Encabezado</th>
```

##### **Atributos comunes de `<th>`**

- **`scope`**: Este atributo se usa para mejorar la accesibilidad de las tablas, indicando si la celda del encabezado aplica a una fila, columna o grupo de filas o columnas. Los valores posibles incluyen:
  - `col`: El encabezado aplica a toda la columna.
  - `row`: El encabezado aplica a toda la fila.
  - `colgroup`: El encabezado aplica a un grupo de columnas.
  - `rowgroup`: El encabezado aplica a un grupo de filas.

**Ejemplo de uso del atributo `scope`:**

```html
<table border="1">
  <tr>
    <th scope="col">Nombre</th>
    <th scope="col">Edad</th>
  </tr>
  <tr>
    <td>Juan</td>
    <td>25</td>
  </tr>
</table>
```

##### **Estilización avanzada con CSS:**

Para personalizar aún más los encabezados, se puede utilizar CSS para cambiar el color de fondo, bordes o la alineación del texto.

```html
<style>
  th {
    background-color: #f2f2f2;
    text-align: center;
    padding: 10px;
  }
</style>
```

---

#### 2.4. **`<td>` – Celda de la Tabla**

La etiqueta `<td>` (table data) representa una celda de datos en una tabla. Las celdas `<td>` contienen el contenido de la tabla, que puede incluir texto, imágenes, enlaces o cualquier otro elemento HTML. Al igual que las celdas de encabezado (`<th>`), las celdas de datos también pueden estilizarse de múltiples formas.

##### **Sintaxis básica**

```html
<td>Contenido de la celda</td>
```

##### **Atributos comunes de `<td>`**

- **`colspan`**: Permite que una celda abarque varias columnas, combinando el espacio de las celdas adyacentes.
  
  ```html
  <td colspan="2">Celdas combinadas</td>
  ```

- **`rowspan`**: Permite que una celda abarque varias filas, ocupando el espacio de las celdas verticalmente adyacentes.
  
  ```html
  <td rowspan="2">Celdas combinadas en filas</td>
  ```

##### **Ejemplo avanzado de uso de `<td>` con `colspan` y `rowspan`:**

```html
<table border="1">
  <tr>
    <th>Nombre</th>
    <th>Edad</th>
    <th colspan="2">Datos de Contacto</th>
  </tr>
  <tr>
    <td>Juan</td>
    <td>25</td>
    <td>juan@example.com</td>
    <td>123-4567</td>
 

 </tr>
  <tr>
    <td rowspan="2">María</td>
    <td>30</td>
    <td>maria@example.com</td>
    <td>987-6543</td>
  </tr>
  <tr>
    <td>35</td>
    <td>maria2@example.com</td>
    <td>543-2109</td>
  </tr>
</table>
```

**Resultado visual:**

| Nombre | Edad | Datos de Contacto | |
|--------|------|-------------------|--------|
| Juan   | 25   | juan@example.com   | 123-4567 |
| María  | 30   | maria@example.com  | 987-6543 |
|        | 35   | maria2@example.com | 543-2109 |

##### **Buenas prácticas en el uso de `<td>`**

- Las celdas deben alinearse correctamente para evitar una mala interpretación de los datos.
- Es recomendable usar CSS para personalizar el estilo de las celdas, en lugar de depender de atributos HTML obsoletos como `bgcolor` o `align`.

---

### Consideraciones adicionales para el diseño de tablas en HTML

- **`<thead>`, `<tbody>`, y `<tfoot>`**: Estas etiquetas dividen la tabla en tres secciones: encabezado, cuerpo y pie. Su uso mejora la accesibilidad y la organización de la tabla, especialmente cuando se manejan grandes conjuntos de datos.
  
- **Accesibilidad**: Es crucial utilizar atributos como `scope` en `<th>`, o roles de ARIA (`role="grid"`) para hacer las tablas más accesibles a usuarios con discapacidades.

---

### 3. **Formularios HTML: Estructura, Validaciones y Buenas Prácticas**

Los formularios HTML son el principal mecanismo para recopilar información de los usuarios en aplicaciones web. A través de ellos, los usuarios pueden ingresar datos que posteriormente son enviados al servidor para su procesamiento. Los formularios son esenciales en el desarrollo web para funcionalidades como registros, inicios de sesión, búsquedas, encuestas, compras en línea, entre otras. Además de su estructura básica, es fundamental garantizar que los formularios sean accesibles, usables y seguros, incorporando validaciones del lado del cliente y, posteriormente, en el servidor.

A continuación, se detallan de manera extensiva las principales etiquetas, atributos y prácticas recomendadas en la creación de formularios en HTML, así como las técnicas para validar la información de manera efectiva.

---

#### 3.1. **`<form>` – Contenedor del Formulario**

La etiqueta `<form>` es el bloque estructural de todo formulario en HTML. Actúa como un contenedor para todos los campos de entrada y define la lógica de envío, es decir, cómo y dónde se envían los datos ingresados por el usuario para su procesamiento en el servidor.

##### **Atributos importantes de `<form>`**

- **`action`**: Especifica la URL del servidor donde se enviarán los datos del formulario una vez que se haya enviado. Si este atributo se omite, los datos se enviarán a la misma URL de la página que contiene el formulario.

  ```html
  <form action="/procesar-datos" method="POST">
  ```

- **`method`**: Define el método HTTP que se utilizará para enviar los datos. Los métodos más comunes son:
  - **`GET`**: Envía los datos en la URL como parámetros. Es ideal para búsquedas y formularios que no contienen información sensible, ya que los datos quedan visibles en la barra de direcciones del navegador.
  - **`POST`**: Envía los datos en el cuerpo de la solicitud HTTP. Es más seguro que `GET`, ya que los datos no son visibles en la URL, y se recomienda para formularios que contienen información confidencial, como contraseñas.

  ```html
  <form action="/procesar-datos" method="POST">
  ```

- **`enctype`**: Especifica cómo se codifican los datos del formulario antes de enviarse al servidor. Esto es relevante cuando se trata de formularios que incluyen archivos.
  - **`multipart/form-data`**: Necesario para la carga de archivos.
  
  ```html
  <form action="/subir-archivo" method="POST" enctype="multipart/form-data">
  ```

---

#### 3.2. **Campos de Entrada**

Los campos de entrada permiten a los usuarios proporcionar información a través del formulario. HTML ofrece una gran variedad de tipos de entrada, cada uno adecuado para diferentes tipos de datos.

##### 3.2.1. **`<input>` – Campo de Entrada Genérico**

La etiqueta `<input>` es el elemento más común para capturar la entrada del usuario. El tipo de campo de entrada que se muestra está determinado por el valor del atributo `type`.

###### **Tipos comunes de `<input>`:**

- **`text`**: Crea un campo de texto de una sola línea para la entrada de texto libre.
  
  ```html
  <input type="text" name="nombre" placeholder="Escribe tu nombre">
  ```

- **`password`**: Crea un campo de texto de una sola línea donde el contenido introducido se oculta, ideal para la entrada de contraseñas.
  
  ```html
  <input type="password" name="contrasena" placeholder="Escribe tu contraseña">
  ```

- **`email`**: Específico para la entrada de direcciones de correo electrónico. Al usar este tipo, el navegador verifica que el valor ingresado tenga un formato válido de email, como `usuario@dominio.com`.

  ```html
  <input type="email" name="correo" placeholder="correo@ejemplo.com">
  ```

- **`checkbox`**: Genera una casilla de verificación que permite seleccionar una opción. Un usuario puede seleccionar múltiples casillas si se presentan en conjunto.

  ```html
  <input type="checkbox" name="aceptar_terminos"> Acepto los términos y condiciones
  ```

- **`radio`**: Crea un botón de opción (radio button) que permite seleccionar solo una opción de un grupo.
  
  ```html
  <input type="radio" name="genero" value="hombre"> Hombre
  <input type="radio" name="genero" value="mujer"> Mujer
  ```

- **`file`**: Permite la carga de archivos desde el dispositivo del usuario. Al usar este tipo, es importante que el formulario tenga el atributo `enctype="multipart/form-data"`.

  ```html
  <input type="file" name="documento">
  ```

##### Atributos importantes para `<input>`:

- **`required`**: Obliga al usuario a llenar el campo antes de poder enviar el formulario.
- **`placeholder`**: Muestra un texto de ejemplo dentro del campo hasta que el usuario comienza a escribir.
- **`maxlength`**: Define el número máximo de caracteres que el usuario puede ingresar en un campo de texto.
  
  ```html
  <input type="text" name="nombre" placeholder="Escribe tu nombre" maxlength="50" required>
  ```

---

##### 3.2.2. **`<textarea>` – Área de Texto**

La etiqueta `<textarea>` es utilizada para campos de entrada donde se requiere texto en varias líneas. A diferencia de `<input type="text">`, permite a los usuarios escribir grandes bloques de texto, como comentarios o descripciones.

**Sintaxis básica:**

```html
<textarea name="comentarios" rows="4" cols="50" placeholder="Escribe tu comentario"></textarea>
```

**Atributos importantes:**
- **`rows`**: Define el número de líneas visibles del área de texto.
- **`cols`**: Establece el número de caracteres visibles por línea.

---

##### 3.2.3. **`<button>` – Botón de Envío**

La etiqueta `<button>` crea un botón que puede ser usado para enviar el formulario o ejecutar una acción específica. Aunque el tipo más común es `submit`, el atributo `type` puede tomar otros valores:

- **`submit`**: Envia los datos del formulario al servidor especificado en el atributo `action` del `<form>`.
  
  ```html
  <button type="submit">Enviar</button>
  ```

- **`reset`**: Restablece todos los campos del formulario a sus valores por defecto.
  
  ```html
  <button type="reset">Reiniciar</button>
  ```

- **`button`**: Crea un botón sin ninguna funcionalidad predeterminada. Normalmente se utiliza junto con JavaScript para ejecutar funciones personalizadas.
  
  ```html
  <button type="button" onclick="miFuncion()">Hacer algo</button>
  ```

---

##### 3.2.4. **`<select>` y `<option>` – Menús Desplegables**

El elemento `<select>` permite a los usuarios elegir una opción de una lista desplegable. Cada opción dentro de la lista se define mediante la etiqueta `<option>`.

**Sintaxis básica:**

```html
<select name="pais">
  <option value="mx">México</option>
  <option value="es">España</option>
  <option value="ar">Argentina</option>
</select>
```

**Atributos útiles:**
- **`multiple`**: Permite seleccionar múltiples opciones en lugar de solo una.

```html
<select name="pais" multiple>
  <option value="mx">México</option>
  <option value="es">España</option>
  <option value="ar">Argentina</option>
</select>
```

---

#### 3.3. **`<label>` – Etiquetas de Campos**

La etiqueta `<label>` asocia una descripción de texto con un campo de formulario. Es esencial para la accesibilidad, ya que mejora la interacción entre el formulario y tecnologías asistivas como lectores de pantalla.

**Ejemplo básico:**

```html
<label for="nombre">Nombre:</label>
<input type="text" id="nombre" name="nombre">
```

**Atributo `for`:**
El atributo `for` de la etiqueta `<label>` debe coincidir con el valor del atributo `id` del campo correspondiente, creando una asociación directa entre el texto del label y el campo de entrada.

---

### 3.4. **Validaciones en Formularios HTML**

Una parte fundamental del manejo de formularios es la validación de los datos antes de ser enviados al servidor. Las validaciones pueden evitar errores en la entrada de datos, mejorar la experiencia del usuario y reducir la carga en el servidor al eliminar envíos incorrectos.

Existen dos tipos principales de validación: la validación del lado del cliente y la validación del lado del servidor.

#### **Validación del lado del cliente**

HTML5 proporciona una serie de atributos que permiten realizar validaciones básicas del lado del cliente, directamente en el navegador, antes de que los datos se envíen al servidor. Esto mejora la experiencia del usuario al mostrar errores instantáneamente.

##### **Atributos de validación**

- **`required`**: Indica que el campo es obligatorio y no puede estar vacío.

  ```html
  <input type="text" name="nombre" required>
  ```

- **`pattern`**: Define una expresión regular que el valor debe cumplir. Esto es útil para asegurar que el formato del dato ingresado sea correcto, como un número de teléfono.

  ```html
  <input type="text" name="telefono" pattern="\d{10}" title="Debe tener 10 dígitos">
  ```

- **`min` y `max`**: Especifican los valores mínimo y máximo que un campo numérico puede aceptar.

  ```html
  <input type="number" name="edad" min="18" max="99">
  ```

- **`minlength` y `maxlength`**: Definen el número mínimo y máximo de caracteres que un campo de texto puede contener.

  ```html
  <input type="text" name="nombre" minlength="2" maxlength="50">
  ```

##### **Ejemplo de formulario con validaciones HTML5**

```html
<form action="/procesar-formulario" method="POST">
  <label for="nombre">Nombre:</label>
  <input type="text" id="nombre" name="nombre" required minlength="2" maxlength="50">
  
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required>
  
  <label for="edad">Edad:</label>
  <input type="number" id="edad" name="edad" min="18" max="99" required>
  
  <button type="submit">Enviar</button>
</form>
```

---

### **Validación del lado del servidor**

Aunque las validaciones del lado del cliente son útiles para mejorar la experiencia del usuario, no deben ser la única línea de defensa. Los datos siempre deben ser validados en el servidor para garantizar su integridad y seguridad. Esto es crucial para evitar inyecciones de código, envío de datos manipulados o cualquier otro intento de ataque.

---

### Buenas Prácticas para Formularios

1. **Accesibilidad**: Usar correctamente etiquetas `<label>` y atributos de accesibilidad como `aria-*` para mejorar la interacción con tecnologías asistivas.
2. **Seguridad**: Nunca confiar únicamente en las validaciones del lado del cliente. Siempre validar los datos en el servidor y usar métodos como la sanitización de entradas para evitar inyecciones.
3. **Usabilidad**: Asegurarse de que los formularios sean intuitivos y fáciles de usar, proporcionando retroalimentación clara en caso de error.
4. **Estilización adecuada**: Utilizar CSS para mejorar la presentación visual del formulario y la experiencia del usuario.