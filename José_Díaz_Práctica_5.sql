USE BARADMIN;

CREATE TABLE Producto
(
Producto_id uniqueidentifier,
NombreProducto varchar(50),
TipoProducto varchar(50),
Unidad varchar(50),	
Precio money,
Descripcion varchar(50),
constraint pk_prod primary key (Producto_id),
);

SELECT * FROM Producto
INSERT INTO Producto (Producto_id,NombreProducto,TipoProducto,Unidad,Precio,Descripcion)
VALUES(NEWID(),'Tequila','Tequila','355ML', 50, 'TequilaXXX')
UPDATE Producto set NombreProducto = 'Pacífico'
where Producto_id = '28FB02ED-DCEE-493A-8494-20A8C1BE88C2'
DELETE Producto
where Producto_id = '14AE6415-67EB-43BD-8DAF-5C1E41537679'

 
CREATE TABLE Telefono
(
Telefono_id uniqueidentifier,
TelefonoEmpleado varchar(30),
TelefonoProveedor varchar(30),
TelefonoCliente varchar(30),
constraint pk_tel primary key (Telefono_id),
);

SELECT * FROM Telefono

INSERT INTO Telefono (Telefono_id,TelefonoEmpleado,TelefonoProveedor,TelefonoCliente)
VALUES (NEWID(),'(81)988-26269', '(81)823-54442', '(81)804-90554')
UPDATE Telefono set TelefonoCliente = '(81)612-36956'
where Telefono_id = '0E0C5905-7F6C-457E-B94A-B6FDD81AE8C6'
DELETE Telefono
where Telefono_id = '0E0C5905-7F6C-457E-B94A-B6FDD81AE8C6'


CREATE TABLE Almacen
(
Almacen_id uniqueidentifier,
NombreProducto varchar(50),
CantidadProducto int,
TipoProducto varchar(50),
constraint pk_alm primary key (Almacen_id),
);

SELECT * FROM Almacen

UPDATE Almacen set NombreProducto = 'Cerveza Miller'
WHERE Almacen_id = 'A0D35B55-9E3E-4FC5-8C6B-CE8933E7CD59'
DELETE Almacen
WHERE Almacen_id = 'D92AFA1E-B868-49B9-B4EF-673B1089A7FC'
INSERT INTO Almacen(Almacen_id,NombreProducto,CantidadProducto,TipoProducto)
VALUES(NEWID(),'Captain Morgan', 5, 'Ron')


CREATE TABLE Cliente
(
Cliente_id uniqueidentifier,
Edad int,
TipoCliente varchar(50),
constraint pk_cli primary key (Cliente_id),
);
SELECT * FROM Cliente
INSERT INTO Cliente(Cliente_id,Edad,TipoCliente)
VALUES(NEWID(), 27, 'NO VIP')

UPDATE Cliente set Edad = 19
WHERE Cliente_id = 'CF9AEF98-CC9D-4B84-8EDD-8BC9359455CC'

DELETE Cliente
WHERE Cliente_id = 'CF9AEF98-CC9D-4B84-8EDD-8BC9359455CC'

CREATE TABLE ClienteMembresia
(
ClienteMembresia_id uniqueidentifier,
NombreCliente varchar(50),
ApPaterno varchar(30),
ApMaterno varchar(30),
Edad int,
TipoCliente varchar(50),
Genero varchar (10),
constraint pk_cliMem primary key (ClienteMembresia_id),
);

SELECT * FROM ClienteMembresia
INSERT INTO ClienteMembresia(ClienteMembresia_id,NombreCliente,ApPaterno,ApMaterno,Edad,TipoCliente,Genero)
VALUES(NEWID(),'Maria Fernanda','Espinoza','Hinojosa',24,'VIP','Mujer')

UPDATE ClienteMembresia set ApMaterno = 'Cervantes'
WHERE ClienteMembresia_id = '1448B74D-4F6A-457B-B120-508E9D5AC035'

DELETE ClienteMembresia
WHERE ClienteMembresia_id = '1448B74D-4F6A-457B-B120-508E9D5AC035'



CREATE TABLE Venta
(
Venta_id uniqueidentifier,
HoraVenta date,
EmpleadoVentaId varchar(50),
MesaDeVenta varchar(30),
constraint pk_venta primary key (Venta_id),
);

CREATE TABLE DetalleVenta
(
DetalleVenta_id uniqueidentifier,
TipoPago varchar(50),
CantidadProducto int,
Total money,
IVA money,
Subtotal money,
Folio int,
FechaVenta date,
Unidad int,
constraint pk_dteVenta primary key (DetalleVenta_id),
);

CREATE TABLE Proveedor
(
Proveedor_id uniqueidentifier,
TipoProductos varchar(50),
NombreProveedor varchar(50),
ApPaterno varchar(50),
ApMaterno varchar(30),
Empresa varchar(30),
Edad int,
FechaContratacion date,
constraint pk_prov primary key (Proveedor_id),
);

SELECT * FROM Proveedor

INSERT INTO Proveedor(Proveedor_id,TipoProductos,NombreProveedor,ApPaterno,ApMaterno,Empresa,Edad,FechaContratacion)
VALUES(NEWID(),'Alimentos','Catalina', 'Gil', 'Juarez', 'Barcel', 52, '2012-03-19')

DELETE Proveedor
WHERE Proveedor_id = '9E76E966-85E4-46C2-BF99-A5C70B640A22'

UPDATE Proveedor set ApPaterno = 'Díaz'
WHERE Proveedor_id = '9E76E966-85E4-46C2-BF99-A5C70B640A22'

UPDATE Proveedor set ApPaterno = 'Gonzalez'
WHERE Proveedor_id = 'FA78E1EE-C570-41FC-B8CE-87096B0E0C72'

UPDATE Proveedor set ApPaterno = 'Trinidad'
WHERE Proveedor_id = '9E76E966-85E4-46C2-BF99-A5C70B640A22'

CREATE TABLE Membresia
(
Membresia_id uniqueidentifier,
Descripcion varchar(50),
TipoMembresia varchar(30),
FechaExpiracion date,
FechaRecibida date,
constraint pk_memb primary key (Membresia_id)
);

SELECT * FROM Membresia
INSERT INTO Membresia(Membresia_id,Descripcion,TipoMembresia,FechaExpiracion,FechaRecibida)
VALUES(NEWID(),'Descuentos en Alimentos', 'Oro', '2025-05-05', '2014-02-11')

CREATE TABLE Empleado
(
Empleado_id uniqueidentifier,
NombreEmpleado varchar(50),
ApPaterno varchar(30),
ApMaterno varchar(30),
FechaIngreso date,
FechaAntiguedad date,
TipoEmpleado varchar(50),
VentasEmpleado int,
constraint pk_empl primary key (Empleado_id),
);

SELECT * FROM Empleado

INSERT INTO Empleado (Empleado_id,NombreEmpleado,ApPaterno,ApMaterno,FechaIngreso,FechaAntiguedad,TipoEmpleado,VentasEmpleado)
VALUES(NEWID(),'Jimena','Ayala','Lopez','2012-03-19','2019-01-19','Mesero',2)

UPDATE Empleado set NombreEmpleado = 'Karla'
WHERE Empleado_id = '0631B92E-3E6D-462F-913A-68ABF5834924'

DELETE Empleado 
WHERE Empleado_id ='6A8FD396-BF51-4276-A9A9-B3F8B4718FD1'








