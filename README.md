# Sistema_de_reservas_de_citas_medicas
La clinica san vicente fundacion necesita un sistema para gestionar las citas médicas de sus pacientes. El objetivo es facilitar la programación, evitar cruces de horarios y llevar un control claro del historial de atención de cada paciente y médico.

🎯 Objetivos del sistema:

    Registrar pacientes, médicos, especialidades y enfermedades.

    Permitir que los pacientes reserven citas médicas con control de disponibilidad.

    Registrar consultorios y tipos de cita.

    Registrar y actualizar el estado de cada cita (Programada, Cancelada, Atendida).

    Consultar el historial de citas por paciente y médico.

    Asociar enfermedades al historial de cada paciente.

🧱 Entidades y atributos:
1. Paciente

    IDPaciente (PK)

    Nombre

    FechaNacimiento

    Teléfono

    Correo

2. Médico

    IDMédico (PK)

    Nombre

    Teléfono

    Correo

    IDEspecialidad (FK)

3. Especialidad

    IDEspecialidad (PK)

    Nombre

4. Cita

    IDCita (PK)

    Fecha

    Hora

    Estado (Programada, Cancelada, Atendida)

    IDPaciente (FK)

    IDMédico (FK)

    IDConsultorio (FK)

    IDTipoCita (FK)

5. Consultorio

    IDConsultorio (PK)

    Número

    Piso

    Tipo

6. TipoCita

    IDTipoCita (PK)

    Nombre (Consulta, Control, Urgencia, etc.)

    Descripción

7. Enfermedad

    IDEnfermedad (PK)

    Nombre

    Descripción

    Tipo (crónica, aguda, etc.)

    IDPaciente (FK)

    FechaDiagnostico

    Estado (activa, controlada, superada)

🔄 Relaciones:

    Un paciente puede tener muchas citas.

    Un médico puede atender muchas citas.

    Una cita relaciona un paciente con un médico.

    Cada médico pertenece a una única especialidad.

    Una especialidad puede tener varios médicos.

    Una cita se realiza en un consultorio.

    Una cita tiene un tipo definido.

    Un paciente puede tener varias enfermedades registradas.

    Una enfermedad pertenece a un solo paciente (relación 1:N).

📋 Reglas de negocio:

    Un paciente no puede tener dos citas activas (programadas) con el mismo médico a la misma hora.

    Solo se puede agendar una cita con médicos activos.

    El sistema debe permitir cancelar una cita hasta 24 horas antes de la fecha programada.

    No se pueden asignar dos citas al mismo médico en la misma fecha y hora.

🔍 Consultas posibles en el sistema:

    ¿Cuántas citas tiene el Dr. Pérez programadas esta semana?

    ¿Qué pacientes han sido atendidos en el área de Dermatología este mes?

    ¿Cuáles son las próximas citas del paciente Juan Martínez?

    ¿Cuántas citas fueron canceladas la última semana?

    
 ## Diagrama E/R
 ![Diagrama E_R Carenzlg](https://github.com/user-attachments/assets/98f85fe4-cb47-48d7-be33-43ce6af5cf8f)

## Diseño lógico
![sistema_de_reservas_de_citas_medicas_1 3](https://github.com/user-attachments/assets/1641b9e4-178b-4984-bf2e-a6693c498640)




 
 
