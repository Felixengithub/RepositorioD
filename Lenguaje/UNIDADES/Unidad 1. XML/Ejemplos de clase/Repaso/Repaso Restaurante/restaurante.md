# Ejercicio de validación XML con XSD (Restaurante STEM)

### Enunciado:

Vas a crear un archivo XML que describa la información de las mesas, reservas, menús y pedidos de un restaurante especializado en ciencia, tecnología, ingeniería y matemáticas (STEM). El XML contendrá información sobre las mesas del restaurante, las reservas, los menús personalizados para cada reserva, y los pedidos realizados, con restricciones específicas que deberán ser validadas mediante un archivo XSD.

### Parte 1: Estructura XML

Debes crear un archivo XML que incluya los siguientes elementos:

1. **numeroMesa**: El número de la mesa, que debe ser un número de dos dígitos (ejemplo: "01").
2. **capacidadMesa**: La capacidad máxima de la mesa (por ejemplo: 2, 4, 6 personas).
3. **estadoMesa**: El estado de la mesa, que puede ser `Libre` o `Reservada`.
4. **idReserva**: El identificador único de la reserva, que debe seguir el patrón `RESERVA-999` donde "999" son dígitos.
5. **nombreCliente**: El nombre del cliente que hizo la reserva.
6. **fechaReserva**: La fecha en la que se realizó la reserva, en formato `YYYY-MM-DD`.
7. **horaReserva**: La hora de la reserva, en formato `HH:MM`.
8. **menuPersonalizado**: Un menú personalizado para la reserva que incluye platos y bebidas.
9. **pedidos**: Los pedidos realizados durante la reserva.
10. **totalPedido**: El total del pedido, que debe ser un número decimal positivo.

### Parte 2: Validación mediante XSD

Debes usar un archivo XSD que imponga las siguientes restricciones:

1. El número de la mesa `numeroMesa` debe ser un número de dos dígitos.
2. La capacidad de la mesa `capacidadMesa` debe ser un número entero positivo mayor que 0.
3. El estado de la mesa `estadoMesa` debe ser `Libre` o `Reservada`.
4. El identificador de reserva `idReserva` debe seguir el patrón `RESERVA-999`.
5. Las fechas de reserva `fechaReserva` deben seguir el formato `YYYY-MM-DD`.
6. Las horas de reserva `horaReserva` deben seguir el formato `HH:MM`.
7. El menú personalizado debe incluir al menos un plato y una bebida.
8. El total del pedido debe ser un número positivo.
