drop database if exists cambiar_auto;
create database cambiar_auto;
use cambiar_auto;
create table persona (
Id_per int not null primary key auto_increment,
nombre varchar(15),
apellido varchar (15));

alter table persona auto_increment=100;

insert into persona values (default,'Miguel','Hernández'),
							(default,'Angel','Rubio'),
							(default,'Antonio','Castillo'),
							(default,'Alberto','Castro'),
							(default,'Noemi','Dante'),
							(default,'Manolo','Pérez'),
							(default,'Baston','Vidal');
                            
select*from persona;
