
https://classroom.github.com/a/E8OmjGlJ

-- PRUEBA TÉCNICA 4 (PT4): Redes Sociales

-- Creación de Tablas

-- Tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    edad INT,
    ciudad VARCHAR(50),
    fecha_registro DATE
);

-- Tabla de publicaciones
CREATE TABLE publicaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    contenido TEXT,
    fecha_publicacion DATE,
    num_likes INT DEFAULT 0
);

-- Tabla de comentarios
CREATE TABLE comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_publicacion INT NOT NULL,
    id_usuario INT NOT NULL,
    contenido TEXT,
    fecha_comentario DATE
);

-- Tabla de reacciones
CREATE TABLE reacciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_publicacion INT NOT NULL,
    id_usuario INT NOT NULL,
    tipo_reaccion ENUM('like', 'love', 'haha', 'wow', 'sad', 'angry') NOT NULL
);

-- Inserción de Datos en la Tabla de Usuarios
INSERT INTO usuarios (nombre, apellido, email, edad, ciudad, fecha_registro) VALUES
('Juan', 'Pérez', 'juan.perez@gmail.com', 25, 'Madrid', '2023-01-15'),
('María', 'López', 'maria.lopez@yahoo.com', 30, 'Barcelona', '2023-03-10'),
('Carlos', 'Gómez', 'carlos.gomez@hotmail.com', 28, 'Valencia', '2022-11-20'),
('Ana', 'Martínez', 'ana.martinez@gmail.com', 22, 'Sevilla', '2023-06-05'),
('Luis', 'Fernández', 'luis.fernandez@outlook.com', 35, 'Bilbao', '2022-09-12'),
('Lucía', 'Hernández', 'lucia.hernandez@gmail.com', 27, 'Zaragoza', '2023-02-28'),
('Pedro', 'Sánchez', 'pedro.sanchez@gmail.com', 29, 'Madrid', '2023-07-18'),
('Elena', 'García', 'elena.garcia@gmail.com', 24, 'Valencia', '2023-05-15'),
('David', 'Moreno', 'david.moreno@yahoo.com', 32, 'Barcelona', '2023-01-30'),
('Sofía', 'Ruiz', 'sofia.ruiz@gmail.com', 26, 'Madrid', '2023-04-25'),
('Diego', 'Castro', 'diego.castro@gmail.com', 33, 'Granada', '2023-07-22'),
('Andrea', 'Molina', 'andrea.molina@gmail.com', 29, 'Santander', '2023-06-10'),
('Carmen', 'Vidal', 'carmen.vidal@hotmail.com', 31, 'Valladolid', '2023-02-15'),
('Fernando', 'Gil', 'fernando.gil@gmail.com', 35, 'Málaga', '2023-08-01'),
('Natalia', 'Ortiz', 'natalia.ortiz@yahoo.com', 23, 'Murcia', '2023-01-05'),
('Héctor', 'Serrano', 'hector.serrano@gmail.com', 28, 'Alicante', '2023-09-12'),
('Raúl', 'Crespo', 'raul.crespo@gmail.com', 30, 'Logroño', '2023-03-20'),
('Isabel', 'Pardo', 'isabel.pardo@gmail.com', 27, 'Gijón', '2023-04-10'),
('Marta', 'Nuñez', 'marta.nunez@gmail.com', 26, 'Toledo', '2023-05-28'),
('José', 'Benítez', 'jose.benitez@gmail.com', 34, 'Pamplona', '2023-07-15');

-- Inserción de Datos en la Tabla de Publicaciones
INSERT INTO publicaciones (id_usuario, titulo, contenido, fecha_publicacion, num_likes) VALUES
(1, 'Mi primer post', 'Hola a todos, esta es mi primera publicación!', '2023-01-20', 10),
(2, 'Vacaciones', 'Disfrutando de unas increíbles vacaciones en la playa.', '2023-03-15', 25),
(3, 'Nuevo proyecto', 'Acabo de lanzar mi nuevo proyecto, ¡espero que les guste!', '2023-02-10', 30),
(4, 'Cita del día', 'La vida es lo que hacemos de ella.', '2023-06-10', 15),
(5, 'Receta fácil', 'Hoy comparto una receta fácil de hacer en casa.', '2022-09-15', 5),
(6, 'Noticias de tecnología', 'El nuevo teléfono XYZ ya está disponible.', '2023-02-20', 50),
(7, 'Entrenamiento', 'Terminé mi rutina de entrenamiento. ¡Sintiéndome genial!', '2023-07-20', 12),
(8, 'Arte urbano', 'Algunas fotos increíbles de arte urbano en mi ciudad.', '2023-05-20', 22),
(9, 'Música', 'Les comparto mi playlist favorita de este mes.', '2023-01-25', 18),
(10, 'Fotografía', 'Capturas de mi última sesión fotográfica.', '2023-04-30', 35),
(11, 'Libros recomendados', 'Aquí tienes mi lista de libros para leer este año.', '2023-02-14', 20),
(12, 'Cine y series', 'Mis películas favoritas del último mes.', '2023-03-22', 15),
(13, 'Viaje a la montaña', 'Unas fotos increíbles de mi última aventura.', '2023-07-02', 45),
(14, 'Nueva receta', 'Prueba esta deliciosa receta de postres.', '2023-06-30', 10),
(15, 'Meditación', 'Reflexiones sobre mi práctica diaria de meditación.', '2023-05-18', 8),
(16, 'Deportes', '¡Una victoria más para nuestro equipo local!', '2023-04-12', 50),
(17, 'Mascotas adorables', 'Comparte fotos de tus mascotas.', '2023-09-10', 40),
(18, 'Arte digital', 'Mis últimos trabajos de arte digital.', '2023-03-05', 22),
(19, 'Charlas TED', 'Recomiendo esta charla inspiradora.', '2023-02-08', 18),
(20, 'Ejercicio y salud', 'Mis consejos para un estilo de vida saludable.', '2023-01-22', 25);

-- Inserción de Datos en la Tabla de Comentarios
INSERT INTO comentarios (id_publicacion, id_usuario, contenido, fecha_comentario) VALUES
(1, 2, '¡Genial primera publicación!', '2023-01-21'),
(1, 3, 'Bienvenido a la red social!', '2023-01-22'),
(2, 4, 'Hermosas fotos de la playa.', '2023-03-16'),
(3, 5, '¡Éxitos con tu proyecto!', '2023-02-11'),
(4, 6, 'Inspirador, gracias por compartir.', '2023-06-11'),
(5, 7, 'Voy a probar esta receta. Gracias.', '2022-09-16'),
(6, 8, 'Muy interesante, lo tendré en cuenta.', '2023-02-21'),
(7, 9, 'Felicidades por tu esfuerzo.', '2023-07-21'),
(8, 10, '¡Arte impresionante!', '2023-05-21'),
(9, 1, 'Me encanta esta playlist.', '2023-01-26'),
(10, 2, 'Espectaculares fotos, gracias por compartir.', '2023-05-01'),
(11, 3, '¡Gran lista de libros!', '2023-02-15'),
(12, 4, '¿Has visto estas películas también?', '2023-03-23'),
(13, 5, 'Vaya vistas tan impresionantes.', '2023-07-03'),
(14, 6, 'Voy a intentar esta receta hoy mismo.', '2023-07-01'),
(15, 7, 'Gracias por compartir tus reflexiones.', '2023-05-19'),
(16, 8, 'Qué emocionante victoria, felicidades.', '2023-04-13'),
(17, 9, 'Tu mascota es adorable.', '2023-09-11'),
(18, 10, 'Tu arte es increíble, muy talentoso.', '2023-03-06'),
(19, 1, 'Esa charla me cambió la vida.', '2023-02-09');

-- Inserción de Datos en la Tabla de Reacciones
INSERT INTO reacciones (id_publicacion, id_usuario, tipo_reaccion) VALUES
(1, 2, 'like'),
(1, 3, 'love'),
(2, 4, 'like'),
(3, 5, 'wow'),
(4, 6, 'haha'),
(5, 7, 'sad'),
(6, 8, 'angry'),
(7, 9, 'love'),
(8, 10, 'like'),
(9, 1, 'wow'),
(10, 2, 'love'),
(11, 3, 'like'),
(12, 4, 'wow'),
(13, 5, 'love'),
(14, 6, 'haha'),
(15, 7, 'sad'),
(16, 8, 'love'),
(17, 9, 'like'),
(18, 10, 'wow'),
(19, 1, 'like');

-- Preguntas (NO están ordenadas por dificultad)
-- 1. Muestra el nombre completo y la ciudad de todos los usuarios que tienen más de 25 años.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo, ciudad
FROM usuarios
WHERE edad > 25;

-- 2. Obtén los títulos de todas las publicaciones que tienen más de 15 likes.
SELECT titulo
FROM publicaciones
WHERE num_likes > 15;

-- 3. Selecciona el contenido y la fecha de los comentarios realizados antes del 1 de marzo de 2023.
SELECT contenido, fecha_comentario
FROM comentarios
WHERE fecha_comentario < '2023-03-01';

-- 4. Muestra los nombres completos de los usuarios que tienen registrado un correo electrónico con "gmail".
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo
FROM usuarios
WHERE email LIKE '%gmail%';

-- 5. Cuenta el total de publicaciones que tienen más de 10 likes.
SELECT COUNT(*) AS total_publicaciones
FROM publicaciones
WHERE num_likes > 10;

-- 6. Encuentra los usuarios que han comentado más de 2 publicaciones diferentes antes del 1 de marzo de 2023.
SELECT id_usuario, COUNT(DISTINCT id_publicacion) AS publicaciones_comentadas
FROM comentarios
WHERE fecha_comentario < '2023-03-01'
GROUP BY id_usuario
HAVING COUNT(DISTINCT id_publicacion) > 2;

-- 7. Lista todas las ciudades únicas donde residen los usuarios.
SELECT DISTINCT ciudad 
FROM usuarios;

-- 8. Muestra los tipos de reacciones únicos en la tabla `reacciones`.
SELECT DISTINCT tipo_reaccion 
FROM reacciones;

-- 9. Muestra los títulos de las publicaciones y el número de likes de las publicaciones que tienen exactamente 10 likes.
SELECT titulo, num_likes
FROM publicaciones
WHERE num_likes = 10;

-- 10. Encuentra las publicaciones realizadas entre enero y abril de 2023.
SELECT * 
FROM publicaciones
WHERE fecha_publicacion BETWEEN '2023-01-01' AND '2023-04-30';

-- 11. Calcula el promedio de edad de los usuarios.
SELECT AVG(edad) AS promedio_edad 
FROM usuarios;

-- 12. Obtén el número total de publicaciones realizadas.
SELECT COUNT(*) AS total_publicaciones 
FROM publicaciones;

-- 13. Muestra el número total de likes por usuario, agrupando por `id_usuario`.
SELECT id_usuario, SUM(num_likes) AS total_likes 
FROM publicaciones 
GROUP BY id_usuario;

-- 14. Muestra los 5 usuarios más recientes ordenados por fecha de registro.
SELECT * 
FROM usuarios
ORDER BY fecha_registro DESC 
LIMIT 5;

-- 15. Muestra las 3 publicaciones con más likes.
SELECT * 
FROM publicaciones
ORDER BY num_likes DESC 
LIMIT 3;

-- 16. Concatenar el nombre y apellido de los usuarios en una columna llamada `nombre_completo`.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo 
FROM usuarios;

-- 17. Reemplaza la palabra "arte" por "creatividad" en los títulos de las publicaciones.
SELECT REPLACE(titulo, 'arte', 'creatividad') AS titulo_modificado 
FROM publicaciones;

-- 18. Calcula el número de días desde que cada usuario se registró.
SELECT nombre, DATEDIFF(CURDATE(), fecha_registro) AS dias_registrado 
FROM usuarios;

-- 19. Muestra las publicaciones cuyo número de likes es superior al promedio de likes en la tabla.
SELECT * 
FROM publicaciones
WHERE num_likes > (SELECT AVG(num_likes) FROM publicaciones);

-- 20. Muestra los usuarios que tienen más de una reacción en publicaciones.
SELECT id_usuario, COUNT(*) AS total_reacciones 
FROM reacciones 
GROUP BY id_usuario
HAVING COUNT(*) > 1;
