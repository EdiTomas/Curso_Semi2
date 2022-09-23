Create database Base1;
go

use Base1;
go

Create table prueba(
Nombre varchar(400)
)
select * from prueba


 Create table PivoteVenta(
Fecha varchar(400),
CodigoCliente varchar(400),
NombreCliente varchar(400),
TipoCliente varchar(400),
DireccionCliente varchar(400),
NumeroCliente varchar(400),
CodVendedor varchar(400),
NombreVendedor varchar(400),
Vacacionista varchar(400),
CodProducto varchar(400),
NombreProducto varchar(400),
MarcaProducto varchar(400),
Categoria varchar(400),
CodSucursal varchar(400),
NombreSucursal varchar(400),
DireccionSucursal varchar(400),
Region varchar(400),
Departamento varchar(400),
Unidades varchar(400),
PrecioUnitario varchar(400),
)


  create table PivoteCompra(
Fecha varchar(400),
CodProveedor varchar(400),
NombreProveedor varchar(400),
DireccionProveedor varchar(400),
NumeroProveedor varchar(400),
WebProveedor varchar(400),
CodProducto varchar(400),
NombreProducto varchar(400),
MarcaProducto varchar(400),
Categoria varchar(400),
CodSucursal varchar(400),
NombreSucursal varchar(400),
DireccionSucursal varchar(400),
Region varchar(400),
Departamento varchar(400),
Unidades varchar(400),
CostoU varchar(400)
)


GO

SELECT NAME FROM SYS.TABLES
GO


select * from PivoteVenta;
go

select * from PivoteCompra;
go
drop table PivoteVenta;
drop table PivoteCompra;
go

truncate table PivoteVenta;
truncate table PivoteCompra;
go