-- Ejercicio 5
-- EJERCICIOS SQL

-- 1.-  Se crea la base de datos llamada tienda.
/* Se crea la base de datos llamada tienda. */

drop database if exists tienda;
create database tienda;

-- 2.-  Muestra las bases de datos almacenadas.

show databases;

-- 3.-  Habilita la base de datos tienda.

use tienda;

-- 4.- SE generan las tablas fabricantes y articulos con sus respectivas llaves.

create table fabricantes(
clave_fabricante int not null primary key,
nombre_fab varchar (40));

describe fabricantes;

create table articulos(
clave_articulo int not null primary key,
nombre_articulo varchar(50),
precio_unit float(5,2),
clave_fabricante int,
foreign key(clave_fabricante) references fabricantes (clave_fabricante) on delete cascade on update cascade);

-- 5.- Muestra las tablas de la base de datos llamada tienda.

show tables;

-- 6.- Muestra los atributos de la tabla articulos.

describe articulos;

-- 7.- Introduce los datos solicitados en las tablas.

insert into fabricantes  (clave_fabricante, nombre_fab) values
(111,'Kingston'),
(222,'Adata'),
(333,'Logitech'),
(444,'Lexar'),
(555,'Seagate');

insert into articulos (clave_articulo, nombre_articulo, precio_unit, clave_fabricante) values
(780,'Teclado',100.00,333),
(781,'Disco duro 300 Gb',500.50,555),
(782,'Mouse',80.00,333),
(783,'Memoria USB',140.30,444),
(784,'Memoria RAM',290.00,111),
(785,'Disco duro extraíble 250 Gb',650.80,555),
(786,'Memoria USB',279.00,111),
(787,'DVD Rom',450.50,222),
(788,'CD Rom',200.10,222),
(789,'Tarjeta de red',180.00,333);
-- Elige una tabla a mostrar
select*from fabricantes;
select*from articulos;
-- elige uno o mas datos de una tabla a mostrar
select nombre_articulo,precio_unit from articulos;
-- muestra los nombres de los articulos sin repeticiones
select distinct nombre_articulo from articulos;
-- Obtener todos los datos del articulo cuya clave del porducto es 784
select*from articulos where clave_articulo=784;
-- obtener todos los datos del articulo cuyo nombre del producto es "teclado"
select*from articulos where nombre_articulo='teclado';
-- yea
select *from articulos where nombre_articulo='Memoria RAM' or nombre_articulo='Memoria USB';
-- Obtener todos los datos de los articulos que empizan con M
select*from articulos where nombre_articulo like 'M%';
-- Obtener todos los datos de los articulos que terminan con 'B'
select*from articulos where nombre_articulo like '%b';
-- Obtener el nombre de los productos donde el precio sea de 100
select distinct nombre_articulo from articulos where precio_unit=100;
-- Obtener el nombre de los porductos donde el precio sea mayor a 200
select distinct nombre_articulo from articulos where precio_unit>200;
select*from articulos where precio_unit>200;
-- obtener los datos de los articuloos cuyo precio esta entre 100 y 350
select*from articulos where precio_unit>=100 and precio_unit<350;
select*from articulos where precio_unit between 100 and 350;
-- Obtener el precio medio de todos los productos
select avg(precio_unit) from articulos;

select avg(precio_unit) from articulos where clave_fabricante=222;
-- Obtener el nombre y precio de los articulos ordenados por nombre
select nombre_articulo,precio_unit from articulos order by nombre_articulo;
-- Obtener todos los datos de los productos ordenados descendentemente por precio
select*from articulos order by precio_unit desc;
-- Obtener la clave del articulo, nombre del articulo y nombre del fabricante de todos los artículos en venta
select articulos.clave_articulo,articulos.nombre_articulo,fabricantes.nombre_fab from articulos,fabricantes where articulos.clave_fabricante=fabricantes.clave_fabricante;
-- Obtener el nombre y precio de los arrticulos donde el fabricante es logitech  ordenarlos alfabeticaemente por nombre del producto
select articulos.nombre_articulo,articulos.precio_unit,fabricantes.nombre_fab from articulos,fabricantes where articulos.clave_fabricante=fabricantes.clave_fabricante and fabricantes.nombre_fab='Logitech' order by articulos.nombre_articulo;
-- obtener el nombre precuio t nombre del fabricante de los articulos que son marca lexar y kinbgston ordenados de forma descendente por precio
select articulos.precio_unit,fabricantes.nombre_fab from articulos,fabricantes where articulos.clave_fabricante=fabricantes.clave_fabricante and fabricantes.nombre_fab='Logitech' or fabricantes.nombre_fab='Kingston' order by articulos.precio_unit;
-- Añade un producto nuevo:clave del producto 790, bocinas con precio de 120 y lo fabrica Adata
insert into articulos values (790,'Bocinas',120,222);
select*from articulos;
-- cambia el nombre del producto del disco duro extraible de 250 GB a imprpesora laser.
update articulos set nombre_articulo='Impresora laser' where nombre_articulo='Disco duro extraible 250GB';
select*from articulos;
-- realiza las siguientes intstrucciones
update articulos set nombre_articulo = 'Memoria USB 3.0' where nombre_articulo = 'Memoria USB';
select*from articulos
-- j 
delete from fabricantes where clave_fabricante = 555;

select*from fabricantes;
select*from articulos;


update fabricantes set clave_fabricante=6666 where clave_fabricante = 111;
select*from fabricantes;
select*from articulos;


-- aplica un descuento del 10% a todos los productos

update articulos set precio_unit=((precio_unit)-(precio_unit*0.10));
select*from articulos;