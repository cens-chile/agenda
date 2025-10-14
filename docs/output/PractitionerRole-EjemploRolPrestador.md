# EjemploRolPrestador - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EjemploRolPrestador**

## Example PractitionerRole: EjemploRolPrestador

Profile: [Perfil del Rol del Prestador](StructureDefinition-RolPrestador.md)

**practitioner**: [Practitioner Cuevas Antonia](Practitioner-EjemploPrestador1.md)

**organization**: [Organization CESFAM Barón](Organization-EjemploOrganizacion.md)



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "EjemploRolPrestador",
  "meta" : {
    "profile" : [
      "https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/RolPrestador"
    ]
  },
  "practitioner" : {
    "reference" : "Practitioner/EjemploPrestador1"
  },
  "organization" : {
    "reference" : "Organization/EjemploOrganizacion"
  }
}

```
