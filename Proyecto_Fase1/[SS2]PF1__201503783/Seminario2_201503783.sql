use seminario2_201503783;
go

Drop table Venta
drop table compra 

Truncate table CLIENTE;
Truncate table PRODUCTO;
Truncate table PROVEEDOR;
Truncate table SURCUSAL;
Truncate table VENDEDOR;







Drop table PROVEEDOR
drop table Producto
drop table SURCUSAL
drop TABLE CLIENTE
drop TABLE VENDEDOR

select * from PROVEEDOR
select * from Producto
select * from SURCUSAL
select * from CLIENTE
select * from VENDEDOR
Select * from venta;

delete from CLIENTE where id_cliente =4;

select * from Venta
select * from Compra

CREATE TABLE PROVEEDOR(
 id_proveedor int identity(1,1) primary key,
 CodProveedor varchar(400) ,
 NombreProveedor varchar(400),
 NumeroProveedor varchar(400),
 DireccionProveedor varchar(400),
 WebProveedor varchar(400)
 )

CREATE TABLE PRODUCTO(
 id_producto int identity(1,1) primary key,
 [CodProducto] varchar(400),
 [NombreProducto] varchar(400),
 [MarcaProducto] varchar(400),
 Categoria varchar(400),
)

CREATE TABLE SURCUSAL(
id_sucursal int identity(1,1) primary key,
CodSucursal varchar(400) ,
NombreSucursal varchar(400),
Region nvarchar(400),
Departamento varchar(400),
DireccionSucursal varchar(400),
)

create table COMPRA(
   id_proveedor int,
   id_producto int, 
   id_sucursal int,
   Fecha date,
   Unidades int,
   CostoU  Decimal(10,2),
   Foreign key (id_proveedor) References PROVEEDOR(id_proveedor),
   Foreign key (id_producto) References PRODUCTO(id_producto),
   Foreign key (id_sucursal) References SURCUSAL(id_sucursal)
)

CREATE TABLE CLIENTE(
id_cliente int identity(1,1) primary key,
CodigoCliente  varchar(400),
NombreCliente  varchar(400),
TipoCliente varchar(400),
DireccionCliente varchar(400),
NumeroCliente varchar(400),
)

CREATE TABLE VENDEDOR(
id_vendedor int identity(1,1) primary key,
CodVendedor  varchar(400),
NombreVendedor varchar(400),
Vacacionista INT,
)


create table VENTA(
   id_cliente int,
   id_vendedor int,
   id_producto int, 
   id_sucursal int,
   Fecha date,
   Unidades int,
   PrecioUnitario  Decimal(10,2),
   Foreign key (id_cliente) References CLIENTE(id_cliente),
   Foreign key (id_vendedor) References VENDEDOR(id_vendedor),
   Foreign key (id_producto) References PRODUCTO(id_producto),
   Foreign key (id_sucursal) References SURCUSAL(id_sucursal)
)




go

select name as tablas from sys.tables
go
--Drop table PivoteVenta;
--Drop table PivoteCompra;
--go

select 'PROVEEDOR' AS TABLA, count(*) AS ELEMENTOS from proveedor
UNION ALL
select 'PRODUCTO', count(*) from producto
UNION ALL
select 'SUCURSAL', count(*) from SURCUSAL
UNION ALL
select 'CLIENTE', count(*) from cliente
UNION ALL
select 'VENDEDOR', count(*) from vendedor
UNION ALL
Select 'VENTA', count(*) from venta
UNION ALL
Select 'COMPRA', count(*) from compra;

