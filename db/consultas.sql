-- 1. Productos con el nombre de su categoría, ordenados por nombre (JOIN, ORDER BY)
SELECT p.nombre AS producto, c.nombre AS categoria FROM productos p JOIN categorias c ON p.categoria_id = c.id ORDER BY p.nombre ASC;

-- 2. Productos con menos de 5 unidades en stock (WHERE)
SELECT nombre, stock FROM productos WHERE stock < 5;

-- 3. Precio promedio por categoría (GROUP BY, AVG)
SELECT c.nombre AS categoria, AVG(p.precio) AS precio_promedio FROM productos p JOIN categorias c ON p.categoria_id = c.id GROUP BY c.nombre;

-- 4. Pedidos de un cliente con su fecha y estado (JOIN, WHERE)
SELECT cl.nombre AS cliente, pe.fecha, pe.estado FROM pedidos pe JOIN clientes cl ON pe.cliente_id = cl.id WHERE cl.nombre = 'Ash Ketchum';

-- 5. Total en dinero de cada pedido (SUM, GROUP BY)
SELECT pedido_id, SUM(cantidad * precio_unitario) AS total_dinero FROM detalle_pedido GROUP BY pedido_id;

-- 6. Clientes con más de 2 pedidos (GROUP BY, HAVING)
SELECT cl.nombre AS cliente, COUNT(pe.id) AS cantidad_pedidos FROM clientes cl JOIN pedidos pe ON cl.id = pe.cliente_id GROUP BY cl.id, cl.nombre HAVING COUNT(pe.id) > 2;

-- 7. Eliminar un cliente sin pedidos (DELETE)
DELETE FROM clientes WHERE id NOT IN (SELECT cliente_id FROM pedidos);