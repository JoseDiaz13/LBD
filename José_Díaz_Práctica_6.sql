USE BARADMIN

 --13 REPORTES

--Pago Superior a 800$
SELECT VentaId as 'Pagos mayores a 800'
from DetalleVentas
where Total > 800  

--Id Ventas En efectivo
SELECT VentaId as 'PagosEfectivo'
from DetalleVentas
where TipoPago = 'Efectivo'

--Id Ventas por Tarjeta

SELECT VentaId as 'PagosEfectivo'
from DetalleVentas
where TipoPago = 'Tarjeta'

--Cervezas con más de 100 unidades en Almacen
SELECT NombreProducto as Cerveza, CantidadProducto as 'Existencia'
from Almacen 
group by NombreProducto, CantidadProducto
having(CantidadProducto) > 100

--Clientes mayores de 30 años
SELECT NombreCliente, Edad as 'Mayores de 30 años'
from ClienteMembresia
group by NombreCliente, Edad
having(Edad) > 30

--Empleados con más de 10 Ventas en el mes
SELECT NombreEmpleado, VentasEmpleado as '10+ Ventas'
from Empleado
group by NombreEmpleado,VentasEmpleado
having(VentasEmpleado) > 10

--Empleados que empiezan con la letra J
SELECT NombreEmpleado as 'Empleado'
from Empleado
where NombreEmpleado like 'J%'
order by Empleado_id 

--Empleados que hicieron entre 2 y 5 ventas en el mes
SELECT NombreEmpleado, VentasEmpleado as '2-5 Ventas'
from Empleado
where VentasEmpleado between 2 and 5

--Cervezas de 500 mililitros
SELECT NombreProducto, Unidad as 'Cervezas 500 mililitros'
from Producto
where Unidad = '500 ML'

--Empleado del mes, (+30 Ventas)
SELECT NombreEmpleado as 'Empleado del mes'
from Empleado
where VentasEmpleado > 30
 
 --Proveedores de alimentos
 SELECT NombreProveedor as 'Proveedor Alimentos'
 from Proveedor
 where TipoProductos = 'Alimentos'

 --Empleados con menos ventas
SELECT VentasEmpleado as 'Menores ventas'
from Empleado
order by VentasEmpleado asc
 

 --SELECT INTO

SELECT * 
INTO Meseros
FROM Empleado
WHERE TipoEmpleado = 'Mesero'

SELECT * FROM Meseros

SELECT * 
INTO Cervezas
FROM Producto
WHERE TipoProducto = 'Cerveza'

SELECT * FROM Cervezas

-- 10 SELECTS

SELECT * FROM ClienteMembresia WHERE Genero = 'Mujer'

SELECT * FROM Venta WHERE MesaDeVenta > 3

SELECT * FROM Membresia WHERE Membresia_id = '226A4CA3-3797-4DD3-9863-0484713E2B36'

SELECT * FROM Almacen WHERE NombreProducto like '%A'

SELECT * FROM Venta WHERE HoraVenta = '2019-04-19 19:04:59.933'

SELECT * FROM Empleado WHERE ApMaterno like '%A'

SELECT * FROM Empleado WHERE FechaIngreso between '2012-03-19' and '2020-01-10'

SELECT * FROM Proveedor WHERE TipoProductos = 'Alimentos' and Edad between 20 and 52

SELECT * FROM Proveedor WHERE Empresa like '%B%'

SELECT * FROM Producto WHERE Precio between 90 and 100


SELECT * FROM Venta 
SELECT * FROM Membresia
SELECT * FROM DetalleVenta
SELECT * FROM Almacen
SELECT * FROM ClienteMembresia
SELECT * FROM Empleado
SELECT * FROM Proveedor
SELECT * FROM Telefono
SELECT * FROM Producto
SELECT * FROM Cliente

