Profile: Prestador
Parent: CorePrestadorCl
Id: Prestador
Title: "Prestador"
Description: "Perfil del prestador"

* name 1..1 MS
* name.given 1..* MS
* name.family ^short = "1er Apellido Paciente"

* qualification 1..*
* qualification[TituloProfesional] ^short = "Especificación de los Títulos o TituloProfesionalificados Profesionales que tiene el Prestador."
* qualification[TituloProfesional].identifier.value ^short = "Valor del tipo de calificación, en este caso TituloProfesional."
* qualification[TituloProfesional].code.coding.system ^short = "El sistema sobre el cual se verificarán los titulos o TituloProfesionalificados de los Prestadores"
* qualification[TituloProfesional].code.coding.code ^short = "Nombre del titulo o TituloProfesionalificado agregado."
* qualification[TituloProfesional].code.coding.display ^short = "Nombre del titulo o TituloProfesionalificado agregado."
* qualification[TituloProfesional].code.text ^short = "Nombre del titulo entregado por la Super Intendencia de Salud."
* qualification[TituloProfesional].issuer ^short = "Organizacion que entrega el TituloProfesionalificado o título."
* qualification[TituloProfesional].issuer.display ^short = "Nombre de la organizacion que entrega TituloProfesionalificado o título."
* qualification[EspecialidadMedica] ^short = "Especificación de la o las  especialidades que posea el prestador."
* qualification[EspecialidadMedica].identifier.value ^short = "Valor del tipo de calificación, en este caso esp."
* qualification[EspecialidadMedica].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[EspecialidadMedica].code.coding.display ^short = "Nombre de la especialidad."
* qualification[EspecialidadMedica].code.text ^short = "Texto libre de la especialidad del profesional."
* qualification[EspecialidadMedica].issuer ^short = "Organizacion que entrega el TituloProfesionalificado o título."
* qualification[EspecialidadMedica].issuer.display ^short = "Nombre de la organizacion que entrega TituloProfesionalificado o título."
* qualification[Subespecialidad] ^short = "Especificación de la o las Subespecialidadecialidades que posea el prestador."
* qualification[Subespecialidad].identifier.value ^short = "Valor del tipo de calificación, en este caso Subespecialidad."
* qualification[Subespecialidad].code.coding.system ^short = "El sistema sobre el cual se verificarán las especialidades de los Prestadores"
* qualification[Subespecialidad].code.coding.display ^short = "Nombre de la Subespecialidadecialidad."
* qualification[Subespecialidad].code.text ^short = "Texto libre de la Subespecialidadecialidad del profesional."
* qualification[Subespecialidad].issuer ^short = "Organizacion que entrega el TituloProfesionalificado o título."
* qualification[Subespecialidad].issuer.display ^short = "Nombre de la organizacion que entrega TituloProfesionalificado o título."

* extension contains Servicios named Servicios 1..* MS
  * ^short = "Servicios que dara el prestador" 

Instance: EjemploPrestador1
InstanceOf: Prestador
Usage: #example
Title: "Ejemplo del perfil del prestador 1"
Description: "Ejemplo del prestador 1"

* name.family = "Antonia"
* name.given = "Cuevas"

* qualification[TituloProfesional].code.coding[0].system = "https://interoperabilidad.minsal.cl/fhir/ig/tei/CodeSystem/CSTituloProfesional"
* qualification[TituloProfesional].code.coding[0].code = #11
* qualification[TituloProfesional].code.coding[0].display = "Nutricionista"
* qualification[TituloProfesional].code.text = "TituloProfesionalificado(s)"

* extension[Servicios].valueCode = #1