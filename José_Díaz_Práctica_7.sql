USE BARADMIN
GO
 
  --VISTA1--
CREATE VIEW EmpleadoDelMes
AS
SELECT * FROM Empleado where VentasEmpleado >  30

SELECT * From EmpleadoDelMes

 --VISTA2--
CREATE VIEW PromedioVentas
AS
SELECT * FROM Empleado where VentasEmpleado between 2 and 5 

SELECT * FROM PromedioVentas

 --VISTA3--
CREATE VIEW ProveedorAlimentos
AS
SELECT * FROM Proveedor where TipoProductos = 'Alimentos'

SELECT * FROM ProveedorAlimentos

 --VISTA4--
CREATE VIEW MesaConMasVentas
AS
SELECT * FROM Venta order by MesaDeVenta desc

SELECT * FROM MesaConMasVentas

 --VISTA5--
 CREATE VIEW Cervezas500ML
 AS
 SELECT * From Producto where Unidad = '500 ML'

 SELECT * FROM Cervezas500ML

 --VISTA6--
 CREATE VIEW EmpleadosMenosVentas
 AS
 SELECT * From Empleado where VentasEmpleado < 5

 SELECT * FROM EmpleadosMenosVentas

 --VISTA7--
 CREATE VIEW ClientesMayores30
 AS
 SELECT * FROM Cliente where Edad > 30

 SELECT * FROM ClientesMayores30


 --VISTA8--
 CREATE VIEW PagosEnEfectivo
 AS
 SELECT * FROM DetalleVentas where TipoPago = 'Efectivo'

 SELECT * FROM PagosEnEfectivo

 --VISTA9--

 CREATE VIEW PagosPorTarjeta
 AS
 SELECT * FROM DetalleVentas where TipoPago = 'Tarjeta'

 SELECT * FROM PagosPorTarjeta

 --VISTA10--

 CREATE VIEW PagoMayor800
 AS
 SELECT * FROM DetalleVentas where Total > 800
 
 SELECT * FROM PagoMayor800


WITH Promedio as(

SELECT PromedioVentas where VentasEmpleado between 2 and 5

 )
SELECT * FROM PromedioVentas


--CLAUSULA WITH

WITH EmpleadoA AS (SELECT * FROM Empleado)
SELECT * FROM Empleado WHERE TipoEmpleado != 'Bartender'
UNION ALL
SELECT * FROM Empleado WHERE VentasEmpleado < 4

SELECT * FROM Empleado


-- SUBCONSULTA ESCALONADA: 
SELECT AVG (PRECIO) FROM Producto

-- SUBCONSULTA: OBTENER LA MEDIA DEL PRECIO DE UN PRODUCTO Y DE ACUERDO A ELLO VER QUE PRODUCTOS SON SUPERIORES EN PRECIO 
SELECT NombreProducto, Precio FROM Producto WHERE PRECIO > (SELECT AVG (PRECIO) FROM Producto) 

SELECT * FROM Producto


