drop table if exists cliente1_cop;
create table cliente1_cop(
Id_Cliente_cop int not null,
Nombre_Cliente_cop nvarchar (100),
Nombre_Contacto_cop nvarchar (100),
Direccion_cop nvarchar (100),
Pais_cop varchar (50),
Codigo_Postal_cop int,
Ciudad_cop varchar (50),
Modificado_cop datetime,
primary key (Id_Cliente_cop));