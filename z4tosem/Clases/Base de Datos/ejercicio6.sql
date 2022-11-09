-- Ejercicio 6.
-- USANDO EL COMANDO CASCADE EN UPDATE Y DELETE.

drop database if exists ventas1cascade;
create database ventas1cascade;
use ventas1cascade;

-- Se crean las tablas correspondientes

create table cliente1(
Id_Cliente int not null,
Nombre_Cliente varchar (100),
Nombre_Contacto varchar (100),
Direccion varchar (100),
Pais varchar (50),
Codigo_Postal int,
Ciudad varchar (50),
primary key (Id_Cliente));


create table empleados1(
Id_Empleado int not null,
Apellidos varchar(50),
Nombre varchar (50),
Fecha_nac date,
primary key(Id_Empleado));


create table ordenes1(
Id_Orden int not null,
Id_Cliente int not null,
Id_Empleado int not null,
Fecha_Orden date,
Empacadora varchar (50),
primary key (Id_Orden),
foreign key (Id_Cliente) references cliente1 (Id_Cliente) on update cascade on delete cascade,
foreign key (Id_Empleado) references empleados1 (Id_Empleado) on update cascade on delete cascade);




















-- El empleado Dominguez Adrian renunció por lo que se elimina su registro.










delete from empleados1 Where Id_Empleado = 23678;

select * from cliente1;
select * from empleados1;
select * from ordenes1;







-- Se actualiza el Id del cliente Tornel Llantas de 128 a 166.







update cliente1 set Id_Cliente = 166 where Id_Cliente= 128;









select * from cliente1;
select * from ordenes1;


-- el empleado dominguez adrian renuncio por lo que se elimina su registro

delete from empleados1 where Id_Empleado =23678;

select*from cliente1;
select * from empleados1;
select * from ordenes1;



-- se acctualiza el id del cliente ronel llanatas de 128 a 166
update cliente1 set Id_Cliente = 166 where Id_Cliente=128;
select*from cliente1;
select * from empleados1;
select * from ordenes1;