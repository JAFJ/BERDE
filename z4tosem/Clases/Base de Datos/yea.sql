create table publicaciones(
id_publi int primary key not null,
date_publi date,
estado_publi varchar(15),
content_publi varchar(200),
reacc_publi varchar(15),
id_user int,
foreign key (id_user) references Usuarios (id_user) on update cascade on delete cascade
);

create table Coments(
id_comm int primary key not null,
content_comm varchar(200),
estado_comm varchar(15),
id_publi int,
id_user int,
foreign key (id_publi) references publicaciones (id_publi) on update cascade on delete cascade,
foreign key (id_user) references Usuarios (id_user) on update cascade on delete cascade

);

















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