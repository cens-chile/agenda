### Casos de uso del Proyecto
Esta guía de implementación es diseñada para el uso de datos enfocados en la Atención Primaria de Salud (APS) para Agenda. A continuacion se puede observar su diagrama de secuencia: 

<div align="center" >
  {% include secuencia1.svg %}
</div>
<br clear="all"/>

### Casos de usos
El proyecto se separa en 4 Casos de Usos, los cuales son detallados a continuación:

##### Caso de Uso 1: Solicitud de hora
Este caso de uso describe la solicitud de una hora médica solicitada por el paciente, el cual esperara una respuesta.  Se requiere de los siguientes datos para poder solicitar la hora médica:
<br>
* Nombre del paciente
* RUT paciente
* Fecha de nacimiento
* Edad
* Previsión
<br>

<div align="center" >
  {% include C1.svg %}
</div>
<br clear="all"/>

##### Operación
Se utiliza el método **POST** para enviar una solicitud de creación de una nueva cita. Quedando la siguiente transacción:
<br>

```
POST [URL_Base]/ServiceRequest/
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

<div align="center" >
  {% include C2.svg %}
</div>
<br clear="all"/>

##### Operación
Se utiliza el metodo **PUT** para poder aceptar o rechazar la cita medica. Quedando la siguiente transacción:
<br>

```
PUT [URL_Base]/Appointment/{id_Appointment}
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
El ususario puede acceder a la vizualización de sus citas para revisar el historial y detalles de sus citas médicas.
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
