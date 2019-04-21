USE BARADMIN
GO

-- 3 TRIGGERS // 

--INSERT FOR
CREATE TRIGGER TR_Empleado_Insert
on Empleado
for insert
as
print 'Se dio de alta un empleado'


INSERT INTO Empleado (Empleado_id,NombreEmpleado,ApPaterno,ApMaterno,FechaIngreso,FechaAntiguedad,TipoEmpleado,VentasEmpleado)
VALUES(NEWID(),'Juan','Perez','Oso',GETDATE(),'1999-03-05','Bartender',5)

GO

--DELETE AFTER
CREATE TRIGGER TR_Producto_Delete
on Producto
after delete
as
print 'Se elimino un producto'

GO

--UPDATE INSTEAD

CREATE TRIGGER TR_Membresia_Update
on Membresia 
instead of insert
as
print 'Se actualizó su membresía'

GO

-- 1 FUNCIÓN
 GO

CREATE FUNCTION dbo.ClienteMembresiaGetNombreCompleto(@ID uniqueidentifier)
returns varchar(200)
as
begin
declare @nombreCompleto varchar(200)
select @nombreCompleto = NombreCliente + ApPaterno + ApMaterno from ClienteMembresia
where ClienteMembresia_id = @ID
return @nombreCompleto  

end

go

SELECT *, dbo.ClienteMembresiaGetNombreCompleto(ClienteMembresia_id) from ClienteMembresia
SELECT dbo.ClienteMembresiaGetNombreCompleto(200)
GO

 
-- 1 QUERY DINAMICO

DECLARE @Empleado_ID uniqueidentifier = 'H843BG80-9290-484F-928A-371EF8F644CA'
DECLARE @query NVARCHAR(2000)
SET @query = 'SELECT NombreEmpleado,TipoEmpleado FROM dbo.Empleado WHERE Empleado_id ='
DECLARE @sql NVARCHAR(2000) = CONCAT(@query, @Empleado_ID)
SELECT @sql
EXEC(@sql)

GO



SELECT * FROM Empleado


-- 10 STORED PROCEDURES

GO
CREATE PROCEDURE PA_PagosMayores800
AS
SELECT VentaId as 'Pagos mayores a 800'
from DetalleVentas
where Total > 800  

EXECUTE PA_PagosMayores800
GO

CREATE PROCEDURE PA_PagosEfectivo
AS
SELECT VentaId as 'PagosEfectivo'
from DetalleVentas
where TipoPago = 'Efectivo'

EXECUTE PA_PagosEfectivo
GO

CREATE PROCEDURE PA_PagosPorTarjeta
AS
SELECT VentaId as 'PagosPorTarjeta'
from DetalleVentas
where TipoPago = 'Tarjeta'

EXECUTE PA_PagosPorTarjeta

GO

CREATE PROCEDURE PA_ExistenciasMayores100
AS
SELECT NombreProducto as Cerveza, CantidadProducto as 'Existencia'
from Almacen 
group by NombreProducto, CantidadProducto
having(CantidadProducto) > 100

EXECUTE PA_ExistenciasMayores100

GO

CREATE PROCEDURE PA_ClientesMayoresA30
AS
SELECT NombreCliente, Edad as 'Mayores de 30 años'
from ClienteMembresia
group by NombreCliente, Edad
having(Edad) > 30

EXECUTE PA_ClientesMayoresA30

GO

CREATE PROCEDURE PA_EmpleadosMasDe10Ventas
AS
SELECT NombreEmpleado, VentasEmpleado as '10+ Ventas'
from Empleado
group by NombreEmpleado,VentasEmpleado
having(VentasEmpleado) > 10

EXECUTE PA_EmpleadosMasDe10Ventas

GO

CREATE PROCEDURE PA_EmpleadosConJ
AS
SELECT NombreEmpleado as 'Empleado'
from Empleado
where NombreEmpleado like 'J%'
order by Empleado_id 

EXECUTE PA_EmpleadosConJ

GO

CREATE PROCEDURE PA_EmpleadosVentasPromedio
AS
SELECT NombreEmpleado, VentasEmpleado as '2-5 Ventas'
from Empleado
where VentasEmpleado between 2 and 5

EXECUTE PA_EmpleadosVentasPromedio

GO

CREATE PROCEDURE PA_Cervezas500ML
AS
SELECT NombreProducto, Unidad as 'Cervezas 500 mililitros'
from Producto
where Unidad = '500 ML'

EXECUTE PA_Cervezas500ML

GO

CREATE PROCEDURE PA_EmpleadoDelMes
AS
SELECT NombreEmpleado as 'Empleado del mes'
from Empleado
where VentasEmpleado > 30

EXECUTE PA_EmpleadoDelMes

GO

CREATE PROCEDURE PA_ProveedoresDeAlimentos
AS
 SELECT NombreProveedor as 'Proveedor Alimentos'
 from Proveedor
 where TipoProductos = 'Alimentos'

EXECUTE PA_ProveedoresDeAlimentos

GO

CREATE PROCEDURE PA_EmpleadosMenosVentas
AS
SELECT VentasEmpleado as 'Menores ventas'
from Empleado
order by VentasEmpleado asc

EXECUTE PA_EmpleadosMenosVentas

GO
