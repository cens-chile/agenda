# CS Prestaciones - Guía de Implementación para la gestión de citas médicas enfocado en la APS v0.4.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CS Prestaciones**

## CodeSystem: CS Prestaciones 

| | |
| :--- | :--- |
| *Official URL*:https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrestaciones | *Version*:0.4.0 |
| Active as of 2025-10-23 | *Computable Name*:CSPrestaciones |

 
Codigos de las prestaciones 

 This Code system is referenced in the content logical definition of the following value sets: 

* [VSPrestaciones](ValueSet-VSPrestaciones.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CSPrestaciones",
  "url" : "https://interoperabilidad.minsal.cl/fhir/ig/agenda/CodeSystem/CSPrestaciones",
  "version" : "0.4.0",
  "name" : "CSPrestaciones",
  "title" : "CS Prestaciones",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-23T00:01:47-03:00",
  "publisher" : "Unidad de Interoperabilidad - MINSAL",
  "contact" : [
    {
      "name" : "Unidad de Interoperabilidad - MINSAL",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://interoperabilidad.minsal.cl"
        }
      ]
    }
  ],
  "description" : "Codigos de las prestaciones",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "CL",
          "display" : "Chile"
        }
      ]
    }
  ],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 118,
  "concept" : [
    {
      "code" : "1",
      "display" : "OTRAS CONSULTAS (ABREVIADAS)"
    },
    {
      "code" : "2",
      "display" : "APLICACIÓN DE SELLANTES"
    },
    {
      "code" : "3",
      "display" : "APLICACIÓN DE TEPSI"
    },
    {
      "code" : "4",
      "display" : "APLICACIÓN EEDP"
    },
    {
      "code" : "5",
      "display" : "ATENCIÓN DE PODOLOGIA"
    },
    {
      "code" : "6",
      "display" : "ATENCIÓN EN SALA DE ESTIMULACIÓN"
    },
    {
      "code" : "7",
      "display" : "ATENCIÓN FARMACEÚTICA"
    },
    {
      "code" : "8",
      "display" : "ATENCIÓN POR SALUD DIGITAL"
    },
    {
      "code" : "9",
      "display" : "ATENCIÓN PROFESIONAL POR VIDEOLLAMADA"
    },
    {
      "code" : "10",
      "display" : "CLINICA O CONSULTA DE LACTANCIA MATERNA"
    },
    {
      "code" : "11",
      "display" : "CONSEJERIA FAMILIAR"
    },
    {
      "code" : "12",
      "display" : "CONSEJERIA INDIVIDUAL"
    },
    {
      "code" : "13",
      "display" : "CONSEJERIA LACTANCIA MATERNA"
    },
    {
      "code" : "14",
      "display" : "CONSULTA ALTO RIESGO OBSTÉTRICO"
    },
    {
      "code" : "15",
      "display" : "CONSULTA CIRUGIA MENOR (PROCEDIMIENTO)"
    },
    {
      "code" : "16",
      "display" : "CONSULTA DE ENFERMERIA"
    },
    {
      "code" : "17",
      "display" : "CONSULTA DE ESPECIALIDAD (ODONTÓLOGO, OTORRINO, OFTALMOLOGO, OTROS)"
    },
    {
      "code" : "18",
      "display" : "CONSULTA DE MEDICINA INDÍGENA"
    },
    {
      "code" : "19",
      "display" : "CONSULTA DE MORBILIDAD"
    },
    {
      "code" : "20",
      "display" : "CONSULTA DE TERAPEUTA OCUPACIONAL"
    },
    {
      "code" : "21",
      "display" : "CONSULTA DE URGENCIA"
    },
    {
      "code" : "22",
      "display" : "CONSULTA FONOAUDIOLOGIA"
    },
    {
      "code" : "23",
      "display" : "CONSULTA FONOAUDIOLÓGICA DE REHABILITACIÓN AUDITIVA GRUPAL"
    },
    {
      "code" : "24",
      "display" : "CONSULTA FONOAUDIOLÓGICA DE REHABILITACIÓN AUDITIVA INDIVIDUAL"
    },
    {
      "code" : "25",
      "display" : "CONSULTA GINECOLÓGICA"
    },
    {
      "code" : "26",
      "display" : "CONSULTA INTEGRAL TMO"
    },
    {
      "code" : "27",
      "display" : "CONSULTA MATRON/A"
    },
    {
      "code" : "28",
      "display" : "CONSULTA NUTRICIONAL"
    },
    {
      "code" : "29",
      "display" : "CONSULTA ODONTOLOGICA MORBILIDAD"
    },
    {
      "code" : "30",
      "display" : "CONSULTA ODONTOLOGICA TRATAMIENTO"
    },
    {
      "code" : "31",
      "display" : "CONSULTA PACIENTE AGUDO ERA"
    },
    {
      "code" : "32",
      "display" : "CONSULTA PACIENTE AGUDO IRA"
    },
    {
      "code" : "33",
      "display" : "CONSULTA PREVIA O POSTERIOR A CIRUGÍA MENOR"
    },
    {
      "code" : "34",
      "display" : "CONSULTA PSICOLOGÍCA"
    },
    {
      "code" : "35",
      "display" : "CONSULTA REHABILITACION"
    },
    {
      "code" : "36",
      "display" : "CONSULTA SOCIAL"
    },
    {
      "code" : "37",
      "display" : "CONSULTA TMO OTORRINO"
    },
    {
      "code" : "38",
      "display" : "CONSULTA VICIO DE REFRACCIÓN"
    },
    {
      "code" : "39",
      "display" : "CONSULTORÍA DE SALUD MENTAL"
    },
    {
      "code" : "40",
      "display" : "CONTACTO DE PACIENTE POR VÍA TELEFÓNICA"
    },
    {
      "code" : "41",
      "display" : "CONTROL CERO"
    },
    {
      "code" : "42",
      "display" : "CONTROL CLIMATERIO"
    },
    {
      "code" : "43",
      "display" : "CONTROL CRONICO"
    },
    {
      "code" : "44",
      "display" : "CONTROL CRONICO ERA"
    },
    {
      "code" : "45",
      "display" : "CONTROL CRONICO IRA"
    },
    {
      "code" : "46",
      "display" : "CONTROL DE SALUD INTEGRAL DEL ADOLESCENTE"
    },
    {
      "code" : "47",
      "display" : "CONTROL DE SALUD MENTAL"
    },
    {
      "code" : "48",
      "display" : "CONTROL DE SEGUIMIENTO EMPAM"
    },
    {
      "code" : "49",
      "display" : "CONTROL DIADA"
    },
    {
      "code" : "50",
      "display" : "CONTROL GINECOLOGICO"
    },
    {
      "code" : "51",
      "display" : "CONTROL INTEGRAL MULTIMORBILIDAD"
    },
    {
      "code" : "52",
      "display" : "CONTROL NIÑO SANO"
    },
    {
      "code" : "53",
      "display" : "CONTROL PACIENTE AGUDO ERA"
    },
    {
      "code" : "54",
      "display" : "CONTROL PACIENTE AGUDO IRA"
    },
    {
      "code" : "55",
      "display" : "CONTROL PRECONCEPCIONAL"
    },
    {
      "code" : "56",
      "display" : "CONTROL PRENATAL"
    },
    {
      "code" : "57",
      "display" : "CONTROL PUERPERA"
    },
    {
      "code" : "58",
      "display" : "CONTROL REGULACIÓN FERTILIDAD"
    },
    {
      "code" : "59",
      "display" : "CURACIÓN AVANZADA"
    },
    {
      "code" : "60",
      "display" : "CURACIONES SIMPLES"
    },
    {
      "code" : "61",
      "display" : "EDUCACIÓN FARMACÉUTICA"
    },
    {
      "code" : "62",
      "display" : "EDUCACIÓN GRUPAL"
    },
    {
      "code" : "63",
      "display" : "EDUCACION INDIVIDUAL SALUD CARDIOVASCULAR"
    },
    {
      "code" : "64",
      "display" : "ELABORACIÓN DE INFORMES A TRIBUNALES"
    },
    {
      "code" : "65",
      "display" : "ENTREVISTA FAMILIAR (Aplicación Tarjetón Familiar)"
    },
    {
      "code" : "66",
      "display" : "ESPIROMETRIA"
    },
    {
      "code" : "67",
      "display" : "ESTUDIOS DE FAMILIA"
    },
    {
      "code" : "68",
      "display" : "EVALUACIÓN DEL PIE DIABÉTICO"
    },
    {
      "code" : "69",
      "display" : "EVALUACION DISCAPACIDAD (IVADEC)"
    },
    {
      "code" : "70",
      "display" : "EVALUACIÓN INICIAL DE REHABILITACIÓN"
    },
    {
      "code" : "71",
      "display" : "EVALUACION INTERMEDIA (REHABILITACIÓN)"
    },
    {
      "code" : "72",
      "display" : "EXAMEN MEDICINA PREVENTIVA ADULTO (EMPA)"
    },
    {
      "code" : "73",
      "display" : "FLUORACIÓN TOPICA"
    },
    {
      "code" : "74",
      "display" : "FLUORACIÓN TOPICA"
    },
    {
      "code" : "75",
      "display" : "INGRESO A SALA DE ESTIMULACIÓN"
    },
    {
      "code" : "76",
      "display" : "INGRESO CLIMATERIO"
    },
    {
      "code" : "77",
      "display" : "INGRESO CRONICO"
    },
    {
      "code" : "78",
      "display" : "INGRESO ERA"
    },
    {
      "code" : "79",
      "display" : "INGRESO FONOAUDIOLOGÍA"
    },
    {
      "code" : "80",
      "display" : "INGRESO IRA"
    },
    {
      "code" : "81",
      "display" : "INGRESO MULTIMORBILIDAD"
    },
    {
      "code" : "82",
      "display" : "INGRESO PMAMA"
    },
    {
      "code" : "83",
      "display" : "INGRESO PRENATAL"
    },
    {
      "code" : "84",
      "display" : "INGRESO PROGRAMA CERO"
    },
    {
      "code" : "85",
      "display" : "INGRESO PROGRAMA SALUD MENTAL"
    },
    {
      "code" : "86",
      "display" : "INGRESO REGULACIÓN FERTILIDAD"
    },
    {
      "code" : "87",
      "display" : "INTERVENCIÓN EN CRISIS"
    },
    {
      "code" : "88",
      "display" : "INTERVENCION PSICOSOCIAL DE GRUPOS"
    },
    {
      "code" : "89",
      "display" : "INTERVENCION PSICOSOCIAL GRUPAL"
    },
    {
      "code" : "90",
      "display" : "OTRAS CONSULTAS TMO"
    },
    {
      "code" : "91",
      "display" : "PAP"
    },
    {
      "code" : "92",
      "display" : "PESQUISA HTA"
    },
    {
      "code" : "93",
      "display" : "PROCEDIMIENTOS"
    },
    {
      "code" : "94",
      "display" : "PROGRAMA GES ODONTOLOGICO"
    },
    {
      "code" : "95",
      "display" : "PROGRAMA MEJORAMIENTO DEL ACCESO A LA ATENCIÓN ODONTOLÓGICA"
    },
    {
      "code" : "96",
      "display" : "PROGRAMA ODONTOLÓGICO INTEGRAL"
    },
    {
      "code" : "97",
      "display" : "PULIDO CORONARIO Y DESTARTRAJE SUPRAGINGIVAL"
    },
    {
      "code" : "98",
      "display" : "REALIZACIÓN EMPAM"
    },
    {
      "code" : "99",
      "display" : "SEGUIMIENTO DE CASOS"
    },
    {
      "code" : "100",
      "display" : "SEGUIMIENTO DE TEPSI"
    },
    {
      "code" : "101",
      "display" : "SEGUMIENTO A DISTANCIA MULTIMORBILIDAD"
    },
    {
      "code" : "102",
      "display" : "SESION DE REHABILITACION INTEGRAL"
    },
    {
      "code" : "103",
      "display" : "SESION DE REHABILITACION PULMONAR"
    },
    {
      "code" : "104",
      "display" : "TALLER EN EDUCACIÓN ESPECIAL EN ADULTO MAYOR"
    },
    {
      "code" : "105",
      "display" : "TALLER GRUPAL"
    },
    {
      "code" : "106",
      "display" : "TALLER GRUPAL PMAMA"
    },
    {
      "code" : "107",
      "display" : "TAMIZAJE PARA EVALUAR RIESGO DE CONSUMO DE ALCOHOL, TABACO Y OTRAS DROGAS"
    },
    {
      "code" : "108",
      "display" : "TELECLIMATERIO"
    },
    {
      "code" : "109",
      "display" : "TEST DE MARCHA"
    },
    {
      "code" : "110",
      "display" : "TEST DE PROVOCACIÓN CON EJERCICIO"
    },
    {
      "code" : "111",
      "display" : "TOMA DE ECOGRAFIA"
    },
    {
      "code" : "112",
      "display" : "TOMA DE ELECTROCARDIOGRAMA"
    },
    {
      "code" : "113",
      "display" : "TOMA DE ESPIROMETRIA"
    },
    {
      "code" : "114",
      "display" : "TOMA DE MAMOGRAFIA"
    },
    {
      "code" : "115",
      "display" : "TOMA DE MUESTRAS"
    },
    {
      "code" : "116",
      "display" : "TOMA DE RADIOGRAFIA"
    },
    {
      "code" : "117",
      "display" : "VISITA DOMICILIARIA INTEGRAL"
    },
    {
      "code" : "118",
      "display" : "VISITAS CON FINES DE TRATAMIENTOS Y/O PROCEDIMIENTOS EN DOMICILIO"
    }
  ]
}

```
