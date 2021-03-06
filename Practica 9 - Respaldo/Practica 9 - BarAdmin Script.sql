USE [BARADMIN]
GO
/****** Object:  UserDefinedFunction [dbo].[ClienteMembresiaGetNombreCompleto]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ClienteMembresiaGetNombreCompleto](@ID uniqueidentifier)
returns varchar(200)
as
begin
declare @nombreCompleto varchar(200)
select @nombreCompleto = NombreCliente + ApPaterno + ApMaterno from ClienteMembresia
where ClienteMembresia_id = @ID
return @nombreCompleto  

end
GO
/****** Object:  UserDefinedFunction [dbo].[ProductoStock]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[ProductoStock](@Product_id uniqueidentifier)  
RETURNS uniqueidentifier
AS   
-- Returns the stock level for the product.  
BEGIN  
    DECLARE @ret uniqueidentifier;  
    SELECT @ret = (p.TipoProducto)   
    FROM Producto p   
    WHERE p.Producto_id = @Product_id
     
    RETURN @ret;  
END; 
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Almacen_id] [uniqueidentifier] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[CantidadProducto] [int] NULL,
	[TipoProducto] [varchar](50) NULL,
 CONSTRAINT [pk_alm] PRIMARY KEY CLUSTERED 
(
	[Almacen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cervezas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cervezas](
	[Producto_id] [uniqueidentifier] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[TipoProducto] [varchar](50) NULL,
	[Unidad] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Descripcion] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_id] [uniqueidentifier] NOT NULL,
	[Edad] [int] NULL,
	[TipoCliente] [varchar](50) NULL,
 CONSTRAINT [pk_cli] PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClienteMembresia]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClienteMembresia](
	[ClienteMembresia_id] [uniqueidentifier] NOT NULL,
	[NombreCliente] [varchar](50) NULL,
	[ApPaterno] [varchar](30) NULL,
	[ApMaterno] [varchar](30) NULL,
	[Edad] [int] NULL,
	[TipoCliente] [varchar](50) NULL,
	[Genero] [varchar](10) NULL,
 CONSTRAINT [pk_cliMem] PRIMARY KEY CLUSTERED 
(
	[ClienteMembresia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVentas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVentas](
	[DetalleVenta_id] [int] NOT NULL,
	[VentaId] [int] NULL,
	[Total] [money] NULL,
	[CantidadProductos] [varchar](50) NULL,
	[NombreProductos] [varchar](50) NULL,
	[TipoPago] [varchar](50) NULL,
 CONSTRAINT [PK_DetalleVentas] PRIMARY KEY CLUSTERED 
(
	[DetalleVenta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_id] [uniqueidentifier] NOT NULL,
	[NombreEmpleado] [varchar](50) NULL,
	[ApPaterno] [varchar](30) NULL,
	[ApMaterno] [varchar](30) NULL,
	[FechaIngreso] [date] NULL,
	[FechaAntiguedad] [date] NULL,
	[TipoEmpleado] [varchar](50) NULL,
	[VentasEmpleado] [int] NULL,
 CONSTRAINT [pk_empl] PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Membresia](
	[Membresia_id] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[TipoMembresia] [varchar](30) NULL,
	[FechaExpiracion] [date] NULL,
	[FechaRecibida] [date] NULL,
 CONSTRAINT [pk_memb] PRIMARY KEY CLUSTERED 
(
	[Membresia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meseros]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meseros](
	[Empleado_id] [uniqueidentifier] NOT NULL,
	[NombreEmpleado] [varchar](50) NULL,
	[ApPaterno] [varchar](30) NULL,
	[ApMaterno] [varchar](30) NULL,
	[FechaIngreso] [date] NULL,
	[FechaAntiguedad] [date] NULL,
	[TipoEmpleado] [varchar](50) NULL,
	[VentasEmpleado] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto_id] [uniqueidentifier] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[TipoProducto] [varchar](50) NULL,
	[Unidad] [varchar](50) NULL,
	[Precio] [money] NULL,
	[Descripcion] [varchar](50) NULL,
 CONSTRAINT [pk_prod] PRIMARY KEY CLUSTERED 
(
	[Producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Proveedor_id] [uniqueidentifier] NOT NULL,
	[TipoProductos] [varchar](50) NULL,
	[NombreProveedor] [varchar](50) NULL,
	[ApPaterno] [varchar](50) NULL,
	[ApMaterno] [varchar](30) NULL,
	[Empresa] [varchar](30) NULL,
	[Edad] [int] NULL,
	[FechaContratacion] [date] NULL,
 CONSTRAINT [pk_prov] PRIMARY KEY CLUSTERED 
(
	[Proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Telefono]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefono](
	[Telefono_id] [uniqueidentifier] NOT NULL,
	[TelefonoEmpleado] [varchar](30) NULL,
	[TelefonoProveedor] [varchar](30) NULL,
	[TelefonoCliente] [varchar](30) NULL,
 CONSTRAINT [pk_tel] PRIMARY KEY CLUSTERED 
(
	[Telefono_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Venta_id] [uniqueidentifier] NOT NULL,
	[HoraVenta] [datetime] NULL,
	[EmpleadoVentaId] [varchar](50) NULL,
	[MesaDeVenta] [varchar](30) NULL,
 CONSTRAINT [pk_venta] PRIMARY KEY CLUSTERED 
(
	[Venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Cervezas500ML]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[Cervezas500ML]
 AS
 SELECT * From Producto where Unidad = '500 ML'
GO
/****** Object:  View [dbo].[ClientesMayores30]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[ClientesMayores30]
 AS
 SELECT * FROM Cliente where Edad > 30
GO
/****** Object:  View [dbo].[EmpleadoDelMes]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[EmpleadoDelMes]
AS
SELECT * FROM Empleado where VentasEmpleado >  30
GO
/****** Object:  View [dbo].[EmpleadosMenosVentas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[EmpleadosMenosVentas]
 AS
 SELECT * From Empleado where VentasEmpleado < 5
GO
/****** Object:  View [dbo].[ExistenciaCervezas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ExistenciaCervezas]
AS
SELECT * FROM Almacen where CantidadProducto > 100
GO
/****** Object:  View [dbo].[MesaMasVentas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[MesaMasVentas]
 AS
 SELECT * FROM Venta where MesaDeVenta > 5
GO
/****** Object:  View [dbo].[PagoMayor800]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[PagoMayor800]
 AS
 SELECT * FROM DetalleVentas where Total > 800
GO
/****** Object:  View [dbo].[PagosEnEfectivo]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[PagosEnEfectivo]
 AS
 SELECT * FROM DetalleVentas where TipoPago = 'Efectivo'
GO
/****** Object:  View [dbo].[PagosPorTarjeta]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE VIEW [dbo].[PagosPorTarjeta]
 AS
 SELECT * FROM DetalleVentas where TipoPago = 'Tarjeta'
GO
/****** Object:  View [dbo].[PromedioVentas]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PromedioVentas]
AS
SELECT * FROM Empleado where VentasEmpleado between 2 and 5 
GO
/****** Object:  StoredProcedure [dbo].[PA_ExistenciasMayores100]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_ExistenciasMayores100]
AS
SELECT NombreProducto as Cerveza, CantidadProducto as 'Existencia'
from Almacen 
group by NombreProducto, CantidadProducto
having(CantidadProducto) > 100

EXECUTE PA_ExistenciasMayores100
GO
/****** Object:  StoredProcedure [dbo].[PA_PagosMayores800]    Script Date: 26/04/2019 06:08:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PA_PagosMayores800]
AS
SELECT VentaId as 'Pagos mayores a 800'
from DetalleVentas
where Total > 800  

EXECUTE PA_PagosMayores800
GO
