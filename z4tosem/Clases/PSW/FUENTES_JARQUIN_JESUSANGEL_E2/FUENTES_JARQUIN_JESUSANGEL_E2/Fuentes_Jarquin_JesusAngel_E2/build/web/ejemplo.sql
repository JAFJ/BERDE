drop database if exists ejemplo;
create database ejemplo;
use ejemplo;

create table respuestas
(id int not null auto_increment primary key,
artista varchar(20), 
cancion varchar(80), 
fechacancion varchar(20), 
genero varchar(20),
otro varchar(15),
tipodeartista varchar(20)
); 

show tables;
describe respuestas;