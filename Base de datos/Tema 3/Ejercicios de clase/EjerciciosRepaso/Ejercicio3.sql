
-- Ejercicio 3: Gestión de un Club de Swingers

CREATE TABLE Miembros (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    genero VARCHAR(10),
    estado ENUM('activo', 'inactivo') NOT NULL
);

CREATE TABLE Eventos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL,
    tematica VARCHAR(100),
    limite_participantes INT
);

CREATE TABLE Asistencias (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_miembro INT,
    ID_evento INT,
    en_pareja BOOLEAN DEFAULT FALSE,
    costo DECIMAL(10, 2),
    FOREIGN KEY (ID_miembro) REFERENCES Miembros(ID),
    FOREIGN KEY (ID_evento) REFERENCES Eventos(ID)
);

CREATE TABLE Pagos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_miembro INT,
    fecha_pago DATE NOT NULL,
    monto DECIMAL(10, 2),
    metodo_pago ENUM('efectivo', 'tarjeta', 'transferencia'),
    FOREIGN KEY (ID_miembro) REFERENCES Miembros(ID)
);

-- Inserciones
INSERT INTO Miembros (nombre, edad, genero, estado) VALUES
('Pedro López', 30, 'M', 'activo'),
('Ana Gómez', 25, 'F', 'activo'),
('Luis Torres', 35, 'M', 'inactivo');

INSERT INTO Eventos (fecha, tematica, limite_participantes) VALUES
('2024-11-01', 'Fiesta Retro', 50),
('2024-12-01', 'Fiesta de Navidad', 100);

INSERT INTO Asistencias (ID_miembro, ID_evento, en_pareja, costo) VALUES
(1, 1, TRUE, 20.00),
(2, 2, FALSE, 30.00);

INSERT INTO Pagos (ID_miembro, fecha_pago, monto, metodo_pago) VALUES
(1, '2024-11-01', 50.00, 'tarjeta'),
(2, '2024-12-01', 30.00, 'efectivo');

-- Consultas
SELECT nombre, edad FROM Miembros WHERE estado = 'activo';
SELECT * FROM Eventos WHERE tematica = 'Fiesta Retro';
SELECT * FROM Pagos WHERE metodo_pago = 'tarjeta';
