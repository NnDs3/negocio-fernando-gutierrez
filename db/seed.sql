INSERT INTO categorias (nombre) VALUES ('Pokémon TCG'), ('Videojuegos'), ('Accesorios');

INSERT INTO productos (nombre, categoria_id, precio, stock) VALUES 
('Sobre Escarlata', 1, 5.50, 50), ('Sobre Espada', 1, 4.50, 30), ('Sobre Sol y Luna', 1, 8.00, 4), ('Caja Elite', 1, 40.00, 10),
('Pokémon Escarlata', 2, 60.00, 15), ('Pokémon Púrpura', 2, 60.00, 12), ('Leyendas Arceus', 2, 55.00, 5), ('Pokémon Espada', 2, 50.00, 3),
('Playmat Pikachu', 3, 25.00, 20), ('Fundas Charizard', 3, 10.00, 40), ('Mazo inicial', 3, 15.00, 8), ('Dados oficiales', 3, 6.00, 2);

INSERT INTO clientes (nombre, telefono, email) VALUES 
('Ash Ketchum', '77712345', 'ash@paleta.com'), ('Misty', '77754321', 'misty@agua.com'), 
('Brock', '77798765', 'brock@roca.com'), ('Gary Oak', '77711111', 'gary@oak.com'), 
('Tracey', '77722222', 'tracey@bocetos.com'), ('Profesor Oak', '77733333', 'oak@lab.com');

INSERT INTO pedidos (cliente_id, fecha, estado) VALUES 
(1, '2026-10-01 10:00:00', 'completado'), (1, '2026-10-05 11:00:00', 'completado'), (1, '2026-10-10 12:00:00', 'pendiente'),
(2, '2026-10-02 14:00:00', 'completado'), (2, '2026-10-06 15:00:00', 'enviado'),
(3, '2026-10-03 16:00:00', 'completado'),
(4, '2026-10-04 17:00:00', 'completado'), (4, '2026-10-08 18:00:00', 'completado'),
(5, '2026-10-07 09:00:00', 'cancelado'),
(6, '2026-10-09 10:00:00', 'completado');

INSERT INTO detalle_pedido (pedido_id, producto_id, cantidad, precio_unitario) VALUES 
(1, 1, 2, 5.50), (1, 5, 1, 60.00), (2, 9, 1, 25.00), (2, 10, 2, 10.00), (3, 3, 1, 8.00), 
(3, 6, 1, 60.00), (3, 11, 1, 15.00), (4, 2, 3, 4.50), (4, 12, 4, 6.00), (5, 7, 1, 55.00), 
(5, 8, 1, 50.00), (6, 4, 1, 40.00), (6, 1, 5, 5.50), (6, 2, 5, 4.50), (6, 9, 2, 25.00),
(7, 5, 1, 60.00), (7, 6, 1, 60.00), (8, 10, 3, 10.00), (8, 11, 2, 15.00), (9, 1, 1, 5.50), 
(9, 3, 1, 8.00), (10, 4, 2, 40.00), (10, 12, 5, 6.00), (10, 9, 1, 25.00), (10, 10, 1, 10.00);