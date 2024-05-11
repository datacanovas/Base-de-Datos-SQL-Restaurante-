create database restaurante;

use restaurante;

-- Creación de la tabla Clientes
CREATE TABLE Clientes (
    ID_cliente INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(15),
    Correo_electronico VARCHAR(100),
    Direccion VARCHAR(255)
);

-- Creación de la tabla Empleados
CREATE TABLE Empleados (
    ID_empleado INT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Telefono VARCHAR(15),
    Correo_electronico VARCHAR(100),
    Puesto VARCHAR(50)
);

-- Creación de la tabla Platos
CREATE TABLE Platos (
    ID_plato INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255),
    Precio DECIMAL(10, 2),
    Categoria VARCHAR(50)
);

-- Creación de la tabla Menus
CREATE TABLE Menus (
    ID_menu INT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255)
);

-- Creación de la tabla Platos_en_menu
CREATE TABLE Platos_en_menu (
    ID_plato_menu INT PRIMARY KEY,
    ID_plato INT,
    ID_menu INT,
    FOREIGN KEY (ID_plato) REFERENCES Platos(ID_plato),
    FOREIGN KEY (ID_menu) REFERENCES Menus(ID_menu)
);

-- Creación de la tabla Pedidos
CREATE TABLE Pedidos (
    ID_pedido INT PRIMARY KEY,
    ID_cliente INT,
    ID_empleado INT,
    Fecha DATE,
    Total DECIMAL(10, 2),
    FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    FOREIGN KEY (ID_empleado) REFERENCES Empleados(ID_empleado)
);

-- Creación de la tabla Detalles_pedido
CREATE TABLE Detalles_pedido (
    ID_detalle INT PRIMARY KEY,
    ID_pedido INT,
    ID_plato INT,
    Cantidad INT,
    Precio_unitario DECIMAL(10, 2),
    Subtotal DECIMAL(10, 2),
    FOREIGN KEY (ID_pedido) REFERENCES Pedidos(ID_pedido),
    FOREIGN KEY (ID_plato) REFERENCES Platos(ID_plato)
);

# Todas las demás, están importadas.

# Cargar manualmente pedidos 

INSERT INTO pedidos (ID_pedido, ID_cliente, ID_empleado, Fecha, Total) VALUES
(1, 1, 1, '2024-05-11', 30.48),
(2, 2, 2, '2024-05-11', 27.50),
(3, 3, 3, '2024-05-11', 25.98),
(4, 4, 4, '2024-05-12', 45.75),
(5, 5, 5, '2024-05-12', 52.80),
(6, 6, 6, '2024-05-12', 38.25),
(7, 7, 7, '2024-05-13', 63.40),
(8, 8, 8, '2024-05-13', 29.90),
(9, 9, 9, '2024-05-13', 41.65),
(10, 10, 10, '2024-05-14', 56.20),
(11, 11, 11, '2024-05-14', 47.35),
(12, 12, 12, '2024-05-14', 33.75),
(13, 13, 13, '2024-05-15', 49.60),
(14, 14, 14, '2024-05-15', 42.90),
(15, 15, 15, '2024-05-15', 37.25),
(16, 16, 16, '2024-05-16', 55.80),
(17, 17, 17, '2024-05-16', 48.15),
(18, 18, 18, '2024-05-16', 36.45),
(19, 19, 19, '2024-05-17', 51.90),
(20, 20, 20, '2024-05-17', 40.75),
(21, 21, 21, '2024-05-17', 43.60),
(22, 22, 22, '2024-05-18', 48.25),
(23, 23, 23, '2024-05-18', 35.40);

# Lo mismo con detalles_pedido

INSERT INTO detalles_pedido (ID_detalle, ID_pedido, ID_plato, Cantidad, Precio_unitario, Subtotal) VALUES
(1, 1, 1, 1, 15.99, 15.99),
(2, 1, 2, 1, 14.50, 14.50),
(4, 4, 4, 1, 13.50, 13.50),
(5, 4, 5, 2, 9.99, 19.98),
(6, 4, 6, 1, 17.99, 17.99),
(7, 4, 5, 2, 12.50, 25.00),
(8, 5, 8, 1, 11.99, 11.99),
(9, 5, 9, 2, 10.50, 21.00),
(10, 6, 10, 1, 16.50, 16.50),
(11, 6, 11, 1, 12.99, 12.99),
(12, 6, 12, 2, 19.99, 39.98),
(13, 7, 13, 2, 6.50, 13.00),
(14, 7, 14, 1, 14.50, 14.50),
(15, 7, 15, 1, 15.99, 15.99),
(16, 8, 16, 1, 18.50, 18.50),
(17, 8, 17, 2, 11.99, 23.98),
(18, 8, 18, 1, 16.99, 16.99),
(19, 9, 19, 1, 13.99, 13.99),
(20, 9, 20, 2, 7.50, 15.00),
(21, 9, 21, 1, 6.99, 6.99),
(22, 10, 22, 1, 10.99, 10.99),
(23, 10, 23, 1, 12.50, 12.50);








