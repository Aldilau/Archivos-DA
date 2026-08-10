DROP TABLE IF EXISTS inventario;

--CREAR TABLA inventario
CREATE TABLE inventario(
--valor unico entero e irrepetible
id_producto INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
--texto para dar un nombre
nombre_producto varchar (100),
categoria varchar (50),
--decimal es un nuemero exacto para precios
precio_unitario decimal (10,2),
stock_actual int,
stock_minimo int,
fecha_ingreso date,
activo tinyint
);

--Insertar los 10 productos de la tabla
INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Laptop Pro 15', 'Computacion', 1200.00, 15, 3, '2024-01-10', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Mouse Inalambrico', 'Accesorios', 28.00, 80, 10, '2024-01-10', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Monitor 4k 27', 'Computacion', 450.00, 12, 2, '2024-01-15', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Teclado Mecanico', 'Accesorios', 95.00, 40, 5, '2024-01-15', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Laptop Basic 14', 'Computacion', 650.00, 20, 3, '2024-02-01', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Auriculares BTPro', 'Audio', 120.00, 35, 5, '2024-02-01', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Hub USB-C 7 puertos', 'Accesorios', 45.00, 60, 10, '2024-02-10', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Webcam HD 1080p', 'Accesorios', 85.00, 25, 5, '2024-02-10', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('SSD Externo 1TB', 'Almacenamiento', 130.00, 18, 3, '2024-03-01', 1);

INSERT INTO inventario (nombre_producto, categoria, precio_unitario, stock_actual, stock_minimo, fecha_ingreso, activo)
VALUES ('Parlante Bluetooth', 'Audio', 60.00, 45, 8, '2024-03-01', 1);

-- Venta de 3 unidades de Laptop Pro 1
UPDATE inventario SET stock_actual=12 WHERE id_producto=1;

-- Venta de 12 unidades de Mouse Inalámbrico
UPDATE inventario SET stock_actual=68 WHERE id_producto=2;

-- Venta de 5 unidades de Auriculares BT Pr
UPDATE inventario SET stock_actual=30 WHERE id_producto=6;

--Consultar la tabla
SELECT *  FROM inventario