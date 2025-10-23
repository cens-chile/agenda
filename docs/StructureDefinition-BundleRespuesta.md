# Bundle Transacción para indicar la respuesta ante una propuesta de cita médica - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Transacción para indicar la respuesta ante una propuesta de cita médica**

## Resource Profile: Bundle Transacción para indicar la respuesta ante una propuesta de cita médica 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/BundleRespuesta | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:BundleRespuesta |

 
Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la respuesta ante una oferta de hora médica 

**Usages:**

* Examples for this Profile: [Bundle/BundResp](Bundle-BundResp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/BundleRespuesta)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleRespuesta.csv), [Excel](StructureDefinition-BundleRespuesta.xlsx), [Schematron](StructureDefinition-BundleRespuesta.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleRespuesta",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/BundleRespuesta",
  "version" : "0.4.0",
  "name" : "BundleRespuesta",
  "title" : "Bundle Transacción para indicar la respuesta ante una propuesta de cita médica ",
  "status" : "draft",
  "date" : "2025-10-23T00:01:47-03:00",
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
  "description" : "Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la respuesta ante una oferta de hora médica",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.identifier",
        "path" : "Bundle.identifier",
        "short" : "Identificador para el Bundle",
        "definition" : "Un identificador  para el paquete de datos del Solicitud.",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "short" : "Document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection, en nuestro caso se fuerza a collection",
        "definition" : "Indica la finalidad de este paquete, es decir, cómo se va a utilizar.",
        "patternCode" : "transaction",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/bundle-type"
        }
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "short" : "Hora en la cual cual fue ensamblado el Bundle en formato YYYY-MM-DDThh:mm:ss.sss+zz:zz",
        "definition" : "La fecha/hora en que se ensambló el paquete, es decir, cuando se colocaron los recursos en el paquete",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Tipos de recursos necesarios",
          "rules" : "open"
        },
        "short" : "Recursos Contenidos en el Bundle",
        "min" : 2,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry.resource",
        "path" : "Bundle.entry.resource",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Respuesta",
        "path" : "Bundle.entry",
        "sliceName" : "Respuesta",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Respuesta.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "AppointmentResponse",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/CitaRespuesta"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Respuesta.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Respuesta.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Agenda",
        "path" : "Bundle.entry",
        "sliceName" : "Agenda",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Agenda.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Appointment",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Cita"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Agenda.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Agenda.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      }
    ]
  }
}

```
