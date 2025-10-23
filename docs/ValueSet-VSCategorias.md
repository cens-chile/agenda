# VS Prestaciones - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VS Prestaciones**

## ValueSet: VS Prestaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSCategorias | *Version*:0.4.0 |
| Active as of 2025-10-23 | *Computable Name*:VSCategorias |

 
Prestaciones 

 **References** 

* [Perfil de la Solicitud del Servicio](StructureDefinition-SolicitudServicio.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSCategotias`](CodeSystem-CSCategotias.md)version 📦0.4.0

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VSCategorias",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSCategorias",
  "version" : "0.4.0",
  "name" : "VSCategorias",
  "title" : "VS Prestaciones",
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
  "description" : "Prestaciones",
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
  "compose" : {
    "include" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSCategotias"
      }
    ]
  }
}

```
