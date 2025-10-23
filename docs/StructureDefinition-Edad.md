# Edad del paciente - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Edad del paciente**

## Extension: Edad del paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:Edad |

Da la edad del paciente

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [Paciente](StructureDefinition-PacienteAgenda.md)
* Examples for this Extension: [Bundle/BundSol](Bundle-BundSol.md), [Patient/EjemploPaciente1](Patient-EjemploPaciente1.md) and [Patient/EjemploPaciente2](Patient-EjemploPaciente2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/Edad)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Edad.csv), [Excel](StructureDefinition-Edad.xlsx), [Schematron](StructureDefinition-Edad.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Edad",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad",
  "version" : "0.4.0",
  "name" : "Edad",
  "title" : "Edad del paciente",
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
  "description" : "Da la edad del paciente",
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
      "expression" : "Patient"
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
        "short" : "Edad del paciente",
        "definition" : "Da la edad del paciente"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "integer"
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
