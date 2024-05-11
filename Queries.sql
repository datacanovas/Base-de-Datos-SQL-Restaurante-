# Análisis de ventas

# ¿Cuál es el plato más vendido en el restaurante?
 
SELECT p.Nombre AS Plato, COUNT(*) AS Ventas
FROM Detalles_pedido dp
JOIN Platos p ON dp.ID_plato = p.ID_plato
GROUP BY dp.ID_plato
ORDER BY Ventas DESC
LIMIT 1;


-- Total de ingresos por categoría de plato en el último mes

SELECT p.Categoria, SUM(dp.Cantidad * dp.Precio_unitario) AS Ingresos
FROM Detalles_pedido dp
JOIN Platos p ON dp.ID_plato = p.ID_plato
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
WHERE pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY p.Categoria;

-- Día de la semana con más ventas
SELECT DAYNAME(pe.Fecha) AS Dia_semana, COUNT(*) AS Ventas
FROM Pedidos pe
GROUP BY Dia_semana
ORDER BY Ventas DESC
LIMIT 1;

-- Menú que ha generado más ingresos durante el último año
SELECT m.Nombre AS Menu, SUM(dp.Subtotal) AS Ingresos_generados
FROM Detalles_pedido dp
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
JOIN Platos_en_menu pm ON dp.ID_plato = pm.ID_plato
JOIN Menus m ON pm.ID_menu = m.ID_menu
WHERE pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR)
GROUP BY m.Nombre
ORDER BY Ingresos_generados DESC
LIMIT 1;


# 2. Desempeño del personal

-- Cantidad de pedidos atendidos por cada empleado durante el último mes
SELECT e.Nombre, COUNT(*) AS Pedidos_atendidos
FROM Pedidos pe
JOIN Empleados e ON pe.ID_empleado = e.ID_empleado
WHERE pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY e.Nombre;

-- Empleado con clientes de mayor gasto promedio
SELECT e.Nombre, AVG(dp.Subtotal) AS Gasto_promedio
FROM Detalles_pedido dp
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
JOIN Empleados e ON pe.ID_empleado = e.ID_empleado
GROUP BY e.Nombre
ORDER BY Gasto_promedio DESC
LIMIT 1;

-- Empleado que ha generado más ingresos a través de sus ventas durante el último trimestre
SELECT e.Nombre, SUM(dp.Subtotal) AS Ingresos_generados
FROM Detalles_pedido dp
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
JOIN Empleados e ON pe.ID_empleado = e.ID_empleado
WHERE pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 3 MONTH)
GROUP BY e.Nombre
ORDER BY Ingresos_generados DESC
LIMIT 1;

# 3 Preferencias de los clientes:

-- Platos más populares entre los clientes que visitan el restaurante regularmente
SELECT p.Nombre AS Plato, COUNT(*) AS Veces_pedido
FROM Detalles_pedido dp
JOIN Platos p ON dp.ID_plato = p.ID_plato
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
WHERE pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)  
GROUP BY dp.ID_plato
ORDER BY Veces_pedido DESC
LIMIT 5;

-- Cantidad de clientes que han realizado pedidos de platos vegetarianos en el último mes

SELECT COUNT(DISTINCT pe.ID_cliente) AS Clientes_vegetarianos
FROM Detalles_pedido dp
JOIN Platos p ON dp.ID_plato = p.ID_plato
JOIN Pedidos pe ON dp.ID_pedido = pe.ID_pedido
WHERE p.Categoria = 'Vegetariana' AND pe.Fecha >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

