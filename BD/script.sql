USE [master]
GO
/****** Object:  Database [BDVENTAS_5]    Script Date: 04/05/2021 12:43:25 p. m. ******/
CREATE DATABASE [BDVENTAS_5]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BDVENTAS_5', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BDVENTAS_5.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BDVENTAS_5_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\BDVENTAS_5_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BDVENTAS_5] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDVENTAS_5].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDVENTAS_5] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BDVENTAS_5] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDVENTAS_5] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDVENTAS_5] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDVENTAS_5] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDVENTAS_5] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET RECOVERY FULL 
GO
ALTER DATABASE [BDVENTAS_5] SET  MULTI_USER 
GO
ALTER DATABASE [BDVENTAS_5] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDVENTAS_5] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDVENTAS_5] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDVENTAS_5] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BDVENTAS_5] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BDVENTAS_5] SET QUERY_STORE = OFF
GO
USE [BDVENTAS_5]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BDVENTAS_5]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[codcategoria] [char](2) NOT NULL,
	[descategoria] [varchar](20) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[codcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[VEN_Codigo] [char](10) NOT NULL,
	[DV_Cantidad] [int] NULL,
	[DV_Precio] [decimal](10, 2) NULL,
	[DV_SubTotal] [decimal](10, 2) NULL,
	[codproducto] [char](4) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[codproducto] [char](4) NOT NULL,
	[desproducto] [varchar](40) NULL,
	[codcategoria] [char](2) NULL,
	[preproducto] [decimal](18, 2) NULL,
	[canproducto] [int] NULL,
	[imagen] [varchar](40) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[codproducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[VEN_Codigo] [char](10) NOT NULL,
	[VEN_Fecha] [varchar](50) NULL,
	[VEN_SuTotal] [decimal](10, 2) NULL,
	[VEN_IGV] [decimal](10, 2) NULL,
	[VEN_Total] [decimal](10, 2) NULL,
	[VEN_Cliente] [varchar](50) NULL,
 CONSTRAINT [PK_VENTA_1] PRIMARY KEY CLUSTERED 
(
	[VEN_Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'1 ', N'Laptos')
INSERT [dbo].[Categorias] ([codcategoria], [descategoria]) VALUES (N'2 ', N'Pc')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0001      ', 1, CAST(2500.00 AS Decimal(10, 2)), CAST(2500.00 AS Decimal(10, 2)), N'1   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0001      ', 1, CAST(1500.00 AS Decimal(10, 2)), CAST(1500.00 AS Decimal(10, 2)), N'3   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0002      ', 1, CAST(4000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'4   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0003      ', 1, CAST(4000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'4   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0004      ', 1, CAST(4000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'4   ')
INSERT [dbo].[DETALLE_VENTA] ([VEN_Codigo], [DV_Cantidad], [DV_Precio], [DV_SubTotal], [codproducto]) VALUES (N'0005      ', 1, CAST(4000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'4   ')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'1   ', N'SONY VAIO', N'1 ', CAST(2500.00 AS Decimal(18, 2)), 18, N'sony.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'2   ', N'HP', N'1 ', CAST(1500.00 AS Decimal(18, 2)), 20, N'hp.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'3   ', N'LENOVO', N'1 ', CAST(1500.00 AS Decimal(18, 2)), 16, N'lenovo.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'4   ', N'APPLE', N'1 ', CAST(4000.00 AS Decimal(18, 2)), 11, N'apple.jpg')
INSERT [dbo].[Productos] ([codproducto], [desproducto], [codcategoria], [preproducto], [canproducto], [imagen]) VALUES (N'5   ', N'HP GAMING', N'1 ', CAST(2900.00 AS Decimal(18, 2)), 20, N'hpgamer.jpg')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente]) VALUES (N'0001      ', N'17/07/2014', CAST(3280.00 AS Decimal(10, 2)), CAST(720.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'ERIKA FLORES ORTIZ')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente]) VALUES (N'0002      ', N'01/04/2019', CAST(3280.00 AS Decimal(10, 2)), CAST(720.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'erika')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente]) VALUES (N'0003      ', N'01/04/2019', CAST(3280.00 AS Decimal(10, 2)), CAST(720.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'erika')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente]) VALUES (N'0004      ', N'01/04/2019', CAST(3280.00 AS Decimal(10, 2)), CAST(720.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'erika')
INSERT [dbo].[VENTA] ([VEN_Codigo], [VEN_Fecha], [VEN_SuTotal], [VEN_IGV], [VEN_Total], [VEN_Cliente]) VALUES (N'0005      ', N'04/06/2019', CAST(3280.00 AS Decimal(10, 2)), CAST(720.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)), N'erika')
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_Productos] FOREIGN KEY([codproducto])
REFERENCES [dbo].[Productos] ([codproducto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_Productos]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTA] FOREIGN KEY([VEN_Codigo])
REFERENCES [dbo].[VENTA] ([VEN_Codigo])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTA]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([codcategoria])
REFERENCES [dbo].[Categorias] ([codcategoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
/****** Object:  StoredProcedure [dbo].[pa_Categoria_actualizar]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_Categoria_actualizar]
@codcategoria char(2),
@descategoria varchar(20)
as
update Categorias set descategoria=@descategoria
where codcategoria=@codcategoria
GO
/****** Object:  StoredProcedure [dbo].[pa_Categoria_insertar]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_Categoria_insertar]
@codcategoria char(2),
@descategoria varchar(20)
as
insert into Categorias(codcategoria, descategoria)
values (@codcategoria,@descategoria)
GO
/****** Object:  StoredProcedure [dbo].[pa_Categorias_ListasTodos]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_Categorias_ListasTodos]
as 
select codcategoria,descategoria from Categorias
GO
/****** Object:  StoredProcedure [dbo].[pa_detalleventa]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_detalleventa]
@codigo char(10),
@cantidad int,
@precio decimal(10,2),
@subtotal decimal(10,2),
@codproducto char(4)
as
insert into DETALLE_VENTA(VEN_Codigo, DV_Cantidad, DV_Precio, DV_SubTotal, codproducto)
values (@codigo,@cantidad,@precio,@subtotal,@codproducto)

GO
/****** Object:  StoredProcedure [dbo].[pa_Productos_actualizar]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_Productos_actualizar]
@codproducto char(2),
@desproducto varchar(40),
@codcategoria char(2),
@preproducto decimal(18,2),
@canproducto int,
@imagen varchar(40)
as
update Productos set desproducto=@desproducto,codcategoria=@codcategoria,
					 preproducto=@preproducto,canproducto=@canproducto, imagen=@imagen
where codproducto=@codproducto
GO
/****** Object:  StoredProcedure [dbo].[PA_Productos_Bucar_Por_Categorias]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[PA_Productos_Bucar_Por_Categorias]
@codcategoria char(2)
as
select p.codproducto,p.desproducto,p.codcategoria,p.preproducto,p.canproducto,p.imagen 
from Productos p
where p.codcategoria = @codcategoria
GO
/****** Object:  StoredProcedure [dbo].[pa_Productos_eliminar]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_Productos_eliminar]
@codproducto char(4)
AS
BEGIN
    DELETE FROM Productos where Productos.codcategoria=@codproducto
END
GO
/****** Object:  StoredProcedure [dbo].[pa_Productos_insertar]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_Productos_insertar]
@codproducto char(2),
@desproducto varchar(40),
@codcategoria char(2),
@preproducto decimal(18,2),
@canproducto int,
@imagen varchar(40)
as
insert into Productos(codproducto,desproducto,codcategoria,preproducto,canproducto,imagen)
values (@codproducto,@desproducto,@codcategoria,@preproducto,@canproducto,@imagen)

GO
/****** Object:  StoredProcedure [dbo].[pa_productos_ListarTodos]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_productos_ListarTodos]
as
select p.codproducto,p.desproducto,p.codcategoria,p.preproducto,p.canproducto,p.imagen, cat.codcategoria, cat.descategoria
from Productos p inner join Categorias cat on p.codcategoria=cat.codcategoria
GO
/****** Object:  StoredProcedure [dbo].[pa_ventas]    Script Date: 04/05/2021 12:43:25 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_ventas]
@codigo char(10),
@fecha varchar(50),
@subtotal decimal(10,2),
@igv decimal(10,2),
@total decimal(10,2),
@cliente varchar(50)
as
insert into VENTA(VEN_Codigo, VEN_Fecha, VEN_SuTotal, VEN_IGV, VEN_Total, VEN_Cliente)
values (@codigo,@fecha,@subtotal,@igv,@total,@cliente)

GO
USE [master]
GO
ALTER DATABASE [BDVENTAS_5] SET  READ_WRITE 
GO
