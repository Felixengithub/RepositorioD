# Unidad Didáctica 6 - **Diagramas de Clases UML**  

## 1. Objetivo de la Unidad  
El propósito de esta unidad es introducir a los estudiantes en el uso y creación de **diagramas de clases UML (Unified Modeling Language)**, una herramienta fundamental en el diseño de software orientado a objetos. Los diagramas de clases permiten visualizar la estructura del sistema, mostrando las relaciones entre clases, atributos y métodos.  

Al finalizar esta unidad, los estudiantes serán capaces de:  
- Comprender el propósito y la importancia de los diagramas de clases en el desarrollo de software.  
- Identificar los elementos principales de un diagrama de clases UML.  
- Crear diagramas de clases para modelar sistemas simples y complejos.  
- Interpretar diagramas existentes para comprender la arquitectura de un sistema.  

---

## 2. Introducción a UML y Diagramas de Clases  

### 2.1. ¿Qué es UML?  
UML (Unified Modeling Language) es un lenguaje de modelado visual utilizado en ingeniería de software para especificar, visualizar y documentar los componentes de un sistema. UML proporciona diversas herramientas gráficas, siendo el **diagrama de clases** uno de los más utilizados, ya que permite representar la estructura estática de un sistema.  

### 2.2. ¿Qué es un Diagrama de Clases?  
Un **diagrama de clases** es una representación gráfica de las clases que componen un sistema, así como sus atributos, métodos y las relaciones que existen entre ellas. Es una herramienta clave en el diseño orientado a objetos y facilita la comunicación entre desarrolladores y otras partes interesadas en el proyecto.  

Los diagramas de clases ayudan a:  
- Visualizar la estructura del software.  
- Identificar las clases principales y sus responsabilidades.  
- Modelar relaciones entre clases (herencia, composición, agregación, etc.).  
- Proporcionar una vista global del sistema antes de la implementación.  

---

## 3. Elementos de un Diagrama de Clases  

### 3.1. Clases  
Las clases son la unidad fundamental de un diagrama de clases. Se representan con un rectángulo dividido en tres secciones:  
1. **Nombre de la clase** (primera sección).  
2. **Atributos** (segunda sección).  
3. **Métodos o funciones** (tercera sección).  

**Ejemplo básico de clase en UML:**  
```
-----------------
|   Usuario     |
-----------------
| - nombre      |
| - email       |
-----------------
| + login()     |
| + registrar() |
-----------------
```  
- **Signos (+, -, #):**  
  - **+ (público):** El atributo o método es accesible desde cualquier parte del sistema.  
  - **- (privado):** Solo es accesible desde dentro de la misma clase.  
  - **# (protegido):** Es accesible desde la misma clase y clases heredadas.  

---

### 3.2. Relaciones entre Clases  
Las relaciones entre clases representan cómo interactúan o dependen unas de otras. UML permite modelar diferentes tipos de relaciones:  

1. **Asociación:** Representa una relación simple entre clases.  
   - Se indica con una línea continua que conecta las clases.  
   - Puede tener una multiplicidad (1, 0..*, 1..*).  
   **Ejemplo:**  
   ```
   Cliente ------------- Pedido
           1            0..*
   ```  
   Un cliente puede realizar varios pedidos.  

2. **Herencia (Generalización):** Representa una relación "es un" o "hereda de".  
   - Se indica con una flecha vacía que apunta a la clase padre.  
   **Ejemplo:**  
   ```
   Persona <|----- Empleado
   ```  
   Un empleado es una persona.  

3. **Composición:** Relación fuerte donde una clase contiene a otra y no puede existir sin ella.  
   - Se representa con un rombo negro.  
   **Ejemplo:**  
   ```
   Casa ◆----- Habitación
   ```  
   Una habitación no puede existir sin una casa.  

4. **Agregación:** Relación débil donde una clase contiene a otra, pero puede existir de forma independiente.  
   - Se representa con un rombo vacío.  
   **Ejemplo:**  
   ```
   Universidad ◇----- Estudiante
   ```  
   Los estudiantes pueden existir sin la universidad.  

---

### 3.3. Atributos y Métodos  
- **Atributos:** Representan las propiedades o características de una clase. Se definen con su nombre, tipo y visibilidad.  
  **Ejemplo:** `- nombre: String`  
- **Métodos:** Representan las acciones o comportamientos de la clase. Se definen con su nombre, parámetros y tipo de retorno.  
  **Ejemplo:** `+ calcularSalario(): double`  

---

## 4. Creación de Diagramas de Clases  

### 4.1. Herramientas para Crear Diagramas UML  
Existen diversas herramientas que permiten crear diagramas de clases de forma visual:  
1. **Draw.io (diagrams.net):** Gratuita y basada en web.  
2. **StarUML:** Software especializado para modelado UML.  
3. **Lucidchart:** Herramienta en línea para crear diagramas colaborativos.  
4. **Visual Paradigm:** Amplia funcionalidad para modelado y diseño UML.  
5. **PlantUML:** Generación de diagramas UML a partir de texto.  

---

### 4.2. Ejemplo Completo de Diagrama de Clases  
**Sistema de Gestión de Biblioteca**  
```  
                     +-------------------+  
                     |     Libro         |  
                     +-------------------+  
                     | - titulo: String  |  
                     | - autor: String   |  
                     | - isbn: String    |  
                     +-------------------+  
                     | + prestar()       |  
                     | + devolver()      |  
                     +-------------------+  
                                |  
                                |  
                                |  
                    +-----------+------------+  
                    |                        |  
            +-------------------+     +------------------+  
            |   Usuario          |     |   Biblioteca     |  
            +-------------------+     +------------------+  
            | - nombre: String   |     | - nombre: String |  
            | - email: String    |     | - direccion: String |  
            +-------------------+     +------------------+  
            | + solicitarLibro()|     | + agregarLibro() |  
            +-------------------+     +------------------+  
```  

---

## 5. Buenas Prácticas al Crear Diagramas de Clases  
1. **Simplicidad:** Evitar clases innecesarias o relaciones demasiado complejas.  
2. **Claridad:** Nombrar atributos y métodos de forma descriptiva.  
3. **Consistencia:** Mantener un estilo uniforme en todos los diagramas.  
4. **Modularidad:** Dividir diagramas grandes en secciones más pequeñas y manejables.  
5. **Actualización constante:** Asegurar que el diagrama refleje siempre la versión actual del código.  

---

## 6. Interpretación de Diagramas de Clases  
- **Analizar relaciones de herencia y composición.**  
- **Identificar clases principales y auxiliares.**  
- **Observar multiplicidades para entender cómo interactúan los objetos.**  

---

## 7. Ejercicio Práctico  
**Tarea:**  
Modelar un sistema de gestión de empleados, donde existan clases para `Empleado`, `Gerente` y `Departamento`.  
1. Crear una clase `Empleado` con atributos `nombre` y `salario`.  
2. Crear una clase `Gerente` que herede de `Empleado`.  
3. Relacionar `Empleado` con `Departamento` mediante agregación.  

**Herramienta sugerida:** Draw.io.