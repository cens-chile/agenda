# Apellido Servicio - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Apellido Servicio**

## Extension: Apellido Servicio 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:ApellidoServicio |

Comentario respecto al servicio

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Perfil Cita](StructureDefinition-Cita.md)
* Examples for this Extension: [Appointment/EjemploCita1](Appointment-EjemploCita1.md), [Appointment/EjemploCita2](Appointment-EjemploCita2.md) and [Bundle/BundResp](Bundle-BundResp.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/ApellidoServicio)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ApellidoServicio.csv), [Excel](StructureDefinition-ApellidoServicio.xlsx), [Schematron](StructureDefinition-ApellidoServicio.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ApellidoServicio",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio",
  "version" : "0.4.0",
  "name" : "ApellidoServicio",
  "title" : "Apellido Servicio",
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
  "description" : "Comentario respecto al servicio",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "Appointment"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "Apellido Servicio",
        "definition" : "Comentario respecto al servicio"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/ApellidoServicio"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      }
    ]
  }
}

```
