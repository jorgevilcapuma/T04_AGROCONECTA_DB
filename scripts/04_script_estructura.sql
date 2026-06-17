CREATE DATABASE IF NOT EXISTS AgroConecta;
USE AgroConecta;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS detalle_pedido;
DROP TABLE IF EXISTS pedido;
DROP TABLE IF EXISTS proveedor_producto;
DROP TABLE IF EXISTS direccion;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF EXISTS producto;
DROP TABLE IF EXISTS proveedor;
DROP TABLE IF EXISTS categoria;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE categoria (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(50) NOT NULL
);

CREATE TABLE proveedor (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_fundo VARCHAR(100) NOT NULL,
    nombre_agricultor VARCHAR(100) NOT NULL,
    ruc CHAR(11) NOT NULL UNIQUE,
    telefono VARCHAR(15) NOT NULL,
    region VARCHAR(50) NOT NULL
);

CREATE TABLE producto (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    unidad_medida VARCHAR(20) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    dni CHAR(8) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    celular VARCHAR(15) NOT NULL
);

CREATE TABLE direccion (
    id_direccion INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    calle VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    distrito VARCHAR(50) NOT NULL,
    referencia VARCHAR(255),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE proveedor_producto (
    id_proveedor INT NOT NULL,
    id_producto INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_proveedor,id_producto),
    FOREIGN KEY (id_proveedor) REFERENCES proveedor(id_proveedor),
    FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
    CHECK(precio > 0)
);

CREATE TABLE pedido (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    estado VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CHECK (estado IN ('Recibido','En preparación','En ruta','Entregado'))
);

CREATE TABLE detalle_pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT NOT NULL,
    id_proveedor INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    precio_unitario DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES pedido(id_pedido),
    FOREIGN KEY (id_proveedor,id_producto)
        REFERENCES proveedor_producto(id_proveedor,id_producto),
    CHECK(cantidad > 0),
    CHECK(precio_unitario > 0)
);