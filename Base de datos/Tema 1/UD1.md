# **1. Introducción al Diagrama Entidad-Relación**

---

### **1.1 Definición de Diagrama Entidad-Relación**  
El **Diagrama Entidad-Relación (ER)** es una metodología de *modelado conceptual* diseñada para representar, de manera gráfica, la estructura lógica de la información que será almacenada y gestionada en un sistema de gestión de bases de datos (SGBD). Utilizando elementos clave como entidades, atributos y relaciones, el diagrama ER permite capturar la estructura de un dominio de datos. Este modelo describe no solo las **entidades** de interés para una organización o sistema, sino también las **relaciones** entre ellas y los **atributos** que las caracterizan. Su representación visual facilita la identificación, organización y planificación de los datos de manera estructurada, sirviendo como base para el diseño e implementación de una base de datos relacional.

### **1.2 Historia y Evolución del Diagrama ER**  
El **Diagrama Entidad-Relación** fue propuesto por el informático **Peter Chen** en 1976, como respuesta a la necesidad de un modelo conceptual que permitiera describir la estructura de una base de datos con un mayor nivel de *abstracción*. Este enfoque se diferenciaba de los modelos de diseño físico o lógico de bases de datos, que en ese momento eran los más utilizados. El modelo ER fue rápidamente adoptado por su capacidad de simplificar y clarificar la representación de datos complejos. A lo largo del tiempo, el modelo ER ha evolucionado y ha dado lugar a variantes como el **Modelo Entidad-Relación Extendido (EER)**, que introduce conceptos adicionales como *generalización*, *especialización* y *agregación*, aumentando su capacidad para representar estructuras de datos más sofisticadas.

### **1.3 Importancia del Diagrama ER en el Diseño de Bases de Datos**  
El Diagrama ER es una herramienta **esencial** en la fase de *diseño conceptual* de bases de datos. Su capacidad para ofrecer una representación clara y comprensible de cómo se estructuran los datos en un sistema lo convierte en un instrumento clave para la comunicación entre los distintos actores involucrados en el desarrollo de una base de datos: analistas, diseñadores, desarrolladores y usuarios finales. El diagrama ER permite que todos los involucrados comprendan de forma precisa cómo se organizarán los datos, facilitando la detección temprana de posibles *inconsistencias* o *redundancias* antes de que el diseño pase a la etapa de implementación. Además, actúa como el puente entre el diseño conceptual y el modelo relacional que será implementado en el SGBD, asegurando que los requisitos del negocio se traduzcan correctamente en una estructura de datos coherente y eficiente para el sistema final.

---

## **2. Componentes del Diagrama Entidad-Relación (DER)**

El Diagrama Entidad-Relación (DER) es una herramienta fundamental en el diseño de bases de datos relacionales. Permite representar de manera gráfica los datos y las relaciones entre ellos, facilitando la comprensión del modelo de datos antes de la implementación. A continuación, se detallan los principales componentes que forman parte de un DER, proporcionando una comprensión más profunda de cada uno.

### **2.1. Entidades**

Una **entidad** es cualquier objeto, persona, lugar, evento o concepto del mundo real que sea relevante para el sistema y que deba ser almacenado en la base de datos. Las entidades son fundamentales para el modelo de datos, ya que **representan las cosas sobre las cuales queremos almacenar información**. Cada entidad posee una existencia independiente dentro del contexto del modelo de datos, y a menudo se corresponden con *tablas* en la implementación física de la base de datos.

### **2.2. Relaciones**

Una **relación** en el contexto de un DER describe cómo dos o más entidades están asociadas o interactúan entre sí dentro del sistema. Las relaciones son esenciales, ya que modelan las dependencias y las interacciones que existen entre las entidades. En la implementación física de una base de datos, estas relaciones se suelen representar a través de *claves externas*.

Las relaciones pueden ser clasificadas en función del número de entidades que participan en ellas:

- **Relación binaria**: Es la relación más común, en la que dos entidades están involucradas. **Ejemplo**: Una relación binaria entre "Empleado" y "Departamento" podría indicar que un empleado trabaja en un determinado departamento.

- **Relación ternaria**: Implica la participación simultánea de tres entidades. Estas relaciones son menos comunes pero útiles para modelar situaciones complejas. **Ejemplo**: Una relación ternaria entre las entidades "Proveedor", "Producto", y "Cliente" podría representar que un proveedor suministra un producto a un cliente.

Además, cada relación tiene una **cardinalidad** asociada que describe cuántas instancias de una entidad pueden estar asociadas con cuántas instancias de la otra entidad. Esto se describe con más detalle en la sección 2.4.

### **2.3. Atributos**

Los **atributos** son las propiedades o características que describen a una entidad o relación en particular. En el modelo de datos, los atributos se utilizan para proporcionar detalles adicionales sobre las entidades o relaciones, y a menudo se implementan como las *columnas* de una tabla en la base de datos.

Los atributos pueden clasificarse en las siguientes categorías:

- **Atributos simples**: Son aquellos que no se pueden descomponer en partes más pequeñas. Son indivisibles y, por lo general, representan un único valor. **Ejemplo**: El atributo "Nombre" de un empleado es un atributo simple, ya que no puede dividirse más allá.

- **Atributos compuestos**: Son aquellos que pueden descomponerse en subcomponentes. Estos subcomponentes también tienen significado por sí mismos. **Ejemplo**: El atributo "Dirección" es un ejemplo clásico de atributo compuesto, ya que puede desglosarse en "Calle", "Número", "Ciudad", "Código Postal", entre otros.

- **Atributos derivados**: Estos atributos no se almacenan directamente en la base de datos, sino que se calculan a partir de otros atributos almacenados. **Ejemplo**: El atributo "Edad" puede derivarse de la "Fecha de Nacimiento" de una persona. No es necesario almacenarlo de manera directa, ya que puede calcularse cuando se necesite.

- **Atributos multivaluados**: Son aquellos que pueden contener más de un valor al mismo tiempo. A diferencia de los atributos simples, que solo pueden contener un valor por registro, los atributos multivaluados pueden tener múltiples valores asociados a una entidad. **Ejemplo**: El atributo "Teléfonos" en la entidad "Persona" podría ser multivaluado, ya que una persona puede tener múltiples números de teléfono asociados (teléfono de casa, teléfono móvil, etc.).

### **2.4. Cardinalidades**

La **cardinalidad** define la naturaleza de la relación entre las entidades en términos del número de instancias que pueden estar involucradas. Es un concepto crucial en el diseño de bases de datos, ya que garantiza que se respeten las reglas de negocio y las restricciones de integridad de los datos.

Las cardinalidades más comunes son:

- **Uno a uno (1:1)**: Una instancia de una entidad está relacionada con una única instancia de otra entidad, y viceversa. **Ejemplo**: Un "Pasaporte" está asociado de manera exclusiva a un "Ciudadano", y cada ciudadano solo tiene un pasaporte.

- **Uno a muchos (1:N)**: Una instancia de una entidad está relacionada con múltiples instancias de otra entidad. **Ejemplo**: Un "Cliente" puede realizar múltiples "Pedidos", pero cada pedido está asociado a un único cliente.

- **Muchos a muchos (M:N)**: Varias instancias de una entidad pueden estar relacionadas con varias instancias de otra entidad. Este tipo de relación es común cuando se desea modelar asociaciones complejas. **Ejemplo**: En una base de datos universitaria, un "Estudiante" puede estar inscrito en varios "Cursos", y un "Curso" puede tener varios "Estudiantes" inscritos.

Definir correctamente las cardinalidades es vital para garantizar que el modelo de datos respete las reglas y restricciones de negocio. Una mala definición de cardinalidades puede llevar a errores de integridad en la base de datos, tales como duplicación de datos o relaciones inválidas entre entidades.

---

## **3. El Proceso de Diseño de un Diagrama Entidad-Relación (ER)**

El diseño de un Diagrama Entidad-Relación (ER) es un proceso fundamental dentro del ciclo de desarrollo de sistemas de bases de datos, cuyo objetivo es garantizar que el modelo final refleje de manera precisa y completa las necesidades de información de la organización o sistema. Este proceso metodológico involucra una serie de pasos secuenciales, cada uno de los cuales desempeña un papel crucial para lograr un modelo de datos robusto y eficiente. A continuación, se describen en detalle las fases clave de este proceso.

### **3.1. Recolección de Requisitos**

El primer paso en el diseño de un Diagrama ER es la **recolección de requisitos**. Esta fase tiene como objetivo comprender a fondo las necesidades de información del sistema que se está modelando. Para ello, se emplean diversas técnicas que permiten capturar la mayor cantidad de detalles posible sobre los datos que serán representados en la base de datos. Entre estas técnicas se incluyen:

- **Entrevistas**: Realizar entrevistas con usuarios clave o expertos en el dominio del sistema permite obtener información directa y específica sobre las entidades, relaciones y atributos que deben ser considerados.
  
- **Reuniones de grupo o talleres**: Reunir a un grupo de usuarios clave para discutir los requisitos puede proporcionar una visión más amplia y colaborativa del sistema. Esto también ayuda a detectar posibles discrepancias o conflictos en las necesidades de diferentes partes interesadas.

- **Revisión de documentación existente**: Si ya existen documentos relacionados con el sistema (manuales, especificaciones de requisitos, reportes de análisis previos), su análisis puede ofrecer una base sólida para identificar entidades y relaciones que el sistema debe manejar.

### **3.2. Identificación de Entidades y Relaciones**

Una vez que se han recolectado los requisitos de información, el siguiente paso es la **identificación de las entidades** que deben ser representadas en la base de datos. Este paso implica un análisis detallado de los datos relevantes para determinar qué objetos o conceptos tienen una existencia independiente dentro del sistema.

Una vez que se han identificado las entidades, se procede a **identificar las relaciones** entre ellas. Esto implica determinar cómo interactúan las entidades entre sí y si estas interacciones deben representarse explícitamente en el modelo de datos. Además de identificar las relaciones, es fundamental determinar el tipo de relación (binaria, ternaria, etc.) y si la relación tiene atributos propios que deban ser representados.

### **3.3. Asignación de Atributos**

El siguiente paso en el proceso de diseño es la **asignación de atributos** a las entidades y relaciones previamente identificadas. Los atributos proporcionan detalles adicionales que describen las características de cada entidad o relación, y es fundamental en esta fase definir adecuadamente los tipos de atributos para garantizar un modelo de datos preciso y eficiente.

- **Atributos simples y compuestos**: Es esencial determinar si los atributos son indivisibles (*simples*) o si pueden descomponerse en subcomponentes más específicos (*compuestos*). Por ejemplo, el atributo "Nombre Completo" de una entidad "Empleado" podría descomponerse en "Nombre", "Apellido Paterno", y "Apellido Materno".

- **Atributos multivaluados**: Algunos atributos pueden contener múltiples valores. Por ejemplo, la entidad "Paciente" podría tener el atributo "Alergias", que podría contener varios valores, ya que un paciente puede ser alérgico a varios medicamentos o alimentos.

- **Atributos derivados**: Atributos como la "Edad" de una persona no se almacenan directamente, sino que se calculan a partir de otro atributo, como la "Fecha de Nacimiento".

Este paso es crucial para garantizar que la base de datos no solo almacene la información correcta, sino que también sea flexible y eficiente.

### **3.4. Definición de Cardinalidades**

Una vez que se han definido las entidades, las relaciones y sus atributos, es fundamental proceder a la **definición de las cardinalidades** de cada relación. Las cardinalidades especifican el número de instancias de una entidad que pueden estar asociadas con el número de instancias de otra entidad, y son esenciales para capturar correctamente las reglas de negocio que limitan o permiten las asociaciones entre entidades.

Existen tres tipos principales de cardinalidades:

- **Uno a uno (1:1)**: Una instancia de una entidad está relacionada con una única instancia de otra entidad. **Ejemplo**: En una base de datos de empleados, un "Empleado" puede tener un "Pasaporte", y cada pasaporte está vinculado a un único empleado.

- **Uno a muchos (1:N)**: Una instancia de una entidad está relacionada con múltiples instancias de otra entidad. **Ejemplo**: Un "Profesor" puede impartir múltiples "Clases", pero cada clase solo tiene un profesor principal.

- **Muchos a muchos (M:N)**: Varias instancias de una entidad pueden estar relacionadas con varias instancias de otra entidad. **Ejemplo**: Un "Estudiante" puede estar inscrito en varios "Cursos", y un "Curso" puede tener múltiples estudiantes inscritos.

La correcta definición de las cardinalidades es crítica para evitar problemas de integridad de datos y para asegurar que la base de datos refleje con precisión las reglas de negocio. Las cardinalidades determinan cómo se modelarán las relaciones en la implementación física de la base de datos, a menudo mediante el uso de claves primarias y claves externas.

---

## **4. Introducción al Modelo Entidad-Relación Extendido (EER)**

### **4.1. ¿Qué es el Modelo ER Extendido?**

El **Modelo Entidad-Relación Extendido (EER, por sus siglas en inglés)** es una expansión del modelo ER tradicional que añade funcionalidades avanzadas para modelar estructuras de datos más complejas. Mientras que el modelo ER básico es adecuado para representar datos de manera general, el EER introduce mecanismos que permiten capturar relaciones jerárquicas y características especializadas. Estos mecanismos incluyen conceptos como **jerarquías de generalización y especialización**, **herencia de atributos**, y nuevas formas de definir la participación de entidades en relaciones, que permiten modelar con mayor precisión sistemas de información complejos.

Por ejemplo, el EER es ideal para sistemas en los que diferentes tipos de entidades comparten atributos comunes, pero también tienen características únicas que deben modelarse. Un caso clásico es el de un sistema de gestión de empleados, donde se pueden tener diferentes tipos de empleados (empleados a tiempo completo, empleados por contrato), todos ellos con algunos atributos comunes (nombre, dirección) y otros específicos (salario, duración del contrato).

### **4.2. Subclases y Superclases**

Uno de los principales avances introducidos por el Modelo ER Extendido es la incorporación de los conceptos de **superclases** y **subclases**, que permiten establecer jerarquías entre entidades, facilitando la modelación de relaciones entre entidades generales y específicas.

- **Superclase**: Una **superclase** es una entidad más general que agrupa características comunes compartidas por varias entidades más especializadas. Se utiliza para evitar la duplicación de información y permite la reutilización de atributos y relaciones comunes. 

- **Subclase**: Una **subclase** es una entidad derivada que hereda todos los atributos y relaciones de su superclase, pero también puede tener atributos adicionales que la diferencian de otras subclases. Las subclases permiten representar entidades más especializadas que comparten ciertas características con la superclase, pero tienen particularidades adicionales.

**Ejemplo**: En un sistema universitario, podríamos tener una superclase "Persona", que contiene atributos comunes como "Nombre", "Fecha de Nacimiento" y "Dirección". A partir de esta superclase, podemos derivar subclases como "Estudiante", "Profesor" y "Personal Administrativo", cada una de las cuales tiene atributos adicionales específicos, como "Carrera" para estudiantes, "Departamento" para profesores, o "Puesto" para el personal administrativo.

### **4.3. Especialización y Generalización**

Dos conceptos clave que surgen de la noción de superclases y subclases en el modelo EER son la **especialización** y la **generalización**. Estos procesos permiten descomponer o agrupar entidades, según sea necesario, para reflejar relaciones jerárquicas y niveles de abstracción en el sistema de datos.

- **Especialización**: Es el proceso mediante el cual una entidad más general se descompone en varias subclases más específicas. Se utiliza cuando una entidad presenta diferencias importantes que deben modelarse de manera explícita en subentidades. La especialización permite capturar estas particularidades, manteniendo una estructura jerárquica que facilita la gestión de los datos.

    **Ejemplo**: La entidad "Empleado" puede especializarse en las subclases "Empleado a Tiempo Completo" y "Empleado a Tiempo Parcial", donde cada una de estas subclases tiene características adicionales específicas, como "Salario Mensual" para los empleados a tiempo completo o "Horas Trabajadas" para los empleados a tiempo parcial.

- **Generalización**: Es el proceso inverso a la especialización, y consiste en agrupar varias entidades específicas en una entidad más general, reduciendo la complejidad y proporcionando una visión más abstracta de los datos. La generalización es útil cuando diferentes entidades especializadas comparten una cantidad considerable de atributos y relaciones, y se busca simplificar el modelo al reunirlas bajo una entidad común.

    **Ejemplo**: Las entidades "Carro", "Motocicleta" y "Camión" podrían generalizarse en una entidad más abstracta llamada "Vehículo", eliminando los detalles específicos de cada tipo de vehículo para centrarse en los atributos comunes como "Número de Placa", "Color" o "Marca".

### **4.4. Herencia en el Modelo ER Extendido**

La **herencia** es un concepto fundamental en el EER, que permite que las subclases hereden atributos y relaciones de sus superclases. Esto no solo facilita la reutilización de estructuras comunes, sino que también mejora la organización y reduce la redundancia en el modelo de datos. 

Gracias a la herencia, las subclases pueden definir solo los atributos y relaciones adicionales que las diferencian, mientras que comparten las propiedades comunes de la superclase. Este mecanismo asegura un diseño más eficiente, ya que evita la repetición innecesaria de atributos en diferentes entidades.

**Ejemplo**: En un modelo que incluye una superclase "Persona", las subclases "Paciente" y "Doctor" heredan atributos como "Nombre" y "Fecha de Nacimiento", mientras que agregan atributos específicos: "Número de Historia Clínica" para "Paciente" y "Especialidad Médica" para "Doctor".

### **4.5. Participación y Discriminación**

En el Modelo ER Extendido, también es crucial definir cómo se relacionan las subclases y superclases en términos de **participación** y **discriminación**.

- **Participación**: Este concepto se refiere a si todas las instancias de una superclase deben estar asociadas necesariamente con alguna subclase, o si solo algunas lo están. La participación puede ser de dos tipos:

    - **Participación total**: Significa que todas las instancias de la superclase deben pertenecer a alguna subclase. **Ejemplo**: En un sistema universitario, todos los miembros del "Personal Académico" deben ser o bien "Profesores" o bien "Investigadores", lo que implica una participación total.

    - **Participación parcial**: Significa que algunas instancias de la superclase pueden no pertenecer a ninguna subclase. **Ejemplo**: En una base de datos de vehículos, no todos los vehículos pueden ser clasificados como "Vehículos Comerciales" o "Vehículos Personales", lo que implica que algunos vehículos no pertenecen a ninguna de estas subclases.

- **Discriminación**: La discriminación define el criterio mediante el cual se determina a qué subclase pertenece una instancia de la superclase. Esto generalmente se basa en un atributo discriminador que permite asignar instancias a subclases específicas.

    **Ejemplo**: En un sistema de nómina, el atributo "Tipo de Empleo" podría ser un atributo discriminador que determina si una instancia de "Empleado" pertenece a la subclase "Empleado a Tiempo Completo" o "Empleado a Tiempo Parcial".

---

## **5. Aplicación del Modelo ER Extendido**

El **Modelo Entidad-Relación Extendido (EER)** no solo amplía la capacidad de modelado del ER tradicional, sino que también introduce técnicas avanzadas para representar relaciones más complejas entre entidades y establecer restricciones que reflejen con mayor precisión las reglas de negocio del mundo real. A continuación, se describen algunas de las principales aplicaciones del EER en la representación de sistemas de datos avanzados, proporcionando una guía clara sobre cómo se pueden implementar estas características.

### **5.1. Agregación de Relaciones**

La **agregación** es un concepto avanzado dentro del modelo EER que permite tratar una relación entre entidades como una entidad por sí misma. Este mecanismo es útil cuando se necesita que una relación participe en otra relación, lo que amplía las capacidades de modelado al permitir representar interacciones más complejas entre los elementos del sistema.

En un Diagrama Entidad-Relación tradicional, una relación conecta dos o más entidades. Sin embargo, en sistemas más complejos, puede ser necesario que una relación forme parte de una relación más amplia. La agregación aborda esta necesidad permitiendo encapsular una relación dentro de una entidad para que esta nueva entidad pueda participar en otras relaciones. Este enfoque es particularmente útil en situaciones donde una relación no solo afecta a las entidades directamente involucradas, sino que también interactúa con otras entidades externas.

**Ejemplo**: Supongamos que en una empresa tenemos una relación llamada "Asignación", que conecta las entidades "Empleado" y "Proyecto", indicando qué empleado está asignado a qué proyecto. Si luego queremos que esta asignación participe en una relación con la entidad "Cliente" (para reflejar que un cliente está asociado con un proyecto y el empleado que trabaja en él), podríamos usar la agregación. En este caso, la relación "Asignación" se trata como una entidad, lo que permite crear una nueva relación que conecte "Cliente" con "Asignación".

La agregación permite representar de manera más eficiente interacciones complejas entre los datos, haciendo que el modelo sea más flexible y adaptable.

### **5.2. Jerarquías de Entidades**

Las **jerarquías** en el modelo EER son fundamentales para organizar entidades de manera jerárquica a través de los procesos de especialización y generalización. Estas jerarquías permiten crear niveles de abstracción que reflejan con mayor precisión las relaciones entre entidades, particularmente cuando existen grupos de entidades que comparten características comunes pero también tienen atributos o comportamientos específicos.

A través de las jerarquías, las entidades más específicas (subclases) heredan atributos y relaciones de las entidades más generales (superclases), lo que asegura la reutilización de estructuras comunes y evita la redundancia en la definición de datos. Esta estructura es especialmente útil cuando los datos presentan naturalezas jerárquicas o cuando el sistema requiere una distinción clara entre diferentes niveles de detalle.

- **Generalización**: Proceso mediante el cual entidades especializadas se agrupan en una entidad más general, simplificando el modelo al abstraer detalles específicos. Las entidades resultantes de una generalización permiten agrupar elementos similares bajo una misma superclase.

- **Especialización**: Proceso mediante el cual una entidad general se descompone en subclases más específicas, proporcionando una descripción más detallada de los datos. Las subclases heredan los atributos comunes de la superclase, pero agregan atributos únicos que las diferencian de otras subclases.

**Ejemplo**: En una organización, podríamos tener una superclase "Empleado", que incluye atributos comunes como "Nombre", "Dirección" y "Número de Identificación". A partir de esta superclase, podríamos especializar subclases como "Gerente" y "Empleado de Planta", donde "Gerente" puede tener un atributo adicional como "Área Supervisada" y "Empleado de Planta" puede tener un atributo como "Turno de Trabajo". Esta estructura jerárquica permite mantener los atributos comunes en una sola entidad, reduciendo la redundancia, mientras que se añaden las características propias de cada subclase en su nivel correspondiente.

### **5.3. Reglas de Negocio en el Modelo Extendido**

Las **reglas de negocio** son directrices que definen las restricciones, comportamientos y condiciones permitidos o prohibidos dentro de un sistema de datos. Estas reglas juegan un papel crucial en la implementación de sistemas robustos, ya que garantizan que los datos reflejen correctamente las realidades y restricciones del mundo real. En el modelo ER extendido, las reglas de negocio pueden representarse mediante restricciones de participación, discriminación y cardinalidad, asegurando que las entidades y relaciones del sistema respeten las condiciones impuestas por los procesos y políticas de la organización.

Existen varios tipos de reglas de negocio que pueden modelarse en el EER:

- **Restricciones de participación**: Estas reglas determinan si todas las instancias de una superclase deben pertenecer necesariamente a una subclase específica o si solo algunas lo hacen. Por ejemplo, la participación puede ser total o parcial. 

    - **Participación total**: Todas las instancias de una superclase deben estar asociadas con una subclase. **Ejemplo**: En un sistema bancario, todos los "Clientes" deben ser clasificados como "Clientes Corporativos" o "Clientes Individuales". Esto implica una participación total, ya que no puede haber un cliente que no pertenezca a una de estas dos subclases.
  
    - **Participación parcial**: Algunas instancias de la superclase pueden no estar asociadas a ninguna subclase. **Ejemplo**: En una tienda de alquiler de vehículos, no todos los "Vehículos" pueden estar clasificados como "Vehículos Comerciales" o "Vehículos Privados". Algunos vehículos pueden no estar categorizados, lo que implica una participación parcial.

- **Discriminación**: Se refiere a la regla que define cómo se determina a qué subclase pertenece una instancia de la superclase, generalmente basándose en un atributo discriminador. El atributo discriminador indica qué características diferencian a las subclases dentro de una jerarquía.

    **Ejemplo**: En un sistema de gestión de empleados, el atributo "Tipo de Empleo" podría actuar como discriminador para determinar si un "Empleado" pertenece a la subclase "Empleado a Tiempo Completo" o "Empleado Temporal".

- **Restricciones de cardinalidad**: Las reglas de cardinalidad definen cuántas instancias de una entidad pueden estar asociadas a cuántas instancias de otra entidad. Esto es crucial para asegurar que las relaciones entre entidades sean consistentes y sigan las reglas de negocio.

    **Ejemplo**: En una relación de "Cliente" y "Cuenta Bancaria", una regla de negocio podría establecer que un cliente puede tener múltiples cuentas, pero cada cuenta solo puede estar asociada con un único cliente (cardinalidad 1:N).

Las reglas de negocio son esenciales para la integridad y coherencia de los datos en un sistema, y el modelo ER extendido proporciona un marco robusto para representarlas de manera clara y efectiva.