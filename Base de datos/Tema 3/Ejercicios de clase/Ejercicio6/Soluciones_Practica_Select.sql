
-- Ejercicio 1: Listado de productos baratos
SELECT * FROM Productos
WHERE Precio < 100
ORDER BY Precio ASC;

-- Ejercicio 2: Clientes de una ciudad específica
SELECT * FROM Clientes
WHERE Ciudad = 'Madrid'
ORDER BY Edad DESC;

-- Ejercicio 3: Pedidos recientes


-- Ejercicio 4: Stock bajo
SELECT * FROM Productos
WHERE Stock < 10
ORDER BY Categoria, Precio ASC;

-- Ejercicio 5: Clientes jóvenes
SELECT Nombre FROM Clientes
WHERE Edad < 30
ORDER BY Nombre ASC;

-- Ejercicio 6: Pedidos de un cliente específico


-- Ejercicio 7: Productos de una categoría
SELECT * FROM Productos
WHERE Categoria = 'Electrónica'
ORDER BY Nombre ASC;

-- Ejercicio 8: Clientes de varias ciudades


-- Ejercicio 9: Productos más caros


-- Ejercicio 10: Cantidad total de pedidos por cliente

