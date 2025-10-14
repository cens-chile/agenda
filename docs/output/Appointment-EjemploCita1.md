# Ejemplo de una cita médica paciente 1 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de una cita médica paciente 1**

## Example Appointment: Ejemplo de una cita médica paciente 1

Profile: [Perfil Cita](StructureDefinition-Cita.md)

**Apellido Servicio**: Comentario de la cita

**status**: Booked

**specialty**: Adult mental illness - specialty (qualifier value)

**start**: 2024-07-25 12:30:00-0300

**end**: 2024-07-25 12:50:00-0300

**basedOn**: [ServiceRequest: status = active; intent = order; priority = routine; authoredOn = 2024-07-20 12:00:00-0300](ServiceRequest-EjemploSolicitudServicio1.md)

> **participant****actor**:[Valentina Daniela Contreras (no stated gender), DoB: 2001-02-10 ( 20.706.399-1)](Patient-EjemploPaciente1.md)**required**: Required**status**: Accepted

> **participant****actor**:[Practitioner Cuevas Antonia](Practitioner-EjemploPrestador1.md)**required**: Optional**status**: Accepted



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "EjemploCita1",
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
  "start" : "2024-07-25T12:30:00-03:00",
  "end" : "2024-07-25T12:50:00-03:00",
  "basedOn" : [
    {
      "reference" : "ServiceRequest/EjemploSolicitudServicio1"
    }
  ],
  "participant" : [
    {
      "actor" : {
        "reference" : "Patient/EjemploPaciente1"
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
