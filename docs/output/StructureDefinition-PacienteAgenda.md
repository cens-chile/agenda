# Paciente - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Paciente**

## Resource Profile: Paciente 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:PacienteAgenda |

 
Perfil del paciente 

**Usages:**

* Use this Profile: [Bundle Transacción para indicar la solicitud de una hora médica ambulatoria](StructureDefinition-BundleSolicitud.md)
* Refer to this Profile: [Perfil Cita](StructureDefinition-Cita.md), [Prevision](StructureDefinition-Prevision.md) and [Perfil de la Solicitud del Servicio](StructureDefinition-SolicitudServicio.md)
* Examples for this Profile: [Patient/EjemploPaciente1](Patient-EjemploPaciente1.md) and [Patient/EjemploPaciente2](Patient-EjemploPaciente2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/PacienteAgenda)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PacienteAgenda.csv), [Excel](StructureDefinition-PacienteAgenda.xlsx), [Schematron](StructureDefinition-PacienteAgenda.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PacienteAgenda",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda",
  "version" : "0.4.0",
  "name" : "PacienteAgenda",
  "title" : "Paciente",
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
  "description" : "Perfil del paciente",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CorePacienteCl",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "short" : "Edad del paciente"
      },
      {
        "id" : "Patient.extension:edad",
        "path" : "Patient.extension",
        "sliceName" : "edad",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Edad"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Patient.identifier.extension",
        "path" : "Patient.identifier.extension",
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.use",
        "path" : "Patient.identifier.use",
        "definition" : "Se definirá este uso siempre como \"official\" debido a que cualquier ID presentado para motivos de este perfil deb ser de este tipo"
      },
      {
        "id" : "Patient.identifier.type.extension:paises",
        "path" : "Patient.identifier.type.extension",
        "sliceName" : "paises",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/CodigoPaises"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.identifier.type.coding.display",
        "path" : "Patient.identifier.type.coding.display",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.given",
        "path" : "Patient.name.given",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name:NombreOficial",
        "path" : "Patient.name",
        "sliceName" : "NombreOficial"
      },
      {
        "id" : "Patient.name:NombreOficial.given",
        "path" : "Patient.name.given",
        "min" : 1
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "min" : 1
      }
    ]
  }
}

```
