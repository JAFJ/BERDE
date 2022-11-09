


-- Aplicando un trigger de insersion

drop trigger if exists cliente_AI;
create trigger cliente_AI after insert on cliente1
for each row
insert into cliente1_cop (Id_Cliente_cop,  Nombre_Contacto_cop, Direccion_cop, Pais_cop, Codigo_Postal_cop, Ciudad_cop, Modificado_cop)
values
(new.Id_Cliente,  new.Nombre_Contacto, new.Direccion, new.Pais, new.Codigo_Postal, new.Ciudad, now());


insert into cliente1 value (222,'Blancos Macias','Calvin Klein','Bahias 23','Colombia',8787,'Bogota');

select*from cliente1;
select*from cliente1_cop;