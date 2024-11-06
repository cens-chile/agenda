### Casos de uso del Proyecto
Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda. A continuacion se puede observar su diagrama de secuencia: 

<div align="center" >
  {% include secuencia1.svg %}
</div>
<br clear="all"/>

### Casos de usos
El proyecto se separa en 4 Casos de Usos, los cuales son detallados a continuación:

##### Caso de Uso 1: Solicitud de hora
Este caso de uso describe la solicitud de una hora médica solicitada por el paciente o tercero. Una vez hecha la solicitud se le indicará la disponibilidad. La regla de negocio indica que el sistema previamente consultará poir el recurso asociado al paciente en el servidor. **Esta Caso de Uso no Considera la Creación de la Ficha del Paciente, solo su eventual actualización**
<br>

##### Recursos Asociados

* Paciente (solo para actualización)
* Bundle
* ServiceRequest
<br>

<div align="center" >
  {% include C1.svg %}
</div>
<br clear="all"/>

##### Operación
Se utiliza el método **POST** para enviar una solicitud de creación de una nueva cita, por medio de un Bundle. Quedando la siguiente transacción:
<br>

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
<br>
El paciente puede aceptar o rechazar esta hora médica. Dependientemente de la decicion que tome se actualiza el estado de la cita médica.
En el caso de que el paciente acepte la cita médica cambia el estado a booked.
En el caso de que el paciente rechace la cita médica se le busca otra hora y en el caso que vuelva a rechazar la segunda cita médica quedara en lista de espera.
<br>

##### Recursos Asociados

* Bundle
* AppointmentResponse
* Appointment


<div align="center" >
  {% include C2.svg %}
</div>
<br clear="all"/>

##### Operación
Se utiliza el metodo **POST** para poder aceptar o rechazar la cita medica por medio de un Bundle. El bundle especificará el AppointmentREsponse y la actualización del estado de la Agenda Propuesta:
<br>

```
POST [URL_Base]/
```

#### Caso de uso 3: Reagendamiento de hora
En caso de errores, cambios de información de la cita y si el paciente rechaza la cita médica, estos datos incorrectos se pueden actualizar.

<div align="center" >
  {% include C3.svg %}
</div>
<br clear="all"/>

##### Operación
Se utiliza el metodo **PUT** para poder actualizar la información con respecto a la cita medica. Quedando la siguiente transacción:
<br>

```
PUT [URL_Base]/Appointment/{id_Appointment}
```

#### Caso de uso 4: Lectura de la hora
El ususario puede acceder a la vizualización de sus citas para revisar el historial y detalles de sus citas médicas o ver si hay alguna cita propuesta.
<br>

<div align="center" >
  {% include C4.svg %}
</div>
<br clear="all"/>

##### Operaciones
Se utiliza el metodo **GET** para poder acceder a la información  de las citas medicas y sus detalles. Quedando las siguientes transacciónes:
<br>

1.- Lectura con el identificador del paciente y desde una fecha en adelante de las citas médicas:
<br>

* Si se desea revisar si hay alguna hora propuesta 
```
GET [URL_Base] Appointment?status=proposed&patient.identifier={identifier}
```
<br>

1.- Si se desea revisar por rango de fechas
```
GET [URL_Base] Appointment?date=ge{fecha}&patient.identifier={identifier}
```
<br>

2.- Lectura con el identificador del paciente y desde una fecha hacia atras de las citas médicas:
<br>

```
GET [URL_Base] Appointment?date=le{fecha}&patient.identifier={identifier}
```
<br>

3.- Lectura con el identificador del paciente y un rango de fechas de las citas médicas:
<br>

```
GET [URL_Base] Appointment?date=ge{fecha}&date=le{fecha}&patient.identifier={identifier}
```
<br>

4.- Lectura con el identificador del paciente de las citas médicas:
<br>

``` 
GET [URL_Base] Appointment?patientt.identifier={identifier}
```
