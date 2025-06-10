SELECT*FROM citas

SELECT hora, 
estado,
id_paciente,
id_medico
FROM citas
WHERE id_cita='21';

SELECT*FROM paciente

SELECT
nombre,
fecha_nacimiento,
telefono
FROM paciente
WHERE nombre LIKE ('%Salazar');

SELECT
nombre,
fecha_nacimiento,
ciudad,
telefono
FROM paciente
WHERE ciudad LIKE ('%de');

SELECT*FROM paciente;

SELECT 
nombre,
telefono,
correo
FROM paciente
WHERE telefono >='3150000000' AND
telefono <='3223456789';

SELECT*FROM paciente_enfermedad
SELECT
id_paciente,
id_enfermedad,
estado,
fecha_diagnostico
FROM paciente_enfermedad
WHERE id_enfermedad='1' OR estado='activa'OR fecha_diagnostico= '2017';

SELECT
id_paciente,
id_enfermedad,
estado,
fecha_diagnostico
FROM paciente_enfermedad
WHERE id_enfermedad='1' AND estado='controlada' AND fecha_diagnostico= '2017';

SELECT*FROM paciente
WHERE ciudad IN ('Guarne', 'Rionegro');

SELECT*FROM paciente
WHERE ciudad NOT IN ('Guarne', 'Rionegro');

SELECT*FROM paciente_enfermedad
WHERE YEAR (fecha_diagnostico) BETWEEN '2020' AND '2024';

---Mostrar el historial de enfermedades activas de los pacientes.
SELECT 
 p.nombre AS nombre_paciente,
e.nombre AS enfermedad,
e.tipo AS tipo_enfermedad,
pe.estado,
pe.fecha_diagnostico
FROM paciente_enfermedad pe
JOIN paciente p ON pe.id_paciente = p.id
JOIN enfermedad e ON pe.id_enfermedad = e.id
WHERE pe.estado = 'activa';

---Consultar cuántas citas tiene agendadas un médico en un día determinado.
SELECT m.nombre AS nombre_medico, COUNT(*) AS total_citas
FROM citas c
JOIN medico m ON c.id_medico = m.id
WHERE c.fecha = '2025-06-13' AND c.estado = 'Programada' AND c.id_medico = 16
GROUP BY m.nombre;

---Retornar si un responsable está activo 
CREATE FUNCTION verificar_estado_responsable (
    @fecha_fin DATE
)
RETURNS VARCHAR(20)
AS
BEGIN
    DECLARE @estado VARCHAR(20);

    IF @fecha_fin IS NULL OR @fecha_fin > GETDATE()
        SET @estado = 'Activo';
    ELSE
        SET @estado = 'Inactivo';

    RETURN @estado;
END;

SELECT dbo.verificar_estado_responsable(NULL) AS estado1;  -- Activo
SELECT dbo.verificar_estado_responsable('2025-12-31') AS estado2; -- Activo
SELECT dbo.verificar_estado_responsable('2024-12-31') AS estado3; -- Inactivo

--- Cambiar el consultorio de una cita
SELECT*FROM consultorio;
CREATE PROCEDURE sp_actualizar_consultorio
    @id_cita INT,
    @nuevo_consultorio INT
AS
BEGIN
    UPDATE citas
    SET id_consultorio = @nuevo_consultorio
    WHERE id_cita = @id_cita;
END;

EXEC sp_actualizar_consultorio @id_cita = 7, @nuevo_consultorio = 4;


---Crea una vista de resumen de citas con datos del paciente, médico y consultorio

CREATE VIEW vista_resumen_citas AS
SELECT 
    c.id_cita,
    c.fecha,
    c.hora,
    c.estado,
    p.nombre AS nombre_paciente,
    m.nombre AS nombre_medico,
    e.nombre AS especialidad,
    cons.nombre_consultorio,
    cons.piso
FROM citas c
INNER JOIN paciente p ON c.id_paciente = p.id
INNER JOIN medico m ON c.id_medico = m.id
INNER JOIN especialidad e ON m.id_especialidad = e.id_especialidad
INNER JOIN consultorio cons ON c.id_consultorio = cons.id_consultorio;

SELECT * FROM vista_resumen_citas;


---Crea ua vista de pacientes con enfermedades crónicas
CREATE VIEW vista_enfermedades_cronicas AS
SELECT 
    p.nombre AS nombre_paciente,
    e.nombre AS enfermedad,
    e.tipo,
    pe.estado,
    pe.fecha_diagnostico
FROM paciente_enfermedad pe
INNER JOIN paciente p ON pe.id_paciente = p.id
INNER JOIN enfermedad e ON pe.id_enfermedad = e.id
WHERE e.tipo = 'crónica';

SELECT * FROM vista_enfermedades_cronicas;


---Crear una vista que muestre todas las citas médicas que están programadas
CREATE VIEW vista_citas_programadas_por_especialidad AS
SELECT 
    c.id_cita,
    c.fecha,
    c.hora,
    p.nombre AS nombre_paciente,
    m.nombre AS nombre_medico,
    e.nombre AS especialidad,
    c.estado
FROM citas c
INNER JOIN paciente p ON c.id_paciente = p.id
INNER JOIN medico m ON c.id_medico = m.id
INNER JOIN especialidad e ON m.id_especialidad = e.id_especialidad
WHERE c.estado = 'Programada';

SELECT * FROM vista_citas_programadas_por_especialidad;











