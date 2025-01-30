-- Borrar la base de datos si ya existe
DROP DATABASE IF EXISTS EmpresaLogistica;

-- Crear la base de datos
CREATE DATABASE EmpresaLogistica;

-- Seleccionar la base de datos
USE EmpresaLogistica;

-- Creación de Tablas

CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) CHECK (salario > 0),
    fecha_contratacion DATE,
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id_departamento) ON DELETE SET NULL
);

CREATE TABLE Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    precio DECIMAL(7, 2),
    stock INT DEFAULT 0,
    fecha_adicion DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE,
    telefono CHAR(10) NOT NULL
);

CREATE TABLE Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_producto INT,
    cantidad INT CHECK (cantidad > 0),
    fecha_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto) ON DELETE CASCADE
);

-- Inserciones de Datos
-- Inserciones en la tabla Departamentos (realizarlas antes de insertar en Empleados)
INSERT INTO Departamentos (nombre_departamento)
VALUES ('Recursos Humanos'),
       ('Finanzas'),
       ('Marketing'),
       ('Logística'),
       ('Ventas');

-- Inserción Simple en la tabla Empleados
INSERT INTO Empleados (nombre, apellido, salario, fecha_contratacion, id_departamento)
VALUES ('Carlos', 'Lopez', 3000, '2024-01-10', 1);
INSERT INTO Empleados (nombre, apellido, salario, fecha_contratacion, id_departamento)
VALUES ('Ana', 'Martinez', 3200, '2023-05-21', 2);
INSERT INTO Empleados (nombre, apellido, salario, fecha_contratacion, id_departamento)
VALUES ('Pedro', 'Gomez', 2900, '2022-11-03', 1);
INSERT INTO Empleados (nombre, apellido, salario, fecha_contratacion, id_departamento)
VALUES ('Lucia', 'Rodriguez', 3400, '2021-08-19', 3);
INSERT INTO Empleados (nombre, apellido, salario, fecha_contratacion, id_departamento)
VALUES ('Mario', 'Fernandez', 3100, '2020-02-15', 2);


-- Inserción en Bloque en la tabla Productos
INSERT INTO Productos (nombre_producto, precio, stock)
VALUES ('Producto1', 19.99, 100),
       ('Producto2', 29.99, 50),
       ('Producto3', 15.50, 200),
       ('Producto4', 12.00, 300),
       ('Producto5', 45.00, 120),
       ('Producto6', 23.45, 80),
       ('Producto7', 5.99, 500),
       ('Producto8', 99.99, 25),
       ('Producto9', 55.75, 60),
       ('Producto10', 2.99, 1000);