# Ejemplo Solicitud Servicio 1 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Solicitud Servicio 1**

## Example ServiceRequest: Ejemplo Solicitud Servicio 1

Profile: [Perfil de la Solicitud del Servicio](StructureDefinition-SolicitudServicio.md)

**status**: Active

**intent**: Order

**priority**: Routine

**subject**: [Valentina Daniela Contreras (no stated gender), DoB: 2001-02-10 ( 20.706.399-1)](Patient-EjemploPaciente1.md)

**authoredOn**: 2024-07-20 12:00:00-0300

**reasonReference**: Dolor estomacal agudo



## Resource Content

```json
{
  "resourceType" : "ServiceRequest",
  "id" : "EjemploSolicitudServicio1",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/SolicitudServicio"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "priority" : "routine",
  "subject" : {
    "reference" : "Patient/EjemploPaciente1"
  },
  "authoredOn" : "2024-07-20T12:00:00-03:00",
  "reasonReference" : [
    {
      "display" : "Dolor estomacal agudo"
    }
  ]
}

```
