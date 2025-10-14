# Artifacts Summary - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Bundle Transacción para indicar la respuesta ante una propuesta de cita médica](StructureDefinition-BundleRespuesta.md) | Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la respuesta ante una oferta de hora médica |
| [Bundle Transacción para indicar la solicitud de una hora médica ambulatoria](StructureDefinition-BundleSolicitud.md) | Este Perfil describe como debe ser el recurso Bundle que permite transportar los recursos asociados a la solicitud de una hora médica |
| [Paciente](StructureDefinition-PacienteAgenda.md) | Perfil del paciente |
| [Perfil Cita](StructureDefinition-Cita.md) | Una reserva de un evento de atención médica entre pacientes, médicos, personas relacionadas y/o dispositivos para una fecha/hora específica. Esto puede resultar en uno o más Encuentros. |
| [Perfil de la Organización](StructureDefinition-Organizacion.md) | Este perfil es de la organizacion APS. |
| [Perfil de la Respuesta a la cita.](StructureDefinition-CitaRespuesta.md) | Una respuesta a una solicitud de cita para un paciente y/o médico(s), como una confirmación o un rechazo. |
| [Perfil de la Solicitud del Servicio](StructureDefinition-SolicitudServicio.md) | Este es el perfil de la Solicitud del Servicio |
| [Perfil del Rol del Prestador](StructureDefinition-RolPrestador.md) | Este es el perfil del rol del prestador |
| [Prestador](StructureDefinition-Prestador.md) | Perfil del prestador |
| [Prevision](StructureDefinition-Prevision.md) | Perfil para la determinación de previsiones en Chile |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Apellido Servicio](StructureDefinition-ApellidoServicio.md) | Comentario respecto al servicio |
| [Edad del paciente](StructureDefinition-Edad.md) | Da la edad del paciente |
| [Prestaciones](StructureDefinition-Prestaciones.md) | Previsones de la APS |
| [Servicio del prestador](StructureDefinition-Servicios.md) | Da el servicio del prestador |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [VS Prestaciones](ValueSet-VSCategorias.md) | Prestaciones |
| [VS Prestaciones](ValueSet-VSPrestaciones.md) | Prestaciones |
| [VS Prevision](ValueSet-VSPrevision.md) | Previsión del paciente |
| [VS SERVICIOS](ValueSet-VSServicios.md) | Servicio que dara el prestador |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CS Prestaciones](CodeSystem-CSCategotias.md) | Codigos de las prestaciones |
| [CS Prestaciones](CodeSystem-CSPrestaciones.md) | Codigos de las prestaciones |
| [CS Prevision](CodeSystem-CSPrevision.md) | Codigos de la previsión del paciente |
| [CSServicios](CodeSystem-CSServicios.md) | Aca estan los codigos del servicio del prestador que dara la cita |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [EjBundResp](Bundle-BundResp.md) | Ejemplo de agrupador para la solicitud de una hora |
| [EjBundSolicitud](Bundle-BundSol.md) | Ejemplo de agrupador para la solicitud de una hora |
| [Ejemplo Paciente](Patient-EjemploPaciente1.md) | Ejemplo del perfil del paciente |
| [Ejemplo Paciente](Patient-EjemploPaciente2.md) | Ejemplo del perfil del paciente |
| [Ejemplo Respuesta a la Cita del paciente 1](AppointmentResponse-EjemploRespuestaCita1.md) | Ejemplo de la respuesta de la cita del paciente 1 |
| [Ejemplo Respuesta a la Cita del paciente 1](AppointmentResponse-EjemploRespuestaCita2.md) | Ejemplo de la respuesta de la cita del paciente 2 |
| [Ejemplo Solicitud Servicio 1](ServiceRequest-EjemploSolicitudServicio1.md) | Ejemplo Solicitud Servicio 1 |
| [Ejemplo Solicitud Servicio 2](ServiceRequest-EjemploSolicitudServicio2.md) | Ejemplo Solicitud Servicio 2 |
| [Ejemplo de Previsión](Coverage-EjemploPrevison.md) | Ejemplo del perfil de Previsión |
| [Ejemplo de organización](Organization-EjemploOrganizacion.md) | Aca esta el ejemplo de organización |
| [Ejemplo de una cita médica paciente 1](Appointment-EjemploCita1.md) | Aca esta el ejemplo de la cita médica paciente 1 |
| [Ejemplo de una cita médica paciente 2](Appointment-EjemploCita2.md) | Aca esta el ejemplo de la cita médica paciente 2 |
| [Ejemplo del perfil del prestador 1](Practitioner-EjemploPrestador1.md) | Ejemplo del prestador 1 |
| [EjemploRolPrestador](PractitionerRole-EjemploRolPrestador.md) | Aca esta el ejemplo del rol prestador |

