# Perfil de la Organización - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de la Organización**

## Resource Profile: Perfil de la Organización 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Organizacion | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:Organizacion |

 
Este perfil es de la organizacion APS. 

**Usages:**

* Refer to this Profile: [Perfil del Rol del Prestador](StructureDefinition-RolPrestador.md)
* Examples for this Profile: [CESFAM Barón](Organization-EjemploOrganizacion.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/Organizacion)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Organizacion.csv), [Excel](StructureDefinition-Organizacion.xlsx), [Schematron](StructureDefinition-Organizacion.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Organizacion",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Organizacion",
  "version" : "0.4.0",
  "name" : "Organizacion",
  "title" : "Perfil de la Organización",
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
  "description" : "Este perfil es de la organizacion APS.",
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
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreOrganizacionCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.name",
        "path" : "Organization.name",
        "short" : "Nombre utilizado para la organización",
        "min" : 1
      }
    ]
  }
}

```
