
drop database if exists ventas1;
create database ventas1;
use ventas1;

-- Se crean las tablas correspondientes

create table cliente1(
Id_Cliente int not null,
Nombre_Cliente nvarchar (100),
Nombre_Contacto nvarchar (100),
Direccion nvarchar (100),
Pais varchar (50),
Codigo_Postal int,
Ciudad varchar (50),
primary key (Id_Cliente));

describe cliente1;

create table empleados1(
Id_Empleado int not null,
Apellidos varchar(50),
Nombre varchar (50),
Fecha_nac date,
primary key(Id_Empleado));

describe empleados1;

create table ordenes1(
Id_Orden int not null,
Id_Cliente int not null,
Id_Empleado int not null,
Fecha_Orden date,
Empacadora varchar (50),
primary key (Id_Orden),
foreign key (Id_Cliente) references cliente1 (Id_Cliente),
foreign key (Id_Empleado) references empleados1 (Id_Empleado));

insert into cliente1 values
(123,'Helados York','Ana Leyva','Constitucion 12','Mexico',08569,'CDMX'),
(124,'TacosMonroy','Marcos Monroy','Arcos 1234','Cuba',786,'Habana'),
(125,'NW Hostal','Henry Millan','Yorksaike Av.','EU',7896,'NY'),
(126,'Alfreds Futterkise','Maria Anders','Obere STR.57','Alemania',789,'Berlin'),
(127,'VW Audio','Archer Fulton','Newsvill 7','Inglaterra',9000,'Londres'),
(128,'Tornel llantas','Jose Avante','Lopez Portillo S/N','Edo. Mex',45667,'Mexico');


select*from cliente1;


insert into empleados1 values
(23678,'Dominguez','Adrian','1968-06-24'),
(23679,'Colmenarez','Manolo','1980-01-13'),
(23680,'Garnier','Alan','2000-09-01'),
(23681,'Mine','Rudolf','1959-02-27'),
(23682,'Johnson','Alman','1984-12-02'),
(23683,'Hernandez','Alma','1999-05-01');


select*from empleados1;

insert into ordenes1 values
(987,123,23678,'2016-12-28','Fe-dex'),
(988,124,23679,'2015-11-30','American Express'),
(989,125,23680,'2014-01-15','DHL Union'),
(990,126,23681,'2017-03-10','Furthen Exp'), 
(991,127,23682,'2016-09-16','Delta'),
(992,128,23683,'2015-04-10','Fe-dex');

select*from ordenes1;



-- 1.- Buscar un determinado cliente

drop procedure if exists Busca_clientes;
delimiter $$
create procedure Busca_clientes()
begin
select*from cliente1 where Ciudad='CDMX';
end $$

delimiter ;

call Busca_clientes();


-- 2.- Actualizar código postal 

drop procedure if exists Actualiza_Postal;
delimiter &&

create procedure Actualiza_Postal(NCodigo_Postal int)
begin
update cliente1 set Codigo_Postal=NCodigo_Postal where Id_Cliente=128;
end &&
-- update cliente1
delimiter ;

call Actualiza_Postal(7894);

select*from cliente1;

-- 3.- Alta o ingreso de nuevos clientes (insertar datos)

drop procedure if exists Nuevos_clientes;
delimiter ^^

create procedure Nuevos_clientes(in Id_cliente int,
in Nombre_Cliente nvarchar(100),
in Nombre_Contacto nvarchar(100),
in Direccion nvarchar(100),
in Pais nvarchar(50),
in Codigo_Postal int,
in Ciudad nvarchar(50))

begin
insert into cliente1(Id_Cliente,Nombre_Cliente,Nombre_Contacto,Direccion,Pais,Codigo_Postal,Ciudad)

values (Id_Cliente,Nombre_Cliente,Nombre_Contacto,Direccion,Pais,Codigo_Postal,Ciudad);

end ^^
delimiter ;

call Nuevos_clientes(120, 'Juan', 'Juan inc.', 'Su casa', 'Paris', 57150, 'Juarez');
call Nuevos_clientes(007, 'James', 'Bond Inc.', 'London 07,', 'Inglaterra', 00707, 'no se');
select*from cliente1;

-- 4.- Conteo de clientes con declaracion de variables

drop procedure if exists Numero_clientes;
delimiter ^^

create procedure Numero_clientes()

begin
declare Num_client int;
select count(*) from cliente1 into Num_client;
select Num_client;

end ^^
delimiter ;

call Numero_clientes();

-- 5.- Buscar cliente cuyo nombre termine por una letra

drop procedure if exists cliente_buscar;
delimiter ^^

create procedure cliente_buscar(letra char (20))

begin
select*from cliente1 where Nombre like letra;

end ^^
delimiter ;

call cliente_buscar('%n');
select*from cliente1;

-- 6.- Buscar empleado cuyo nombre tenga una determninada letra


drop procedure if exists empleado_buscar;
delimiter ^^

create procedure empleado_buscar(letra char(20))

begin
select*from empleados1 where Nombre like letra;

end ^^
delimiter ;

call empleado_buscar('%a%');

drop view if exists vw_1;
create view vw_1 as
select Id_Cliente, Nombre_Cliente, Nombre_Contacto from cliente1
where Nombre_Contacto like 'M%';

select*from vw_1;
select*from vw_2;
select*from vw_3;
select*from vw_4;
select*from vw_5;
select*from vw_6;
select*from vw_7;



select*from cliente1;

