
-- Ejercicio 2: Gestión de Elecciones en Villabajo

CREATE TABLE Candidatos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    partido_politico VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE Votantes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    ha_votado BOOLEAN DEFAULT FALSE
);

CREATE TABLE Votos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ID_votante INT,
    ID_candidato INT,
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (ID_votante) REFERENCES Votantes(ID),
    FOREIGN KEY (ID_candidato) REFERENCES Candidatos(ID)
);

-- Inserciones
INSERT INTO Candidatos (nombre, partido_politico, cargo) VALUES
('Ana Pérez', 'Partido A', 'Alcaldesa'),
('Juan López', 'Partido B', 'Concejal'),
('Laura Martín', 'Partido C', 'Tesorera');

INSERT INTO Votantes (nombre, edad, ha_votado) VALUES
('Carlos Ramírez', 25, TRUE),
('Marta Sánchez', 19, FALSE),
('Luis Torres', 32, TRUE);

INSERT INTO Votos (ID_votante, ID_candidato) VALUES
(1, 1),
(2, 2),
(3, 1);

-- Consultas
SELECT nombre FROM Votantes WHERE edad > 18;
SELECT * FROM Candidatos WHERE partido_politico = 'Partido A';
SELECT fecha_hora FROM Votos WHERE ID_votante = 1;
