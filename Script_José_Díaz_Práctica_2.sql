USE [BARADMIN]
GO
/****** Object:  Table [dbo].[Almacen]    Script Date: 23/03/2019 10:26:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Almacen](
	[Almacen_id] [uniqueidentifier] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[CantidadProducto] [int] NULL,
	[TipoProducto] [varchar](50) NULL,
	[Cantidad] [int] NULL,
 CONSTRAINT [pk_alm] PRIMARY KEY CLUSTERED 
(
	[Almacen_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
/****** Object:  Table [dbo].[ClienteMembresia]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
 CONSTRAINT [pk_cliMem] PRIMARY KEY CLUSTERED 
(
	[ClienteMembresia_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 23/03/2019 10:26:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[DetalleVenta_id] [uniqueidentifier] NOT NULL,
	[TipoPago] [varchar](50) NULL,
	[CantidadProducto] [int] NULL,
	[Total] [money] NULL,
	[IVA] [money] NULL,
	[Subtotal] [money] NULL,
	[Folio] [int] NULL,
	[FechaVenta] [date] NULL,
	[Unidad] [int] NULL,
 CONSTRAINT [pk_dteVenta] PRIMARY KEY CLUSTERED 
(
	[DetalleVenta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
 CONSTRAINT [pk_empl] PRIMARY KEY CLUSTERED 
(
	[Empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Membresia]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
/****** Object:  Table [dbo].[Producto]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
/****** Object:  Table [dbo].[Proveedor]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
/****** Object:  Table [dbo].[Telefono]    Script Date: 23/03/2019 10:26:56 p. m. ******/
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
/****** Object:  Table [dbo].[Venta]    Script Date: 23/03/2019 10:26:56 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Venta_id] [uniqueidentifier] NOT NULL,
	[HoraVenta] [date] NULL,
	[EmpleadoVentaId] [varchar](50) NULL,
	[MesaDeVenta] [varchar](30) NULL,
 CONSTRAINT [pk_venta] PRIMARY KEY CLUSTERED 
(
	[Venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
