Alias: $PacienteAgenda = https://interoperabilidad.minsal.cl/fhir/ig/agenda/StructureDefinition/PacienteAgenda
Alias: $VSPrevision = https://interoperabilidad.minsal.cl/fhir/ig/agenda/ValueSet/VSPrevision
Alias: $CSPrevision = https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrevision

Profile: Prevision
Parent: Coverage
Id: Prevision
Description: "Perfil para la determinación de previsiones en Chile"
* ^version = "0.7.0"
* ^status = #draft

* status = #active
* status MS
* status from FinancialResourceStatusCodes (required)
* status ^short = "Estado de la previsión active | cancelled | draft | entered-in-error,"
* status ^definition = "Siempre active"
* status ^binding.description = "Códigos requeridos por estándar"

* type 1.. MS
* type from $VSPrevision (required)
* type ^short = "Tipo de Previsión"
* type ^definition = "Códigos de la 820"
* type.coding 1..1
* type.coding.code 1..
* type.coding.code ^short = "Código de la previsión"
* type.coding.display 1..
* type.coding.display ^short = "Glosa asociada al código"
* type.text ^short = "Descripción de previsión"
* beneficiary only Reference($PacienteAgenda)
* beneficiary MS
* beneficiary ^short = "Referencia al recurso paciente asociado a la previsión"
* beneficiary ^definition = "Referencia a Recurso paciente"


Instance: EjemploPrevison
InstanceOf: Prevision
Usage: #example
Title: "Ejemplo de Previsión"
Description: "Ejemplo del perfil de Previsión"

* status = #active
* type = $CSPrevision#01 "FONASA"
* beneficiary = Reference(Patient/EjemploPaciente1)
* payor.display = "Tramo B"