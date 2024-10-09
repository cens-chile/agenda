Profile: Cita
Parent: Appointment
Title: "Perfil Cita"
Description: "Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros."

* extension contains ApellidoServicio named apellidoservicio 1..1 MS
  * ^short = "Comentarios respecto al servicio que se realizara durante la cita." 

* specialty 0..*
  * ^short = "La especialidad de un profesional que se requeriría para realizar el servicio solicitado en esta cita."
* specialty from http://hl7.org/fhir/ValueSet/c80-practice-codes (extensible)

* basedOn 1..1
  * ^short = "Referencia a la solicitud del servicio."
* basedOn only Reference(SolicitudServicio)

* participant ^slicing.discriminator[0].type = #value
* participant ^slicing.discriminator[=].path = "required"
* participant ^slicing.ordered = false
* participant ^slicing.rules = #open
* participant ^short = "Participantes de la Cita médica."
* participant ^definition = "Participantes de la cita acotados a paciente y prestador."

* participant contains
  paciente 1..1 and
  prestador 1..1

* participant[paciente] ^short = "Paciente agendado."
  * actor 1..1 MS
  * required = #required
  * actor only Reference(Paciente)
    * ^short = "Referencia al paciente agendado."
  * required 1..1 MS
    * ^short = "required | optional | information-only"
  * required from 	http://hl7.org/fhir/ValueSet/participantrequired
  * required = #required

* participant[prestador] ^short = "Prestador individual agendado."
  * actor 1..1 MS
  * actor only Reference(Prestador)
    * ^short = "Referencia al prestador agendado."
  * required 1..1 MS
  * required = #optional

* start 1..1
  * ^short = "Cuando se realizará la cita."

Instance: EjemploCita1
InstanceOf: Cita
Usage: #example
Title: "Ejemplo de una cita médica paciente 1"
Description: "Aca esta el ejemplo de la cita médica paciente 1"

* status = #booked
* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #408467006
* basedOn = Reference(ServiceRequest/EjemploSolicitudServicio1)

* participant[paciente].actor = Reference(Patient/EjemploPaciente1)
* participant[paciente].status = #accepted
* participant[prestador].actor = Reference(Practitioner/EjemploPrestador1)
* participant[prestador].status = #accepted

* extension[ApellidoServicio].valueString = "Comentario de la cita"
* start = "2024-07-25T12:30:00-03:00" 
* end = "2024-07-25T12:50:00-03:00"

Instance: EjemploCita2
InstanceOf: Cita
Usage: #example
Title: "Ejemplo de una cita médica paciente 2"
Description: "Aca esta el ejemplo de la cita médica paciente 2"

* status = #booked
* specialty.coding.system = "http://snomed.info/sct"
* specialty.coding.code = #408467006
* basedOn = Reference(ServiceRequest/EjemploSolicitudServicio2)

* participant[paciente].actor = Reference(Patient/EjemploPaciente2)
* participant[paciente].status = #accepted
* participant[prestador].actor = Reference(Practitioner/EjemploPrestador1)
* participant[prestador].status = #accepted

* extension[ApellidoServicio].valueString = "Comentario de la cita"
* start = "2024-07-25T15:30:00-03:00" 
* end = "2024-07-25T13:10:00-03:00"