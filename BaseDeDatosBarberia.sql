CREATE DATABASE Barberia;

USE Barberia;

CREATE TABLE Ventas(
VentaID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ValorVenta INT,
FechaVenta DATE DEFAULT (now())
);

INSERT INTO Ventas(ValorVenta) VALUE 
(2550),
(3000),
(6545),
(5648);


SELECT * FROM Ventas;

CALL sp_quitarVenta();
CALL sp_leerVenta();
CALL sp_insertarVenta();
CALL sp_leerVentas();
CALL sp_eliminarVenta();
CALL sp_actualizarVenta();

CREATE TABLE Clientes(
ClienteID INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
Nombre VARCHAR (250),
Accion VARCHAR (250),
Numerotelefonico INT,
Cita BOOL DEFAULT FALSE,
FechaCita DATE DEFAULT (now())
);