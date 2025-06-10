CREATE TABLE especialidad (
    id_especialidad INT IDENTITY (1,1) PRIMARY KEY,
    nombre VARCHAR (155) NOT NULL
);

SELECT*FROM especialidad;

CREATE TABLE consultorio (
    id_consultorio INT IDENTITY (1,1) PRIMARY KEY,
    piso VARCHAR (25) NOT NULL
);

ALTER TABLE consultorio ADD nombre_consultorio VARCHAR(100) NOT NULL;

AlTER TABLE consultorio ADD numero_consultorio INT NOT NULL;



CREATE TABLE tipo_cita (
id INT IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR (100) NOT NULL
);

CREATE TABLE enfermedad (
 id INT IDENTITY (1,1) PRIMARY KEY,
 nombre VARCHAR (100) NOT NULL,
 tipo VARCHAR (100) NOT NULL
); 

CREATE TABLE paciente (
id INT IDENTITY (1,1) PRIMARY KEY,  
cedula VARCHAR (20) UNIQUE,
nombre VARCHAR (155) NOT NULL,
genero VARCHAR (50) NOT NULL,
fecha_nacimiento DATE NOT NULL,
telefono VARCHAR (50) NOT NULL,
correo VARCHAR (155) NULL,
cuidad VARCHAR (100) NULL,
direccion VARCHAR (200) NULL
);


SELECT*FROM paciente;

CREATE TABLE paciente_enfermedad (
    id_paciente INT,
    id_enfermedad INT,
    estado VARCHAR (50) NOT NULL,
    fecha_diagnostico DATE NOT NULL,
    PRIMARY KEY (id_paciente, id_enfermedad),
    FOREIGN KEY (id_paciente) REFERENCES paciente(id),
    FOREIGN KEY (id_enfermedad) REFERENCES enfermedad (id)
);


CREATE TABLE medico(
id INT IDENTITY (1,1) PRIMARY KEY,
nombre VARCHAR (155) NOT NULL,
id_especialidad INT NOT NULL,
FOREIGN KEY (id_especialidad) REFERENCES especialidad (id_especialidad)
);

 
SELECT*FROM medico;

CREATE TABLE citas (
id_cita INT IDENTITY (1,1) PRIMARY KEY,
fecha DATE NOT NULL,
hora TIME NOT NULL,
estado VARCHAR (50) DEFAULT 'programada',
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
id_consultorio INT NOT NULL,
id_tipo_cita INT NOT NULL,
FOREIGN KEY (id_paciente) REFERENCES paciente (id),
FOREIGN KEY (id_medico) REFERENCES medico (id),
FOREIGN KEY (id_consultorio) REFERENCES consultorio (id_consultorio),
FOREIGN KEY (id_tipo_cita) REFERENCES tipo_cita (id)
);

EXEC SP_HELP citas;

EXEC sp_rename 'paciente.cuidad', 'ciudad', 'COLUMN';

SELECT*FROM paciente;

ALTER TABLE consultorio ADD nombre_consultorio VARCHAR(100) NOT NULL;

AlTER TABLE consultorio ADD numero_consultorio INT NOT NULL;

