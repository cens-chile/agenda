# Ejemplo Paciente - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Paciente**

## Example Patient: Ejemplo Paciente

Profile: [Paciente](StructureDefinition-PacienteAgenda.md)

Valentina Daniela Contreras (no stated gender), DoB: 2001-02-10 ( 20.706.399-1)

-------

| | |
| :--- | :--- |
| [Edad del paciente](StructureDefinition-Edad.md) | 23 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPaciente1",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad",
      "valueInteger" : 23
    }
  ],
  "identifier" : [
    {
      "value" : "20.706.399-1"
    }
  ],
  "name" : [
    {
      "family" : "Contreras",
      "given" : ["Valentina Daniela"]
    }
  ],
  "birthDate" : "2001-02-10"
}

```
