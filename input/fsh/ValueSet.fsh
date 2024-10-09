ValueSet: VSPrevision
Id: VSPrevision
Title: "VS Prevision"
Description: "Previsión del paciente"
* ^status = #active
* ^experimental = false

* include codes from system CSPrevision

ValueSet: VSServicios
Id: VSServicios
Title: "VS SERVICIOS"
Description: "Servicio que dara el prestador"
* ^status = #active
* ^experimental = false

* include codes from system CSServicios

ValueSet: VSPrestaciones
Id: VSPrestaciones
Title: "VS Prestaciones"
Description: "Prestaciones"
* ^status = #active
* ^experimental = false

* include codes from system CSPrestaciones

ValueSet: VSCategorias
Id: VSCategorias
Title: "VS Prestaciones"
Description: "Prestaciones"
* ^status = #active
* ^experimental = false

* include codes from system CSCategotias