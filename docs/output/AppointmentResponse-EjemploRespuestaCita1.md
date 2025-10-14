# Ejemplo Respuesta a la Cita del paciente 1 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Respuesta a la Cita del paciente 1**

## Example AppointmentResponse: Ejemplo Respuesta a la Cita del paciente 1

Profile: [Perfil de la Respuesta a la cita.](StructureDefinition-CitaRespuesta.md)

**appointment**: [Appointment: extension = Comentario de la cita; status = booked; specialty = Adult mental illness - specialty (qualifier value); start = 2024-07-25 12:30:00-0300; end = 2024-07-25 12:50:00-0300](Appointment-EjemploCita1.md)

**actor**: [Valentina Daniela Contreras (no stated gender), DoB: 2001-02-10 ( 20.706.399-1)](Patient-EjemploPaciente1.md)

**participantStatus**: Accepted



## Resource Content

```json
{
  "resourceType" : "AppointmentResponse",
  "id" : "EjemploRespuestaCita1",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta"
    ]
  },
  "appointment" : {
    "reference" : "Appointment/EjemploCita1"
  },
  "actor" : {
    "reference" : "Patient/EjemploPaciente1"
  },
  "participantStatus" : "accepted"
}

```
