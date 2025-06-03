 INSERT INTO especialidad (nombre) 
VALUES ('Cardiología')

INSERT INTO especialidad (nombre)
VALUES ('Pediatría'),
('Dermatología'),
('Neurología'),
('Ginecología'),
('Ortopedía'),
('Psiquiatría'),
('Oftamología'),
('Reumatología'),
('Nefrología');

INSERT INTO especialidad(nombre) VALUES ('general');

INSERT INTO especialidad (nombre)
VALUES 
('Neumología'),       
('Endocrinología'),    
('Medicina Interna');  

SELECT*FROM especialidad;

SELECT*FROM medico;

INSERT INTO medico (nombre, id_especialidad)
VALUES ('Carlos Pérez','1'),
('Laura Martinez', '2'),
('Julian Moreno','3'),
('Andrea Rios','4'),
('Marta García', '5'),
('Andrés Mejía', '6'),
('Liliana Torres','7'),
('Luis Vargas','8'),
('Juan Camilo Veracruz','9'),
('Jorge Salazar','10'),
('Natalia Ruiz', '1'),
('Fernando Castro' ,'2'),
('Camila Suárez', '3'),
('Óscar López','6'),
('Valentina Quintero','5');

INSERT INTO medico (nombre, id_especialidad) VALUES ('Marisol Delgado', '11');

INSERT INTO medico (nombre, id_especialidad)
VALUES 
('Ana Restrepo', 12),   
('Carlos Gómez', 12),   
('Mónica Herrera', 13), 
('Santiago Villa', 13), 
('Daniel Patiño', 14),  
('Luisa Franco', 14);   


SELECT*FROM consultorio;

INSERT INTO consultorio (piso, nombre_consultorio, numero_consultorio)
VALUES (1, 'general', 101),
(1, 'Pediátrico', 102),
(1, 'Cardiología', 103),
(1, 'Ginecología', 104),
(2,'Ortopedía',201),
(2, 'Dermatología', 202),
(2, 'Neurología', 203),
(2, 'Psiquiatría', 204),
(3,'Oftamología',301),
(3, 'Nefrología', 302),
(3, 'Reumatología', 303);

SELECT*FROM tipo_cita;

INSERT INTO tipo_cita (nombre)
VALUES('Consulta'),
('Control'),
('Urgencia'),
('Teleconsulta'),
('Evaluación prequerurgica'),
('Postoperatorio'),
('Chequeo general'),
('Vacunación');

SELECT*FROM paciente;

INSERT INTO paciente (cedula, nombre, genero,fecha_nacimiento,telefono,correo,ciudad,direccion)
VALUES ('1045016998','Caren Zuluaga','F','2005-02-09','3223966554','carenzlg52@gmail.com', 'El Santuario', 'Calle 48 #23-12'),
('1045678912', 'Laura González', 'F', '1995-05-12', '3101234567', 'laura.gonzalez@gmail.com', 'Rionegro', 'Calle 10 #15-20'),
('1045678913', 'Carlos Ramírez', 'M', '1988-03-08', '3112345678', 'carlos.ramirez@hotmail.com', 'La Ceja', 'Carrera 7 #8-14'),
('1045678914', 'Daniela López', 'F', '1990-11-25', '3123456789', 'daniela.lopez@yahoo.com', 'El Carmen de Viboral', 'Calle 12 #18-34'),
('1045678915', 'Juan Martínez', 'M', '1985-06-15', '3134567890', 'juanmartinez@outlook.com', 'Marinilla', 'Carrera 4 #6-25'),
('1045678916', 'Sofía Mejía', 'F', '1998-09-30', '3145678901', 'sofia.mejia@gmail.com', 'Guarne', 'Calle 9 #7-12'),
('1045678917', 'Esteban Salazar', 'M', '1992-12-01', '3156789012', 'esteban.salazar@hotmail.com', 'Rionegro', 'Carrera 10 #11-45'),
('1045678918', 'Luisa Restrepo', 'F', '2000-04-22', '3167890123', 'luisa.restrepo@gmail.com', 'San Vicente', 'Calle 3 #5-17'),
('1045678919', 'Felipe Castaño', 'M', '1983-02-17', '3178901234', 'felipe.castano@yahoo.com', 'La Ceja', 'Carrera 6 #9-21'),
('1045678920', 'Camila Zapata', 'F', '1997-07-08', '3189012345', 'camila.zapata@gmail.com', 'El Retiro', 'Calle 11 #13-22'),
('1045678921', 'Andrés Gómez', 'M', '1991-01-19', '3190123456', 'andres.gomez@hotmail.com', 'San Carlos', 'Carrera 8 #4-20'),
('1045678922', 'Valentina Torres', 'F', '1996-08-05', '3201234567', 'valentina.torres@gmail.com', 'El Carmen de Viboral', 'Calle 7 #9-33'),
('1045678923', 'Sebastián Henao', 'M', '1989-10-11', '3212345678', 'sebastian.henao@outlook.com', 'Rionegro', 'Carrera 5 #6-18'),
('1045678924', 'Mariana Jiménez', 'F', '1994-03-28', '3223456789', 'mariana.jimenez@gmail.com', 'Marinilla', 'Calle 8 #12-44'),
('1045678925', 'Julián Arango', 'M', '1987-07-14', '3234567890', 'julian.arango@hotmail.com', 'Guarne', 'Carrera 2 #3-11');

DBCC CHECKIDENT ('paciente', RESEED, 0);
DELETE FROM paciente;

SELECT*FROM enfermedad;

INSERT INTO enfermedad (nombre, tipo)
VALUES ('Lupus', 'crónica'),
('Gripe', 'aguda'),
('Diabetes', 'crónica'),
('Hipertensión', 'crónica'),
('Asma', 'crónica'),
('Bronquitis', 'aguda');

SELECT*FROM paciente_enfermedad;

INSERT INTO paciente_enfermedad (id_paciente, id_enfermedad, estado, fecha_diagnostico)
VALUES (1, 1, 'activa', '2024-05-15'),
(2, 2, 'superada', '2019-08-10'),
(3, 3, 'controlada', '2020-10-23'),
(3, 1, 'activa', '2023-01-12'),
(4, 4, 'activa', '2022-03-05'),
(5, 2, 'controlada', '2020-09-19'),
(5, 6, 'superada', '2017-12-25'),
(6, 5, 'activa', '2023-02-20'),
(7, 3, 'superada', '2018-07-18'),
(8, 6, 'controlada', '2021-04-11'),
(9, 4, 'activa', '2023-10-09'),
(10, 2, 'superada', '2016-01-25'),
(11, 1, 'controlada', '2022-05-11'),
(12, 5, 'activa', '2023-06-03'),
(13, 6, 'controlada', '2015-09-28'),
(14, 3, 'superada', '2020-11-07'),
(15, 1, 'controlada', '2017-09-02');

SELECT*FROM citas;

INSERT INTO citas (fecha, hora, estado, id_paciente, id_medico, id_consultorio, id_tipo_cita)
VALUES 
('2025-06-12', '14:30', 'Cancelada', 1, 9, 11, 3),  
('2025-06-13', '08:30', 'Programada', 2, 16, 1, 4),  
('2025-06-17', '11:00', 'Programada', 3, 9, 11, 5),  
('2025-06-30', '12:00', 'Programda', 4, 19, 4, 2),  
('2025-06-03', '12:00', 'Completada', 5, 16, 1, 3),  
('2025-06-16', '13:00', 'Programada', 6, 13, 5, 2),  
('2025-06-14', '10:30', 'Cancelada', 7, 18, 6, 5),  
('2025-06-19', '10:00', 'Cancelada', 8, 13, 5, 6),  
('2025-06-27', '10:30', 'Programada', 9, 19, 4, 3),  
('2025-06-10', '11:00', 'Programada', 10, 16, 1, 1), 
('2025-06-03', '13:30', 'Completada', 11, 9, 11, 3), 
('2025-07-03', '12:00', 'Programada', 12, 13, 5, 2), 
('2025-06-15', '08:30', 'Programada', 13, 13, 5, 5), 
('2025-06-05', '08:30', 'Cancelada', 14, 18, 6, 4), 
('2025-06-04', '15:00', 'Cancelada', 15, 9, 11, 1); 

DELETE FROM citas;
