-- Creación de la Base de Datos EJERCICIO3
DROP DATABASE IF EXISTS EJERCICIO3;
CREATE DATABASE EJERCICIO3;
USE EJERCICIO3;

-- Tabla Usuarios
CREATE TABLE Usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla Libros
CREATE TABLE Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    editorial VARCHAR(100),
    precio DECIMAL(7, 2) NOT NULL,
    stock INT DEFAULT 0
);

-- Tabla Prestamos
CREATE TABLE Prestamos (
    id_prestamo INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_libro INT,
    fecha_prestamo DATETIME NOT NULL,
    fecha_devolucion DATE,
    FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libro)
);

-- Tabla Categorias_Libros
CREATE TABLE Categorias_Libros (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL,
    descripcion TEXT
);

-- Tabla Categorias_Prestamos
CREATE TABLE Categorias_Prestamos (
    id_categoria INT,
    id_prestamo INT,
    PRIMARY KEY (id_categoria, id_prestamo),
    FOREIGN KEY (id_categoria) REFERENCES Categorias_Libros(id_categoria),
    FOREIGN KEY (id_prestamo) REFERENCES Prestamos(id_prestamo)
);
