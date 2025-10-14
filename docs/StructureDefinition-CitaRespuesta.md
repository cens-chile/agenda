# Perfil de la Respuesta a la cita. - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de la Respuesta a la cita.**

## Resource Profile: Perfil de la Respuesta a la cita. 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:CitaRespuesta |

 
Una respuesta a una solicitud de cita para un paciente y/o médico(s), como una confirmación o un rechazo. 

**Usages:**

* Use this Profile: [Bundle Transacción para indicar la respuesta ante una propuesta de cita médica](StructureDefinition-BundleRespuesta.md)
* Examples for this Profile: [AppointmentResponse/EjemploRespuestaCita1](AppointmentResponse-EjemploRespuestaCita1.md) and [AppointmentResponse/EjemploRespuestaCita2](AppointmentResponse-EjemploRespuestaCita2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/CitaRespuesta)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CitaRespuesta.csv), [Excel](StructureDefinition-CitaRespuesta.xlsx), [Schematron](StructureDefinition-CitaRespuesta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CitaRespuesta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta",
  "version" : "0.4.0",
  "name" : "CitaRespuesta",
  "title" : "Perfil de la Respuesta a la cita.",
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
  "description" : "Una respuesta a una solicitud de cita para un paciente y/o médico(s), como una confirmación o un rechazo.",
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
  "type" : "AppointmentResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "AppointmentResponse.appointment",
        "path" : "AppointmentResponse.appointment",
        "short" : "Referencia a la cita médica"
      },
      {
        "id" : "AppointmentResponse.start",
        "path" : "AppointmentResponse.start",
        "short" : "Nueva hora de cita solicitada"
      },
      {
        "id" : "AppointmentResponse.actor",
        "path" : "AppointmentResponse.actor",
        "short" : "Paciente que responde si rechaza o acepta la hora de la cita medica",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ]
      },
      {
        "id" : "AppointmentResponse.participantStatus",
        "path" : "AppointmentResponse.participantStatus",
        "short" : "Estado del paciente si rechaza o acepta la cita",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/participationstatus"
        }
      }
    ]
  }
}

```
