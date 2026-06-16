USE AgroConecta;

-- ==========================================
-- DATOS TRANSACCIONALES
-- TABLA: PEDIDO
-- ==========================================

INSERT INTO pedido (id_cliente, fecha_hora, estado) VALUES
(1, '2026-06-01 09:00:00', 'Entregado'),
(2, '2026-06-02 10:30:00', 'Entregado'),
(3, '2026-06-03 08:15:00', 'Entregado'),
(4, '2026-06-05 14:00:00', 'Entregado'),
(5, '2026-06-06 11:45:00', 'Entregado'),
(6, '2026-06-08 17:20:00', 'Entregado'),
(7, '2026-06-10 07:00:00', 'Entregado'),
(8, '2026-06-12 12:00:00', 'En ruta'),
(9, '2026-06-13 15:30:00', 'En ruta'),
(10, '2026-06-14 09:10:00', 'En preparación'),
(11, '2026-06-15 11:00:00', 'En preparación'),
(12, '2026-06-15 16:45:00', 'Recibido'),
(13, '2026-06-16 08:00:00', 'Recibido'),
(14, '2026-06-16 10:30:00', 'Recibido'),
(15, '2026-06-16 13:15:00', 'Recibido');

-- ==========================================
-- DATOS TRANSACCIONALES
-- TABLA: DETALLE_PEDIDO
-- ==========================================

INSERT INTO detalle_pedido (
    id_pedido,
    id_proveedor,
    id_producto,
    cantidad,
    precio_unitario
) VALUES
(1, 1, 1, 2.50, 3.50),
(1, 2, 2, 3.00, 4.00),

(2, 2, 1, 1.50, 3.20),
(2, 3, 3, 2.00, 5.50),

(3, 4, 4, 4.00, 1.50),

(4, 5, 5, 1.50, 2.80),
(4, 14, 6, 12.00, 0.40),

(5, 3, 7, 1.00, 7.20),
(5, 8, 8, 2.50, 3.00),

(6, 1, 9, 3.00, 4.20),

(7, 14, 10, 2.00, 6.00),
(7, 6, 11, 1.50, 4.50),

(8, 12, 12, 2.00, 2.00),

(9, 15, 13, 1.50, 8.50),
(9, 1, 1, 2.00, 3.50),

(10, 2, 2, 4.00, 4.00),
(10, 4, 4, 3.00, 1.50),

(11, 5, 5, 2.00, 2.80),

(12, 14, 6, 6.00, 0.40),
(12, 3, 7, 2.00, 7.20),

(13, 8, 8, 5.00, 3.00),

(14, 1, 9, 1.50, 4.20),
(14, 14, 10, 1.00, 6.00),

(15, 6, 11, 2.00, 4.50),
(15, 12, 12, 1.00, 2.00);

-- ==========================================
-- CONSULTAS DE VERIFICACIÓN
-- ==========================================

SELECT * FROM pedido;

SELECT * FROM detalle_pedido;

-- ==========================================
-- REPORTE 1
-- PEDIDOS REALIZADOS POR CLIENTES
-- ==========================================

SELECT
    p.id_pedido,
    CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
    p.fecha_hora,
    p.estado
FROM pedido p
INNER JOIN cliente c
ON p.id_cliente = c.id_cliente
ORDER BY p.fecha_hora DESC;

-- ==========================================
-- REPORTE 2
-- PRODUCTOS SOLICITADOS EN PEDIDOS
-- ==========================================

SELECT
    dp.id_detalle,
    pr.nombre_producto,
    dp.cantidad,
    dp.precio_unitario
FROM detalle_pedido dp
INNER JOIN producto pr
ON dp.id_producto = pr.id_producto;

-- ==========================================
-- REPORTE 3
-- PRODUCTOS OFRECIDOS POR PROVEEDORES
-- ==========================================

SELECT
    pv.nombre_fundo,
    pr.nombre_producto,
    pp.precio
FROM proveedor_producto pp
INNER JOIN proveedor pv
ON pp.id_proveedor = pv.id_proveedor
INNER JOIN producto pr
ON pp.id_producto = pr.id_producto
ORDER BY pv.nombre_fundo;