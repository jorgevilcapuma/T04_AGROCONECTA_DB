USE AgroConecta;

-- =====================================================
-- REPORTE 1
-- CAPACIDAD Y COBERTURA DE PROVEEDORES
-- =====================================================

SELECT
    id_proveedor,
    nombre_fundo AS "Fundo",
    nombre_agricultor AS "Agricultor",
    ruc AS "RUC",
    telefono AS "Teléfono",
    region AS "Región"
FROM proveedor
ORDER BY nombre_fundo ASC;

-- =====================================================
-- REPORTE 2
-- CATÁLOGO DE PRODUCTOS Y PRECIOS OFERTADOS
-- =====================================================

SELECT
    p.nombre_producto AS "Producto",
    c.nombre_categoria AS "Categoría",
    p.unidad_medida AS "Unidad",
    pr.nombre_fundo AS "Proveedor",
    pp.precio AS "Precio"
FROM proveedor_producto pp
INNER JOIN producto p
    ON pp.id_producto = p.id_producto
INNER JOIN categoria c
    ON p.id_categoria = c.id_categoria
INNER JOIN proveedor pr
    ON pp.id_proveedor = pr.id_proveedor
ORDER BY c.nombre_categoria, p.nombre_producto;

-- =====================================================
-- REPORTE 3
-- CLIENTES Y DIRECCIONES DE ENTREGA
-- =====================================================

SELECT
    CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
    c.dni,
    c.celular,
    d.distrito,
    CONCAT(d.calle, ' ', d.numero) AS direccion,
    d.referencia
FROM cliente c
INNER JOIN direccion d
    ON c.id_cliente = d.id_cliente
ORDER BY d.distrito;

-- =====================================================
-- REPORTE 4
-- PEDIDOS REALIZADOS POR CLIENTES
-- =====================================================

SELECT
    p.id_pedido,
    CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
    p.fecha_hora,
    p.estado
FROM pedido p
INNER JOIN cliente c
    ON p.id_cliente = c.id_cliente
ORDER BY p.fecha_hora DESC;

-- =====================================================
-- REPORTE 5
-- DETALLE DE PRODUCTOS VENDIDOS
-- =====================================================

SELECT
    dp.id_detalle,
    dp.id_pedido,
    pr.nombre_producto,
    dp.cantidad,
    dp.precio_unitario,
    (dp.cantidad * dp.precio_unitario) AS subtotal
FROM detalle_pedido dp
INNER JOIN producto pr
    ON dp.id_producto = pr.id_producto
ORDER BY dp.id_pedido;

-- =====================================================
-- REPORTE 6
-- TOTAL DE VENTAS POR PEDIDO
-- =====================================================

SELECT
    p.id_pedido,
    CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
    SUM(dp.cantidad * dp.precio_unitario) AS total_pedido
FROM pedido p
INNER JOIN cliente c
    ON p.id_cliente = c.id_cliente
INNER JOIN detalle_pedido dp
    ON p.id_pedido = dp.id_pedido
GROUP BY p.id_pedido, cliente
ORDER BY total_pedido DESC;

-- =====================================================
-- REPORTE 7
-- PRODUCTOS MÁS SOLICITADOS
-- =====================================================

SELECT
    pr.nombre_producto,
    SUM(dp.cantidad) AS cantidad_total
FROM detalle_pedido dp
INNER JOIN producto pr
    ON dp.id_producto = pr.id_producto
GROUP BY pr.nombre_producto
ORDER BY cantidad_total DESC;

-- =====================================================
-- REPORTE 8
-- PROVEEDORES CON MAYOR CANTIDAD DE PRODUCTOS
-- =====================================================

SELECT
    pv.nombre_fundo,
    COUNT(pp.id_producto) AS productos_ofrecidos
FROM proveedor pv
INNER JOIN proveedor_producto pp
    ON pv.id_proveedor = pp.id_proveedor
GROUP BY pv.nombre_fundo
ORDER BY productos_ofrecidos DESC;

-- =====================================================
-- REPORTE 9
-- PEDIDOS SEGÚN ESTADO
-- =====================================================

SELECT
    estado,
    COUNT(*) AS cantidad_pedidos
FROM pedido
GROUP BY estado;

-- =====================================================
-- REPORTE 10
-- CLIENTES CON MÁS PEDIDOS
-- =====================================================

SELECT
    CONCAT(c.nombres, ' ', c.apellidos) AS cliente,
    COUNT(p.id_pedido) AS total_pedidos
FROM cliente c
INNER JOIN pedido p
    ON c.id_cliente = p.id_cliente
GROUP BY cliente
ORDER BY total_pedidos DESC;