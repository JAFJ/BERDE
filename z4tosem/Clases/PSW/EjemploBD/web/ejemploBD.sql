drop database if exists ejemplo;
create database ejemplo;
use ejemplo;

create table persona 
(idPer int not null auto_increment primary key,

nombre varchar(20), 
paterno varchar(20), 
materno varchar(20), 
edad varchar(20));

create table usuarios
(idUsr int auto_increment,
idPer int,
usuario varchar(10),
contraseña varchar (6),
tipoUsr int,
primary key (idUsr),
foreign key (idPer) references persona(idPer));

show tables;
describe persona;

/*insert into usuarios (idUsr,idPer,usuario,contraseña,tipoUsr)values(
1,1,'aaa','1234',1
);

describe usuarios;

select*from usuarios;*/