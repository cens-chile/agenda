Profile: SolicitudServicio
Parent: ServiceRequest
Id: SolicitudServicio
Title: "Perfil de la Solicitud del Servicio"
Description: "Este es el perfil de la Solicitud del Servicio"

* status 1..1
  * ^short = "Estado de la solicitud de servicio."
* status from http://hl7.org/fhir/ValueSet/request-status

* intent 1..1 
  * ^short = "Intención de la solicitud del servicio."
* intent from http://hl7.org/fhir/ValueSet/request-intent 


* category ..1 MS
* category from VSCategorias (required)
* category ^short = "Modalidad de atención"

* priority 1..1
  * ^short = "Indica con qué rapidez se debe atender la ServiceRequest con respecto a otras solicitudes."
* priority from http://hl7.org/fhir/ValueSet/request-priority

* subject 1..1
  * ^short = "La persona que inició la solicitud."
* subject only Reference(PacienteAgenda)

* authoredOn 1..1
  * ^short = "Fecha y hora de la solicitud."

* code from ProcedureCodes(SNOMEDCT) (example)
* code ^binding.description = ""

* reasonCode 0..1
  * ^short = "Prestación que solicita el paciente."
* reasonCode from VSPrestaciones (required)
* reasonReference 1..* MS
  * ^short = "Datos que justifican la solicitud"
* reasonReference only Reference(ObservacionCL or DiagnosticoCl)

Instance: EjemploSolicitudServicio1
InstanceOf: SolicitudServicio
Usage: #example
Title: "Ejemplo Solicitud Servicio 1"
Description: "Ejemplo Solicitud Servicio 1"

* status = #active
* intent = #order
//* category = #1
* priority = #routine
* subject = Reference(Patient/EjemploPaciente1)
* authoredOn = "2024-07-20T12:00:00-03:00"
//* reasonCode = #18
* reasonReference.display = "Dolor estomacal agudo"


Instance: EjemploSolicitudServicio2
InstanceOf: SolicitudServicio
Usage: #example
Title: "Ejemplo Solicitud Servicio 2"
Description: "Ejemplo Solicitud Servicio 2"

* status = #active
* intent = #order
//* category = #1
* priority = #routine
* subject = Reference(Patient/EjemploPaciente2)
* authoredOn = "2024-07-20T12:00:00-03:00"
//* reasonCode = #21
* reasonReference.display = "Dolor estomacal agudo"

