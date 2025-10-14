# Prestador - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prestador**

## Resource Profile: Prestador 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:Prestador |

 
Perfil del prestador 

**Usages:**

* Refer to this Profile: [Perfil Cita](StructureDefinition-Cita.md) and [Perfil del Rol del Prestador](StructureDefinition-RolPrestador.md)
* Examples for this Profile: [Practitioner/EjemploPrestador1](Practitioner-EjemploPrestador1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/Prestador)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Prestador.csv), [Excel](StructureDefinition-Prestador.xlsx), [Schematron](StructureDefinition-Prestador.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Prestador",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prestador",
  "version" : "0.4.0",
  "name" : "Prestador",
  "title" : "Prestador",
  "status" : "draft",
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
  "description" : "Perfil del prestador",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePrestadorCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Practitioner",
        "path" : "Practitioner"
      },
      {
        "id" : "Practitioner.extension",
        "path" : "Practitioner.extension",
        "short" : "Servicios que dara el prestador",
        "min" : 1
      },
      {
        "id" : "Practitioner.extension:Servicios",
        "path" : "Practitioner.extension",
        "sliceName" : "Servicios",
        "min" : 1,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Servicios"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name",
        "path" : "Practitioner.name",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Practitioner.name.family",
        "path" : "Practitioner.name.family",
        "short" : "1er Apellido Paciente"
      },
      {
        "id" : "Practitioner.name.family.extension:SegundoApellido",
        "path" : "Practitioner.name.family.extension",
        "sliceName" : "SegundoApellido",
        "short" : "2do Apellido Paciente",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Practitioner.name.given",
        "path" : "Practitioner.name.given",
        "min" : 1
      },
      {
        "id" : "Practitioner.qualification",
        "path" : "Practitioner.qualification",
        "min" : 1
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional",
        "path" : "Practitioner.qualification",
        "sliceName" : "TituloProfesional",
        "short" : "Especificación de los Títulos o TituloProfesionalificados Profesionales que tiene el Prestador."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.identifier.value",
        "path" : "Practitioner.qualification.identifier.value",
        "short" : "Valor del tipo de calificación, en este caso TituloProfesional."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.code.coding.system",
        "path" : "Practitioner.qualification.code.coding.system",
        "short" : "El sistema sobre el cual se verificarán los titulos o TituloProfesionalificados de los Prestadores"
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.code.coding.code",
        "path" : "Practitioner.qualification.code.coding.code",
        "short" : "Nombre del titulo o TituloProfesionalificado agregado."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.code.coding.display",
        "path" : "Practitioner.qualification.code.coding.display",
        "short" : "Nombre del titulo o TituloProfesionalificado agregado."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.code.text",
        "path" : "Practitioner.qualification.code.text",
        "short" : "Nombre del titulo entregado por la Super Intendencia de Salud."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.issuer",
        "path" : "Practitioner.qualification.issuer",
        "short" : "Organizacion que entrega el TituloProfesionalificado o título."
      },
      {
        "id" : "Practitioner.qualification:TituloProfesional.issuer.display",
        "path" : "Practitioner.qualification.issuer.display",
        "short" : "Nombre de la organizacion que entrega TituloProfesionalificado o título."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica",
        "path" : "Practitioner.qualification",
        "sliceName" : "EspecialidadMedica",
        "short" : "Especificación de la o las  especialidades que posea el prestador."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica.identifier.value",
        "path" : "Practitioner.qualification.identifier.value",
        "short" : "Valor del tipo de calificación, en este caso esp."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica.code.coding.display",
        "path" : "Practitioner.qualification.code.coding.display",
        "short" : "Nombre de la especialidad."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica.code.text",
        "path" : "Practitioner.qualification.code.text",
        "short" : "Texto libre de la especialidad del profesional."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica.issuer",
        "path" : "Practitioner.qualification.issuer",
        "short" : "Organizacion que entrega el TituloProfesionalificado o título."
      },
      {
        "id" : "Practitioner.qualification:EspecialidadMedica.issuer.display",
        "path" : "Practitioner.qualification.issuer.display",
        "short" : "Nombre de la organizacion que entrega TituloProfesionalificado o título."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad",
        "path" : "Practitioner.qualification",
        "sliceName" : "Subespecialidad",
        "short" : "Especificación de la o las Subespecialidadecialidades que posea el prestador."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad.identifier.value",
        "path" : "Practitioner.qualification.identifier.value",
        "short" : "Valor del tipo de calificación, en este caso Subespecialidad."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad.code.coding.display",
        "path" : "Practitioner.qualification.code.coding.display",
        "short" : "Nombre de la Subespecialidadecialidad."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad.code.text",
        "path" : "Practitioner.qualification.code.text",
        "short" : "Texto libre de la Subespecialidadecialidad del profesional."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad.issuer",
        "path" : "Practitioner.qualification.issuer",
        "short" : "Organizacion que entrega el TituloProfesionalificado o título."
      },
      {
        "id" : "Practitioner.qualification:Subespecialidad.issuer.display",
        "path" : "Practitioner.qualification.issuer.display",
        "short" : "Nombre de la organizacion que entrega TituloProfesionalificado o título."
      }
    ]
  }
}

```
