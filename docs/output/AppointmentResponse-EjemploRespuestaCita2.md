# Ejemplo Respuesta a la Cita del paciente 1 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Respuesta a la Cita del paciente 1**

## Example AppointmentResponse: Ejemplo Respuesta a la Cita del paciente 1

Profile: [Perfil de la Respuesta a la cita.](StructureDefinition-CitaRespuesta.md)

**appointment**: [Appointment: extension = Comentario de la cita; status = booked; specialty = Adult mental illness - specialty (qualifier value); start = 2024-07-25 15:30:00-0300; end = 2024-07-25 13:10:00-0300](Appointment-EjemploCita2.md)

**actor**: [Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)](Patient-EjemploPaciente2.md)

**participantStatus**: Accepted



## Resource Content

```json
{
  "resourceType" : "AppointmentResponse",
  "id" : "EjemploRespuestaCita2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta"
    ]
  },
  "appointment" : {
    "reference" : "Appointment/EjemploCita2"
  },
  "actor" : {
    "reference" : "Patient/EjemploPaciente2"
  },
  "participantStatus" : "accepted"
}

```
