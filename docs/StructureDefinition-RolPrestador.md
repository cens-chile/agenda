# Perfil del Rol del Prestador - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil del Rol del Prestador**

## Resource Profile: Perfil del Rol del Prestador 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/RolPrestador | *Version*:0.4.0 |
| Draft as of 2025-10-23 | *Computable Name*:RolPrestador |

 
Este es el perfil del rol del prestador 

**Usages:**

* Examples for this Profile: [PractitionerRole/EjemploRolPrestador](PractitionerRole-EjemploRolPrestador.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/RolPrestador)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-RolPrestador.csv), [Excel](StructureDefinition-RolPrestador.xlsx), [Schematron](StructureDefinition-RolPrestador.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "RolPrestador",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/RolPrestador",
  "version" : "0.4.0",
  "name" : "RolPrestador",
  "title" : "Perfil del Rol del Prestador",
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
  "description" : "Este es el perfil del rol del prestador",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CoreRolClinicoCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PractitionerRole",
        "path" : "PractitionerRole"
      },
      {
        "id" : "PractitionerRole.practitioner",
        "path" : "PractitionerRole.practitioner",
        "short" : "Prestador",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador"
            ]
          }
        ]
      },
      {
        "id" : "PractitionerRole.organization",
        "path" : "PractitionerRole.organization",
        "short" : "Nombre de la Organización",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Organizacion"
            ]
          }
        ]
      }
    ]
  }
}

```
