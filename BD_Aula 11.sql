USE [master]
GO
/****** Object:  Database [AULA11]    Script Date: 27/09/2017 22:31:47 ******/
CREATE DATABASE [AULA11]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AULA11', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AULA11.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AULA11_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\AULA11_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AULA11] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AULA11].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AULA11] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AULA11] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AULA11] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AULA11] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AULA11] SET ARITHABORT OFF 
GO
ALTER DATABASE [AULA11] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AULA11] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AULA11] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AULA11] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AULA11] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AULA11] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AULA11] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AULA11] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AULA11] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AULA11] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AULA11] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AULA11] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AULA11] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AULA11] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AULA11] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AULA11] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AULA11] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AULA11] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AULA11] SET  MULTI_USER 
GO
ALTER DATABASE [AULA11] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AULA11] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AULA11] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AULA11] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AULA11] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AULA11] SET QUERY_STORE = OFF
GO
USE [AULA11]
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
USE [AULA11]
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_CLIENTE]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_CLIENTE] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_COMPROBANTE]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_COMPROBANTE] 
 AS [int]
 START WITH 1
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_COPIAS]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_COPIAS] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_IMPRESION]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_IMPRESION] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_PEDIDO]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_PEDIDO] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_PLOTEO]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_PLOTEO] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_RESERVA_MAQUINA]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_RESERVA_MAQUINA] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_SERVICIO]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_SERVICIO] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_TIPO_SERVICIO]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_TIPO_SERVICIO] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
USE [AULA11]
GO
/****** Object:  Sequence [dbo].[S_VENDEDOR]    Script Date: 27/09/2017 22:31:47 ******/
CREATE SEQUENCE [dbo].[S_VENDEDOR] 
 AS [int]
 START WITH 1000
 INCREMENT BY 1
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[ID_CLIENTE] [varchar](10) NOT NULL,
	[NOMBRES] [varchar](50) NULL,
	[APE_PATER_CLIENTE] [varchar](50) NOT NULL,
	[APE_MATER_CLIENTE] [varchar](50) NOT NULL,
	[DIRECCION_CLIENTE] [varchar](50) NULL,
	[DNI] [varchar](8) NULL,
	[TELEFONO_CLI] [char](7) NULL,
	[ID_DIST] [char](3) NOT NULL,
	[CORREO_E] [varchar](50) NULL,
	[ESTADO] [int] NULL,
 CONSTRAINT [pk_idcliente] PRIMARY KEY CLUSTERED 
(
	[ID_CLIENTE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COMPROBANTE]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPROBANTE](
	[ID_COMP] [varchar](10) NOT NULL,
	[FECHA_COMP] [smalldatetime] NOT NULL,
	[ID_CLIENTE] [varchar](10) NOT NULL,
	[ID_VEN] [varchar](10) NOT NULL,
	[ID_SERVICIO] [varchar](10) NOT NULL,
	[ID_PEDIDO] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_COMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[COPIAS]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COPIAS](
	[ID_COPIAS] [varchar](10) NOT NULL,
	[NRO_COPIAS] [varchar](3) NULL,
	[TIPO_COPIA] [varchar](10) NULL,
	[COPIA_ARCHIVO] [varbinary](max) NULL,
 CONSTRAINT [pk_copiasID] PRIMARY KEY CLUSTERED 
(
	[ID_COPIAS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DISTRITO]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRITO](
	[ID_DIST] [char](3) NOT NULL,
	[DESCRIP_DIST] [varchar](50) NULL,
 CONSTRAINT [pk_iddist] PRIMARY KEY CLUSTERED 
(
	[ID_DIST] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[IMPRESION]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPRESION](
	[ID_IMPRESION] [varchar](10) NOT NULL,
	[IMPRESION_ARCHIVO] [varbinary](max) NULL,
	[TIPO_IMPRESION] [varchar](10) NULL,
	[IIMPRESION_ARCHIVO] [varbinary](max) NULL,
 CONSTRAINT [pk_impresionID] PRIMARY KEY CLUSTERED 
(
	[ID_IMPRESION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PEDIDO]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PEDIDO](
	[ID_PEDIDO] [varchar](10) NOT NULL,
	[ID_CLIENTE] [varchar](10) NULL,
	[DESCRIPCION] [varchar](50) NULL,
	[ID_SERVICIO] [varchar](10) NULL,
	[ID_VEN] [varchar](10) NULL,
 CONSTRAINT [pk_pedidoID] PRIMARY KEY CLUSTERED 
(
	[ID_PEDIDO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PLOTEO]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PLOTEO](
	[ID_PLOTEO] [varchar](10) NOT NULL,
	[TAMAÑO_HOJA] [varchar](3) NULL,
	[ESCALA] [varchar](3) NULL,
	[PLOTEO_ARCHIVO] [varbinary](max) NULL,
 CONSTRAINT [pk_ploteoID] PRIMARY KEY CLUSTERED 
(
	[ID_PLOTEO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RESERVA_MAQUINA]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESERVA_MAQUINA](
	[ID_RESERVA_MAQ] [varchar](10) NOT NULL,
	[PRECIO] [money] NULL,
	[FECHA_INICIO] [datetime] NULL,
	[FECHA_FIN] [datetime] NULL,
 CONSTRAINT [pk_reserva_maqID] PRIMARY KEY CLUSTERED 
(
	[ID_RESERVA_MAQ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SERVICIO]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICIO](
	[ID_SERVICIO] [varchar](10) NOT NULL,
	[ID_TIPO_SERVICIO] [varchar](10) NULL,
	[DESCRIPCION] [varchar](50) NULL,
	[FECHA] [datetime] NULL,
 CONSTRAINT [pk_servicioID] PRIMARY KEY CLUSTERED 
(
	[ID_SERVICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TIPO_SERVICIO]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPO_SERVICIO](
	[ID_TIPO_SERVICIO] [varchar](10) NOT NULL,
	[DESCRIPCION] [varchar](50) NULL,
	[ID_PLOTEO] [varchar](10) NULL,
	[ID_COPIA] [varchar](10) NULL,
	[ID_IMPRESION] [varchar](10) NULL,
	[ID_RESERVA_MAQ] [varchar](10) NULL,
 CONSTRAINT [pk_tipo_seruvicioID] PRIMARY KEY CLUSTERED 
(
	[ID_TIPO_SERVICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENDEDOR]    Script Date: 27/09/2017 22:31:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENDEDOR](
	[ID_VEN] [varchar](10) NOT NULL,
	[VEN_NOM] [varchar](30) NULL,
	[VEN_TELEFONO] [varchar](8) NULL,
	[VEN_DIRECCION] [varchar](30) NULL,
	[FECHA] [datetime] NULL,
	[USUARIO] [varchar](30) NULL,
	[PASS] [varchar](30) NULL,
 CONSTRAINT [pk_vendedorID] PRIMARY KEY CLUSTERED 
(
	[ID_VEN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CLIENTE] ADD  DEFAULT (NEXT VALUE FOR [S_CLIENTE]) FOR [ID_CLIENTE]
GO
ALTER TABLE [dbo].[CLIENTE] ADD  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [dbo].[COMPROBANTE] ADD  DEFAULT (NEXT VALUE FOR [S_COMPROBANTE]) FOR [ID_COMP]
GO
ALTER TABLE [dbo].[CLIENTE]  WITH CHECK ADD FOREIGN KEY([ID_DIST])
REFERENCES [dbo].[DISTRITO] ([ID_DIST])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ID_PEDIDO])
REFERENCES [dbo].[PEDIDO] ([ID_PEDIDO])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ID_SERVICIO])
REFERENCES [dbo].[SERVICIO] ([ID_SERVICIO])
GO
ALTER TABLE [dbo].[COMPROBANTE]  WITH CHECK ADD FOREIGN KEY([ID_VEN])
REFERENCES [dbo].[VENDEDOR] ([ID_VEN])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([ID_CLIENTE])
REFERENCES [dbo].[CLIENTE] ([ID_CLIENTE])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([ID_SERVICIO])
REFERENCES [dbo].[SERVICIO] ([ID_SERVICIO])
GO
ALTER TABLE [dbo].[PEDIDO]  WITH CHECK ADD FOREIGN KEY([ID_VEN])
REFERENCES [dbo].[VENDEDOR] ([ID_VEN])
GO
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD FOREIGN KEY([ID_TIPO_SERVICIO])
REFERENCES [dbo].[TIPO_SERVICIO] ([ID_TIPO_SERVICIO])
GO
ALTER TABLE [dbo].[TIPO_SERVICIO]  WITH CHECK ADD FOREIGN KEY([ID_COPIA])
REFERENCES [dbo].[COPIAS] ([ID_COPIAS])
GO
ALTER TABLE [dbo].[TIPO_SERVICIO]  WITH CHECK ADD FOREIGN KEY([ID_IMPRESION])
REFERENCES [dbo].[IMPRESION] ([ID_IMPRESION])
GO
ALTER TABLE [dbo].[TIPO_SERVICIO]  WITH CHECK ADD FOREIGN KEY([ID_PLOTEO])
REFERENCES [dbo].[PLOTEO] ([ID_PLOTEO])
GO
ALTER TABLE [dbo].[TIPO_SERVICIO]  WITH CHECK ADD FOREIGN KEY([ID_RESERVA_MAQ])
REFERENCES [dbo].[RESERVA_MAQUINA] ([ID_RESERVA_MAQ])
GO
USE [master]
GO
ALTER DATABASE [AULA11] SET  READ_WRITE 
GO
