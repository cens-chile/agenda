Profile:        BundleRespuesta
Parent:         Bundle
Id:             BundleRespuesta
Title:          "Bundle Transacción para indicar la respuesta ante una propuesta de cita médica "
Description:    "Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la respuesta ante una oferta de hora médica"
// esperar que se defina el caso de uso opara daber que operacion
* identifier MS

* identifier 0..1
* identifier ^short = "Identificador para el Bundle"
* identifier ^definition = "Un identificador  para el paquete de datos del Solicitud."



* type MS
* type 1..1
* type from http://hl7.org/fhir/ValueSet/bundle-type
* type ^short = "Document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection, en nuestro caso se fuerza a collection"
* type ^definition = "Indica la finalidad de este paquete, es decir, cómo se va a utilizar."

* type = #transaction

* timestamp 1..1
* timestamp MS
* timestamp ^short = "Hora en la cual cual fue ensamblado el Bundle en formato YYYY-MM-DDThh:mm:ss.sss+zz:zz"
* timestamp ^definition = "La fecha/hora en que se ensambló el paquete, es decir, cuando se colocaron los recursos en el paquete"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Tipos de recursos necesarios"
* entry contains Respuesta  1..1 MS and Agenda 1..1 MS  

* entry and entry.resource MS
* entry ^short = "Recursos Contenidos en el Bundle"
* entry[Respuesta].resource only CitaRespuesta
* entry[Respuesta].request 1..1 MS
  * ^short = "Método para servidor"
  * method = #POST


* entry[Agenda].resource only Cita
* entry[Agenda].request 1..1 MS
  * ^short = "Método para servidor"
  * method = #PUT


Instance: EjBundResp
Description: "Ejemplo de agrupador para la solicitud de una hora"
InstanceOf: BundleRespuesta
Usage: #example

* id = "BundResp"

* identifier.value = "BundResp"
* type = #transaction
* timestamp = "2024-07-26T14:15:00-03:00"

* entry[Respuesta].fullUrl = "urn:uuid:8a7bac00-3b61-4846-b32f-ad1ec3c46a2c"
* entry[Respuesta].resource = EjemploRespuestaCita2
* entry[Respuesta].request.url = "AppointmentResponse/"
* entry[Respuesta].request.method = #POST

* entry[Agenda].fullUrl = "https://server1/fhir/Appointment/EjemploCita2"
* entry[Agenda].resource = EjemploCita2
* entry[Agenda].request.url = "Appointment/1"
* entry[Agenda].request.method = #PUT


