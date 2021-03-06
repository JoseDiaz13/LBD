USE [BAR-ADMIN]
GO
ALTER TABLE [dbo].[Puesto] DROP CONSTRAINT [FK_Puesto_Empleado]
GO
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Proveedor]
GO
ALTER TABLE [dbo].[Compra] DROP CONSTRAINT [FK_Compra_Producto]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Ventas]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FK_Cliente_Pedidos]
GO
ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_Puesto]
GO
ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_Producto]
GO
ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_Empleado]
GO
ALTER TABLE [dbo].[Bar] DROP CONSTRAINT [FK_Bar_Cliente]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Proveedor]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Pedidos]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Empleado]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Compra]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  Table [dbo].[Bar]    Script Date: 16/03/2019 11:10:21 a. m. ******/
DROP TABLE [dbo].[Bar]
GO
/****** Object:  Table [dbo].[Bar]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bar](
	[Bar_id] [varchar](50) NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[Cliente_id] [varchar](50) NOT NULL,
	[Sucursal] [varchar](50) NOT NULL,
	[Producto_id] [varchar](50) NOT NULL,
	[Empleado_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Bar] PRIMARY KEY CLUSTERED 
(
	[Bar_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cliente_id] [varchar](50) NOT NULL,
	[NombreCliente] [varchar](50) NOT NULL,
	[TélefonoCliente] [varchar](50) NOT NULL,
	[CorreoCliente] [varchar](50) NOT NULL,
	[DirecciónCliente] [varchar](50) NOT NULL,
	[Venta_id] [varchar](50) NOT NULL,
	[Pedidos_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[Cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compra]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[Compra_id] [varchar](50) NOT NULL,
	[Proveedor_id] [varchar](50) NOT NULL,
	[Producto_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED 
(
	[Compra_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Empleado_id] [varchar](50) NOT NULL,
	[NombreEmpleado] [varchar](50) NOT NULL,
	[TipoEmpleado] [varchar](50) NOT NULL,
	[Turno] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedidos]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedidos](
	[Pedidos_id] [varchar](50) NOT NULL,
	[Bebidas] [varchar](50) NOT NULL,
	[Comidas] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pedidos] PRIMARY KEY CLUSTERED 
(
	[Pedidos_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Producto_id] [varchar](50) NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[CostoProducto] [varchar](50) NOT NULL,
	[CantidadProducto] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Proveedor_id] [varchar](50) NOT NULL,
	[NombreProveedor] [varchar](50) NOT NULL,
	[TélefonoProveedor] [varchar](50) NOT NULL,
	[TipoProductos] [varchar](50) NOT NULL,
	[HorarioProveedor] [varchar](50) NOT NULL,
	[DirecciónProveedor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Proveedor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[Puesto_id] [varchar](50) NOT NULL,
	[Empleado_id] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Puesto] PRIMARY KEY CLUSTERED 
(
	[Puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 16/03/2019 11:10:21 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Venta_id] [varchar](50) NOT NULL,
	[TipoDePago] [varchar](50) NOT NULL,
	[Cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[Venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Cliente] FOREIGN KEY([Cliente_id])
REFERENCES [dbo].[Cliente] ([Cliente_id])
GO
ALTER TABLE [dbo].[Bar] CHECK CONSTRAINT [FK_Bar_Cliente]
GO
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Empleado] FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleado] ([Empleado_id])
GO
ALTER TABLE [dbo].[Bar] CHECK CONSTRAINT [FK_Bar_Empleado]
GO
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Producto] FOREIGN KEY([Producto_id])
REFERENCES [dbo].[Producto] ([Producto_id])
GO
ALTER TABLE [dbo].[Bar] CHECK CONSTRAINT [FK_Bar_Producto]
GO
ALTER TABLE [dbo].[Bar]  WITH CHECK ADD  CONSTRAINT [FK_Bar_Puesto] FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Puesto] ([Puesto_id])
GO
ALTER TABLE [dbo].[Bar] CHECK CONSTRAINT [FK_Bar_Puesto]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Pedidos] FOREIGN KEY([Pedidos_id])
REFERENCES [dbo].[Pedidos] ([Pedidos_id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Pedidos]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Ventas] FOREIGN KEY([Venta_id])
REFERENCES [dbo].[Ventas] ([Venta_id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Ventas]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Producto] FOREIGN KEY([Producto_id])
REFERENCES [dbo].[Producto] ([Producto_id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Producto]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Compra_Proveedor] FOREIGN KEY([Proveedor_id])
REFERENCES [dbo].[Proveedor] ([Proveedor_id])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Proveedor]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Proveedor] FOREIGN KEY([Producto_id])
REFERENCES [dbo].[Proveedor] ([Proveedor_id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Proveedor]
GO
ALTER TABLE [dbo].[Puesto]  WITH CHECK ADD  CONSTRAINT [FK_Puesto_Empleado] FOREIGN KEY([Empleado_id])
REFERENCES [dbo].[Empleado] ([Empleado_id])
GO
ALTER TABLE [dbo].[Puesto] CHECK CONSTRAINT [FK_Puesto_Empleado]
GO
