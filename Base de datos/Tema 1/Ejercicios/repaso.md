# Ejercicio de Repaso - Base de Datos "BodyPerformance"

El centro de entrenamiento personal "BodyPerformance" quiere desarrollar una base de datos para gestionar la información de sus clientes, entrenadores, sesiones de entrenamiento y facturación. La base de datos debe cumplir con las siguientes especificaciones:

- Cada **cliente** tiene un **ID de cliente**, un **nombre completo**, su **fecha de nacimiento**, un **número de teléfono** y su **email**.  
  - Se requiere calcular la **edad** del cliente en base a su fecha de nacimiento.  
  - Un cliente puede estar inscrito en varias **sesiones de entrenamiento**, y un **entrenador principal** es responsable de supervisar su progreso.

- Los **entrenadores** tienen un **ID de entrenador**, un **nombre completo**, su **certificación profesional** y un **número de registro**.  
  - Hay dos tipos de entrenadores: **fijos** y **freelancers**.  
    - Los entrenadores **fijos** tienen un **horario de trabajo** (mañana, tarde o noche).  
    - Los entrenadores **freelancers** tienen una **tarifa por sesión** y un **número de sesiones semanales** asignadas.  
  - Cada entrenador puede trabajar con varios clientes y estar a cargo de varias sesiones de entrenamiento.

- Las **sesiones de entrenamiento** tienen un **código de sesión**, una **descripción**, una **fecha de inicio** y una **fecha de finalización**.  
  - Una sesión puede incluir varios **ejercicios**. De cada ejercicio se registra el **nombre**, el **número de repeticiones** y el **peso sugerido**.  
  - Cada ejercicio tiene un **código de ejercicio**, un **grupo muscular** que trabaja y un **nivel de dificultad**.

- El centro emite **facturas** a los clientes por las sesiones de entrenamiento.  
  - Cada factura tiene un **número de factura**, la **fecha de emisión** y el **monto total**, calculado a partir de las sesiones de entrenamiento y consultas con los entrenadores.  
  - Un cliente puede tener múltiples facturas, pero cada factura está asociada a un único cliente.

- **Relaciones**:
  - Un cliente puede estar inscrito en varias sesiones de entrenamiento, y una sesión puede ser supervisada por varios entrenadores.  
  - Un entrenador puede guiar a varios clientes en diversas sesiones de entrenamiento.  
  - Las facturas reflejan los entrenamientos realizados y los entrenadores involucrados en cada caso.
