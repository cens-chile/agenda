# Ejemplo Solicitud Servicio 2 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Solicitud Servicio 2**

## Example ServiceRequest: Ejemplo Solicitud Servicio 2

Profile: [Perfil de la Solicitud del Servicio](StructureDefinition-SolicitudServicio.md)

**status**: Active

**intent**: Order

**priority**: Routine

**subject**: [Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)](Patient-EjemploPaciente2.md)

**authoredOn**: 2024-07-20 12:00:00-0300

**reasonReference**: Dolor estomacal agudo



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "EjemploSolicitudServicio2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "subject" : {
    "reference" : "Patient/EjemploPaciente2"
  },
  "authoredOn" : "2024-07-20T12:00:00-03:00",
  "reasonReference" : [
    {
      "display" : "Dolor estomacal agudo"
    }
  ]
}

```
