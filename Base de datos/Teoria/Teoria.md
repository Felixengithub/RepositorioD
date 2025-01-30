
# Compendio Teórico de Bases de Datos

---

## Unidad 1: Introducción al Diagrama Entidad-Relación

### 1.1 Definición de Diagrama Entidad-Relación
El **Diagrama Entidad-Relación (ER)** es una metodología de *modelado conceptual* diseñada para representar, de manera gráfica, la estructura lógica de la información que será almacenada y gestionada en un sistema de gestión de bases de datos (SGBD). Utilizando elementos clave como entidades, atributos y relaciones, el diagrama ER permite capturar la estructura de un dominio de datos. Este modelo describe no solo las **entidades** de interés, sino también las **relaciones** entre ellas y los **atributos** que las caracterizan.

### 1.2 Historia y Evolución del Diagrama ER
El **Diagrama Entidad-Relación** fue propuesto por el informático **Peter Chen** en 1976, como respuesta a la necesidad de un modelo conceptual que permitiera describir la estructura de una base de datos con un mayor nivel de *abstracción*. Este enfoque se diferenciaba de los modelos de diseño físico o lógico de bases de datos, que en ese momento eran los más utilizados.

Con el tiempo, el modelo ER evolucionó hacia el **Modelo Entidad-Relación Extendido (EER)**, incorporando conceptos avanzados como *especialización*, *generalización* y *agregación*.

### 1.3 Importancia en el Diseño de Bases de Datos
El Diagrama ER es esencial en la fase de *diseño conceptual* de bases de datos, actuando como puente entre diseño conceptual y modelo relacional. Su capacidad de ofrecer una representación clara y comprensible de los datos facilita la detección de posibles inconsistencias o redundancias antes de la implementación.

### Componentes del Diagrama ER
1. **Entidades**: Objetos o conceptos del mundo real que tienen existencia independiente. Ejemplos: Cliente, Producto.
2. **Relaciones**: Asocian dos o más entidades, como "Cliente realiza Pedido".
3. **Atributos**: Detalles que describen entidades o relaciones. Por ejemplo, el atributo "Nombre" de la entidad Cliente.

#### Tipos de Atributos
- **Simples**: Indivisibles, como "Edad".
- **Compuestos**: Divisibles en subcomponentes, como "Dirección" (Calle, Ciudad, Código Postal).
- **Derivados**: Calculados a partir de otros, como "Edad" derivada de "Fecha de Nacimiento".
- **Multivaluados**: Pueden contener múltiples valores, como "Teléfonos".

#### Cardinalidades
- **1:1**: Un cliente tiene una sola tarjeta de crédito.
- **1:N**: Un cliente realiza muchos pedidos.
- **M:N**: Muchos estudiantes están inscritos en muchos cursos.

---

## Unidad 2: Paso de Diagrama Entidad-Relación a Modelo Relacional

### 2.1 Introducción al Modelo Relacional
El modelo relacional organiza datos en **relaciones** (tablas), estructuradas en **tuplas** (filas) y **atributos** (columnas). Este modelo fue desarrollado por **Edgar F. Codd** en los años 70 y se basa en la teoría de conjuntos y el álgebra relacional.

### 2.2 Conversión del Modelo ER al Relacional
#### Fases de Conversión
1. **Entidades a Tablas**: Las entidades fuertes se convierten directamente en tablas.
2. **Atributos**: Se transforman en columnas de las tablas correspondientes.
3. **Relaciones**:
   - **1:1**: Propagación de clave primaria entre tablas.
   - **1:N**: La clave primaria de la entidad "uno" se convierte en clave externa en la entidad "muchos".
   - **M:N**: Creación de una tabla intermedia con claves primarias de ambas tablas.
4. **Claves Primarias y Externas**: Garantizan unicidad y vínculos entre tablas.

#### Ventajas del Modelo Relacional
1. **Independencia de Datos**: Modificaciones en el almacenamiento físico no afectan las consultas lógicas.
2. **Integridad**: Restricciones como `PRIMARY KEY` y `FOREIGN KEY` mantienen la consistencia.
3. **Flexibilidad**: Permite consultas complejas mediante SQL.

---

## Unidad 3: Paso de Modelo Relacional a Modelo Físico

### 3.1 Introducción al Modelo Físico
El modelo físico describe cómo se almacenan y acceden los datos en un sistema de almacenamiento. Incluye decisiones sobre:
- **Tablas físicas**: Distribución en discos y optimización del espacio.
- **Índices**: Estructuras que mejoran el rendimiento.
- **Tipos de Datos**: Selección adecuada según el contenido.

### 3.2 Implementación en SGBD
#### Creación de Tablas en MySQL
```sql
CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) CHECK (salario > 0),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento)
);
```
### 3.3 Restricciones Clave
- **`NOT NULL`**: Obliga a que un campo no sea nulo.
- **`UNIQUE`**: Evita duplicados en una columna.
- **`CHECK`**: Define condiciones para los valores.

### 3.4 Optimización y Rendimiento
1. **Índices**: Clave para búsquedas rápidas.
2. **Particiones**: Dividen tablas grandes para optimizar consultas.
3. **Espacio de Almacenamiento**: Uso eficiente de disco mediante tipos de datos compactos.

---

Este compendio extiende y detalla cada uno de los pasos y conceptos fundamentales del diseño de bases de datos, proporcionando una visión exhaustiva de los modelos ER, Relacional y Físico.
