# Ejemplo del perfil del prestador 1 - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ejemplo del perfil del prestador 1**

## Example Practitioner: Ejemplo del perfil del prestador 1

Profile: [Prestador](StructureDefinition-Prestador.md)

**Servicio del prestador**: 1

**name**: Cuevas Antonia 

### Qualifications

| | |
| :--- | :--- |
| - | **Code** |
| * | TituloProfesionalificado(s) |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "EjemploPrestador1",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador"
    ]
  },
  "extension" : [
    {
      "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Servicios",
      "valueCode" : "1"
    }
  ],
  "name" : [
    {
      "family" : "Antonia",
      "given" : ["Cuevas"]
    }
  ],
  "qualification" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional",
            "code" : "11",
            "display" : "Nutricionista"
          }
        ],
        "text" : "TituloProfesionalificado(s)"
      }
    }
  ]
}

```
