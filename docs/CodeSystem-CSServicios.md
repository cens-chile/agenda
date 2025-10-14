# CSServicios - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CSServicios**

## CodeSystem: CSServicios 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSServicios | *Version*:0.4.0 |
| Active as of 2025-10-13 | *Computable Name*:CSServicios |

 
Aca estan los codigos del servicio del prestador que dara la cita 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSServicios](ValueSet-VSServicios.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSServicios",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSServicios",
  "version" : "0.4.0",
  "name" : "CSServicios",
  "title" : "CSServicios",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Aca estan los codigos del servicio del prestador que dara la cita",
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
  "count" : 10,
  "concept" : [
    {
      "code" : "1",
      "display" : "Información y asistencia sobre adopción y atención permanente"
    },
    {
      "code" : "2",
      "display" : "Evaluación de atención a personas mayores"
    },
    {
      "code" : "3",
      "display" : "Información y derivaciones para el cuidado de personas mayores"
    },
    {
      "code" : "4",
      "display" : "Atención residencial para ancianos"
    },
    {
      "code" : "5",
      "display" : "Gestión de casos para personas mayores"
    },
    {
      "code" : "6",
      "display" : "Comidas a domicilio (Meals On Wheels)"
    },
    {
      "code" : "7",
      "display" : "Visita amistosa"
    },
    {
      "code" : "8",
      "display" : "Asistencia para el cuidado del hogar/limpieza del hogar"
    },
    {
      "code" : "9",
      "display" : "Mantenimiento y reparación del hogar"
    },
    {
      "code" : "10",
      "display" : "Alarmas/Alertas Personales"
    }
  ]
}

```
