# Ejemplo Paciente - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo Paciente**

## Example Patient: Ejemplo Paciente

Profile: [Paciente](StructureDefinition-PacienteAgenda.md)

Maria Camila Ospina (no stated gender), DoB: 1999-04-12 ( 25.634.739-0)

-------

| | |
| :--- | :--- |
| [Edad del paciente](StructureDefinition-Edad.md) | 25 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "EjemploPaciente2",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad",
      "valueInteger" : 25
    }
  ],
  "identifier" : [
    {
      "value" : "25.634.739-0"
    }
  ],
  "name" : [
    {
      "family" : "Ospina",
      "given" : ["Maria Camila"]
    }
  ],
  "birthDate" : "1999-04-12"
}

```
