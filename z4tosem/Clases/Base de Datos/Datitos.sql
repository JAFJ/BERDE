use ESCUELA;

insert into carrera (Id_carrera, carrera)
			values 	(789, 'Programación'),
					(456, 'Computación');
                    
insert into alumnos (Matricula,nombre,apellido,direccion,telefono,Id_carrera)
			values 	(111, 'Jose','Ramos','Zapata 100','55668899',789),
					(222, 'Silva','Mores','Nogal 3','12345667',789);
                    
insert into materias (No_materia,materia)
			values 	(333, 'Bases de Datos'),
					(444, 'PSW'),
                    (555,'POO'),
                    (666,'Admon');
                    
insert into relacion (Matricula,No_materia)
			values 	(111, 333),
					(111, 444),
                    (111, 555),
					(222, 333),
                    (222, 666);
                    