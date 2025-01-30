-- Crear base de datos si no existe
DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda;
USE tienda;

-- Crear tablas de ejemplo
CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100)
);

CREATE TABLE pedido (
    id INT PRIMARY KEY,
    id_cliente INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2)
);

CREATE TABLE detalle_pedido (
    id INT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id),
    FOREIGN KEY (id_producto) REFERENCES producto(id)
);

-- Insertar datos en la tabla cliente
INSERT INTO cliente (id, nombre, email) VALUES
(1, 'Juan Perez', 'juan.perez@example.com'),
(2, 'Ana Gomez', 'ana.gomez@example.com'),
(3, 'Luis Martinez', 'luis.martinez@example.com'),
(4, 'Maria Lopez', 'maria.lopez@example.com');

-- Insertar datos en la tabla pedido
INSERT INTO pedido (id, id_cliente, fecha, total) VALUES
(1, 1, '2025-01-01', 100.50),
(2, 1, '2025-01-10', 50.00),
(3, 2, '2025-01-15', 75.25),
(4, 3, '2025-01-20', 200.00);

-- Insertar datos en la tabla producto
INSERT INTO producto (id, nombre, precio) VALUES
(1, 'Laptop', 800.00),
(2, 'Mouse', 20.00),
(3, 'Teclado', 50.00),
(4, 'Monitor', 150.00);

-- Insertar datos en la tabla detalle_pedido
INSERT INTO detalle_pedido (id, id_pedido, id_producto, cantidad) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 2, 3, 1),
(4, 3, 4, 2),
(5, 4, 1, 1),
(6, 4, 3, 3);

-- Ejemplo 1: INNER JOIN
-- Obtener nombres de clientes y los detalles de sus pedidos
SELECT cliente.nombre AS cliente, pedido.fecha AS fecha_pedido, pedido.total AS total_pedido
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente;

-- Ejemplo 2: INNER JOIN con detalles de productos
-- Obtener los productos en cada pedido
SELECT pedido.id AS pedido_id, producto.nombre AS producto, detalle_pedido.cantidad
FROM pedido
INNER JOIN detalle_pedido ON pedido.id = detalle_pedido.id_pedido
INNER JOIN producto ON detalle_pedido.id_producto = producto.id;

-- Ejemplo 3: INNER JOIN con filtro
-- Obtener clientes que han realizado pedidos mayores a 100
SELECT cliente.nombre AS cliente, pedido.total AS total_pedido
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente
WHERE pedido.total > 100;

-- Ejemplo 4: INNER JOIN con funciones de agregación
-- Obtener el total gastado por cada cliente
SELECT cliente.nombre AS cliente, SUM(pedido.total) AS total_gastado
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente
GROUP BY cliente.id;

-- Ejemplo 5: INNER JOIN con múltiples uniones
-- Obtener el detalle completo de cada pedido con información del cliente y productos
SELECT cliente.nombre AS cliente, pedido.id AS pedido_id, producto.nombre AS producto, detalle_pedido.cantidad, producto.precio
FROM cliente
INNER JOIN pedido ON cliente.id = pedido.id_cliente
INNER JOIN detalle_pedido ON pedido.id = detalle_pedido.id_pedido
INNER JOIN producto ON detalle_pedido.id_producto = producto.id;
