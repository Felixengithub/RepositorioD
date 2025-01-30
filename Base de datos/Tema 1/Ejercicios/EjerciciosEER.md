#### Ejercicio 1: Agregación de relaciones
**Enunciado**: Una universidad organiza proyectos de investigación en los que participan estudiantes y profesores. De cada proyecto, se debe almacenar el título, el área de investigación y la fecha de inicio. Cada proyecto tiene un profesor responsable y varios estudiantes. A su vez, los proyectos pueden ser parte de un acuerdo con empresas externas, donde se registra el nombre de la empresa y el tipo de acuerdo.

**Pregunta**: Diseña un diagrama ER donde la relación "Participa" entre estudiantes y proyectos se agregue para relacionarla con la entidad "Empresa". Considera que no todos los proyectos tienen un acuerdo con una empresa.


#### Ejercicio 2: Jerarquías de entidades
Enunciado: Una tienda online quiere crear una base de datos para sus productos. Existen dos tipos de productos: electrónicos y ropa. Todos los productos tienen nombre, precio y cantidad en stock. Los productos electrónicos incluyen además la garantía y el voltaje, mientras que los productos de ropa tienen talla y color.

**Pregunta**: Crea un diagrama ER utilizando especialización y generalización para representar los productos. Asegúrate de que los productos compartan los atributos comunes, pero también reflejen las características específicas de cada tipo de producto.


#### Ejercicio 3: Reglas de negocio y restricciones de participación
**Enunciado**: Un hospital está organizando la información de su personal. Existen dos tipos de empleados: médicos y administrativos. Todos los empleados tienen un nombre, un número de identificación y una fecha de contratación. Los médicos pueden ser especialistas o generales, y los administrativos pueden trabajar en contabilidad o recursos humanos. No todos los empleados tienen una especialización definida.

**Pregunta**: Diseña un diagrama ER que represente esta estructura jerárquica utilizando especialización. Define si la participación de empleados en subclases debe ser total o parcial y justifica tu decisión.