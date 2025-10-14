# Perfil de la Solicitud del Servicio - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de la Solicitud del Servicio**

## Resource Profile: Perfil de la Solicitud del Servicio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:SolicitudServicio |

 
Este es el perfil de la Solicitud del Servicio 

**Usages:**

* Use this Profile: [Bundle Transacción para indicar la solicitud de una hora médica ambulatoria](StructureDefinition-BundleSolicitud.md)
* Refer to this Profile: [Perfil Cita](StructureDefinition-Cita.md)
* Examples for this Profile: [ServiceRequest/EjemploSolicitudServicio1](ServiceRequest-EjemploSolicitudServicio1.md) and [ServiceRequest/EjemploSolicitudServicio2](ServiceRequest-EjemploSolicitudServicio2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/SolicitudServicio)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SolicitudServicio.csv), [Excel](StructureDefinition-SolicitudServicio.xlsx), [Schematron](StructureDefinition-SolicitudServicio.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SolicitudServicio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio",
  "version" : "0.4.0",
  "name" : "SolicitudServicio",
  "title" : "Perfil de la Solicitud del Servicio",
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
  "description" : "Este es el perfil de la Solicitud del Servicio",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "quick",
      "uri" : "http://siframework.org/cqf",
      "name" : "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ServiceRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ServiceRequest.status",
        "path" : "ServiceRequest.status",
        "short" : "Estado de la solicitud de servicio.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/request-status"
        }
      },
      {
        "id" : "ServiceRequest.intent",
        "path" : "ServiceRequest.intent",
        "short" : "Intención de la solicitud del servicio.",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/request-intent"
        }
      },
      {
        "id" : "ServiceRequest.category",
        "path" : "ServiceRequest.category",
        "short" : "Modalidad de atención",
        "max" : "1",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSCategorias"
        }
      },
      {
        "id" : "ServiceRequest.priority",
        "path" : "ServiceRequest.priority",
        "short" : "Indica con qué rapidez se debe atender la ServiceRequest con respecto a otras solicitudes.",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/request-priority"
        }
      },
      {
        "id" : "ServiceRequest.code",
        "path" : "ServiceRequest.code",
        "binding" : {
          "strength" : "example",
          "valueSet" : "http://hl7.org/fhir/ValueSet/procedure-code"
        }
      },
      {
        "id" : "ServiceRequest.subject",
        "path" : "ServiceRequest.subject",
        "short" : "La persona que inició la solicitud.",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
            ]
          }
        ]
      },
      {
        "id" : "ServiceRequest.authoredOn",
        "path" : "ServiceRequest.authoredOn",
        "short" : "Fecha y hora de la solicitud.",
        "min" : 1
      },
      {
        "id" : "ServiceRequest.reasonCode",
        "path" : "ServiceRequest.reasonCode",
        "short" : "Prestación que solicita el paciente.",
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSPrestaciones"
        }
      },
      {
        "id" : "ServiceRequest.reasonReference",
        "path" : "ServiceRequest.reasonReference",
        "short" : "Datos que justifican la solicitud",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL",
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
