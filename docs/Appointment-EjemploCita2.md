# Ejemplo de una cita médica paciente 2 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de una cita médica paciente 2**

## Example Appointment: Ejemplo de una cita médica paciente 2

Profile: [Perfil Cita](StructureDefinition-Cita.md)

**Apellido Servicio**: Comentario de la cita

**status**: Booked

**specialty**: Adult mental illness - specialty (qualifier value)

**start**: 2024-07-25 15:30:00-0300

**end**: 2024-07-25 13:10:00-0300

**basedOn**: [ServiceRequest: status = active; intent = order; priority = routine; authoredOn = 2024-07-20 12:00:00-0300](ServiceRequest-EjemploSolicitudServicio2.md)

> **participant****actor**:[Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)](Patient-EjemploPaciente2.md)**required**: Required**status**: Accepted

> **participant****actor**:[Practitioner Cuevas Antonia](Practitioner-EjemploPrestador1.md)**required**: Optional**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "EjemploCita2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Cita"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio",
      "valueString" : "Comentario de la cita"
    }
  ],
  "status" : "booked",
  "specialty" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "408467006"
        }
      ]
    }
  ],
  "start" : "2024-07-25T15:30:00-03:00",
  "end" : "2024-07-25T13:10:00-03:00",
  "basedOn" : [
    {
      "reference" : "ServiceRequest/EjemploSolicitudServicio2"
    }
  ],
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/EjemploPaciente2"
      },
      "required" : "required",
      "status" : "accepted"
    },
    {
      "actor" : {
        "reference" : "Practitioner/EjemploPrestador1"
      },
      "required" : "optional",
      "status" : "accepted"
    }
  ]
}

```
