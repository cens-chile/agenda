# Ejemplo de Previsión - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo de Previsión**

## Example Coverage: Ejemplo de Previsión

Profile: [Prevision](StructureDefinition-Prevision.md)

**status**: Active

**type**: FONASA

**beneficiary**: [Valentina Daniela Contreras (no stated gender), DoB: 2001-02-10 ( 20.706.399-1)](Patient-EjemploPaciente1.md)

**payor**: Tramo B



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "EjemploPrevison",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prevision"
    ]
  },
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrevision",
        "code" : "01",
        "display" : "FONASA"
      }
    ]
  },
  "beneficiary" : {
    "reference" : "Patient/EjemploPaciente1"
  },
  "payor" : [
    {
      "display" : "Tramo B"
    }
  ]
}

```
