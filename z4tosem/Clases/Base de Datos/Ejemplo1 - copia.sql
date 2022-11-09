#Fuentes Jarquin Jesus Angel
#4IM10


drop database if exists ESCUELA;
create database ESCUELA;
use ESCUELA;
create table Carrera(
Id_carrera int primary key not null,
carrera varchar (20)
);
create table Alumnos(
Matricula int primary key not null,
nombre varchar (15),
apellido varchar (20),
direccion varchar (40),
telefono varchar (15),
Id_carrera int, 
foreign key (Id_carrera) references Carrera (Id_carrera) on update cascade on delete cascade
);

create table materias(
No_materia int primary key not null,
materia varchar (30)
);

create table relacion(
matricula int,
No_materia int,
foreign key (matricula) references Alumnos (matricula) on update cascade on delete cascade,
foreign key (No_materia) references materias (No_materia) on update cascade on delete cascade
);