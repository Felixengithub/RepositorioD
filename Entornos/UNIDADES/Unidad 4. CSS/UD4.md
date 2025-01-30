# Unidad Didáctica 4: CSS (Cascading Style Sheets)

## 1. Introducción a CSS  
CSS (Cascading Style Sheets) es un lenguaje de hojas de estilo en cascada que se utiliza para controlar el diseño y la presentación de documentos HTML. Su función principal es separar el contenido de un sitio web (estructura) de su apariencia (estilos visuales), lo que facilita la gestión y el mantenimiento del diseño web.  

Con CSS, los desarrolladores pueden aplicar reglas de estilo a uno o varios elementos de una página, definiendo características como colores, fuentes, espaciado, tamaños y disposición de los elementos. Esta capacidad de personalización permite crear sitios web más atractivos, usables y adaptables a diferentes dispositivos y tamaños de pantalla.  

Antes de la introducción de CSS, los estilos se definían directamente en el código HTML mediante atributos como `font`, `color` o `bgcolor`. Sin embargo, este enfoque resultaba difícil de mantener, especialmente en sitios con múltiples páginas. CSS resuelve este problema al centralizar los estilos en un archivo separado o dentro de etiquetas `<style>` en el encabezado del documento.  

Las principales ventajas de CSS incluyen:  
1. **Separación de contenido y presentación:** Permite modificar la apariencia de un sitio sin alterar su estructura HTML.  
2. **Reutilización de estilos:** Los estilos pueden aplicarse a múltiples páginas web mediante hojas de estilo externas, reduciendo la duplicación de código.  
3. **Mantenimiento eficiente:** Cambiar un solo archivo CSS puede actualizar el diseño de todo el sitio web.  
4. **Mejora del rendimiento:** CSS reduce el tamaño de los archivos HTML, mejorando el tiempo de carga de las páginas.  
5. **Compatibilidad con diferentes dispositivos:** CSS facilita el diseño responsivo, adaptando el contenido a distintos tamaños de pantalla.  

---

## 2. Selectores en CSS  
Los selectores son una parte fundamental de CSS, ya que permiten especificar a qué elementos HTML se aplicarán las reglas de estilo. Los selectores identifican elementos basándose en su nombre, clase, ID, atributos o relación con otros elementos.  

### 2.1. Selectores básicos  
Los selectores básicos son los más utilizados y permiten aplicar estilos a elementos HTML de manera sencilla y directa.  

1. **Selector por elemento:**  
   Este selector aplica estilos a todos los elementos de un tipo específico (por ejemplo, todos los párrafos `<p>`, encabezados `<h1>` o listas `<ul>`). Es útil para aplicar reglas generales a varios elementos similares.  
   ```css
   p {
       color: blue;
       font-size: 16px;
   }
   ```  
   En este ejemplo, todos los párrafos `<p>` del documento tendrán texto azul y un tamaño de fuente de 16 píxeles.  

2. **Selector por clase:**  
   El selector de clase permite aplicar estilos a cualquier elemento que tenga un atributo `class` con un valor específico. Las clases son reutilizables, lo que significa que varios elementos pueden compartir la misma clase. Se denota con un punto (`.`) seguido del nombre de la clase.  
   ```css
   .boton {
       background-color: red;
       color: white;
       padding: 10px;
   }
   ```  
   Este fragmento de código aplica un fondo rojo, texto blanco y un espaciado interno de 10 píxeles a cualquier elemento con la clase `boton`.  
   ```html
   <button class="boton">Enviar</button>
   ```  

3. **Selector por ID:**  
   A diferencia de las clases, los selectores por ID son únicos y se aplican a un solo elemento en toda la página. Se representan con el símbolo `#` seguido del nombre del ID.  
   ```css
   #encabezado {
       font-size: 24px;
       text-align: center;
   }
   ```  
   En este ejemplo, solo el elemento con el atributo `id="encabezado"` recibirá los estilos definidos.  
   ```html
   <h1 id="encabezado">Bienvenidos</h1>
   ```  
   El uso de selectores por ID debe limitarse a elementos únicos, como cabeceras o secciones específicas, para mantener el código claro y fácil de mantener.  

### 2.2. Selectores avanzados  
Además de los selectores básicos, CSS ofrece selectores avanzados que permiten una mayor precisión en la selección de elementos. Estos selectores son esenciales para aplicar estilos a elementos específicos dentro de un conjunto más amplio.  

1. **Selector universal (`*`):**  
   Aplica estilos a todos los elementos de la página. Es útil para definir reglas globales de diseño, como márgenes o tipografía predeterminada.  
   ```css
   * {
       margin: 0;
       padding: 0;
       box-sizing: border-box;
   }
   ```  

2. **Selector múltiple (`elemento1, elemento2`):**  
   Permite aplicar los mismos estilos a diferentes tipos de elementos al mismo tiempo. Se utiliza una coma para separar los elementos.  
   ```css
   h1, h2, p {
       font-family: Arial, sans-serif;
       color: #333;
   }
   ```  
   En este caso, todos los elementos `<h1>`, `<h2>` y `<p>` compartirán la misma tipografía y color de texto.  

3. **Selector de hijo directo (`elemento > elementoHijo`):**  
   Selecciona solo los elementos que son hijos directos de otro elemento.  
   ```css
   div > p {
       color: green;
   }
   ```  
   Aquí, solo los párrafos `<p>` que sean hijos directos de un `<div>` recibirán el color verde.  

4. **Selector de hermano adyacente (`elemento + elementoHermano`):**  
   Aplica estilos al primer elemento hermano que sigue inmediatamente después de otro elemento.  
   ```css
   h1 + p {
       font-size: 18px;
   }
   ```  
   En este ejemplo, solo el primer párrafo que sigue directamente a un `<h1>` tendrá un tamaño de fuente de 18 píxeles.  

---

## 3. Propiedades principales  

CSS ofrece una amplia gama de propiedades que permiten modificar y personalizar la apariencia de los elementos HTML. Estas propiedades controlan aspectos como el color del texto, los fondos, la tipografía, las dimensiones y el espaciado de los elementos.  

A continuación, se presentan algunas de las propiedades más utilizadas, organizadas por categorías clave que facilitan el diseño y desarrollo de interfaces web atractivas y funcionales.  

### 3.1. Colores y fondos  

El color y el fondo son elementos esenciales para definir la apariencia visual de un sitio web. CSS proporciona varias propiedades para controlar el color del texto y el fondo de los elementos.  

1. **`color` (Color del texto):**  
   La propiedad `color` se utiliza para establecer el color del texto de un elemento. Se puede especificar usando nombres de color (`blue`, `red`), valores hexadecimales (`#ff0000`), RGB (`rgb(255, 0, 0)`) o HSL (`hsl(0, 100%, 50%)`).  
   ```css
   p {
       color: blue;
   }
   ```  
   En este ejemplo, todo el texto contenido en el elemento `<p>` será azul.  

2. **`background-color` (Color de fondo):**  
   Define el color de fondo de un elemento. Funciona de manera similar a la propiedad `color`, permitiendo una amplia variedad de formatos para especificar el color.  
   ```css
   div {
       background-color: yellow;
   }
   ```  
   Aquí, el elemento `<div>` tendrá un fondo amarillo.  

3. **`background-image` (Imagen de fondo):**  
   Permite establecer una imagen como fondo de un elemento. Se puede repetir automáticamente (por defecto) o personalizar su comportamiento con propiedades adicionales como `background-repeat` o `background-size`.  
   ```css
   body {
       background-image: url('imagen.jpg');
   }
   ```  
   En este caso, la imagen `imagen.jpg` se mostrará como fondo de la página web.  

### 3.2. Tipografía  

La tipografía juega un papel crucial en la legibilidad y estética de una página web. CSS ofrece diversas propiedades para personalizar la apariencia del texto, desde el tipo de fuente hasta el tamaño y alineación.  

1. **`font-family` (Familia tipográfica):**  
   Especifica el tipo de fuente que se utilizará para el texto. Es recomendable proporcionar múltiples fuentes separadas por comas como respaldo en caso de que la primera no esté disponible.  
   ```css
   h1 {
       font-family: Arial, sans-serif;
   }
   ```  
   En este ejemplo, el encabezado `<h1>` utilizará la fuente Arial. Si no está disponible, se usará una fuente genérica sans-serif.  

2. **`font-size` (Tamaño de la fuente):**  
   Define el tamaño del texto. Se puede expresar en unidades absolutas (`px`, `pt`) o relativas (`em`, `%`).  
   ```css
   p {
       font-size: 18px;
   }
   ```  
   El texto del párrafo tendrá un tamaño de 18 píxeles.  

3. **`font-weight` (Peso de la fuente):**  
   Controla el grosor del texto. Los valores comunes incluyen `normal`, `bold` y `lighter`, pero también se pueden usar valores numéricos (`100` a `900`).  
   ```css
   strong {
       font-weight: bold;
   }
   ```  

4. **`text-align` (Alineación del texto):**  
   Determina cómo se alinea el texto dentro de un elemento. Las opciones más utilizadas son `left` (izquierda), `center` (centro) y `right` (derecha).  
   ```css
   h2 {
       text-align: center;
   }
   ```  
   El encabezado `<h2>` estará centrado dentro de su contenedor.  

### 3.3. Dimensiones  

Las propiedades de dimensiones permiten definir el tamaño de los elementos, lo que es esencial para la disposición y estructura del diseño de una página web.  

1. **`width` (Ancho):**  
   Define el ancho de un elemento. Se puede expresar en píxeles (`px`), porcentaje (`%`), em o cualquier otra unidad CSS válida.  
   ```css
   div {
       width: 400px;
   }
   ```  
   El elemento `<div>` tendrá un ancho fijo de 400 píxeles.  

2. **`height` (Alto):**  
   Establece la altura de un elemento.  
   ```css
   img {
       height: 300px;
   }
   ```  
   La imagen tendrá una altura de 300 píxeles.  

3. **`max-width` y `min-width` (Ancho máximo/mínimo):**  
   Permite restringir el ancho máximo o mínimo de un elemento, asegurando que no exceda o sea menor a ciertos valores.  
   ```css
   section {
       max-width: 800px;
   }
   ```  
   El ancho del elemento `<section>` nunca superará los 800 píxeles.  

4. **`max-height` y `min-height` (Alto máximo/mínimo):**  
   Define restricciones similares para la altura.  

### 3.4. Espaciado  

El espaciado adecuado es fundamental para crear interfaces bien organizadas y visualmente atractivas. CSS proporciona varias propiedades para gestionar el espacio dentro y fuera de los elementos.  

1. **`margin` (Margen):**  
   Controla el espacio exterior alrededor de un elemento, separándolo de otros elementos cercanos. Se puede especificar de forma uniforme o definir márgenes específicos para cada lado (`margin-top`, `margin-right`, `margin-bottom`, `margin-left`).  
   ```css
   div {
       margin: 20px;
   }
   ```  
   El elemento `<div>` tendrá un margen de 20 píxeles en todos sus lados.  

2. **`padding` (Relleno):**  
   Define el espacio interior entre el contenido de un elemento y su borde. Al igual que con `margin`, se puede aplicar de manera uniforme o individual para cada lado.  
   ```css
   .contenedor {
       padding: 15px;
   }
   ```  
   El elemento `.contenedor` tendrá un relleno de 15 píxeles.  

3. **`border` (Borde):**  
   Permite añadir bordes alrededor de un elemento. Se puede personalizar el grosor, estilo y color del borde.  
   ```css
   img {
       border: 2px solid black;
   }
   ```  
   La imagen tendrá un borde negro de 2 píxeles.  

---

## 4. Modelo de Caja (Box Model)  

El **Modelo de Caja (Box Model)** es uno de los conceptos más fundamentales en CSS, ya que describe cómo se representan y distribuyen los elementos HTML en una página web. Entender el modelo de caja es esencial para controlar el espaciado, el tamaño y el diseño de los elementos.  

En CSS, cada elemento de la página se considera una "caja", y esta caja está compuesta por varias partes que influyen en su tamaño total y en su relación con otros elementos.  

El modelo de caja consta de las siguientes áreas:  

1. **Content (Contenido):**  
   Es el área central de la caja, donde se muestra el contenido real del elemento, como texto, imágenes o videos. Su tamaño se define principalmente por las propiedades `width` (ancho) y `height` (alto).  

2. **Padding (Relleno):**  
   El `padding` es el espacio entre el contenido del elemento y su borde. Aumentar el `padding` empuja el borde hacia afuera, ampliando el área total del elemento sin afectar el tamaño del contenido.  

3. **Border (Borde):**  
   El `border` es la línea que rodea el `padding` y el contenido. El grosor, estilo y color del borde se pueden definir usando la propiedad `border`. Si no se especifica, el borde puede ser invisible o tener un grosor de `0px`.  

4. **Margin (Margen):**  
   El `margin` es el espacio exterior que separa un elemento de otros elementos vecinos. A diferencia del `padding`, el `margin` no afecta el tamaño del contenido ni del borde del elemento, sino que influye en la distancia entre elementos adyacentes.  

### 4.1. Ejemplo de Modelo de Caja  

```css
.contenedor {
    width: 300px;
    height: 200px;
    padding: 20px;
    border: 5px solid black;
    margin: 30px;
}
```  

En este caso:  
- El **contenido** tiene 300px de ancho y 200px de alto.  
- El **relleno (padding)** añade 20px de espacio alrededor del contenido, lo que expande el tamaño total del elemento.  
- El **borde (border)** es una línea de 5px de grosor y color negro que rodea el padding.  
- El **margen (margin)** crea un espacio de 30px entre este elemento y los demás.  

### **Cálculo del tamaño total de la caja:**  
Para calcular el tamaño total de un elemento, se suman las dimensiones de cada una de estas partes:  

```
Ancho total = width + padding izquierdo + padding derecho + border izquierdo + border derecho + margin izquierdo + margin derecho
Alto total = height + padding superior + padding inferior + border superior + border inferior + margin superior + margin inferior
```

Aplicando este cálculo al ejemplo anterior:  

```
Ancho total = 300px + 20px (izq) + 20px (der) + 5px (izq) + 5px (der) + 30px (izq) + 30px (der) = 410px
Alto total = 200px + 20px (sup) + 20px (inf) + 5px (sup) + 5px (inf) + 30px (sup) + 30px (inf) = 310px
```

El tamaño real del elemento en la página será de **410px x 310px**.  

### 4.2. Tamaños Relativos y Absolutos  

Cuando se definen las dimensiones de un elemento (contenido, padding, borde o margen), CSS permite usar unidades **absolutas** o **relativas**, lo que proporciona flexibilidad para crear diseños adaptables y responsivos.  

#### **Unidades Absolutas:**  
Las unidades absolutas tienen un valor fijo y no cambian en función del contenedor o del tamaño de la pantalla. Estas unidades se utilizan cuando se necesita un diseño con dimensiones precisas.  
- **px (píxeles):** La unidad más común y fácil de controlar. 1 píxel representa un punto en la pantalla.  
- **pt (puntos):** Utilizado principalmente en tipografía impresa (1pt = 1/72 de pulgada).  
- **cm, mm, in:** Unidades de medida físicas (centímetros, milímetros y pulgadas).  

**Ejemplo con unidades absolutas:**  
```css
.caja {
    width: 400px;
    height: 250px;
    padding: 15px;
    border: 3px solid #333;
    margin: 20px;
}
```  
Este elemento tendrá un tamaño fijo sin importar el tamaño de la pantalla o el contenedor.  

#### **Unidades Relativas:**  
Las unidades relativas cambian dependiendo del tamaño del contenedor, del elemento padre o de la pantalla, lo que las hace ideales para crear diseños flexibles y adaptables.  
- **% (porcentaje):** Define el tamaño en relación con el contenedor padre.  
- **em:** Relativo al tamaño de fuente del elemento padre. 1em equivale al tamaño de la fuente actual.  
- **rem:** Relativo al tamaño de fuente raíz del documento (`html`).  
- **vw (viewport width):** 1vw es el 1% del ancho de la ventana gráfica.  
- **vh (viewport height):** 1vh es el 1% de la altura de la ventana gráfica.  

**Ejemplo con unidades relativas:**  
```css
.contenedor-relativo {
    width: 80%;
    padding: 2em;
    margin: 5vh;
}
```  
En este caso:  
- El ancho del elemento será el 80% del contenedor padre.  
- El relleno será igual a 2 veces el tamaño de la fuente del elemento padre.  
- El margen vertical será el 5% de la altura de la ventana.  

---
## 5. Diseño con Flexbox

**Flexbox (Flexible Box Layout)** es un sistema de diseño de CSS diseñado para organizar y alinear elementos de manera eficiente dentro de un contenedor. Se destaca por su capacidad de distribuir espacio de forma dinámica y alinear elementos, incluso cuando tienen tamaños desconocidos o dinámicos.  

Flexbox facilita la creación de diseños responsivos y adaptativos, permitiendo a los elementos ajustarse y reorganizarse en función del espacio disponible. Es especialmente útil para construir barras de navegación, galerías, y estructuras de diseño que requieren alineación precisa y distribución uniforme de los elementos.  

A diferencia de otros métodos de diseño, como el modelo de caja tradicional o CSS Grid, **Flexbox es unidimensional**. Esto significa que puede organizar elementos en **fila (horizontal)** o en **columna (vertical)**, pero no ambos a la vez (como sí lo hace Grid).  

---

### 5.1. Propiedades del contenedor flexible

Para utilizar Flexbox, es necesario definir un contenedor como **contenedor flexible** aplicando la propiedad `display: flex;`. A partir de ese momento, todos los elementos hijos se convierten en **elementos flexibles** que se ajustan a las reglas de flexibilidad definidas.  

#### **Habilitar Flexbox**
```css
.contenedor {
    display: flex;
}
```  
Al aplicar `display: flex;`, todos los elementos hijos de `.contenedor` se organizan automáticamente en una fila (el valor predeterminado).  

---

#### **Distribución horizontal del contenido (justify-content)**
La propiedad `justify-content` controla cómo se distribuyen los elementos a lo largo del **eje principal (horizontal por defecto)**. Esta propiedad define el espaciado y la posición de los elementos dentro del contenedor.  

```css
.contenedor {
    justify-content: space-between;
}
```  

**Valores comunes de `justify-content`:**  
- **`flex-start`** *(valor predeterminado)* – Los elementos se alinean al inicio del contenedor.  
- **`flex-end`** – Los elementos se alinean al final del contenedor.  
- **`center`** – Los elementos se alinean al centro.  
- **`space-between`** – Los elementos se distribuyen uniformemente, dejando el primer y último elemento alineados con los bordes del contenedor.  
- **`space-around`** – Los elementos se distribuyen con espacio alrededor de ellos.  
- **`space-evenly`** – Distribuye los elementos con un espaciado igual entre ellos y los bordes del contenedor.  

---

#### **Alineación vertical de los elementos (align-items)**
La propiedad `align-items` determina cómo se alinean los elementos flexibles a lo largo del **eje transversal (vertical por defecto en `row`)**.  

```css
.contenedor {
    align-items: center;
}
```  

**Valores comunes de `align-items`:**  
- **`stretch`** *(valor predeterminado)* – Los elementos se estiran para llenar el contenedor verticalmente.  
- **`flex-start`** – Los elementos se alinean en la parte superior del contenedor.  
- **`flex-end`** – Los elementos se alinean en la parte inferior.  
- **`center`** – Los elementos se alinean verticalmente en el centro.  
- **`baseline`** – Los elementos se alinean de acuerdo con la línea base del texto.  

---

### 5.2. Dirección del flujo (flex-direction)  

Por defecto, Flexbox organiza los elementos en **fila horizontal** (`row`). Sin embargo, la propiedad `flex-direction` permite cambiar esta dirección, organizando los elementos en fila o columna.  

```css
.contenedor {
    flex-direction: row;
}
```  

**Valores de `flex-direction`:**  
- **`row`** *(valor predeterminado)* – Los elementos se disponen en una fila de izquierda a derecha.  
- **`row-reverse`** – Los elementos se organizan en fila pero en orden inverso (de derecha a izquierda).  
- **`column`** – Los elementos se organizan en columna de arriba a abajo.  
- **`column-reverse`** – Los elementos se organizan en columna pero de abajo hacia arriba.  

**Ejemplo: Organización en columna**  
```css
.contenedor {
    flex-direction: column;
    align-items: center;
}
```  
Esto centra todos los elementos en el eje vertical y los organiza en columna.  

---

### 5.3. Propiedades de los elementos flexibles

#### **Crecimiento flexible (`flex-grow`)**
Define cuánto puede crecer un elemento flexible en comparación con otros elementos hermanos dentro del mismo contenedor.  

```css
.elemento {
    flex-grow: 1;
}
```  

Si varios elementos tienen `flex-grow: 1;`, todos crecerán por igual y compartirán el espacio disponible. Si un elemento tiene `flex-grow: 2;`, crecerá el doble que los demás.  

**Ejemplo con elementos de crecimiento desigual:**  
```css
.elemento1 {
    flex-grow: 1;
}
.elemento2 {
    flex-grow: 2;
}
.elemento3 {
    flex-grow: 1;
}
```  
En este caso, `elemento2` ocupará el doble de espacio que los otros elementos.  

---

#### **Reducción flexible (`flex-shrink`)**
La propiedad `flex-shrink` define cuánto puede reducirse un elemento flexible si el espacio disponible es menor que el necesario.  

```css
.elemento {
    flex-shrink: 1;
}
```  

Si varios elementos tienen `flex-shrink: 1;`, todos se reducirán de manera proporcional. Si un elemento tiene `flex-shrink: 0;`, no se reducirá, incluso si no hay suficiente espacio.  

**Ejemplo:**  
```css
.elemento1 {
    flex-shrink: 1;
}
.elemento2 {
    flex-shrink: 2;
}
.elemento3 {
    flex-shrink: 0;
}
```  
En este caso, `elemento2` se reducirá el doble que `elemento1`, y `elemento3` no se reducirá.  

---

#### **Tamaño base (`flex-basis`)**
La propiedad `flex-basis` define el tamaño inicial de un elemento antes de aplicar las reglas de flexibilidad. Puede ser un valor fijo (por ejemplo, `300px`) o relativo (por ejemplo, `auto`).  

```css
.elemento {
    flex-basis: 200px;
}
```  

**Ejemplo práctico:**  
```css
.elemento1 {
    flex-basis: 100px;
}
.elemento2 {
    flex-basis: 200px;
}
.elemento3 {
    flex-basis: auto;
}
```  
Aquí, `elemento1` y `elemento2` tendrán tamaños iniciales fijos, mientras que `elemento3` se basará en su contenido.  

---

### **5.4. Flexibilidad total (`flex`)**

La propiedad `flex` es una abreviatura que combina `flex-grow`, `flex-shrink` y `flex-basis` en una sola línea.  


**Sintaxis general:**
```css
.elemento {
    flex: <flex-grow> <flex-shrink> <flex-basis>;
}
```
---

```css
.elemento {
    flex: 1 1 auto;
}
```  

**Significado de cada valor:**  
- `1` – El elemento puede crecer.  
- `1` – El elemento puede reducirse si es necesario.  
- `auto` – El tamaño inicial del elemento se basa en su contenido.  

**Ejemplo práctico:**  
```css
.elemento {
    flex: 2 1 300px;
}
```  
Esto indica que el elemento tendrá un tamaño base de 300px, podrá crecer el doble que otros elementos y también reducirse.  

