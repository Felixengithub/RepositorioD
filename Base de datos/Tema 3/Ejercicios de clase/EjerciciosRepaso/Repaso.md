
# **Unidad 3 - Paso de Modelo Relacional a Modelo Físico**

## **Práctica: Implementación de Bases de Datos Físicas**

A continuación, se presentan 4 ejercicios que te permitirán practicar la implementación del modelo físico de bases de datos en MySQL. Cada ejercicio incluye la creación de tablas, inserciones de datos y consultas para practicar las operaciones más comunes. Recuerda incluir restricciones, claves primarias, claves externas y cualquier elemento necesario para garantizar la integridad de los datos.

---

### **Ejercicio 1: Gestión de un Equipo de Petanca**
#### **Descripción**
Implementa una base de datos para gestionar los jugadores, partidos y participaciones de un equipo de petanca.

#### **Tareas**
1. Crea las tablas:
   - **Jugadores**: Incluye `ID`, `nombre`, `apodo`, `edad` y `nivel_experiencia` (`ENUM`: principiante, intermedio, avanzado).
   - **Partidos**: Incluye `ID`, `fecha`, `ubicación` y `resultado`.
   - **Participaciones**: Relaciona jugadores con partidos, registrando el `rol` (`ENUM`: titular, suplente) y `puntos_obtenidos`.

2. Inserta al menos **10 registros** en cada tabla.

3. Realiza las siguientes consultas:
   - (2T)Consulta los nombres de los jugadores con más de 10 puntos en total.
   - Lista los partidos jugados en una ubicación específica.
   - Muestra las participaciones donde el jugador fue titular.

---
### **Ejercicio 2: Gestión de Elecciones en Villabajo**
#### **Descripción**
Implementa una base de datos para gestionar las elecciones municipales de Villabajo.

#### **Tareas**
1. Crea las tablas:
   - **Candidatos**: Incluye `ID`, `nombre`, `partido_politico`, y `cargo`.
   - **Votantes**: Incluye `ID`, `nombre`, `edad`, y si ha votado (`BOOLEAN`).
   - **Votos**: Relaciona votantes con candidatos, incluyendo la `fecha_hora` (`CURRENT_TIMESTAMP`).

2. Inserta al menos **10 registros** en cada tabla.

3. Realiza las siguientes consultas:
   - Muestra los nombres de todos los votantes que tengan más de 18 años.
   - Lista los detalles de los candidatos de un partido político específico.
   - Muestra las fechas de los votos realizados por un votante específico.

---

### **Ejercicio 3: Gestión de un Club de Swingers**
#### **Descripción**
Crea una base de datos para gestionar las actividades, membresías y pagos en un club.

#### **Tareas**
1. Crea las tablas:
   - **Miembros**: Incluye `ID`, `nombre`, `edad`, `género`, y `estado` (`ENUM`: activo, inactivo).
   - **Eventos**: Incluye `ID`, `fecha`, `temática`, y `límite_participantes`.
   - **Asistencias**: Relaciona miembros con eventos, indicando si asistieron `en_pareja` (`BOOLEAN`) y el costo del evento.
   - **Pagos**: Incluye `ID`, `ID_miembro`, `fecha_pago`, `monto`, y `método_pago` (`ENUM`: efectivo, tarjeta, transferencia).
   - **Membresías**: Incluye `ID`, `ID_miembro`, `tipo_membresía` (`ENUM`: mensual, anual), `fecha_inicio`, y `fecha_fin`.

2. Inserta al menos **10 registros** en cada tabla.

3. Realiza las siguientes consultas:
   - Lista los nombres y edades de todos los miembros con estado "activo".
   - Muestra los detalles de los eventos con una temática específica.
   - Muestra los pagos realizados con el método "tarjeta".

---

### **Ejercicio 4: Gestión de una Guardería de Patitos**
#### **Descripción**
Diseña una base de datos para gestionar una guardería de patitos con datos detallados de los patitos, cuidadoras, y actividades.

#### **Tareas**
1. Crea las tablas:
   - **Patitos**: Incluye `ID`, `nombre`, `fecha_nacimiento`, `peso` (mínimo 50 gramos), y `color`.
   - **Cuidadoras**: Incluye `ID`, `nombre`, `turno` (`ENUM`: mañana, tarde, noche), `años_experiencia`, y `especialización` (`ENUM`: alimentación, higiene, juegos).
   - **Asignaciones**: Relaciona patitos con cuidadoras, incluyendo `horario_cuidado`, `área`, y `actividad_realizada`.
   - **Reportes**: Incluye `ID`, `ID_asignación`, `fecha_reporte`, `observaciones`, y `estado_patito` (`ENUM`: saludable, bajo_peso, lesionado).
   - **Enfermedades**: Incluye `ID`, `ID_patito`, `tipo_enfermedad`, `fecha_diagnóstico`, y `tratamiento`.

2. Inserta al menos **10 registros** en cada tabla.

3. Realiza las siguientes consultas:
   - Muestra los nombres y colores de los patitos que pesan más de 100 gramos.
   - Lista los nombres y turnos de las cuidadoras con más de 2 años de experiencia.
   - Muestra los reportes generados en una fecha específica.