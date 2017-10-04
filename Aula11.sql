--Definiendo el formato de la Fecha
SET DATEFORMAT DMY
go
--Verificando la existencia de la Base a crear
if db_id('AULA11') is not null
	begin
		use master
		drop database AULA11
	end
go	
--Creando la Base de datos 
USE MASTER
CREATE DATABASE AULA11
GO

--Activando la Base de datos Ventas
USE AULA11
go



----------------------------------Tabla DISTRITO-----------------------------------

if exists (select name from sysobjects where name='DISTRITO' and type='U')
drop table DISTRITO
go

CREATE TABLE DISTRITO(
ID_DIST CHAR (3) NOT NULL constraint pk_iddist primary key  ,
DESCRIP_DIST VARCHAR(50)
)
GO





----------------------------------Tabla CLIENTE-----------------------------------
CREATE SEQUENCE S_CLIENTE
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_CLIENTE
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_CLIENTE
--go


if exists (select name from sysobjects where name='CLIENTE' and type='U')
drop table CLIENTE
go

create table CLIENTE(
ID_CLIENTE varchar(10) not null constraint pk_idcliente primary key DEFAULT (NEXT VALUE FOR S_CLIENTE),
NOMBRES varchar(50),
APE_PATER_CLIENTE VARCHAR (50) NOT NULL,
APE_MATER_CLIENTE VARCHAR (50) NOT NULL,
DIRECCION_CLIENTE VARCHAR (50)  NULL,
DNI VARCHAR(8),
TELEFONO_CLI CHAR (7) NULL,
ID_DIST CHAR (3) NOT NULL REFERENCES DISTRITO,
CORREO_E VARCHAR (50)  NULL,
ESTADO int default 1
)
go



----------------------------------Tabla VENDEDOR-----------------------------------

CREATE SEQUENCE S_VENDEDOR
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_VENDEDOR
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_VENDEDOR
--go





if exists (select name from sysobjects where name='VENDEDOR' and type='U')
drop table VENDEDOR
go

create table VENDEDOR(
ID_VEN varchar(10) not null constraint pk_vendedorID primary key,
VEN_NOM varchar(30),
VEN_TELEFONO varchar(8),
VEN_DIRECCION varchar(30),
FECHA datetime,
USUARIO varchar(30),
PASS varchar(30)
)
go


----------------------------------Tabla Ploteo-----------------------------------

CREATE SEQUENCE S_PLOTEO
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_PLOTEO
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_PLOTEO
--go




if exists (select name from sysobjects where name='PLOTEO' and type='U')
drop table PLOTEO
go

create table PLOTEO(
ID_PLOTEO VARCHAR(10) not null constraint pk_ploteoID primary key,
TAMAÑO_HOJA VARCHAR(3),
ESCALA VARCHAR(3),
PLOTEO_ARCHIVO VARBINARY(MAX)
)
go

----------------------------------Tabla Copias-----------------------------------

CREATE SEQUENCE S_COPIAS
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_COPIAS
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_COPIAS
--go

if exists (select name from sysobjects where name='COPIAS' and type='U')
drop table COPIAS
go

create table COPIAS(
ID_COPIAS VARCHAR(10) not null constraint pk_copiasID primary key,
NRO_COPIAS VARCHAR(3),
TIPO_COPIA VARCHAR(10),
COPIA_ARCHIVO VARBINARY(MAX)
)
go
----------------------------------Tabla Impresion-----------------------------------
CREATE SEQUENCE S_IMPRESION
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_IMPRESION
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_IMPRESION
--go

if exists (select name from sysobjects where name='IMPRESION' and type='U')
drop table IMPRESION
go

create table IMPRESION(
ID_IMPRESION VARCHAR(10) not null constraint pk_impresionID primary key,
IMPRESION_ARCHIVO VARBINARY(MAX),
TIPO_IMPRESION VARCHAR(10),
IIMPRESION_ARCHIVO VARBINARY(MAX)
)
go
----------------------------------Tabla Reserva_Maquina-----------------------------------

CREATE SEQUENCE S_RESERVA_MAQUINA
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_RESERVA_MAQUINA
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_RESERVA_MAQUINA
--go

if exists (select name from sysobjects where name='RESERVA_MAQUINA' and type='U')
drop table RESERVA_MAQUINA
go

create table RESERVA_MAQUINA(
ID_RESERVA_MAQ VARCHAR(10) not null constraint pk_reserva_maqID primary key,
PRECIO MONEY,
FECHA_INICIO DATETIME,
FECHA_FIN DATETIME
)
go




----------------------------------Tabla Tipo_Servicio-----------------------------------

CREATE SEQUENCE S_TIPO_SERVICIO
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_TIPO_SERVICIO
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_TIPO_SERVICIO
--go

if exists (select name from sysobjects where name='TIPO_SERVICIO' and type='U')
drop table TIPO_SERVICIO
go

create table TIPO_SERVICIO(
ID_TIPO_SERVICIO varchar(10) not null constraint pk_tipo_seruvicioID primary key,
DESCRIPCION varchar(50),
ID_PLOTEO varchar(10) REFERENCES PLOTEO,
ID_COPIA varchar(10) REFERENCES COPIAS,
ID_IMPRESION varchar(10) REFERENCES IMPRESION,
ID_RESERVA_MAQ varchar(10) REFERENCES RESERVA_MAQUINA
)
go

----------------------------------Tabla Servicio-----------------------------------

CREATE SEQUENCE S_SERVICIO
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_SERVICIO
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_SERVICIO
--go

if exists (select name from sysobjects where name='SERVICIO' and type='U')
drop table SERVICIO
go

create table SERVICIO(
ID_SERVICIO varchar(10) not null constraint pk_servicioID primary key,
ID_TIPO_SERVICIO varchar(10) REFERENCES TIPO_SERVICIO,
DESCRIPCION varchar(50),
FECHA datetime,
)
go


----------------------------------Tabla Pedido-----------------------------------

CREATE SEQUENCE S_PEDIDO
AS int
START WITH 1000
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_PEDIDO
--RESTART WITH 1000;
--go

--DROP SEQUENCE S_PEDIDO
--go


if exists (select name from sysobjects where name='PEDIDO' and type='U')
drop table PEDIDO
go

create table PEDIDO(
ID_PEDIDO varchar(10) not null constraint pk_pedidoID primary key,
ID_CLIENTE varchar(10) REFERENCES CLIENTE,
DESCRIPCION varchar(50),
ID_SERVICIO varchar(10) REFERENCES SERVICIO,
ID_VEN varchar(10) REFERENCES VENDEDOR
)
go



----------------------------------Tabla COMPROBANTE-----------------------------------


CREATE SEQUENCE S_COMPROBANTE
AS int
START WITH 1
INCREMENT BY 1;
GO

--ALTER SEQUENCE S_COMPROBANTE
--RESTART WITH 1;
--go

--DROP SEQUENCE S_COMPROBANTE
--go


if exists (select name from sysobjects where name='COMPROBANTE' and type='U')
drop table COMPROBANTE
go

CREATE TABLE COMPROBANTE(
ID_COMP varchar (10) NOT NULL PRIMARY KEY DEFAULT (NEXT VALUE FOR S_COMPROBANTE),
FECHA_COMP SMALLDATETIME NOT NULL,
ID_CLIENTE VARCHAR (10) NOT NULL REFERENCES CLIENTE,
ID_VEN varchar(10) NOT NULL REFERENCES VENDEDOR,
ID_SERVICIO varchar(10) NOT NULL REFERENCES SERVICIO,
ID_PEDIDO varchar(10) NOT NULL REFERENCES PEDIDO
)



/*
create table F_DISPONIBLE_MAQ(
id_fecha 
fecha datetime 
)
go*/

--Insertando los registros a las Tablas

INSERT INTO DISTRITO VALUES('D1','LIMA');
INSERT INTO DISTRITO VALUES('D2','ANCÓN');
INSERT INTO DISTRITO VALUES('D3','ATE');
INSERT INTO DISTRITO VALUES('D4','BARRANCO');
INSERT INTO DISTRITO VALUES('D5','BRENA');
INSERT INTO DISTRITO VALUES('D6','CARABAYLLO');
INSERT INTO DISTRITO VALUES('D7','CHACLACAYO');
INSERT INTO DISTRITO VALUES('D8','CHORRILLOS');
INSERT INTO DISTRITO VALUES('D9','CIENEGUILLA');
INSERT INTO DISTRITO VALUES('D10','COMAS');
INSERT INTO DISTRITO VALUES('D11','EL AGUSTINO');
INSERT INTO DISTRITO VALUES('D12','INDEPENDENCIA');
INSERT INTO DISTRITO VALUES('D13','JESÚS MARÍA');
INSERT INTO DISTRITO VALUES('D14','LA MOLINA');
INSERT INTO DISTRITO VALUES('D15','LA VICTORIA');
INSERT INTO DISTRITO VALUES('D16','LINCE');
INSERT INTO DISTRITO VALUES('D17','LOS OLIVOS');
INSERT INTO DISTRITO VALUES('D18','LURIGANCHO');
INSERT INTO DISTRITO VALUES('D19','LURIN');
INSERT INTO DISTRITO VALUES('D20','MAGDALENA DEL MAR');
INSERT INTO DISTRITO VALUES('D21','MAGDALENA VIEJA');
INSERT INTO DISTRITO VALUES('D22','MIRAFLORES');
INSERT INTO DISTRITO VALUES('D23','PACHACAMAC');
INSERT INTO DISTRITO VALUES('D24','PUCUSANA');
INSERT INTO DISTRITO VALUES('D25','PUENTE PIEDRA');
INSERT INTO DISTRITO VALUES('D26','PUNTA HERMOSA');
INSERT INTO DISTRITO VALUES('D27','PUNTA NEGRA');
INSERT INTO DISTRITO VALUES('D28','RÍMAC');
INSERT INTO DISTRITO VALUES('D29','SAN BARTOLO');
INSERT INTO DISTRITO VALUES('D30','SAN BORJA');
INSERT INTO DISTRITO VALUES('D31','SAN ISIDRO');
INSERT INTO DISTRITO VALUES('D32','SAN JUAN DE LURIGANCHO');
INSERT INTO DISTRITO VALUES('D33','SAN JUAN DE MIRAFLORES');
INSERT INTO DISTRITO VALUES('D34','SAN LUIS');
INSERT INTO DISTRITO VALUES('D35','SAN MARTÍN DE PORRES');
INSERT INTO DISTRITO VALUES('D36','SAN MIGUEL');
INSERT INTO DISTRITO VALUES('D37','SANTA ANITA');
INSERT INTO DISTRITO VALUES('D38','SANTA MARÍA DEL MAR');
INSERT INTO DISTRITO VALUES('D39','SANTA ROSA');
INSERT INTO DISTRITO VALUES('D40','SANTIAGO DE SURCO');
INSERT INTO DISTRITO VALUES('D41','SURQUILLO');
INSERT INTO DISTRITO VALUES('D42','VILLA EL SALVADOR');
INSERT INTO DISTRITO VALUES('D43','SURQUILLO');
INSERT INTO DISTRITO VALUES('D44','VILLA EL SALVADOR');
INSERT INTO DISTRITO VALUES('D45','VILLA MARÍA DEL TRIUNFO');
INSERT INTO DISTRITO VALUES('D46','CALLAO');
INSERT INTO DISTRITO VALUES('D47','BELLAVISTA');
INSERT INTO DISTRITO VALUES('D48','CARMEN DE LA LEGUA REYNOSO');
INSERT INTO DISTRITO VALUES('D49','LA PERLA');
INSERT INTO DISTRITO VALUES('D50','LA PUNTA');
INSERT INTO DISTRITO VALUES('D51','VENTANILLA');
GO







Alter authorization on database::AULA11 to sa;

/*
declare @fec datetime; 

CREATE TABLE #fecha ( 
fecha datetime 
); 

SET @fec ='01/01/2008' 

WHILE @fec<= '01/01/2009' 
BEGIN 

INSERT INTO #fecha (fecha) 
VALUE @fec 

SET @fec = dateadd(d, 1, @fec ); 
END; 
*/