--CREAR TABLA CLIENTES
CREATE TABLE clientes(
--tipo de dato int porque debe ser un numero entero
id_cliente int NOT NULL,
--tipo de dato varchar 100 para dar utilizar un texto para nombre
nombre varchar(100),
--tipo de dato text para dar lugar a un texto extenso
perfil_bio text,
--tipo de dato date porque debe ingresar un fecha
fecha_registro date
);

--CREAR TABLA PRODUCTOS
CREATE TABLE productos(
--tipo de dato int porque debe ser un numero entero
id_producto int NOT NULL,
--tipo de dato varchar 255 para dar utilizar un texto extenso
descripcion varchar(255),
--tipo de dato  decimal porque se trata de un precio 
precio numeric(10,2),
--tipo de dato  varchar 2 para completar si o no
esta_activo varchar(2)
);