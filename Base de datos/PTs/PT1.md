
[Enlace Repositorio Examen](https://classroom.github.com/a/ySEEi07L)

# Examen - Base de Datos Hospital "Salud y Vida"


El hospital "Salud y Vida" desea crear una base de datos para gestionar la información de pacientes, doctores, tratamientos y facturación. Se requiere que el sistema cumpla con las siguientes especificaciones:

- Cada **paciente** tiene un **ID de paciente**, un **nombre completo**, su **fecha de nacimiento** y el **seguro médico**.
  - Además, se desea conocer la **edad** de cada paciente, que puede calcularse a partir de la fecha de nacimiento.
  - Un paciente puede ser tratado por varios **doctores**, pero siempre tiene un **doctor** responsable de su tratamiento general.

- Los **doctores** tienen un **ID de doctor**, un **nombre completo**, una **especialidad médica** y un **número de colegiado**.
  - Existen dos tipos de doctores: **doctores de planta** y **especialistas externos**.
  - Los **doctores de planta** tienen asignado un **turno de trabajo** (día o noche), la **planta en la que trabajan**.
  - Los **especialistas externos** tienen un **número de consultas semanales**, un **costo por consulta** y un **numero total de consultas realizadas**.
  - Un doctor puede estar encargado de varios pacientes y estar involucrado en varios tratamientos.

- Los **tratamientos** administrados a los pacientes tienen un **código de tratamiento**, una **descripción**, una **fecha de inicio** y una **fecha de finalización**.
  - Un tratamiento puede incluir varios **medicamentos**. De cada medicamento se registra el **nombre**, la **cantidad utilizada** y la **frecuencia de administración**.
  - Los medicamentos tienen un **código de medicamento**, un **fabricante**,  una **fecha de caducidad** y una **marca** .

- El hospital emite **facturas** para los pacientes, las cuales incluyen detalles sobre los tratamientos y los doctores responsables.
  - Cada factura tiene un **número de factura**, la **fecha de emisión** y el **total a pagar**, calculado a partir de los tratamientos recibidos y las consultas con los doctores.
  - Un paciente puede recibir varias facturas a lo largo del tiempo, pero cada factura está asociada a un único paciente.

- Un paciente puede recibir múltiples **tratamientos**, y un doctor puede administrar tratamientos a varios pacientes.
- Los tratamientos pueden involucrar varios **doctores** y **pacientes**.
- Las facturas reflejan los tratamientos administrados y los doctores responsables.
