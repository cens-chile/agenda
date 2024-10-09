CodeSystem: CSPrevision
Id: CSPrevision
Title: "CS Prevision"
Description: "Codigos de la previsión del paciente"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #01 "FONASA"
* #02 "ISAPRE"
* #03 "CAPREDENA"
* #04 "DIPRECA"
* #05 "SISA"
* #96 "NINGUNA"
* #99 "DESCONOCIDO"


CodeSystem: CSServicios
Id: CSServicios
Title: "CSServicios"
Description: "Aca estan los codigos del servicio del prestador que dara la cita"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #1 "Información y asistencia sobre adopción y atención permanente"
* #2 "Evaluación de atención a personas mayores"
* #3 "Información y derivaciones para el cuidado de personas mayores"
* #4 "Atención residencial para ancianos"
* #5 "Gestión de casos para personas mayores"
* #6 "Comidas a domicilio (Meals On Wheels)"
* #7 "Visita amistosa"
* #8 "Asistencia para el cuidado del hogar/limpieza del hogar"
* #9 "Mantenimiento y reparación del hogar"
* #10 "Alarmas/Alertas Personales"
/*
* #11	Cuidado personal para personas mayores
* #12	Grupos de actividades planificadas
* #13	Acupuntura
* #14	Terapia con técnica Alexander
* #15	Aromaterapia
* #16	Servicios de Biorritmo
* #17	Terapia Bowen
* #18	Medicina herbaria china
* #19	Feldenkrais
* #20	Homeopatía
* #21	Hidroterapia
* #22	Hipnoterapia
* #23	Kinesiología
* #24	Terapia magnética
* #25	Terapia de Masajes
* #26	Meditación
* #27	Mioterapia
* #28	Naturopatía
* #29	Reflexología
* #30	Reiki
* #31	Terapia de relajación
* #32	Shiatsu
* #33	Medicina herbaria occidental
* #34	Guardería familiar
* #35	Programas de vacaciones
* #36	Apoyo para la inclusión en el jardín de infancia
* #37	Jardín de infantes/preescolar
* #38	Guardería infantil de jornada completa
* #39	Cuidado de niños ocasional
* #40	Cuidado fuera del horario escolar
* #41	Programas de juegos infantiles
* #42	Crianza/Apoyo familiar/Educación
* #43	Guardería
* #44	Enfermería escolar
* #45	Biblioteca de juguetes
* #46	Protección infantil/Denuncia de abuso infantil
* #47	Orfanato
* #48	Atención residencial/fuera del hogar
* #49	Apoyo - Jóvenes que abandonan el cuidado
* #50	Audiología
* #51	Donación de sangre
* #52	Quiropráctica
* #53	Dietética
* #54	Planificación familiar
* #55	Servicio de promoción y enlace en materia de salud
* #56	Información de salud/referencia
* #57	Inmunización
* #58	Salud maternoinfantil
* #59	Enfermería
* #60	Nutrición
* #61	Terapia ocupacional
* #62	Optometría
* #63	Osteopatía
* #64	Farmacia
* #65	Fisioterapia
* #66	Podología
* #67	Salud sexual
* #68	Patología/Terapia del habla
* #69	Asesoramiento en duelo
* #70	Asesoramiento en situaciones de crisis
* #71	Asesoramiento/terapia familiar
* #72	Asesoramiento sobre violencia familiar
* #73	Asesoramiento financiero
* #74	Asesoramiento generalista
* #75	Asesoramiento genético
* #76	Asesoramiento en salud
* #77	Mediación
* #78	Asesoramiento sobre problemas de adicción al juego
* #79	Asesoramiento de relaciones
* #80	Asesoramiento sobre agresión sexual
* #81	Asesoramiento sobre traumas
* #82	Asesoramiento a víctimas de delitos
* #83	Operación del Cementerio
* #84	Cremación
* #85	Información sobre el servicio de defunción
* #86	Servicios fúnebres
* #87	Endodoncia
* #88	Odontología general
* #89	Medicina Oral
* #90	Cirugía Oral
* #91	Ortodoncia
* #92	Odontología Pediátrica
* #93	Periodoncia
* #94	Prostodoncia
* #95	Información y referencias sobre lesiones cerebrales adquiridas
* #96	Defensa de la discapacidad
* #97	Ayudas y equipos para discapacitados
* #98	Gestión de casos de discapacidad
* #99	Programas y actividades del Día de la Discapacidad
* #100	Información/referencia sobre discapacidad
* #101	Paquetes de apoyo para personas con discapacidad
* #102	Alojamiento con apoyo para personas con discapacidad
* #103	Intervención en la primera infancia
* #104	Audífonos y equipos
* #105	Asesoramiento sobre drogas y/o alcohol
* #106	Información y referencias sobre drogas y alcohol
* #107	Intercambio de agujas y jeringas
* #108	Tratamiento de alcohol y drogas no residencial
* #109	Farmacoterapia
* #110	Salir del programa
* #111	Tratamiento residencial de alcohol y drogas
* #112	Educación de adultos y comunitaria
* #113	Educación más alta
* #114	Educación primaria
* #115	Educación Secundaria
* #116	Formación y educación vocacional
* #117	Emergencia médica
* #118	Colocación y/o Apoyo Laboral
* #119	Rehabilitacion vocacional
* #120	Seguridad en el trabajo/Prevención de accidentes
* #121	Asistencia financiera
* #122	Información financiera/Asesoramiento
* #123	Ayuda material
* #124	Práctica general
* #125	Colocación/apoyo de alojamiento
* #126	Alojamiento en situaciones de crisis o emergencia
* #127	Apoyo a personas sin hogar
* #128	Información/referencias sobre vivienda
* #129	Viviendas de alquiler público
* #130	Servicio de interpretación/multilingüe
* #131	Justicia juvenil
* #132	Defensa jurídica
* #133	Información legal/Asesoramiento/Referencia
* #134	Defensa de la salud mental
* #135	Evaluación/clasificación/respuesta a crisis de salud mental
* #136	Gestión de casos de salud mental
* #137	Información y derivaciones sobre salud mental
* #138	Servicios de salud mental para pacientes hospitalizados
* #139	Rehabilitación no residencial de salud mental
* #140	Centro de rehabilitación residencial de salud mental/CCU
* #141	Psiquiatría (requiere derivación)
* #142	Psicología
* #143	Artes marciales
* #144	Entrenamiento personal de fitness
* #145	Grupo de actividad física
* #146	Programas de actividad física
* #147	Prueba de aptitud física
* #148	Pilates
* #149	Autodefensa
* #150	Club deportivo
* #151	Yoga
* #152	Seguridad alimenticia
* #153	Regulación de Salud/Inspección/Cert.
* #154	Inspección/Certificado de Seguridad y Salud en el Trabajo.
* #155	Apoyo al cuidador
* #156	Cuidado de relevo
* #157	Patología anatómica
* #158	Patología - Química Clínica
* #159	Patología - General
* #160	Patología - Genética
* #161	Patología - Hematología
* #162	Patología - Inmunología
* #163	Patología - Microbiología
* #164	Anestesiología - Medicina del Dolor
* #165	Cardiología
* #166	Genética clínica
* #167	Farmacología Clínica
* #168	Dermatología
* #169	Endocrinología
* #170	Gastroenterología y hepatología
* #171	medicina Geriatrica
* #172	Inmunología y alergia
* #173	Enfermedades infecciosas
* #174	Medicina de cuidados intensivos
* #175	Oncologia medica
* #176	Nefrología
* #177	Neurología
* #178	Medicina Ocupacional
* #179	Medicina paliativa
* #180	Medicina de salud pública
* #181	Medicina de rehabilitación
* #182	Reumatología
* #183	Medicina del sueño
* #184	Medicina Torácica
* #185	Oncología ginecológica
* #186	Obstetrícia y Ginecología
* #187	Endocrinología reproductiva/infertilidad
* #188	Uroginecología
* #189	Neonatología y Perinatología
* #190	Cardiología Pediátrica
* #191	Genética clínica pediátrica
* #192	Farmacología clínica pediátrica
* #193	Endocrinología Pediátrica
* #194	Gastroenterología/Hepatología Pediátrica
* #195	Hematología Pediátrica
* #196	Inmunología y alergia pediátrica
* #197	Enfermedades infecciosas pediátricas
* #198	Medicina Intensiva Pediátrica
* #199	Oncología médica pediátrica
* #200	Medicina Pediátrica
* #201	Nefrología Pediátrica
* #202	Neurología Pediátrica
* #203	Medicina nuclear pediátrica
* #204	Medicina de rehabilitación pediátrica
* #205	Reumatología Pediátrica
* #206	Medicina del sueño pediátrica
* #207	Cirugía Pediátrica
* #208	Medicina Torácica Pediátrica
* #209	Radiología diagnóstica/rayos X/TC/fluoroscopia
* #210	Ultrasonido diagnóstico
* #211	Imágenes por resonancia magnética (IRM)
* #212	Medicina Nuclear
* #213	Ecografía obstétrica/ginecológica
* #214	Oncología radioterapéutica
* #215	Cirugía cardiotorácica
* #216	Neurocirugía
* #217	Oftalmología
* #218	Cirugía ortopedica
* #219	Otorrinolaringología/Cirugía de cabeza y cuello
* #220	Cirugía Plástica y Reconstructiva
* #221	Cirugía - General
* #222	Urología
* #223	Cirugía vascular
* #224	Grupos de apoyo
* #225	Ambulancia aerea
* #226	Ambulancia
* #227	Transporte de sangre
* #228	Autobús comunitario
* #229	Servicio de médico volador
* #230	Transporte de pacientes
* #231	Urgencias
* #232	A&EP
* #233	Abuso
* #234	ACAS
* #235	Acceso
* #236	Accidente
* #237	Servicio de hospitalización aguda
* #238	Programas diurnos para adultos
* #239	Servicios de salud mental para adultos
* #240	Consejo
* #241	Abogacía
* #242	Personas mayores con problemas mentales
* #243	Personas mayores con problemas mentales
* #244	Personas mayores con problemas mentales
* #245	SIDA
* #246	Al-Anon
* #247	Alcohol
* #248	Al-Adolescente
* #249	Prenatal
* #250	Ansiedad
* #251	Artritis
* #252	Evaluación
* #253	Asistencia
* #254	Asma
* #255	ATS
* #256	Atención de asistente
* #257	Bebés
* #258	Modificación del baño
* #259	Comportamiento
* #260	Intervención conductual
* #261	Duelo
* #262	Bipolar
* #263	Nacimiento
* #264	Control de la natalidad
* #265	Opciones de parto
* #266	BIST
* #267	Sangre
* #268	Hueso
* #269	Intestino
* #270	Cerebro
* #271	Lactancia materna
* #272	Examen de mama
* #273	Corretaje
* #274	Cáncer
* #275	Apoyo contra el cáncer
* #276	Enfermedad cardiovascular
* #277	Paquetes de ayuda
* #278	Cuidador
* #279	Gestión de casos
* #280	Víctima
* #281	Centro de enlace
* #282	Farmacia
* #283	Niño y adolescente
* #284	Cuidado de los niños
* #285	Servicios para niños
* #286	Niños
* #287	Servicios para niños
* #288	Colesterol
* #289	Ropa
* #290	Acco basado en la comunidad
* #291	Unidad de Atención Comunitaria
* #292	Comunidad Infantil Y
* #293	Salud de la comunidad
* #294	Comunidad Residencial
* #295	Transporte comunitario
* #296	Visita de acompañante
* #297	Compañerismo
* #298	Asesoramiento al consumidor
* #299	Problemas del consumidor
* #300	Servicio de atención continua
* #301	Información sobre anticoncepción
* #302	Órganos de coordinación
* #303	Servicio Correccional
* #304	Consejo de Medio Ambiente
* #305	Asesoramiento
* #306	Delincuente
* #307	Crisis
* #308	Evaluación de crisis
* #309	Asistencia en caso de crisis
* #310	Refugio de crisis
* #311	Programa del día
* #312	Sordo
* #313	Higiene dental
* #314	Odontología
* #315	Dentadura postiza
* #316	Depresión
* #317	Desintoxicación
* #318	Diabetes
* #319	Ajuste del diafragma
* #320	Dietistas
* #321	Estacionamiento para discapacitados
* #322	Enfermería de distrito
* #323	Divorcio
* #324	Doctores
* #325	Conducir bajo los efectos del alcohol
* #326	Servicio de diagnóstico dual
* #327	Elección temprana
* #328	Desorden alimenticio
* #329	Ayuda de emergencia
* #330	Empleo y Formación
* #331	Ambiente
* #332	Equipo
* #333	Ejercicio
* #334	Instalación
* #335	Elección familiar
* #336	Ley familiar
* #337	Opciones familiares
* #338	Servicios familiares
* #339	FFYA
* #340	Ayuda financiera
* #341	Aptitud física
* #342	Paquete de cuidado flexible
* #343	Alimento
* #344	Vales de comida
* #345	Curación mental forense
* #346	Futuros
* #347	Futuros para jóvenes Publicidad
* #348	Médico general
* #349	Subsidios
* #350	Dolor
* #351	Asesoramiento sobre duelo
* #352	HACC
* #353	Cardiopatía
* #354	Ayuda
* #355	Hipertensión
* #356	Ayuda a domicilio
* #357	Enfermería a domicilio
* #358	El hogar primero
* #359	Cuidado de hospicio
* #360	Servicios hospitalarios
* #361	Del hospital al hogar
* #362	Albergue
* #363	Alojamiento en albergue
* #364	Artículos para el hogar
* #365	Hipertensión
* #366	Enfermedad
* #367	Vida independiente
* #368	Información
* #369	Lesión
* #370	Consumo
* #371	Móvil intensivo Tú
* #372	Intervención
* #373	Búsqueda de empleo
* #374	Justicia
* #375	Ocio
* #376	Préstamos
* #377	Personas con bajos ingresos
* #378	Pulmón
* #379	Hacer una diferencia
* #380	Servicios médicos
* #381	Especialistas médicos
* #382	Administración de medicamentos
* #383	Información sobre la menstruación
* #384	Metadona
* #385	Soporte y T móviles
* #386	Neurona motora
* #387	Esclerosis múltiple
* #388	Casa del barrio
* #389	Asilo de ancianos
* #390	Madres lactantes
* #391	Obesidad
* #392	Salud ocupacional
* #393	Optometrista
* #394	Higiene oral
* #395	Pacientes ambulatorios
* #396	Servicio de extensión
* #397	PADP
* #398	Dolor
* #399	Prueba de Papanicolaou
* #400	Crianza de los hijos
* #401	Organizaciones de alto nivel
* #402	Cuidado personal
* #403	Farmacias
* #404	Fobias
* #405	Físico
* #406	Actividad física
* #407	Postnatal
* #408	El embarazo
* #409	Pruebas de embarazo
* #410	Preescolar
* #411	Recetas
* #412	Salud mental primaria
* #413	Mantenimiento de la propiedad
* #414	Próstata
* #415	Psiquiátrico
* #416	Discapacidad psiquiátrica
* #417	Discapacidad psiquiátrica
* #418	Discapacidad psiquiátrica
* #419	Discapacidad psiquiátrica
* #420	Discapacidad psiquiátrica
* #421	Apoyo psiquiátrico
* #422	Recreación
* #423	Remisión
* #424	Refugio
* #425	Asistencia para el alquiler
* #426	Instalaciones residenciales
* #427	Respiro residencial
* #428	Respiratorio
* #429	Respuesta
* #430	Casas de huéspedes
* #431	Sexo seguro
* #432	Atención extendida segura
* #433	Autoayuda
* #434	Separación
* #435	Servicios
* #436	Educación sexual
* #437	Abuso sexual
* #438	Problemas sexuales
* #439	Transmisión sexual
* #440	SMSL
* #441	Apoyo social
* #442	Socialización
* #443	Necesidades especiales
* #444	Logopeda
* #445	Entablillado
* #446	Deporte
* #447	A nivel estatal y especial
* #448	ETS
* #449	ETS
* #450	Nacimiento de un niño muerto
* #451	Cuidado del estoma
* #452	Ataque
* #453	Abuso de sustancias
* #454	Apoyo
* #455	Jeringas
* #456	Dientes
* #457	Asesoramiento sobre alquileres
* #458	Enfermedad terminal
* #459	Terapia
* #460	Transcripción
* #461	Servicios de traducción
* #462	Traductor
* #463	Transporte
* #464	Vértebras
* #465	Violencia
* #466	Orientación vocacional
* #467	Peso
* #468	Asistencia social
* #469	Asesoramiento sobre bienestar
* #470	Sillas de ruedas
* #471	Tratamiento de las heridas
* #472	Jóvenes en riesgo
* #473	Más información - Atención sanitaria comunitaria
* #474	Biblioteca
* #475	Horario de la comunidad
* #476	Más información - Médico especialista
* #477	Hepatología
* #478	Gastroenterología
* #479	Ginecología
* #480	Obstetricia
* #481	Más información: Especialista quirúrgico
* #482	Protección de colocación
* #483	Violencia familiar
* #484	Servicios Familiares Integrados
* #485	Educador en diabetes
* #486	Cuidado de parientes
* #487	Servicios generales de salud mental
* #488	Fisiología del Ejercicio
* #489	Investigación médica
* #490	Juventud
* #491	Servicios para jóvenes
* #492	Salud de los jóvenes
* #493	Servicios para niños y familias
* #494	Visitas a domicilio
* #495	Servicios móviles
* #496	Antes y/o Después
* #497	Servicios contra el cáncer
* #498	Servicio Integrado de Cáncer
* #499	Se multidisciplinario
* #500	Ca multidisciplinario
* #501	Reuniones
* #502	Monitor de presión arterial
* #503	Administración de dosis
* #504	Hola equipo médico
* #505	Crianza/Apoyo familiar/Educación
* #506	Servicio de Delegación
* #507	Grupos de apoyo para personas con cáncer
* #508	Servicios comunitarios contra el cáncer
* #509	Transporte para atención a discapacitados
* #510	Transporte para personas mayores
* #511	Educación sobre la diabetes
* #512	Rehabilitación cardíaca
* #513	Diabetes en adultos jóvenes
* #514	Rehabilitación Pulmonar
* #515	Terapia artística
* #516	Reseñas de medicamentos
* #517	Asesoramiento telefónico
* #518	Línea de ayuda telefónica
* #519	Servicio en línea
* #520	Crisis - Salud mental
* #521	Crisis de la juventud
* #522	Agresión sexual
* #523	GPAH Otros
* #524	Dermatología Pediátrica
* #525	Servicios para veteranos
* #526	Veteranos
* #527	Alivio alimentario/Alimentos/Comidas
* #528	Atención de la demencia
* #529	Alzheimer
* #530	Grupos de apoyo para personas con problemas de drogas y/o alcohol
* #531	Apoyo personalizado / Tutoría / Coaching
* #532	Manejo de enfermedades crónicas
* #533	Servicios de enlace
* #534	Centro de atención sin cita previa/No emergencia
* #535	Pacientes hospitalizados
* #536	Asesoramiento espiritual
* #537	La salud de la mujer
* #538	Salud de los hombres
* #539	Programa de educación y concientización sobre la salud
* #540	Mensaje de prueba
* #541	Masaje terapéutico
* #542	Servicios de salud mental para adolescentes
* #543	Centro de acogida/asistencia/apoyo para jóvenes
* #544	Trabajador de salud aborigen
* #545	Clínica de salud de la mujer
* #546	Clínica de salud masculina
* #547	Clínica de salud para migrantes
* #548	Clínica de salud para refugiados
* #549	Clínica de salud aborigen
* #550	Enfermera practicante a cargo de clínica(s)
* #551	Enfermera líder de la clínica
* #552	Grupos de apoyo adaptados a cada cultura
* #553	Promoción de la salud adaptada a la cultura
* #554	Rehabilitación
* #555	Información y referencias educativas
* #556	Trabajo Social
* #557	Hematología
* #558	Coche compartido de maternidad
* #559	Servicio de rehabilitación
* #560	Terapia craneosacral
* #561	Prótesis y órtesis
* #562	Reseña de medicina casera
* #563	GPAH - Medicina
* #564	Terapia musical
* #565	Prevención de caídas
* #566	Alojamiento/Alquiler
* #567	Evaluar-Habilidad, Capacidad, Necesidades
* #568	Ayudar a acceder/mantener el empleo
* #569	Asistencia al personal de atención al cliente/seguridad
* #570	Ayudar a integrar la escuela y la educación
* #571	Etapa de vida asistida, transición
* #572	Asistencia-Actividades Personales
* #573	Asistencia en viajes y transporte
* #574	Equipo de asistencia: tareas generales
* #575	Equipos de asistencia-recreación
* #576	Tarea de asistencia para el hogar
* #577	Apoyo conductual
* #578	Equipos de comunicaciones e información
* #579	Atención de enfermería comunitaria
* #580	Tareas diarias/Vida compartida
* #581	Desarrollo-Habilidades para la vida
* #582	Apoyo a la primera infancia
* #583	Equipo Especial Evaluar Configuración
* #584	Equipo auditivo
* #585	Modificación del hogar
* #586	Tareas domesticas
* #587	Interpretar/traducir
* #588	Otros apoyos innovadores
* #589	Participar Comunidad
* #590	Equipos de movilidad personal
* #591	Bienestar físico
* #592	Gestión de planes
* #593	Apoyos terapéuticos
* #594	Formación-Viaje Independencia
* #595	Modificaciones del vehículo
* #596	Equipo de visión
*/

CodeSystem: CSPrestaciones
Id: CSPrestaciones
Title: "CS Prestaciones"
Description: "Codigos de las prestaciones"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #1 "OTRAS CONSULTAS (ABREVIADAS)" 
* #2 "APLICACIÓN DE SELLANTES"
* #3 "APLICACIÓN DE TEPSI"
* #4 "APLICACIÓN EEDP"
* #5 "ATENCIÓN DE PODOLOGIA"
* #6 "ATENCIÓN EN SALA DE ESTIMULACIÓN"
* #7 "ATENCIÓN FARMACEÚTICA"
* #8 "ATENCIÓN POR SALUD DIGITAL"
* #9 "ATENCIÓN PROFESIONAL POR VIDEOLLAMADA"
* #10 "CLINICA O CONSULTA DE LACTANCIA MATERNA"
* #11 "CONSEJERIA FAMILIAR"
* #12 "CONSEJERIA INDIVIDUAL"
* #13 "CONSEJERIA LACTANCIA MATERNA"
* #14 "CONSULTA ALTO RIESGO OBSTÉTRICO"
* #15 "CONSULTA CIRUGIA MENOR (PROCEDIMIENTO)"
* #16 "CONSULTA DE ENFERMERIA"
* #17 "CONSULTA DE ESPECIALIDAD (ODONTÓLOGO, OTORRINO, OFTALMOLOGO, OTROS)"
* #18 "CONSULTA DE MEDICINA INDÍGENA"
* #19 "CONSULTA DE MORBILIDAD"
* #20 "CONSULTA DE TERAPEUTA OCUPACIONAL"
* #21 "CONSULTA DE URGENCIA"
* #22 "CONSULTA FONOAUDIOLOGIA"
* #23 "CONSULTA FONOAUDIOLÓGICA DE REHABILITACIÓN AUDITIVA GRUPAL"
* #24 "CONSULTA FONOAUDIOLÓGICA DE REHABILITACIÓN AUDITIVA INDIVIDUAL"
* #25 "CONSULTA GINECOLÓGICA"
* #26 "CONSULTA INTEGRAL TMO"
* #27 "CONSULTA MATRON/A"
* #28 "CONSULTA NUTRICIONAL"
* #29 "CONSULTA ODONTOLOGICA MORBILIDAD"
* #30 "CONSULTA ODONTOLOGICA TRATAMIENTO"
* #31 "CONSULTA PACIENTE AGUDO ERA"
* #32 "CONSULTA PACIENTE AGUDO IRA"
* #33 "CONSULTA PREVIA O POSTERIOR A CIRUGÍA MENOR"
* #34 "CONSULTA PSICOLOGÍCA"
* #35 "CONSULTA REHABILITACION"
* #36 "CONSULTA SOCIAL"
* #37 "CONSULTA TMO OTORRINO"
* #38 "CONSULTA VICIO DE REFRACCIÓN"
* #39 "CONSULTORÍA DE SALUD MENTAL"
* #40 "CONTACTO DE PACIENTE POR VÍA TELEFÓNICA"
* #41 "CONTROL CERO" 
* #42 "CONTROL CLIMATERIO"
* #43 "CONTROL CRONICO"
* #44 "CONTROL CRONICO ERA"
* #45 "CONTROL CRONICO IRA" 
* #46 "CONTROL DE SALUD INTEGRAL DEL ADOLESCENTE"
* #47 "CONTROL DE SALUD MENTAL"
* #48 "CONTROL DE SEGUIMIENTO EMPAM"
* #49 "CONTROL DIADA"
* #50 "CONTROL GINECOLOGICO"
* #51 "CONTROL INTEGRAL MULTIMORBILIDAD" 
* #52 "CONTROL NIÑO SANO"
* #53 "CONTROL PACIENTE AGUDO ERA"
* #54 "CONTROL PACIENTE AGUDO IRA"
* #55 "CONTROL PRECONCEPCIONAL"
* #56 "CONTROL PRENATAL"
* #57 "CONTROL PUERPERA" 
* #58 "CONTROL REGULACIÓN FERTILIDAD"
* #59 "CURACIÓN AVANZADA" 
* #60 "CURACIONES SIMPLES"
* #61 "EDUCACIÓN FARMACÉUTICA"
* #62 "EDUCACIÓN GRUPAL"
* #63 "EDUCACION INDIVIDUAL SALUD CARDIOVASCULAR"
* #64 "ELABORACIÓN DE INFORMES A TRIBUNALES"
* #65 "ENTREVISTA FAMILIAR (Aplicación Tarjetón Familiar)"
* #66 "ESPIROMETRIA"
* #67 "ESTUDIOS DE FAMILIA"
* #68 "EVALUACIÓN DEL PIE DIABÉTICO"
* #69 "EVALUACION DISCAPACIDAD (IVADEC)"
* #70 "EVALUACIÓN INICIAL DE REHABILITACIÓN"
* #71 "EVALUACION INTERMEDIA (REHABILITACIÓN)"
* #72 "EXAMEN MEDICINA PREVENTIVA ADULTO (EMPA)"
* #73 "FLUORACIÓN TOPICA"
* #74 "FLUORACIÓN TOPICA"
* #75 "INGRESO A SALA DE ESTIMULACIÓN" 
* #76 "INGRESO CLIMATERIO"
* #77 "INGRESO CRONICO"
* #78 "INGRESO ERA"
* #79 "INGRESO FONOAUDIOLOGÍA"
* #80 "INGRESO IRA"
* #81 "INGRESO MULTIMORBILIDAD"
* #82 "INGRESO PMAMA"
* #83 "INGRESO PRENATAL"
* #84 "INGRESO PROGRAMA CERO"
* #85 "INGRESO PROGRAMA SALUD MENTAL"
* #86 "INGRESO REGULACIÓN FERTILIDAD"
* #87 "INTERVENCIÓN EN CRISIS"
* #88 "INTERVENCION PSICOSOCIAL DE GRUPOS"
* #89 "INTERVENCION PSICOSOCIAL GRUPAL"
* #90 "OTRAS CONSULTAS TMO"
* #91 "PAP" 
* #92 "PESQUISA HTA"
* #93 "PROCEDIMIENTOS"
* #94 "PROGRAMA GES ODONTOLOGICO"
* #95 "PROGRAMA MEJORAMIENTO DEL ACCESO A LA ATENCIÓN ODONTOLÓGICA"
* #96 "PROGRAMA ODONTOLÓGICO INTEGRAL"
* #97 "PULIDO CORONARIO Y DESTARTRAJE SUPRAGINGIVAL"
* #98 "REALIZACIÓN EMPAM"
* #99 "SEGUIMIENTO DE CASOS"
* #100 "SEGUIMIENTO DE TEPSI"
* #101 "SEGUMIENTO A DISTANCIA MULTIMORBILIDAD" 
* #102 "SESION DE REHABILITACION INTEGRAL"
* #103 "SESION DE REHABILITACION PULMONAR"
* #104 "TALLER EN EDUCACIÓN ESPECIAL EN ADULTO MAYOR"
* #105 "TALLER GRUPAL"
* #106 "TALLER GRUPAL PMAMA"
* #107 "TAMIZAJE PARA EVALUAR RIESGO DE CONSUMO DE ALCOHOL, TABACO Y OTRAS DROGAS"
* #108 "TELECLIMATERIO"
* #109 "TEST DE MARCHA"
* #110 "TEST DE PROVOCACIÓN CON EJERCICIO"
* #111 "TOMA DE ECOGRAFIA"
* #112 "TOMA DE ELECTROCARDIOGRAMA"
* #113 "TOMA DE ESPIROMETRIA" 
* #114 "TOMA DE MAMOGRAFIA"
* #115 "TOMA DE MUESTRAS"
* #116 "TOMA DE RADIOGRAFIA"
* #117 "VISITA DOMICILIARIA INTEGRAL"
* #118 "VISITAS CON FINES DE TRATAMIENTOS Y/O PROCEDIMIENTOS EN DOMICILIO"

CodeSystem: CSCategotias
Id: CSCategotias
Title: "CS Prestaciones"
Description: "Codigos de las prestaciones"
* ^status = #active
* ^experimental = false
* ^caseSensitive = true

* #1 "Urgencia" 
* #2 "Consulta"