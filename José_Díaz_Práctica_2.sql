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


CREATE TABLE Telefono
(
Telefono_id uniqueidentifier,
TelefonoEmpleado varchar(30),
TelefonoProveedor varchar(30),
TelefonoCliente varchar(30),
constraint pk_tel primary key (Telefono_id),
);

CREATE TABLE Almacen
(
Almacen_id uniqueidentifier,
NombreProducto varchar(50),
CantidadProducto int,
TipoProducto varchar(50),
Cantidad int,
constraint pk_alm primary key (Almacen_id),
);

CREATE TABLE Cliente
(
Cliente_id uniqueidentifier,
Edad int,
TipoCliente varchar(50),
constraint pk_cli primary key (Cliente_id),
);

CREATE TABLE ClienteMembresia
(
ClienteMembresia_id uniqueidentifier,
NombreCliente varchar(50),
ApPaterno varchar(30),
ApMaterno varchar(30),
Edad int,
TipoCliente varchar(50),
constraint pk_cliMem primary key (ClienteMembresia_id),
);

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

CREATE TABLE Membresia
(
Membresia_id uniqueidentifier,
Descripcion varchar(50),
TipoMembresia varchar(30),
FechaExpiracion date,
FechaRecibida date,
constraint pk_memb primary key (Membresia_id)
);

CREATE TABLE Empleado
(
Empleado_id uniqueidentifier,
NombreEmpleado varchar(50),
ApPaterno varchar(30),
ApMaterno varchar(30),
FechaIngreso date,
FechaAntiguedad date,
TipoEmpleado varchar(50),
constraint pk_empl primary key (Empleado_id),
);








