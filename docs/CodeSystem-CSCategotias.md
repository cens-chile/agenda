# CS Prestaciones - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CS Prestaciones**

## CodeSystem: CS Prestaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSCategotias | *Version*:0.4.0 |
| Active as of 2025-10-23 | *Computable Name*:CSCategotias |

 
Codigos de las prestaciones 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSCategorias](ValueSet-VSCategorias.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSCategotias",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSCategotias",
  "version" : "0.4.0",
  "name" : "CSCategotias",
  "title" : "CS Prestaciones",
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
  "description" : "Codigos de las prestaciones",
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
  "count" : 2,
  "concept" : [
    {
      "code" : "1",
      "display" : "Urgencia"
    },
    {
      "code" : "2",
      "display" : "Consulta"
    }
  ]
}

```
