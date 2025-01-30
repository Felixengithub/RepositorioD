# Ejercicio de validación XML con XSD (Hotel STEM)

### Enunciado:

Vas a crear un archivo XML que describa la información de las habitaciones y reservas de un hotel especializado en ciencia, tecnología, ingeniería y matemáticas (STEM). El XML contendrá información sobre las habitaciones, los clientes y las reservas, con ciertas restricciones que deberán ser validadas mediante un archivo XSD.

### Parte 1: Estructura XML

Debes crear un archivo XML que incluya los siguientes elementos para cada habitación y reserva en el hotel:

1. **numeroHabitacion**: El número de la habitación, que debe ser un número de tres dígitos (ejemplo: "101").
2. **tipoHabitacion**: El tipo de habitación, que debe ser uno de los siguientes valores: `Individual`, `Doble`, `Suite`.
3. **precioPorNoche**: El precio por noche de la habitación, que debe ser un número decimal positivo mayor que 0.
4. **disponibilidad**: La disponibilidad de la habitación, que puede ser `Disponible` o `Ocupada`.
5. **idHuesped**: El identificador único del huésped, que sigue el patrón `HUESPED-9999` donde "9999" son dígitos.
6. **nombreHuesped**: El nombre del huésped.
7. **fechaEntrada**: La fecha de entrada, en el formato `YYYY-MM-DD`.
8. **fechaSalida**: La fecha de salida, en el formato `YYYY-MM-DD`.

### Parte 2: Validación mediante XSD

Para validar el archivo XML, debes usar un archivo XSD que imponga las siguientes restricciones:

1. El número de habitación `numeroHabitacion` debe ser un número de tres dígitos.
2. El tipo de habitación `tipoHabitacion` debe ser uno de los siguientes valores: `Individual`, `Doble`, `Suite`.
3. El precio por noche `precioPorNoche` debe ser un número positivo mayor que 0.
4. La disponibilidad `disponibilidad` debe ser `Disponible` o `Ocupada`.
5. El identificador de huésped `idHuesped` debe seguir el patrón `HUESPED-9999`.
6. Las fechas de entrada y salida deben seguir el formato `YYYY-MM-DD`.
7. Debe de haber al menos 2 habitaciones y 2 reservas para que el hotel esté abierto.

### Parte 3: Validación del XSD

Debes asegurarte de que el archivo XML sea validado correctamente por el archivo XSD que impone las restricciones mencionadas. Sigue estos pasos:

1. **Vinculación del archivo XSD**: Asegúrate de que el archivo XML tenga una referencia correcta al archivo XSD mediante la instrucción `xsi:noNamespaceSchemaLocation`. Esta referencia debe apuntar a la ubicación del archivo XSD en tu sistema de archivos.

   ```xml
   <hotel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:noNamespaceSchemaLocation="hotel.xsd">

