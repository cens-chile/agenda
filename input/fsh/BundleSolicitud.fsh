Profile:        BundleSolicitud
Parent:         Bundle
Id:             BundleSolicitud
Title:          "Bundle Transacción para indicar la solicitud de una hora médica ambulatoria"
Description:    "Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la solicitud de una hora médica"
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
* entry contains Paciente  0..1 MS and Solicitud 1..1 MS and Prev 1..* MS 

* entry and entry.resource MS
* entry ^short = "Recursos Contenidos en el Bundle"
* entry[Paciente].resource only PacienteAgenda
* entry[Paciente].request 1..1 MS
  * ^short = "Método para servidor"
  * method = #PUT


* entry[Solicitud].resource only SolicitudServicio
* entry[Solicitud].request 1..1 MS
  * ^short = "Método para servidor"
  * method = #POST

* entry[Prev].resource only Prevision
* entry[Prev].request 1..1 MS
  * ^short = "Método para servidor"
  * method = #POST


Instance: EjBundSolicitud
Description: "Ejemplo de agrupador para la solicitud de una hora"
InstanceOf: BundleSolicitud
Usage: #example

* id = "BundSol"

* identifier.value = "BundSol"
* type = #transaction
* timestamp = "2024-07-26T14:15:00-03:00"

* entry[Paciente].fullUrl = "https://server1/fhir/Patient/EjemploPaciente2"
* entry[Paciente].resource = EjemploPaciente2
* entry[Paciente].request.url = "Patient/2"
* entry[Paciente].request.method = #PUT

* entry[Solicitud].fullUrl = "urn:uuid:8a7b4900-3861-4849-b36f-ad1ec3c46a2f"
* entry[Solicitud].resource = EjemploSolicitudServicio2
* entry[Solicitud].request.url = "ServiceRequest/"
* entry[Solicitud].request.method = #POST

* entry[Prev].fullUrl = "urn:uuid:8a7b4901-3862-4649-b66f-ac1ec3c4aa2f"
* entry[Prev].resource = EjemploPrevison
* entry[Prev].request.url = "Coverage/"
* entry[Prev].request.method = #POST
