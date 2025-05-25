# Sistema_de_reservas_de_citas_medicas
La clinica san vicente fundacion necesita un sistema para gestionar las citas médicas de sus pacientes. El objetivo es facilitar la programación, evitar cruces de horarios y llevar un control claro del historial de atención de cada paciente y médico.
🎯 Objetivos del sistema:

    Registrar pacientes y médicos en una base de datos.

    Asociar médicos con sus especialidades.

    Permitir que los pacientes reserven citas médicas.

    Controlar la disponibilidad de los médicos por fecha y hora.

    Registrar y actualizar el estado de cada cita (Programada, Cancelada, Atendida).

    Consultar el historial de citas por paciente y médico.

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

🔄 Relaciones:

    Un paciente puede tener muchas citas.

    Un médico puede atender muchas citas.

    Cada cita relaciona un paciente con un médico.

    Cada médico pertenece a una única especialidad.

    Una especialidad puede tener varios médicos.

📋 Reglas de negocio:

    Un paciente no puede tener dos citas activas (programadas) con el mismo médico a la misma hora.

    Solo se puede agendar una cita con médicos activos.

    El sistema debe permitir cancelar una cita hasta 24 horas antes de la fecha programada.

    No se pueden asignar dos citas al mismo médico en la misma fecha y hora.

🔍 Consultas posibles en el sistema:

    ¿Cuántas citas tiene el Dr. x programadas esta semana?

    ¿Qué pacientes han sido atendidos en el área de Dermatología este mes?

    ¿Cuáles son las próximas citas del paciente Juan Martínez?

    ¿Cuántas citas fueron canceladas la última semana?

 ## Diagrama E/R
 ![Diagrama E_R Carenzlg](https://github.com/user-attachments/assets/98f85fe4-cb47-48d7-be33-43ce6af5cf8f)

## Diseño lógico
![sistema_de_reservas_de_citas_medicas_1](https://github.com/user-attachments/assets/4f73307e-37f8-47cc-a609-e66bea71fe9a)




 
 
