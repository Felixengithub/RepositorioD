# PT3: Listas y Tablas en HTML - Web de Recetas

**Enlace de entrega:** [PT3 en GitHub Classroom](https://classroom.github.com/a/fvdB8nFn)

## Instrucciones Generales
1. Crea un archivo **HTML** llamado `prueba_ud3.html`.
2. Realiza los ejercicios que se plantean a continuación.
3. Asegúrate de **comentar** el código donde sea necesario y de aplicar **buenas prácticas**.
4. Estructura el archivo con una etiqueta `<title>` adecuada y una descripción con `<meta>` en el `<head>`.
5. La temática es una **web de recetas**.
6. Entrega únicamente un archivo **HTML** con la solución.

---

## **Sección 1: Listas Ordenadas y No Ordenadas**

### **Ejercicio 1.1: Lista Ordenada Básica**
Crea una lista ordenada que muestre los **pasos para preparar un café**, utilizando **números romanos en minúscula**. La lista debe comenzar en el número **3**.

### **Ejercicio 1.2: Lista Ordenada Anidada**
Crea una lista ordenada con **numeración de letras en mayúsculas** que contenga:
- Tres elementos principales.
- El segundo elemento debe incluir una **sublista anidada** con numeración **romana en minúsculas**.

### **Ejercicio 1.3: Lista No Ordenada**
Crea una lista no ordenada para representar los siguientes **ingredientes de una receta**:
- Harina
- Azúcar
- Huevos
- Mantequilla

Utiliza viñetas en forma de **círculo hueco**.

### **Ejercicio 1.4: Lista No Ordenada Anidada**
Crea una lista no ordenada con viñetas en forma de **cuadrado** que represente:
- Frutas
  - Manzana
  - Banana
  - Pera
- Verduras
  - Zanahoria
  - Brócoli

---

## **Sección 2: Elementos de Lista Complejos**

### **Ejercicio 2.1: Lista con Contenido HTML**
Crea una lista no ordenada donde:
1. El **primer elemento** contenga un **párrafo** con texto descriptivo.
2. El **segundo elemento** incluya una **imagen** (usa una imagen de tu elección).
3. El **tercer elemento** contenga otra lista ordenada con tres subelementos.

---

## **Sección 3: Creación de Tablas**

### **Ejercicio 3.1: Tabla Combinada**
Crea una tabla que combine **datos de recetas** y un **horario de preparación**. Las celdas que tengan contenido repetido deben combinarse tanto **horizontal como verticalmente**.

#### **Resultado Final de la Tabla:**

<pre>
+-------------+------------------+------------------+------------------+
| Día         | 9:00 - 10:00    | 10:00 - 12:00    | 12:00 - 15:00    |
+-------------+------------------+------------------+------------------+
| Lunes       | Pan Casero       | Pan Casero       |                  |
+-------------+------------------+------------------+------------------+
| Martes      | Tarta de Manzana | Brownies         |                   
+-------------+------------------+------------------+------------------+
| Miércoles   | Brownies         | Brownies         | Tarta de Manzana |
+-------------+------------------+------------------+------------------+
| Jueves      | Pan Casero       | Pan Casero       |                  |
+-------------+------------------+------------------+------------------+
| Viernes     | Tarta de Manzana |                  | Pan Casero       |
+-------------+------------------+------------------+------------------+
</pre>

### Indicaciones para la Tabla:
1. **Pan Casero** en lunes y jueves debe combinarse **horizontalmente** en la franja de 9:00 a 12:00.
2. **Brownies** en martes y miércoles debe combinarse **verticalmente** en la franja de 10:00 a 12:00.
3. El resto de las franjas horarias deben mantenerse con sus respectivos contenidos y vacíos cuando corresponda.

---

## **Sección 4: Buenas Prácticas en Tablas**

### **Ejercicio 4.1: Uso de thead, tbody y tfoot**
Crea una tabla que represente una **lista de ingredientes de una receta** con las siguientes secciones:

1. **Encabezado** (`thead`):
   | Ingrediente    | Cantidad | Unidad   | Precio Total |
   
2. **Cuerpo** (`tbody`):
   | Harina         | 500      | gramos   | $1.50        |
   | Azúcar         | 200      | gramos   | $0.80        |
   | Mantequilla    | 100      | gramos   | $1.20        |

3. **Pie de página** (`tfoot`):
   | **Total**      |          |          | **$3.50**    |

---

## **Entrega Final**
1. Guarda el archivo como `prueba_ud3.html`.
2. Asegúrate de que todo el código HTML esté correctamente indentado y comentado.
3. Verifica que las listas y tablas se vean correctamente en un navegador web.
4. **Consulta la guía completa aquí:** [PT3 en GitHub Classroom](https://classroom.github.com/a/fvdB8nFn).

---

**¡Buena suerte!** 🚀
