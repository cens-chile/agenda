# Prevision - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prevision**

## Resource Profile: Prevision 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prevision | *Version*:0.4.0 |
| Draft as of 2025-10-13 | *Computable Name*:Prevision |

 
Perfil para la determinación de previsiones en Chile 

**Usages:**

* Use this Profile: [Bundle Transacción para indicar la solicitud de una hora médica ambulatoria](StructureDefinition-BundleSolicitud.md)
* Examples for this Profile: [Coverage/EjemploPrevison](Coverage-EjemploPrevison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.fhir.cl.agenda|current/StructureDefinition/Prevision)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Prevision.csv), [Excel](StructureDefinition-Prevision.xlsx), [Schematron](StructureDefinition-Prevision.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Prevision",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/Prevision",
  "version" : "0.4.0",
  "name" : "Prevision",
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
  "description" : "Perfil para la determinación de previsiones en Chile",
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
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "cdanetv4",
      "uri" : "http://www.cda-adc.ca/en/services/cdanet/",
      "name" : "Canadian Dental Association eclaims standard"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "cpha3pharm",
      "uri" : "http://www.pharmacists.ca/",
      "name" : "Canadian Pharmacy Associaiton eclaims standard"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Coverage",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Coverage",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Coverage.status",
        "path" : "Coverage.status",
        "short" : "Estado de la previsión active | cancelled | draft | entered-in-error,",
        "definition" : "Siempre active",
        "patternCode" : "active",
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "description" : "Códigos requeridos por estándar",
          "valueSet" : "http://hl7.org/fhir/ValueSet/fm-status"
        }
      },
      {
        "id" : "Coverage.type",
        "path" : "Coverage.type",
        "short" : "Tipo de Previsión",
        "definition" : "Códigos de la 820",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSPrevision"
        }
      },
      {
        "id" : "Coverage.type.coding",
        "path" : "Coverage.type.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Coverage.type.coding.code",
        "path" : "Coverage.type.coding.code",
        "short" : "Código de la previsión",
        "min" : 1
      },
      {
        "id" : "Coverage.type.coding.display",
        "path" : "Coverage.type.coding.display",
        "short" : "Glosa asociada al código",
        "min" : 1
      },
      {
        "id" : "Coverage.type.text",
        "path" : "Coverage.type.text",
        "short" : "Descripción de previsión"
      },
      {
        "id" : "Coverage.beneficiary",
        "path" : "Coverage.beneficiary",
        "short" : "Referencia al recurso paciente asociado a la previsión",
        "definition" : "Referencia a Recurso paciente",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda"
            ]
          }
        ],
        "mustSupport" : true
      }
    ]
  }
}

```
