# Casos de Uso y Actores - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* **Casos de Uso y Actores**

## Casos de Uso y Actores

### Casos de uso del Proyecto

Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda. A continuacion se puede observar su diagrama de secuencia:

### Casos de usos

El proyecto se separa en 4 Casos de Usos, los cuales son detallados a continuación:

##### Caso de Uso 1: Solicitud de hora

Este caso de uso describe la solicitud de una hora médica solicitada por el paciente o tercero. Una vez hecha la solicitud se le indicará la disponibilidad. La regla de negocio indica que el sistema previamente consultará poir el recurso asociado al paciente en el servidor. **Esta Caso de Uso no Considera la Creación de la Ficha del Paciente, solo su eventual actualización** 

##### Recursos Asociados

* Paciente (solo para actualización)
* Bundle
* ServiceRequest 

##### Operación

Se utiliza el método **POST** para enviar una solicitud de creación de una nueva cita, por medio de un Bundle. Quedando la siguiente transacción: 

```
POST [URL_Base]/

```

#### Caso de Uso 2: Acepto/Rechazo de hora

El paciente recibe la información detallada de la cita médica, en la cual incluye:

* Nombre del Paciente.
* Médico que prestara la atención.
* Especialidad del prestador.
* Fecha y hora de la cita.
* Servicio que prestara el prestador.
* CESFAM en donde se realizara la cita médica 
 El paciente puede aceptar o rechazar esta hora médica. Dependientemente de la decicion que tome se actualiza el estado de la cita médica. En el caso de que el paciente acepte la cita médica cambia el estado a booked. En el caso de que el paciente rechace la cita médica se le busca otra hora y en el caso que vuelva a rechazar la segunda cita médica quedara en lista de espera. 

##### Recursos Asociados

* Bundle
* AppointmentResponse
* Appointment

##### Operación

Se utiliza el metodo **POST** para poder aceptar o rechazar la cita medica por medio de un Bundle. El bundle especificará el AppointmentREsponse y la actualización del estado de la Agenda Propuesta: 

```
POST [URL_Base]/

```

#### Caso de uso 3: Reagendamiento de hora

En caso de errores, cambios de información de la cita y si el paciente rechaza la cita médica, estos datos incorrectos se pueden actualizar.

##### Operación

Se utiliza el metodo **PUT** para poder actualizar la información con respecto a la cita medica. Quedando la siguiente transacción: 

```
PUT [URL_Base]/Appointment/{id_Appointment}

```

#### Caso de uso 4: Lectura de la hora

El ususario puede acceder a la vizualización de sus citas para revisar el historial y detalles de sus citas médicas o ver si hay alguna cita propuesta. 

##### Operaciones

Se utiliza el metodo **GET** para poder acceder a la información de las citas medicas y sus detalles. Quedando las siguientes transacciónes: 

1.- Lectura con el identificador del paciente y desde una fecha en adelante de las citas médicas: 

* 

1.- Si se desea revisar por rango de fechas

```
GET [URL_Base] Appointment?date=ge{fecha}&patient.identifier={identifier}

```

2.- Lectura con el identificador del paciente y desde una fecha hacia atras de las citas médicas: 

```
GET [URL_Base] Appointment?date=le{fecha}&patient.identifier={identifier}

```

3.- Lectura con el identificador del paciente y un rango de fechas de las citas médicas: 

```
GET [URL_Base] Appointment?date=ge{fecha}&date=le{fecha}&patient.identifier={identifier}

```

4.- Lectura con el identificador del paciente de las citas médicas: 

```
GET [URL_Base] Appointment?patientt.identifier={identifier}

```

