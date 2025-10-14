# Perfil Cita - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil Cita**

## Resource Profile: Perfil Cita 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Cita | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:Cita |

 
Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros. 

**Usages:**

* Use this Profile: [Bundle Transacción para indicar la respuesta ante una propuesta de cita médica](StructureDefinition-BundleRespuesta.md)
* Examples for this Profile: [Appointment/EjemploCita1](Appointment-EjemploCita1.md) and [Appointment/EjemploCita2](Appointment-EjemploCita2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/Cita)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Cita.csv), [Excel](StructureDefinition-Cita.xlsx), [Schematron](StructureDefinition-Cita.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Cita",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Cita",
  "version" : "0.4.0",
  "name" : "Cita",
  "title" : "Perfil Cita",
  "status" : "draft",
  "date" : "2025-10-13T23:29:58-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "ical",
      "uri" : "http://ietf.org/rfc/2445",
      "name" : "iCalendar"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Appointment.extension",
        "path" : "Appointment.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Comentarios respecto al servicio que se realizara durante la cita.",
        "min" : 1
      },
      {
        "id" : "Appointment.extension:apellidoservicio",
        "path" : "Appointment.extension",
        "sliceName" : "apellidoservicio",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Appointment.status",
        "path" : "Appointment.status",
        "definition" : "En la medida que no exista una respuesta de aprobación esta queda como #proposed",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/appointmentstatus"
        }
      },
      {
        "id" : "Appointment.specialty",
        "path" : "Appointment.specialty",
        "short" : "La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita.",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/ValueSet/c80-practice-codes"
        }
      },
      {
        "id" : "Appointment.start",
        "path" : "Appointment.start",
        "short" : "Cuando se realizará la cita.",
        "min" : 1
      },
      {
        "id" : "Appointment.basedOn",
        "path" : "Appointment.basedOn",
        "short" : "Referencia a la solicitud del servicio.",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio"
            ]
          }
        ]
      },
      {
        "id" : "Appointment.participant",
        "path" : "Appointment.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "required"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "short" : "Participantes de la Cita médica.",
        "definition" : "Participantes de la cita acotados a paciente y prestador.",
        "min" : 2
      },
      {
        "id" : "Appointment.participant:paciente",
        "path" : "Appointment.participant",
        "sliceName" : "paciente",
        "short" : "Paciente agendado.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Appointment.participant:paciente.actor",
        "path" : "Appointment.participant.actor",
        "short" : "Referencia al paciente agendado.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Appointment.participant:paciente.required",
        "path" : "Appointment.participant.required",
        "min" : 1,
        "patternCode" : "required",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/participantrequired"
        }
      },
      {
        "id" : "Appointment.participant:prestador",
        "path" : "Appointment.participant",
        "sliceName" : "prestador",
        "short" : "Prestador individual agendado.",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Appointment.participant:prestador.actor",
        "path" : "Appointment.participant.actor",
        "short" : "Referencia al prestador agendado.",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Appointment.participant:prestador.required",
        "path" : "Appointment.participant.required",
        "min" : 1,
        "patternCode" : "optional",
        "mustSupport" : true
      }
    ]
  }
}

```
