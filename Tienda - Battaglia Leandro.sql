-- creo base de dato Tienda
create database Tienda;
USE Tienda;

-- PUNTO 1 CREACION DE TABLAS

-- creo tabla producto con clave primaria id
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    precio DECIMAL(5, 2) NOT NULL,
    stock INT NOT NULL
);

-- creo tabla clientes con clave primaria id
CREATE TABLE Clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    correo VARCHAR(30),
    direccion VARCHAR(30)
);

-- creo tabla compras con clave primaria id y los campos cliente_id y producto_id como foranea de otras tablas
CREATE TABLE Compras (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    fecha DATE,
    
FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
FOREIGN KEY (producto_id) REFERENCES Productos(id)
);

-- PUNTO 2 Inserción de datos


-- Insertar 50 registros con chatGPT (valores incoherentes)
INSERT INTO Productos (nombre, precio, stock)
VALUES
    ('Camiseta', 19.99, 100),
    ('Pantalón Vaquero', 39.99, 50),
    ('Vestido Noche', 89.99, 30),
    ('Chaqueta de Cuero', 149.99, 20),
    ('Falda Plisada', 29.99, 60),
    ('Blusa Estampada', 24.99, 80),
    ('Pantalón Vestir', 49.99, 40),
    ('Camisa Corta', 34.99, 70),
    ('Abrigo de Lana', 99.99, 25),
    ('Jersey de Punto', 29.99, 60),
    ('Vestiditos', 59.99, 35),
    ('Chaqueta ', 44.99, 45),
    ('Blazer Formal', 69.99, 30),
    ('Pantalón de Yoga', 29.99, 55),
    ('Vestido Casual', 39.99, 50),
    ('Deportiva', 54.99, 40),
    ('Falda Midi', 34.99, 65),
    ('Blusa de Seda', 49.99, 45),
    ('Pantalón Corto', 19.99, 90),
    ('Camisa a Cuadros', 29.99, 75),
    ('Bufanda', 79.99, 30),
    ('Vestido de Verano', 39.99, 60),
    ('Blusa de Encaje', 24.99, 80),
    ('Pantalón Cuero', 69.99, 35),
    ('Camiseta', 14.99, 100),
    ('Blusa Algodón', 19.99, 90),
    ('Chaqueta Bomber', 59.99, 40),
    ('Pantalón Recto', 34.99, 70),
    ('Vestido de Fiesta', 129.99, 15),
    ('Camisa de Algodón', 39.99, 60),
    ('Jeans Ajustados', 49.99, 55),
    ('Vestido Floral', 59.99, 30),
    ('Suéter de Lana', 44.99, 50),
    ('Chaleco Cuero', 34.99, 40),
    ('Blusa de Rayas', 29.99, 65),
    ('Pantalón de Tela', 39.99, 70),
    ('Camiseta Estamp', 19.99, 80),
    ('Vestido de Cóctel', 69.99, 25),
    ('Chaqueta Gamuza', 89.99, 35),
    ('Blusa de Encaje', 24.99, 90),
    ('Pantalón Chino', 44.99, 55),
    ('Vestido Largo', 59.99, 30),
    ('Chaqueta Punto', 49.99, 40),
    ('Jeans Gastados', 34.99, 65),
    ('Blusa de Gasa', 29.99, 75),
    ('Pantalón Jogger', 39.99, 50),
    ('Blazer Terciopelo', 79.99, 30),
    ('Vestido de Encaje', 59.99, 45),
    ('Camisa Formal', 49.99, 60),
    ('Pantalón vestir', 34.99, 70);

-- Inserte 30 registros en la tabla Clientes
INSERT INTO Clientes (nombre, correo, direccion)
VALUES
    ('Juan Pérez', 'juan@example.com', 'Calle Principal 123'),
    ('María López', 'maria@example.com', 'Avenida Central 456'),
    ('Carlos Ramírez', 'carlos@example.com', 'Carrera 7 890'),
    ('Ana García', 'ana@example.com', 'Calle Real 567'),
    ('Pedro Hernández', 'pedro@example.com', 'Avenida 12 de Octubre 34'),
    ('Laura Torres', 'laura@example.com', 'Carrera 9 123'),
    ('Javier Rodríguez', 'javier@example.com', 'Calle Mayor 456'),
    ('Sofía Gómez', 'sofia@example.com', 'Avenida Central 789'),
    ('Luisa Vargas', 'luisa@example.com', 'Calle del Sol 234'),
    ('Diego Martínez', 'diego@example.com', 'Avenida Libertad 567'),
    ('Valentina Silva', 'valentina@example.com', 'Calle Principal 890'),
    ('Andrés Castro', 'andres@example.com', 'Carrera 3 123'),
    ('Camila Morales', 'camila@example.com', 'Avenida 10 de Julio 456'),
    ('Daniel Guzmán', 'daniel@example.com', 'Calle Real 789'),
    ('Isabella Ríos', 'isabella@example.com', 'Avenida Principal 123'),
    ('Martín Ortega', 'martin@example.com', 'Carrera 5 456'),
    ('Lucía Paredes', 'lucia@example.com', 'Calle Mayor 789'),
    ('Mateo Sánchez', 'mateo@example.com', 'Avenida Central 123'),
    ('Gabriela Montes', 'gabriela@example.com', 'Calle del Sol 456'),
    ('Sebastián Mendoza', 'sebastian@example.com', 'Avenida Libertad 789'),
    ('Natalia Rivas', 'natalia@example.com', 'Calle Principal 123'),
    ('Felipe Castro', 'felipe@example.com', 'Carrera 7 456'),
    ('Paula Torres', 'paula@example.com', 'Avenida 12 de Octubre 789'),
    ('Alejandro Rojas', 'alejandro@example.com', 'Calle Real 123'),
    ('Valeria Herrera', 'valeria@example.com', 'Avenida Principal 456'),
    ('Joaquín Cordero', 'joaquin@example.com', 'Carrera 9 789'),
    ('Catalina Mora', 'catalina@example.com', 'Calle Mayor 123'),
    ('Ricardo Guzmán', 'ricardo@example.com', 'Avenida Central 456'),
    ('Fernanda Méndez', 'fernanda@example.com', 'Calle del Sol 789');


-- Inserte registros ficticios en la tabla Compras
INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES
    (1, 1, 2, '2023-01-05'),
    (2, 3, 1, '2023-02-10'),
    (3, 2, 3, '2023-03-15'),
    (4, 5, 2, '2023-04-20'),
    (5, 7, 1, '2023-05-25'),
    (6, 4, 4, '2023-06-30'),
    (7, 1, 3, '2023-07-05'),
    (8, 6, 2, '2023-08-10'),
    (9, 29, 1, '2023-09-15'),
    (10, 28, 2, '2023-10-20'),
    (11, 21, 1, '2023-11-25'),
    (12, 23, 3, '2023-12-30'),
    (13, 20, 2, '2024-01-05'),
    (14, 22, 1, '2024-02-10'),
    (15, 25, 2, '2024-03-15'),
    (16, 24, 3, '2024-04-20'),
    (17, 27, 1, '2024-05-25'),
    (18, 26, 2, '2024-06-30'),
    (19, 29, 1, '2024-07-05'),
    (20, 28, 2, '2024-08-10'),
    (21, 21, 3, '2024-09-15'),
    (22, 20, 2, '2024-10-20'),
    (23, 23, 1, '2024-11-25'),
    (24, 2, 4, '2024-12-30'),
    (25, 5, 1, '2025-01-05'),
    (26, 24, 2, '2025-02-10'),
    (27, 27, 1, '2025-03-15'),
    (28, 26, 3, '2025-04-20'),
    (29, 29, 2, '2025-05-25'),
    (1, 28, 1, '2025-06-30'),
    (2, 21, 2, '2025-07-05'),
    (3, 3, 3, '2025-08-10'),
    (4, 23, 1, '2025-09-15'),
    (5, 22, 2, '2025-10-20'),
    (6, 25, 4, '2025-11-25'),
    (7, 24, 1, '2025-12-30'),
    (8, 27, 2, '2026-01-05'),
    (9, 26, 1, '2026-02-10'),
    (10, 1, 2, '2026-03-15'),
    (11, 28, 3, '2026-04-20'),
    (12, 21, 1, '2026-05-25'),
    (13, 20, 2, '2026-06-30'),
    (14, 23, 1, '2026-07-05'),
    (15, 22, 2, '2026-08-10'),
    (16, 5, 3, '2026-09-15'),
    (17, 4, 2, '2026-10-20'),
    (18, 7, 1, '2026-11-25'),
    (19, 6, 4, '2026-12-30'),
    (20, 29, 1, '2027-01-05'),
    (21, 28, 2, '2027-02-10'),
    (22, 26, 1, '2027-03-15'),
    (23, 30, 3, '2027-04-20');

-- PUNTO 3 Modificación de tablas:

-- Agrego columna "descuento" y le asigno el valor de 0 a cada registro
ALTER TABLE Productos
ADD COLUMN descuento DECIMAL(5, 2) NOT NULL;
UPDATE Productos
SET descuento = 0;


-- Modifico tipo de datos de la columna "precio" 
ALTER TABLE Productos
MODIFY COLUMN precio decimal(10, 2) NOT NULL;

-- PUNTO 4 Consultas

-- Realizo consulta que muestra nombre del cliente y nombre del producto 
SELECT c.nombre , p.nombre 
FROM Clientes c INNER JOIN Compras comp 
ON c.id = comp.cliente_id
INNER JOIN Productos p 
ON comp.producto_id = p.id;

-- agrego algunos descuentos en ciertos productos
UPDATE Productos
SET descuento = 10
WHERE id = 251;
UPDATE Productos
SET descuento = 25
WHERE id = 260;
UPDATE Productos
SET descuento = 20
WHERE id = 275;
UPDATE Productos
SET descuento = 15
WHERE id = 280;
UPDATE Productos
SET descuento = 50
WHERE id = 285;
UPDATE Productos
SET descuento = 30
WHERE id = 290;

-- creo un view llamada ProductosConDescuento que muestre los productos que tengan porcentaje de descuento
CREATE VIEW ProductosConDescuento AS
SELECT *
FROM Productos
WHERE descuento > 0;

-- creo index
CREATE INDEX idx_nombre ON productos (nombre);


-- PUNTO 5 Procedimientos almacenados

-- creo el Procedure CalcularTotalVentas al cual le pasare el cliente_id y me devolvera el total de $$ en compras
DELIMITER //
CREATE PROCEDURE CalcularTotalVentas (
    IN cliente_id INT,
    OUT total_ventas DECIMAL(10, 2)
)
BEGIN
    SELECT SUM(cantidad * precio)
    INTO total_ventas 
    FROM Compras
    INNER JOIN Productos ON Compras.producto_id = Productos.id
    WHERE Compras.cliente_id = cliente_id;
END //

-- into sirve para asignar el resultado a la variable

-- pruebo Procedure CalcularTotalVentas pasandole por parametro el cliente_id = 1 y la variable @total donde me devolvera el gasto total del cliente 1
SET @total := 0;
CALL CalcularTotalVentas(1, @total);
SELECT @total AS TotalVentas;


-- PUNTO 6 Funciones

-- creo la funcion que calcule y devuelva el promedio de precio de todos los productos

SET GLOBAL log_bin_trust_function_creators = 1;

CREATE FUNCTION CalcularPromedioPrecios()
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE promedio DECIMAL(10, 2);
    
    SELECT AVG(precio) INTO promedio
    FROM productos;
    
    RETURN promedio;
END;

-- ejecuto la funcion
SELECT CalcularPromedioPrecios() AS PromedioPrecios;

CalcularPromedioPrecios

-- PUNTO 7 Transacciones

START TRANSACTION;
-- variable para manejar errores
DECLARE @error INT;

INSERT INTO Clientes (nombre, correo, direccion)
VALUES ('Cliente Nuevo', 'nuevo@cliente.com', 'Boero 4123');

-- Comprobar si ocurrió algún error durante la inserción del cliente
SET @error = @@ERROR;
IF @error <> 0
BEGIN
    -- Si ocurrió un error, hacer un rollback y mostrar un mensaje de error
    ROLLBACK;
    SELECT 'Error al insertar nuevo cliente. Se ha realizado un rollback.';
    RETURN;
END;

-- OBTENER EL ID DEL NUEVO CLIENTE INSERTADO
SET @cliente_id := LAST_INSERT_ID();

-- INSERTAR NUEVA ORDEN DE COMPRA PARA EL NUEVO CLIENTE
INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES (@cliente_id, 1, 3, '2023-09-15');

-- Comprobar si ocurrió algún error durante la inserción de la orden de compra
SET @error = @@ERROR;
IF @error <> 0
BEGIN
    -- Si ocurrió un error, hacer un rollback y mostrar un mensaje de error
    ROLLBACK;
    SELECT 'Error al insertar nueva orden de compra. Se ha realizado un rollback.';
    RETURN;
END;

-- Si no ocurrió ningún error, hacer commit y mostrar un mensaje de éxito
COMMIT;
SELECT 'Transacción completada exitosamente.';

-- PUNTO 8 Triggers 
DELIMITER //

CREATE TRIGGER ActualizarStockDespuesDeCompra
AFTER INSERT ON Compras
FOR EACH ROW
BEGIN
    DECLARE stock_actual INT;
    
    -- Obtener el stock actual del producto
    SELECT stock INTO stock_actual
    FROM productos
    WHERE id = NEW.producto_id;
    
    -- Calcular el nuevo stock después de la compra
    SET stock_actual = stock_actual - NEW.cantidad;
    
    -- Actualizar el stock en la tabla productos
    UPDATE productos
    SET stock = stock_actual
    WHERE id = NEW.producto_id;
END //

DELIMITER ;

-- inserto un valor nuevo para probar el trigger
INSERT INTO Compras (cliente_id, producto_id, cantidad, fecha)
VALUES (10, 10, 20, '2023-01-05');

SELECT stock
FROM productos
WHERE id = 1;
