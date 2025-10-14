# EjBundResp - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EjBundResp**

## Example Bundle: EjBundResp

Profile: [Bundle Transacción para indicar la respuesta ante una propuesta de cita médica](StructureDefinition-BundleRespuesta.md)

Bundle BundResp of type transaction

-------

Entry 1 - fullUrl = urn:uuid:8a7bac00-3b61-4846-b32f-ad1ec3c46a2c

Rec}:

> 

Profile: [Perfil de la Respuesta a la cita.](StructureDefinition-CitaRespuesta.md)

**appointment**:[Appointment: extension = Comentario de la cita; status = booked; specialty = Adult mental illness - specialty (qualifier value); start = 2024-07-25 15:30:00-0300; end = 2024-07-25 13:10:00-0300](Appointment-EjemploCita2.md)**actor**:[Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)](Patient-EjemploPaciente2.md)**participantStatus**: Accepted

Request:

```
POST AppointmentResponse/

```

-------

Entry 2 - fullUrl = https://server1/fhir/Appointment/EjemploCita2

Rec}:

> 

Profile: [Perfil Cita](StructureDefinition-Cita.md)

**Apellido Servicio**: Comentario de la cita**status**: Booked**specialty**:Adult mental illness - specialty (qualifier value)**start**: 2024-07-25 15:30:00-0300**end**: 2024-07-25 13:10:00-0300**basedOn**:[ServiceRequest: status = active; intent = order; priority = routine; authoredOn = 2024-07-20 12:00:00-0300](ServiceRequest-EjemploSolicitudServicio2.md)
> **participant****actor**:[Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)](Patient-EjemploPaciente2.md)**required**: true**status**: Accepted

> **participant****actor**:[Practitioner Cuevas Antonia](Practitioner-EjemploPrestador1.md)**required**: false**status**: Accepted

Request:

```
PUT Appointment/1

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "BundResp",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/BundleRespuesta"
    ]
  },
  "identifier" : {
    "value" : "BundResp"
  },
  "type" : "transaction",
  "timestamp" : "2024-07-26T14:15:00-03:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:8a7bac00-3b61-4846-b32f-ad1ec3c46a2c",
      "resource" : {
        "resourceType" : "AppointmentResponse",
        "id" : "EjemploRespuestaCita2",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AppointmentResponse_EjemploRespuestaCita2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CitaRespuesta EjemploRespuestaCita2</b></p><a name=\"EjemploRespuestaCita2\"> </a><a name=\"hcEjemploRespuestaCita2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-CitaRespuesta.html\">Perfil de la Respuesta a la cita.</a></p></div><p><b>appointment</b>: <a href=\"Appointment-EjemploCita2.html\">Appointment: extension = Comentario de la cita; status = booked; specialty = Adult mental illness - specialty (qualifier value); start = 2024-07-25 15:30:00-0300; end = 2024-07-25 13:10:00-0300</a></p><p><b>actor</b>: <a href=\"Patient-EjemploPaciente2.html\">Maria Camila Ospina  (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)</a></p><p><b>participantStatus</b>: Accepted</p></div>"
        },
        "appointment" : {
          "reference" : "Appointment/EjemploCita2"
        },
        "actor" : {
          "reference" : "Patient/EjemploPaciente2"
        },
        "participantStatus" : "accepted"
      },
      "request" : {
        "method" : "POST",
        "url" : "AppointmentResponse/"
      }
    },
    {
      "fullUrl" : "https://server1/fhir/Appointment/EjemploCita2",
      "resource" : {
        "resourceType" : "Appointment",
        "id" : "EjemploCita2",
        "meta" : {
          "profile" : [
            "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Cita"
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Appointment_EjemploCita2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Cita EjemploCita2</b></p><a name=\"EjemploCita2\"> </a><a name=\"hcEjemploCita2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-Cita.html\">Perfil Cita</a></p></div><p><b>Apellido Servicio</b>: Comentario de la cita</p><p><b>status</b>: Booked</p><p><b>specialty</b>: <span title=\"Codes:{http://snomed.info/sct 408467006}\">Adult mental illness - specialty (qualifier value)</span></p><p><b>start</b>: 2024-07-25 15:30:00-0300</p><p><b>end</b>: 2024-07-25 13:10:00-0300</p><p><b>basedOn</b>: <a href=\"ServiceRequest-EjemploSolicitudServicio2.html\">ServiceRequest: status = active; intent = order; priority = routine; authoredOn = 2024-07-20 12:00:00-0300</a></p><blockquote><p><b>participant</b></p><p><b>actor</b>: <a href=\"Patient-EjemploPaciente2.html\">Maria Camila Ospina  (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)</a></p><p><b>required</b>: Required</p><p><b>status</b>: Accepted</p></blockquote><blockquote><p><b>participant</b></p><p><b>actor</b>: <a href=\"Practitioner-EjemploPrestador1.html\">Practitioner Cuevas Antonia </a></p><p><b>required</b>: Optional</p><p><b>status</b>: Accepted</p></blockquote></div>"
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
      },
      "request" : {
        "method" : "PUT",
        "url" : "Appointment/1"
      }
    }
  ]
}

```
