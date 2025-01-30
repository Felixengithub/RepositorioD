[Enlace Repositorio Examen](https://classroom.github.com/a/Epsk51nX)


# **Examen de la Unidad: Desarrollo de Estructura HTML**

## **Descripción del Proyecto**

La empresa ficticia **"DocuPro"**, especializada en gestión de documentos digitales, ha solicitado la creación de una página web estructurada que incluya múltiples secciones y sub-secciones para sus servicios, información corporativa y recursos interactivos. Como desarrollador web, deberás diseñar una página HTML con una estructura semántica sólida y coherente, incorporando secciones organizadas jerárquicamente.

Este examen evaluará exclusivamente la organización y uso correcto de las etiquetas HTML semánticas y no incluye estilos CSS ni funcionalidad adicional. Se evaluará el contenido de la página, es decir, la informacion que aparezca en la pagina. El archivo debe llamarse index.html


### **Secciones Obligatorias**

1. **Encabezado (Header):**
   - Incluir el logotipo de la empresa y un menú de navegación con al menos 5 enlaces (ejemplo: Inicio, Servicios, Recursos, Testimonios, Contacto).
   - Agregar un eslogan debajo del logotipo.

2. **Sección de Servicios:** (Debe contener sub-secciones)
   - Describir al menos 4 servicios ofrecidos por DocuPro.
   - Cada servicio debe estar en una sub-sección (`<section>`).
     - Cada sub-sección debe incluir un título (`<h3>`), una descripción breve (`<p>`), y una lista con al menos 3 características (`<ul>`).

3. **Galería de Recursos:** (Debe contener sub-secciones organizadas por categorías)
   - Usar la etiqueta `<figure>` para incluir al menos 3 imágenes relacionadas con los servicios, cada una con un `<figcaption>` descriptivo.
   - Dividir la galería en sub-secciones (`<section>`) organizadas por tipo de recurso (por ejemplo, "Documentación Técnica", "Casos de Estudio", "Infografías").

4. **Sección de Video Educativo:**
   - Incluir un video embebido en la página (puedes usar un archivo local o un enlace externo) que explique los beneficios de la gestión de documentos digitales.
   - El video debe tener controles habilitados.

5. **Testimonios de Clientes:** (Debe contener sub-secciones por cliente)
   - Añadir al menos 2 testimonios utilizando la etiqueta `<blockquote>` para citar lo que dijeron los clientes.
   - Cada testimonio debe incluir el nombre del cliente y su ocupación utilizando etiquetas adicionales (`<cite>` o `<p>`).

6. **Sección de Preguntas Frecuentes:** (Debe contener sub-secciones por tema)
   - Crear un listado de al menos 4 preguntas frecuentes y sus respuestas utilizando las etiquetas `<details>` y `<summary>`.
   - Divide las preguntas frecuentes en sub-secciones temáticas (`<section>`). Ejemplo:
     - **Servicios:** Preguntas relacionadas con los servicios que ofrece DocuPro.
     - **Precios:** Preguntas sobre el costo de los servicios.
     - **Soporte Técnico:** Preguntas sobre asistencia técnica.

   - **¿Cómo usar `<details>` y `<summary>`?**  
      - La etiqueta `<details>` sirve para crear un elemento desplegable que puede ser abierto o cerrado por el usuario. Dentro de `<details>`, se utiliza `<summary>` para definir el texto que aparece siempre visible.  
      - Ejemplo básico:  
        ```html
        <details>
          <summary>¿Qué documentos pueden digitalizar?</summary>
          <p>Podemos digitalizar documentos de cualquier tamaño y formato.</p>
        </details>
        ```

7. **Pie de Página (Footer):**
   - Incluir información de contacto, enlaces a redes sociales, y derechos de autor.



