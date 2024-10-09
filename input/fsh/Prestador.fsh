Profile: Prestador
Parent: CorePrestadorCl
Id: Prestador
Title: "Prestador"
Description: "Perfil del prestador"

* name 1..1 MS
* name.given 1..* MS
* name.family ^short = "1er Apellido Paciente"
* name.family.extension contains https://hl7chile.cl/fhir/ig/clcore/StructureDefinition/SegundoApellido named SegundoApellido 0..1 MS
* name.family.extension[SegundoApellido] ^short = "2do Apellido Paciente"

* qualification 1..*
* qualification[Cert] ^short = "Especificación de los Títulos o Certificados Profesionales que tiene el Prestador."
* qualification[Cert].identifier.value ^short = "Valor del tipo de calificación, en este caso cert."
* qualification[Cert].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o certificados de los Prestadores"
* qualification[Cert].code.coding.code ^short = "Nombre del titulo o certificado agregado."
* qualification[Cert].code.coding.display ^short = "Nombre del titulo o certificado agregado."
* qualification[Cert].code.text ^short = "Nombre del titulo entregado por la Super Intendencia de Salud."
* qualification[Cert].issuer ^short = "Organizacion que entrega el certificado o título."
* qualification[Cert].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título."
* qualification[Esp] ^short = "Especificación de la o las  especialidades que posea el prestador."
* qualification[Esp].identifier.value ^short = "Valor del tipo de calificación, en este caso esp."
* qualification[Esp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Esp].code.coding.display ^short = "Nombre de la especialidad."
* qualification[Esp].code.text ^short = "Texto libre de la especialidad del profesional."
* qualification[Esp].issuer ^short = "Organizacion que entrega el certificado o título."
* qualification[Esp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título."
* qualification[SubEsp] ^short = "Especificación de la o las subespecialidades que posea el prestador."
* qualification[SubEsp].identifier.value ^short = "Valor del tipo de calificación, en este caso subesp."
* qualification[SubEsp].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[SubEsp].code.coding.display ^short = "Nombre de la subespecialidad."
* qualification[SubEsp].code.text ^short = "Texto libre de la subespecialidad del profesional."
* qualification[SubEsp].issuer ^short = "Organizacion que entrega el certificado o título."
* qualification[SubEsp].issuer.display ^short = "Nombre de la organizacion que entrega certificado o título."

* extension contains Servicios named Servicios 1..* MS
  * ^short = "Servicios que dara el prestador" 

Instance: EjemploPrestador1
InstanceOf: Prestador
Usage: #example
Title: "Ejemplo del perfil del prestador 1"
Description: "Ejemplo del prestador 1"

* name.family = "Antonia"
* name.given = "Cuevas"

* qualification[0].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[0].code.coding[0].code = #11
* qualification[0].code.coding[0].display = "Nutricionista"
* qualification[0].code.text = "Certificado(s)"

* extension[Servicios].valueCode = #1