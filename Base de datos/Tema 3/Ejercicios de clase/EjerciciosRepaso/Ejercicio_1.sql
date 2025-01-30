DROP DATABASE IF EXISTS Repaso1;
CREATE DATABASE Repaso1;
USE Repaso1;

-- Creación de tablas
CREATE TABLE Jugador (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apodo VARCHAR(30),
    edad INT,
    nivel_experiencia ENUM('principiante', 'intermedio', 'avanzado')
);

CREATE TABLE Partido (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    ubicacion VARCHAR(50),
    resultado VARCHAR(30)
);

CREATE TABLE Participacion (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_jugador INT,
    ID_partido INT,
    rol ENUM('titular', 'suplente'),
    puntos_obtenidos INT,
    FOREIGN KEY (ID_jugador) REFERENCES Jugador(ID),
    FOREIGN KEY (ID_partido) REFERENCES Partido(ID)
);


-- Inserciones de datos
-- Jugador
INSERT INTO Jugador (nombre, apodo, edad, nivel_experiencia) VALUES
('Juan Pérez', 'El Pro', 25, 'avanzado'),
('Luis López', 'Novato', 18, 'principiante'),
('Ana Gómez', 'La Reina', 30, 'intermedio'),
('Carlos Sánchez', 'El Rápido', 22, 'avanzado'),
('Laura Martínez', 'La Precisa', 28, 'intermedio'),
('Pedro Torres', 'El Fuerte', 35, 'avanzado'),
('Elena Ruiz', 'La Estratega', 27, 'intermedio'),
('María Jiménez', 'La Técnica', 29, 'avanzado'),
('Alberto Díaz', 'El Jugón', 21, 'principiante'),
('Marta García', 'La Novata', 19, 'principiante');

-- Partido
INSERT INTO Partido (fecha, ubicacion, resultado) VALUES
('2024-01-15', 'Parque Central', 'Ganado'),
('2024-01-20', 'Club Deportivo', 'Perdido'),
('2024-02-10', 'Estadio Sur', 'Empate'),
('2024-02-15', 'Plaza Mayor', 'Ganado'),
('2024-03-01', 'Polideportivo', 'Perdido');

-- Participacion
INSERT INTO Participacion (ID_jugador, ID_partido, rol, puntos_obtenidos) VALUES
(1, 1, 'titular', 12),
(2, 1, 'suplente', 5),
(3, 2, 'titular', 8),
(4, 2, 'titular', 15),
(5, 3, 'suplente', 6),
(6, 3, 'titular', 10),
(7, 4, 'titular', 18),
(8, 4, 'suplente', 7),
(9, 5, 'titular', 9),
(10, 5, 'suplente', 4);



-- Consultas
-- Jugador con más de 10 puntos
-- Lo vemos en el segundo trimestre

SELECT Jugador.nombre 
FROM Jugador 
JOIN Participacion ON Jugador.ID = Participacion.ID_jugador 
GROUP BY Jugador.nombre 
HAVING SUM(Participacion.puntos_obtenidos) > 10;

-- Partido en una ubicación específica
SELECT * FROM Partido WHERE ubicacion = 'Parque Central';

-- Participacion como titular
SELECT ID_jugador,ID_partido FROM Participacion WHERE rol = 'titular';
