# Bundle Transacción para indicar la solicitud de una hora médica ambulatoria - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Bundle Transacción para indicar la solicitud de una hora médica ambulatoria**

## Resource Profile: Bundle Transacción para indicar la solicitud de una hora médica ambulatoria 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/BundleSolicitud | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:BundleSolicitud |

 
Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la solicitud de una hora médica 

**Usages:**

* Examples for this Profile: [Bundle/BundSol](Bundle-BundSol.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/BundleSolicitud)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BundleSolicitud.csv), [Excel](StructureDefinition-BundleSolicitud.xlsx), [Schematron](StructureDefinition-BundleSolicitud.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BundleSolicitud",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/BundleSolicitud",
  "version" : "0.4.0",
  "name" : "BundleSolicitud",
  "title" : "Bundle Transacción para indicar la solicitud de una hora médica ambulatoria",
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
  "description" : "Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la solicitud de una hora médica",
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
        "id" : "Bundle.entry:Paciente",
        "path" : "Bundle.entry",
        "sliceName" : "Paciente",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Paciente.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Paciente.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      },
      {
        "id" : "Bundle.entry:Solicitud",
        "path" : "Bundle.entry",
        "sliceName" : "Solicitud",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Solicitud.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "ServiceRequest",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Solicitud.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Solicitud.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:Prev",
        "path" : "Bundle.entry",
        "sliceName" : "Prev",
        "min" : 1,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Prev.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Coverage",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prevision"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Prev.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:Prev.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RazonesDiag",
        "path" : "Bundle.entry",
        "sliceName" : "RazonesDiag",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RazonesDiag.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreDiagnosticoCl"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:RazonesDiag.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RazonesDiag.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:RazonesObs",
        "path" : "Bundle.entry",
        "sliceName" : "RazonesObs",
        "min" : 0,
        "max" : "*",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RazonesObs.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreObservacionCL"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:RazonesObs.request",
        "path" : "Bundle.entry.request",
        "short" : "Método para servidor",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:RazonesObs.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      }
    ]
  }
}

```
