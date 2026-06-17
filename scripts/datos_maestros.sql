
USE AgroConecta;

-- ==========================================
-- DATOS MAESTROS: CATEGORIA
-- ==========================================
INSERT INTO categoria (nombre_categoria) VALUES
('Hortaliza'),
('Fruta'),
('Tubérculo'),
('Legumbre'),
('Hierba Aromática'),
('Cereal'),
('Grano'),
('Verdura'),
('Fruto Seco'),
('Condimento'),
('Raíz'),
('Semilla'),
('Orgánico'),
('Hongo'),
('Planta Medicinal');

-- ==========================================
-- DATOS MAESTROS: PROVEEDOR
-- ==========================================
INSERT INTO proveedor (
    nombre_fundo,
    nombre_agricultor,
    ruc,
    telefono,
    region
) VALUES
('Fundo El Sol', 'Juan Pérez', '10458796321', '987654321', 'Lima'),
('Chacra Santa Rosa', 'María Quispe', '10748596321', '963258741', 'Huaral'),
('Fundo Las Delicias', 'Carlos Mendoza', '20154879632', '951753852', 'Ica'),
('Chacra El Huerto', 'Ana Huamán', '10258963417', '984123567', 'Junín'),
('Fundo Sacramento', 'Luis Flores', '10369852147', '921456387', 'Arequipa'),
('Fundo Los Andes', 'Pedro Mamani', '10968574123', '933445566', 'Cusco'),
('Chacra La Esmeralda', 'Elena Condori', '20451278963', '944556677', 'Ayacucho'),
('Fundo Vista Hermosa', 'Jorge Ramírez', '10235689741', '955667788', 'Cajamarca'),
('Chacra El Olivar', 'Sofía Castro', '10852369741', '966778899', 'Tacna'),
('Fundo San José', 'Ricardo Gómez', '20895623147', '977889900', 'La Libertad'),
('Chacra Bella Vista', 'Lucía Peralta', '10568923471', '988990011', 'Huánuco'),
('Fundo Pampa Baja', 'Manuel Ortiz', '10963258741', '999001122', 'Áncash'),
('Chacra Los Tulipanes', 'Diana Silva', '20147852369', '911223344', 'Pasco'),
('Fundo El Manantial', 'Javier Torres', '10753159482', '922334455', 'Piura'),
('Chacra San Antonio', 'Beatriz Núñez', '10321654987', '933556644', 'Lambayeque');

-- ==========================================
-- DATOS MAESTROS: PRODUCTO
-- ==========================================
INSERT INTO producto (
    nombre_producto,
    descripcion,
    unidad_medida,
    id_categoria
) VALUES
('Tomate Río Grande', 'Tomate maduro ideal para salsas', 'Kilo', 1),
('Papa Huayro', 'Papa arenosa perfecta para sancochar', 'Kilo', 3),
('Manzana Delicia', 'Manzana dulce de la costa', 'Kilo', 2),
('Espinaca Americana', 'Hojas verdes frescas', 'Atado', 1),
('Zanahoria Criolla', 'Zanahoria rica en caroteno', 'Kilo', 1),
('Plátano de Seda', 'Plátano dulce', 'Unidad', 2),
('Fresa San Andreas', 'Fresa aromática', 'Kilo', 2),
('Camote Amarillo', 'Camote dulce', 'Kilo', 3),
('Cebolla Roja', 'Cebolla tradicional', 'Kilo', 1),
('Limón Sutil', 'Ideal para ceviche', 'Kilo', 2),
('Olluco Largo', 'Olluco fresco', 'Kilo', 3),
('Lechuga Orgánica', 'Lechuga hidropónica', 'Unidad', 1),
('Palta Forte', 'Palta cremosa', 'Kilo', 2),
('Choclo Serrano', 'Choclo tierno', 'Unidad', 1),
('Brócoli Selecto', 'Brócoli verde intenso', 'Unidad', 1);

-- ==========================================
-- DATOS MAESTROS: CLIENTE
-- ==========================================
INSERT INTO cliente (
    nombres,
    apellidos,
    dni,
    correo,
    celular
) VALUES
('Carlos', 'Sánchez', '45879632', 'carlos@email.com', '999888777'),
('Ana', 'García', '71254896', 'ana@email.com', '988777666'),
('Luis', 'Pasos', '10254879', 'luis@email.com', '977666555'),
('María', 'Villanueva', '40258963', 'maria@email.com', '966555444'),
('Jorge', 'López', '09568471', 'jorge@email.com', '955444333'),
('Elena', 'Rojas', '44125896', 'elena@email.com', '944333222'),
('Pedro', 'Chávez', '43215698', 'pedro@email.com', '933222111'),
('Sofía', 'Benítez', '46985214', 'sofia@email.com', '922111000'),
('Miguel', 'Alva', '70258964', 'miguel@email.com', '911000999'),
('Lucía', 'Mendoza', '41257896', 'lucia@email.com', '900999888'),
('David', 'Espinoza', '42563147', 'david@email.com', '987123456'),
('Carmen', 'Salazar', '48963214', 'carmen@email.com', '954781236'),
('Ricardo', 'Tello', '15263478', 'ricardo@email.com', '963852147'),
('Laura', 'Vargas', '73251489', 'laura@email.com', '951487263'),
('Gabriel', 'Campos', '47589621', 'gabriel@email.com', '957142638');

-- ==========================================
-- DATOS MAESTROS: DIRECCION
-- ==========================================
INSERT INTO direccion (
    id_cliente,
    calle,
    numero,
    distrito,
    referencia
) VALUES
(1, 'Av. Larco', '456', 'Miraflores', 'Frente al parque'),
(2, 'Calle Las Flores', '123', 'San Isidro', 'Centro financiero'),
(3, 'Av. Arequipa', '3450', 'San Isidro', 'Esquina Aramburú'),
(4, 'Jr. Carabaya', '890', 'Lima', 'Plaza San Martín'),
(5, 'Av. Javier Prado', '1520', 'La Victoria', 'Clínica cercana'),
(6, 'Calle Tarapacá', '412', 'Magdalena', 'Mercado Magdalena'),
(7, 'Av. Universitaria', '2100', 'San Miguel', 'Frente PUCP'),
(8, 'Calle Los Pinos', '789', 'Surco', 'Óvalo Higuereta'),
(9, 'Av. Brasil', '2800', 'Pueblo Libre', 'Hospital Militar'),
(10, 'Calle San Martín', '155', 'Barranco', 'Puente Suspiros'),
(11, 'Av. La Marina', '1100', 'Pueblo Libre', 'Plaza San Miguel'),
(12, 'Calle Manco Cápac', '302', 'Miraflores', 'Altura Pardo'),
(13, 'Jr. Zepita', '450', 'Lima', 'Av. Alfonso Ugarte'),
(14, 'Av. Primavera', '670', 'Surco', 'Puente Primavera'),
(15, 'Calle Las Palmeras', '104', 'San Borja', 'Pentagonito');

-- ==========================================
-- DATOS MAESTROS: PROVEEDOR_PRODUCTO
-- ==========================================
INSERT INTO proveedor_producto (
    id_proveedor,
    id_producto,
    precio
) VALUES
(1,1,3.50),
(2,1,3.20),
(2,2,4.00),
(4,2,3.80),
(3,3,5.50),
(4,4,1.50),
(5,5,2.80),
(14,6,0.40),
(3,7,7.20),
(8,8,3.00),
(1,9,4.20),
(14,10,6.00),
(6,11,4.50),
(12,12,2.00),
(15,13,8.50);
```
