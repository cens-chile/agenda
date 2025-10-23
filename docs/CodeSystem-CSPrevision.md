# CS Prevision - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CS Prevision**

## CodeSystem: CS Prevision 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrevision | *Version*:0.4.0 |
| Active as of 2025-10-23 | *Computable Name*:CSPrevision |

 
Codigos de la previsión del paciente 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPrevision](ValueSet-VSPrevision.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPrevision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrevision",
  "version" : "0.4.0",
  "name" : "CSPrevision",
  "title" : "CS Prevision",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Codigos de la previsión del paciente",
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
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [
    {
      "code" : "01",
      "display" : "FONASA"
    },
    {
      "code" : "02",
      "display" : "ISAPRE"
    },
    {
      "code" : "03",
      "display" : "CAPREDENA"
    },
    {
      "code" : "04",
      "display" : "DIPRECA"
    },
    {
      "code" : "05",
      "display" : "SISA"
    },
    {
      "code" : "96",
      "display" : "NINGUNA"
    },
    {
      "code" : "99",
      "display" : "DESCONOCIDO"
    }
  ]
}

```
