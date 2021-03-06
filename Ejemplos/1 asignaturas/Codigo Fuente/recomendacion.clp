; Fri May 22 13:09:17 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot idioma
		(type SYMBOL)
		(allowed-values Castellano Catalan Ingles)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot horasLab
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot promedioAprobados
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot importante
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horasTeo
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot numMaxAsig
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot temasNoInformaticos
		(type STRING)
		(create-accessor read-write))
	(single-slot prefHorario
		(type SYMBOL)
		(allowed-values Manana Tarde Indiferente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot calificacion
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasLabExterno
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot curso
		(type SYMBOL)
		(allowed-values Primero Segundo Tercero Cuarto)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot asignaturas
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot trabaja
		(type SYMBOL)
		(allowed-values Manana Tarde Ninguna)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot asignatura
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasProb
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot temas
		(type INSTANCE)
;+		(allowed-classes Tema)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot cuatrimestres
		(type INSTANCE)
;+		(allowed-classes MatriculaCuatrimestre)
		(create-accessor read-write))
	(single-slot faltanECTSOpt
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasEstudio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot recomendaciones
		(type INSTANCE)
;+		(allowed-classes Recomendacion)
		(create-accessor read-write))
	(single-slot fechaCurso
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ultimoCuatrimestre
		(type INSTANCE)
;+		(allowed-classes MatriculaCuatrimestre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipoHorario
		(type SYMBOL)
		(allowed-values Manana Tarde)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot numHorasLabs
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot asigIngles
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot expediente
		(type INSTANCE)
;+		(allowed-classes ExpedienteAcademico)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot creditos
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot preferencias
		(type INSTANCE)
;+		(allowed-classes Restriccion)
		(create-accessor read-write))
	(multislot corequisitos
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(multislot temasAfines
		(type INSTANCE)
;+		(allowed-classes Especializado)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot completarEspecialidad
		(type SYMBOL)
		(allowed-values Mucho Poco Indiferente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot horario
		(type SYMBOL)
		(allowed-values Manana Tarde Ambos)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot obligatoria
		(type SYMBOL)
		(allowed-values Obligatoria Complementaria)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot estudiante
		(type INSTANCE)
;+		(allowed-classes Estudiante)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values Facil Dificil Cualquiera)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot creditosTotales
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot distribucionLab
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot cuatrimestre
;+		(comment "cuatrimestre que se imparte Q1 o Q2")
		(type SYMBOL)
		(allowed-values Q1 Q2)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot tipoCuatri
		(type SYMBOL)
		(allowed-values OtonoQ1 PrimaveraQ2)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot numHorasDedicadas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot competencias
		(type SYMBOL)
		(allowed-values G1 G2 G3 G4 G5 G6 G7 G8 G9)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot recomendacion
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot distribucionTeo
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot idiomaConvocatoria
		(type SYMBOL)
		(allowed-values Castellano Catalan Ingles)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot competenciasPrefe
		(type SYMBOL)
		(allowed-values Indiferente G1 G2 G3 G4 G5 G6 G7 G8 G9)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot siglas
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot expedienteAlumno
		(type INSTANCE)
;+		(allowed-classes ExpedienteAcademico)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreEsp
		(type SYMBOL)
		(allowed-values Computacion IngenieriaComputadores IngenieriaSoftware SistemasInformacion TecnologiasInformacion)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot matriCuatri
		(type INSTANCE)
;+		(allowed-classes MatriculaCuatrimestre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot distribucionProb
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot faltanECTSEsp
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAsig
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot temasInteres
		(type STRING)
		(create-accessor read-write))
	(multislot justificacionU
		(type STRING)
		(create-accessor read-write))
	(single-slot faltanECTSOblig
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot proyecto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot justificacionS
		(type STRING)
		(create-accessor read-write))
	(single-slot asigProyecto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot prerequisitos
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot presencial
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot nivelCompetencia
		(type SYMBOL)
		(allowed-values N1 N2 N3)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreTema
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Asignatura
	(is-a USER)
	(role concrete)
	(single-slot distribucionLab
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot distribucionProb
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot promedioAprobados
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot distribucionTeo
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot corequisitos
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(multislot temas
		(type INSTANCE)
;+		(allowed-classes Tema)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot prerequisitos
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(create-accessor read-write))
	(single-slot creditosTotales
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreAsig
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horario
		(type SYMBOL)
		(allowed-values Manana Tarde Ambos)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass ECTSLibreEleccion
	(is-a Asignatura)
	(role concrete)
	(single-slot presencial
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass AsignaturaFIB
	(is-a Asignatura)
	(role concrete)
	(multislot idioma
		(type SYMBOL)
		(allowed-values Castellano Catalan Ingles)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot horasLab
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nivelCompetencia
		(type SYMBOL)
		(allowed-values N1 N2 N3)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot competencias
		(type SYMBOL)
		(allowed-values G1 G2 G3 G4 G5 G6 G7 G8 G9)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasEstudio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot proyecto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot cuatrimestre
;+		(comment "cuatrimestre que se imparte Q1 o Q2")
		(type SYMBOL)
		(allowed-values Q1 Q2)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot siglas
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasProb
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasLabExterno
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot horasTeo
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Obligatoria
	(is-a AsignaturaFIB)
	(role concrete)
	(single-slot curso
		(type SYMBOL)
		(allowed-values Primero Segundo Tercero Cuarto)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Optativa
	(is-a AsignaturaFIB)
	(role concrete))

(defclass Especialidad
	(is-a AsignaturaFIB)
	(role concrete)
	(single-slot obligatoria
		(type SYMBOL)
		(allowed-values Obligatoria Complementaria)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombreEsp
		(type SYMBOL)
		(allowed-values Computacion IngenieriaComputadores IngenieriaSoftware SistemasInformacion TecnologiasInformacion)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Tema
	(is-a USER)
	(role concrete)
	(single-slot nombreTema
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot asignaturas
		(type INSTANCE)
;+		(allowed-classes Asignatura)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass General
	(is-a Tema)
	(role concrete))

(defclass Especializado
	(is-a Tema)
	(role concrete)
	(multislot temasAfines
		(type INSTANCE)
;+		(allowed-classes Especializado)
		(create-accessor read-write)))

(defclass NoInformatico
	(is-a Tema)
	(role concrete))

(defclass Recomendacion
	(is-a USER)
	(role concrete)
	(multislot justificacionU
		(type STRING)
		(create-accessor read-write))
	(single-slot recomendacion
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot gradoRecomendacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot justificacionS
		(type STRING)
		(create-accessor read-write)))

(defclass ExpedienteAcademico
	(is-a USER)
	(role concrete)
	(single-slot faltanECTSOblig
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot faltanECTSEsp
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot ultimoCuatrimestre
		(type INSTANCE)
;+		(allowed-classes MatriculaCuatrimestre)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot estudiante
		(type INSTANCE)
;+		(allowed-classes Estudiante)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot cuatrimestres
		(type INSTANCE)
;+		(allowed-classes MatriculaCuatrimestre)
		(create-accessor read-write))
	(single-slot faltanECTSOpt
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Estudiante
	(is-a USER)
	(role concrete)
	(multislot preferencias
		(type INSTANCE)
;+		(allowed-classes Restriccion)
		(create-accessor read-write))
	(multislot recomendaciones
		(type INSTANCE)
;+		(allowed-classes Recomendacion)
		(create-accessor read-write))
	(single-slot DNI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot expediente
		(type INSTANCE)
;+		(allowed-classes ExpedienteAcademico)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Restriccion
	(is-a USER)
	(role concrete)
	(single-slot importante
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass RestriccionHorario
	(is-a Restriccion)
	(role concrete)
	(single-slot prefHorario
		(type SYMBOL)
		(allowed-values Manana Tarde Indiferente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot trabaja
		(type SYMBOL)
		(allowed-values Manana Tarde Ninguna)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass RestriccionCantidad
	(is-a Restriccion)
	(role concrete)
	(single-slot numMaxAsig
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numHorasDedicadas
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot numHorasLabs
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass RestriccionMultievaluada
	(is-a Restriccion)
	(role concrete)
	(multislot competenciasPrefe
		(type SYMBOL)
		(allowed-values Indiferente G1 G2 G3 G4 G5 G6 G7 G8 G9)
		(create-accessor read-write))
	(multislot temasNoInformaticos
		(type STRING)
		(create-accessor read-write))
	(multislot temasInteres
		(type STRING)
		(create-accessor read-write)))

(defclass RestriccionCalidad
	(is-a Restriccion)
	(role concrete)
	(single-slot asigProyecto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot completarEspecialidad
		(type SYMBOL)
		(allowed-values Mucho Poco Indiferente)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot dificultad
		(type SYMBOL)
		(allowed-values Facil Dificil Cualquiera)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot asigIngles
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Convocatoria
	(is-a USER)
	(role concrete)
	(single-slot idiomaConvocatoria
		(type SYMBOL)
		(allowed-values Castellano Catalan Ingles)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipoHorario
		(type SYMBOL)
		(allowed-values Manana Tarde)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot asignatura
		(type INSTANCE)
;+		(allowed-classes Asignatura)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot calificacion
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass MatriculaCuatrimestre
	(is-a USER)
	(role concrete)
	(single-slot tipoCuatri
		(type SYMBOL)
		(allowed-values OtonoQ1 PrimaveraQ2)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot fechaCurso
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot convocatorias
		(type INSTANCE)
;+		(allowed-classes Convocatoria)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot expedienteAlumno
		(type INSTANCE)
;+		(allowed-classes ExpedienteAcademico)
;+		(cardinality 1 1)
		(create-accessor read-write)))
		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIAS					 		---------- 								INSTANCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
	
(definstances instancies 
; Fri May 22 13:09:17 CEST 2015
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([ontologia_Class0] of  Especializado

	(asignaturas [ontologia_Class10023])
	(nombreTema "Lenguajes de Programacion"))

([ontologia_Class1] of  Especializado

	(asignaturas [ontologia_Class10022])
	(nombreTema "Inteligencia Artificial")
	(temasAfines [ontologia_Class10008]))

([ontologia_Class100] of  ECTSLibreEleccion

	(creditosTotales 2.0)
	(distribucionLab 2.0)
	(distribucionProb 0.0)
	(distribucionTeo 4.0)
	(horario Manana)
	(nombreAsig "HTML,CSS,JavaScript")
	(presencial FALSE)
	(promedioAprobados 99.0)
	(temas
		[ontologia_Class110]
		[ontologia_Class10009]
		[ontologia_Class101]))

([ontologia_Class10000] of  Especialidad

	(competencias G7)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 0.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 0.0)
	(horasLabExterno 0.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Ampliacion de Algorismia")
	(nombreEsp Computacion)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class10024])
	(promedioAprobados 85.0)
	(proyecto FALSE)
	(siglas "AA")
	(temas [ontologia_Class10008]))

([ontologia_Class100001] of  Especialidad

	(competencias G8)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 3.0)
	(horasLabExterno 4.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Protocolos de Internet")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class10019])
	(promedioAprobados 75.0)
	(proyecto TRUE)
	(siglas "PI")
	(temas
		[ontologia_Class10010]
		[ontologia_Class30009]
		[ontologia_Class30011]))

([ontologia_Class100002] of  Especialidad

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 0.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 4.0)
	(horasLabExterno 4.0)
	(horasProb "4")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Aplicaciones Distribuidas")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class10019])
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "AD")
	(temas [ontologia_Class10010]))

([ontologia_Class100003] of  Especialidad

	(competencias G3)
	(corequisitos [ontologia_Class10017])
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 5.0)
	(horasLab 5.0)
	(horasLabExterno 5.0)
	(horasProb "4")
	(horasTeo 2.0)
	(idioma Castellano)
	(nivelCompetencia N1)
	(nombreAsig "Dise�o de Bases de Datos")
	(nombreEsp IngenieriaSoftware)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class91])
	(promedioAprobados 60.0)
	(proyecto FALSE)
	(siglas "DBD")
	(temas [ontologia_Class10009]))

([ontologia_Class10001] of  Especialidad

	(competencias G4)
	(creditosTotales 6.0)
	(cuatrimestre Q1)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 2.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Aprendizaje Automatico")
	(nombreEsp Computacion)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class95])
	(promedioAprobados 85.0)
	(proyecto TRUE)
	(siglas "APA")
	(temas
		[ontologia_Class101]
		[ontologia_Class1]))

([ontologia_Class10002] of  Especializado

	(asignaturas [ontologia_Class10029])
	(nombreTema "Calculo Numerico")
	(temasAfines
		[ontologia_Class10007]
		[ontologia_Class10003]))

([ontologia_Class10003] of  Especializado

	(asignaturas
		[ontologia_Class10026]
		[ontologia_Class97])
	(nombreTema "Graficos")
	(temasAfines [ontologia_Class10007]))

([ontologia_Class10004] of  Especializado

	(asignaturas [ontologia_Class10030])
	(nombreTema "Investigacion Operativa")
	(temasAfines [ontologia_Class10005]))

([ontologia_Class10005] of  Especializado

	(asignaturas
		[ontologia_Class95]
		[ontologia_Class50006])
	(nombreTema "Tratamiento De Datos")
	(temasAfines [ontologia_Class10004]))

([ontologia_Class10006] of  Especializado

	(asignaturas [ontologia_Class10027])
	(nombreTema "Logica"))

([ontologia_Class10007] of  Especializado

	(asignaturas [ontologia_Class10029])
	(nombreTema "Geometria Computacional")
	(temasAfines [ontologia_Class10003]))

([ontologia_Class10008] of  Especializado

	(asignaturas
		[ontologia_Class10024]
		[ontologia_Class10000]
		[ontologia_Class93])
	(nombreTema "Algoritmia")
	(temasAfines [ontologia_Class1]))

([ontologia_Class10009] of  General

	(asignaturas [ontologia_Class10017])
	(nombreTema "Ingenieria de Software"))

([ontologia_Class10010] of  General

	(asignaturas
		[ontologia_Class10019]
		[ontologia_Class50003])
	(nombreTema "Redes"))

([ontologia_Class10012] of  NoInformatico

	(asignaturas [ontologia_Class50012])
	(nombreTema "Ludicas"))

([ontologia_Class10013] of  NoInformatico

	(asignaturas [ontologia_Class50012])
	(nombreTema "Culturales"))

([ontologia_Class10014] of  NoInformatico

	(asignaturas [ontologia_Class50012])
	(nombreTema "Divulgacion Cientifica"))

([ontologia_Class10015] of  NoInformatico

	(asignaturas [ontologia_Class60000])
	(nombreTema "Investigacion"))

([ontologia_Class10016] of  NoInformatico

	(asignaturas
		[ontologia_Class100]
		[ontologia_Class50011])
	(nombreTema "Cursos"))

([ontologia_Class10017] of  Obligatoria

	(competencias G4)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 0.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 2.0)
	(horasLab 0.0)
	(horasLabExterno 0.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Introduccion a la Ingenieria de Software")
	(prerequisitos [ontologia_Class91])
	(promedioAprobados 98.0)
	(proyecto FALSE)
	(siglas "IES")
	(temas [ontologia_Class10009]))

([ontologia_Class10018] of  Obligatoria

	(competencias G2)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 6.0)
	(horasLab 1.0)
	(horasLabExterno 4.0)
	(horasProb "1")
	(horasTeo 1.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Arquitectura de Computadores")
	(prerequisitos
		[ontologia_Class88]
		[ontologia_Class96])
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "AC")
	(temas [ontologia_Class109]))

([ontologia_Class10019] of  Obligatoria

	(competencias G7)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "1")
	(horasTeo 2.0)
	(idioma Catalan Ingles)
	(nivelCompetencia N2)
	(nombreAsig "Redes de Computadores")
	(promedioAprobados 85.0)
	(proyecto FALSE)
	(siglas "XC")
	(temas [ontologia_Class10010]))

([ontologia_Class10020] of  Obligatoria

	(competencias G1)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 0.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 2.0)
	(horasLab 0.0)
	(horasLabExterno 0.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Empresa y Entorno Econ�mico")
	(promedioAprobados 99.0)
	(proyecto FALSE)
	(siglas "EEE")
	(temas
		[ontologia_Class10021]
		[ontologia_Class107]))

([ontologia_Class10021] of  General

	(asignaturas [ontologia_Class10020])
	(nombreTema "Economicos"))

([ontologia_Class10022] of  Especialidad

	(competencias G5)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 8.0)
	(horasLab 1.0)
	(horasLabExterno 8.0)
	(horasProb "1")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Inteligencia Artificial")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class93])
	(promedioAprobados 89.0)
	(proyecto TRUE)
	(siglas "IA")
	(temas
		[ontologia_Class1]
		[ontologia_Class101]))

([ontologia_Class10023] of  Especialidad

	(competencias G4)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 4.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 8.0)
	(horasLab 2.0)
	(horasLabExterno 8.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Lenguajes de Programacion")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class87])
	(promedioAprobados 70.0)
	(proyecto TRUE)
	(siglas "LP")
	(temas
		[ontologia_Class101]
		[ontologia_Class0]))

([ontologia_Class10024] of  Especialidad

	(competencias G7)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 4.0)
	(horasLab 0.0)
	(horasLabExterno 4.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N3)
	(nombreAsig "Algoritmia")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class93])
	(promedioAprobados 89.0)
	(proyecto TRUE)
	(siglas "A")
	(temas
		[ontologia_Class101]
		[ontologia_Class10008]))

([ontologia_Class10025] of  Obligatoria

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 2.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan Ingles)
	(nivelCompetencia N2)
	(nombreAsig "Paralelismo")
	(prerequisitos
		[ontologia_Class10018]
		[ontologia_Class93]
		[ontologia_Class96])
	(promedioAprobados 85.0)
	(proyecto FALSE)
	(siglas "PAR")
	(temas
		[ontologia_Class109]
		[ontologia_Class101]))

([ontologia_Class10026] of  Especialidad

	(competencias G2)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Graficos")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos
		[ontologia_Class97]
		[ontologia_Class87])
	(promedioAprobados 86.0)
	(proyecto FALSE)
	(siglas "G")
	(temas
		[ontologia_Class101]
		[ontologia_Class10003]))

([ontologia_Class10027] of  Especialidad

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 8.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Logica en la Informatica")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class93])
	(promedioAprobados 70.0)
	(proyecto TRUE)
	(siglas "LI")
	(temas
		[ontologia_Class101]
		[ontologia_Class10006]))

([ontologia_Class10028] of  Especialidad

	(competencias G7)
	(creditosTotales 5.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 3.0)
	(distribucionTeo 0.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "2")
	(horasTeo 0.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Teoria de la Computacion")
	(nombreEsp Computacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class93])
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "TC")
	(temas [ontologia_Class101]))

([ontologia_Class10029] of  Especialidad

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Computacion Numerica")
	(nombreEsp Computacion)
	(obligatoria Complementaria)
	(prerequisitos
		[ontologia_Class90]
		[ontologia_Class89])
	(promedioAprobados 85.0)
	(proyecto TRUE)
	(siglas "CN")
	(temas
		[ontologia_Class107]
		[ontologia_Class101]
		[ontologia_Class10002]
		[ontologia_Class10007]))

([ontologia_Class10030] of  Especialidad

	(competencias G6)
	(creditosTotales 6.0)
	(cuatrimestre Q1)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Investigacion Operativa")
	(nombreEsp Computacion)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class95])
	(promedioAprobados 89.0)
	(proyecto TRUE)
	(siglas "IO")
	(temas
		[ontologia_Class101]
		[ontologia_Class10004]
		[ontologia_Class10005]))

([ontologia_Class101] of  General

	(asignaturas
		[ontologia_Class93]
		[ontologia_Class97]
		[ontologia_Class83]
		[ontologia_Class92]
		[ontologia_Class87]
		[ontologia_Class10024])
	(nombreTema "Programacion"))

([ontologia_Class107] of  General

	(asignaturas
		[ontologia_Class78]
		[ontologia_Class90]
		[ontologia_Class89]
		[ontologia_Class95])
	(nombreTema "Matematicas"))

([ontologia_Class108] of  General

	(asignaturas [ontologia_Class77])
	(nombreTema "Fisica"))

([ontologia_Class109] of  General

	(asignaturas
		[ontologia_Class94]
		[ontologia_Class88]
		[ontologia_Class84])
	(nombreTema "ArquitecturaComputadores"))

([ontologia_Class110] of  General

	(asignaturas [ontologia_Class91])
	(nombreTema "BasesDatos"))

([ontologia_Class2] of  Estudiante

	(DNI "123456789")
	(expediente [ontologia_Class20048])
	(nombre "alumno3"))

([ontologia_Class20000] of  Especializado

	(asignaturas [ontologia_Class40000])
	(nombreTema "Dise�o de sistemas web"))

([ontologia_Class20001] of  Especializado

	(asignaturas [ontologia_Class10017])
	(nombreTema "Dise�o UML"))

([ontologia_Class20002] of  Estudiante

	(DNI "987654")
	(expediente [ontologia_Class20009])
	(nombre "alumno1"))

([ontologia_Class20003] of  Estudiante

	(DNI "654321")
	(expediente [ontologia_Class20010])
	(nombre "alumno2"))

([ontologia_Class20006] of  Estudiante

	(DNI "236547")
	(expediente [ontologia_Class20012])
	(nombre "alumno5"))

([ontologia_Class20007] of  Estudiante

	(DNI "741258")
	(expediente [ontologia_Class20013])
	(nombre "alumno6"))

([ontologia_Class20008] of  Estudiante

	(DNI "654123652")
	(expediente [ontologia_Class20014])
	(nombre "alumno7"))

([ontologia_Class20009] of  ExpedienteAcademico

	(cuatrimestres [ontologia_Class20015])
	(estudiante [ontologia_Class20002])
	(faltanECTSEsp 48.0)
	(faltanECTSOblig 102.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class20015]))

([ontologia_Class20010] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class20020]
		[ontologia_Class90005])
	(estudiante [ontologia_Class20003])
	(faltanECTSEsp 48.0)
	(faltanECTSOblig 87.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class90005]))

([ontologia_Class20012] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class60002]
		[ontologia_Class60004]
		[ontologia_Class60006]
		[ontologia_Class60003]
		[ontologia_Class60005])
	(estudiante [ontologia_Class20006])
	(faltanECTSEsp 24.0)
	(faltanECTSOblig 0.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class60006]))

([ontologia_Class20013] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class70000]
		[ontologia_Class70002]
		[ontologia_Class60006]
		[ontologia_Class70001]
		[ontologia_Class70012]
		[ontologia_Class70014]
		[ontologia_Class70003]
		[ontologia_Class90003])
	(estudiante [ontologia_Class20007])
	(faltanECTSEsp 0.0)
	(faltanECTSOblig 0.0)
	(faltanECTSOpt 18.0)
	(ultimoCuatrimestre [ontologia_Class90003]))

([ontologia_Class20014] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class70017]
		[ontologia_Class70019]
		[ontologia_Class70018]
		[ontologia_Class70020])
	(estudiante [ontologia_Class20008])
	(faltanECTSEsp 42.0)
	(faltanECTSOblig 18.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class70020]))

([ontologia_Class20015] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20017]
		[ontologia_Class20016]
		[ontologia_Class20019]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20009])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class20016] of  Convocatoria

	(asignatura [ontologia_Class78])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20017] of  Convocatoria

	(asignatura [ontologia_Class77])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20018] of  Convocatoria

	(asignatura [ontologia_Class83])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class20019] of  Convocatoria

	(asignatura [ontologia_Class84])
	(calificacion 8.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20020] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20017]
		[ontologia_Class20019]
		[ontologia_Class20018]
		[ontologia_Class20021])
	(expedienteAlumno [ontologia_Class20010])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class20021] of  Convocatoria

	(asignatura [ontologia_Class78])
	(calificacion 4.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20022] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20017]
		[ontologia_Class20016]
		[ontologia_Class20019]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20044])
	(fechaCurso "2012-2013")
	(tipoCuatri OtonoQ1))

([ontologia_Class20023] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20027]
		[ontologia_Class20024]
		[ontologia_Class20025]
		[ontologia_Class20026])
	(expedienteAlumno [ontologia_Class20044])
	(fechaCurso "2012-2013")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class20024] of  Convocatoria

	(asignatura [ontologia_Class90])
	(calificacion 6.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class20025] of  Convocatoria

	(asignatura [ontologia_Class89])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class20026] of  Convocatoria

	(asignatura [ontologia_Class92])
	(calificacion 7.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class20027] of  Convocatoria

	(asignatura [ontologia_Class88])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class20028] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20040]
		[ontologia_Class20038]
		[ontologia_Class5]
		[ontologia_Class20041]
		[ontologia_Class20042])
	(expedienteAlumno [ontologia_Class20044])
	(fechaCurso "2013-2014")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class20029] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20033]
		[ontologia_Class20030]
		[ontologia_Class20031]
		[ontologia_Class20035]
		[ontologia_Class20032])
	(expedienteAlumno [ontologia_Class20044])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class20030] of  Convocatoria

	(asignatura [ontologia_Class94])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class20031] of  Convocatoria

	(asignatura [ontologia_Class93])
	(calificacion 6.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class20032] of  Convocatoria

	(asignatura [ontologia_Class96])
	(calificacion 5.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20033] of  Convocatoria

	(asignatura [ontologia_Class91])
	(calificacion 6.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class20034] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20037]
		[ontologia_Class20036]
		[ontologia_Class20043])
	(expedienteAlumno [ontologia_Class20044])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class20035] of  Convocatoria

	(asignatura [ontologia_Class95])
	(calificacion 7.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20036] of  Convocatoria

	(asignatura [ontologia_Class10025])
	(calificacion 6.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class20037] of  Convocatoria

	(asignatura [ontologia_Class97])
	(calificacion 8.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20038] of  Convocatoria

	(asignatura [ontologia_Class10017])
	(calificacion 6.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class20040] of  Convocatoria

	(asignatura [ontologia_Class10018])
	(calificacion 5.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class20041] of  Convocatoria

	(asignatura [ontologia_Class10019])
	(calificacion 7.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class20042] of  Convocatoria

	(asignatura [ontologia_Class10020])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class20043] of  Convocatoria

	(asignatura [ontologia_Class10029])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class20044] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class20022]
		[ontologia_Class20029]
		[ontologia_Class20023]
		[ontologia_Class20028]
		[ontologia_Class20034])
	(estudiante [ontologia_Class20047])
	(faltanECTSEsp 42.0)
	(faltanECTSOblig 0.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class20034]))

([ontologia_Class20047] of  Estudiante

	(DNI "4568254")
	(expediente [ontologia_Class20044])
	(nombre "alumno4"))

([ontologia_Class20048] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class20051]
		[ontologia_Class20050]
		[ontologia_Class20052]
		[ontologia_Class20049])
	(estudiante [ontologia_Class2])
	(faltanECTSEsp 48.0)
	(faltanECTSOblig 12.0)
	(faltanECTSOpt 42.0)
	(ultimoCuatrimestre [ontologia_Class20049]))

([ontologia_Class20049] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20040]
		[ontologia_Class20038]
		[ontologia_Class5]
		[ontologia_Class20041]
		[ontologia_Class20042])
	(expedienteAlumno [ontologia_Class20048])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class20050] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20033]
		[ontologia_Class20030]
		[ontologia_Class20031]
		[ontologia_Class20035]
		[ontologia_Class20032])
	(expedienteAlumno [ontologia_Class20048])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class20051] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20017]
		[ontologia_Class20016]
		[ontologia_Class20019]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20048])
	(fechaCurso "2012-2013")
	(tipoCuatri OtonoQ1))

([ontologia_Class20052] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20027]
		[ontologia_Class20024]
		[ontologia_Class20025]
		[ontologia_Class20026])
	(expedienteAlumno [ontologia_Class20048])
	(fechaCurso "2012-2013")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class30000] of  Especialidad

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q2 Q1)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 2.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Arquitectura del Software")
	(nombreEsp IngenieriaSoftware)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class10017])
	(promedioAprobados 90.0)
	(proyecto FALSE)
	(siglas "AS")
	(temas
		[ontologia_Class10009]
		[ontologia_Class30003]))

([ontologia_Class30001] of  Especialidad

	(competencias G6)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 3.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Ingenieria Requisitos")
	(nombreEsp IngenieriaSoftware)
	(obligatoria Obligatoria)
	(prerequisitos
		[ontologia_Class10020]
		[ontologia_Class10017])
	(promedioAprobados 95.0)
	(proyecto TRUE)
	(siglas "ER")
	(temas
		[ontologia_Class10009]
		[ontologia_Class20001]
		[ontologia_Class30002]))

([ontologia_Class30002] of  Especializado

	(asignaturas [ontologia_Class30001])
	(nombreTema "Ingenieria de Requisitos"))

([ontologia_Class30003] of  Especializado

	(asignaturas [ontologia_Class10017])
	(nombreTema "Arquitectura del Software"))

([ontologia_Class30004] of  Especializado

	(asignaturas
		[ontologia_Class50006]
		[ontologia_Class91]
		[ontologia_Class40001])
	(nombreTema "Administracion de bases de datos"))

([ontologia_Class30005] of  Especializado

	(asignaturas [ontologia_Class50006])
	(nombreTema "Dise�ador de bases de datos"))

([ontologia_Class30006] of  Especializado

	(asignaturas [ontologia_Class50003])
	(nombreTema "Seguridad de bases de datos"))

([ontologia_Class30007] of  Especializado

	(asignaturas [ontologia_Class40001])
	(nombreTema "Bases de Datos especializadas"))

([ontologia_Class30008] of  Especializado

	(asignaturas
		[ontologia_Class40003]
		[ontologia_Class96])
	(nombreTema "Administracion de Sistemas Operativos"))

([ontologia_Class30009] of  Especializado

	(asignaturas [ontologia_Class50003])
	(nombreTema "Internet"))

([ontologia_Class30010] of  Especializado

	(nombreTema "Seguridad Informatica"))

([ontologia_Class30011] of  Especializado

	(asignaturas [ontologia_Class10019])
	(nombreTema "Tecnologias de Redes"))

([ontologia_Class30012] of  Especializado

	(asignaturas
		[ontologia_Class10018]
		[ontologia_Class88])
	(nombreTema "Ensamblador"))

([ontologia_Class30013] of  Especializado

	(asignaturas [ontologia_Class50000])
	(nombreTema "Microcomputadores"))

([ontologia_Class30014] of  Especializado

	(asignaturas [ontologia_Class77])
	(nombreTema "Procesamiento de Se�al"))

([ontologia_Class30015] of  Especializado

	(asignaturas [ontologia_Class96])
	(nombreTema "Sistemas Operativos"))

([ontologia_Class30016] of  Especializado

	(nombreTema "Grafos"))

([ontologia_Class30017] of  Especializado

	(asignaturas
		[ontologia_Class78]
		[ontologia_Class89]
		[ontologia_Class10029])
	(nombreTema "Analisis Matematico"))

([ontologia_Class30018] of  Especializado

	(asignaturas [ontologia_Class77])
	(nombreTema "Corriente Continua"))

([ontologia_Class30019] of  Especializado

	(asignaturas [ontologia_Class77])
	(nombreTema "Corriente Alterna"))

([ontologia_Class30020] of  Especializado

	(asignaturas
		[ontologia_Class77]
		[ontologia_Class94])
	(nombreTema "Electronica y Puertas Logicas"))

([ontologia_Class30021] of  Especializado

	(asignaturas [ontologia_Class77])
	(nombreTema "Ondas"))

([ontologia_Class40000] of  Especialidad

	(competencias G4)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Proyecto Ingenier�a Software")
	(nombreEsp IngenieriaSoftware)
	(obligatoria Obligatoria)
	(prerequisitos
		[ontologia_Class30000]
		[ontologia_Class30001])
	(promedioAprobados 85.0)
	(proyecto TRUE)
	(siglas "PES")
	(temas
		[ontologia_Class30003]
		[ontologia_Class20000]
		[ontologia_Class20001]
		[ontologia_Class10009]))

([ontologia_Class40001] of  Especialidad

	(competencias G8)
	(creditosTotales 6.0)
	(cuatrimestre Q1)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Conceptos Bases Datos Especializadas")
	(nombreEsp IngenieriaSoftware)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class91])
	(promedioAprobados 85.0)
	(proyecto FALSE)
	(siglas "CBDE")
	(temas
		[ontologia_Class30004]
		[ontologia_Class30007]
		[ontologia_Class30005]
		[ontologia_Class30006]
		[ontologia_Class110]))

([ontologia_Class40002] of  Especialidad

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Tecnolog�as Redes Computadores")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class10019])
	(promedioAprobados 80.0)
	(proyecto FALSE)
	(siglas "TXC")
	(temas
		[ontologia_Class10010]
		[ontologia_Class30009]
		[ontologia_Class30011]))

([ontologia_Class40003] of  Especialidad

	(competencias G7)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Administracion Sistemas Operativos")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class96])
	(promedioAprobados 75.0)
	(proyecto FALSE)
	(siglas "ASO")
	(temas
		[ontologia_Class10010]
		[ontologia_Class30008]
		[ontologia_Class30010]))

([ontologia_Class5] of  Convocatoria

	(asignatura [ontologia_Class87])
	(calificacion 5.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class50000] of  Especialidad

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 8.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 4.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Arquitectura Computadores 2")
	(nombreEsp IngenieriaComputadores)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class10018])
	(promedioAprobados 50.0)
	(proyecto FALSE)
	(siglas "AC2")
	(temas
		[ontologia_Class109]
		[ontologia_Class30012]
		[ontologia_Class30018]))

([ontologia_Class50001] of  Especialidad

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 3.0)
	(horasLabExterno 8.0)
	(horasProb "0")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Dise�o Sistemas Basados Microcomputadores")
	(nombreEsp IngenieriaComputadores)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class94])
	(promedioAprobados 73.0)
	(proyecto TRUE)
	(siglas "DSBM")
	(temas
		[ontologia_Class109]
		[ontologia_Class30019]
		[ontologia_Class30018]))

([ontologia_Class50002] of  Especialidad

	(competencias G1)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 4.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Manana)
	(horasEstudio 4.0)
	(horasLab 4.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Programaci�n Consciente Arquitectura")
	(nombreEsp IngenieriaComputadores)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class10018])
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "PCA")
	(temas
		[ontologia_Class109]
		[ontologia_Class30020]))

([ontologia_Class50003] of  Especialidad

	(competencias G6)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 3.0)
	(horasLab 1.0)
	(horasLabExterno 3.0)
	(horasProb "2")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Seguridad Inform�tica")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(promedioAprobados 60.0)
	(proyecto FALSE)
	(siglas "SI")
	(temas
		[ontologia_Class10010]
		[ontologia_Class30011]))

([ontologia_Class50004] of  Especialidad

	(competencias G1)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 2.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Negocio Electr�nico")
	(nombreEsp SistemasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class50005])
	(promedioAprobados 85.0)
	(proyecto TRUE)
	(siglas "NE")
	(temas [ontologia_Class10021]))

([ontologia_Class50005] of  Especialidad

	(competencias G2)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 2.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Sistemas Informaci�n Organizaciones")
	(nombreEsp SistemasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos
		[ontologia_Class91]
		[ontologia_Class10020])
	(promedioAprobados 80.0)
	(proyecto FALSE)
	(siglas "SIO")
	(temas [ontologia_Class10021]))

([ontologia_Class50006] of  Especialidad

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 4.0)
	(horasLab 3.0)
	(horasLabExterno 2.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Administraci�n Bases Datos")
	(nombreEsp SistemasInformacion)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class91])
	(promedioAprobados 100.0)
	(proyecto FALSE)
	(siglas "ABD")
	(temas
		[ontologia_Class110]
		[ontologia_Class20001]
		[ontologia_Class30005]))

([ontologia_Class50007] of  Optativa

	(competencias G5)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 3.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "4")
	(horasTeo 4.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Videojuegos")
	(prerequisitos [ontologia_Class97])
	(promedioAprobados 70.0)
	(proyecto TRUE)
	(siglas "VJ")
	(temas
		[ontologia_Class101]
		[ontologia_Class10003]))

([ontologia_Class50008] of  Optativa

	(competencias G5)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 3.0)
	(horasLab 3.0)
	(horasLabExterno 5.0)
	(horasProb "4")
	(horasTeo 5.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Rob�tica")
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "ROB")
	(temas
		[ontologia_Class101]
		[ontologia_Class0]))

([ontologia_Class50009] of  Optativa

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Tarde)
	(horasEstudio 3.0)
	(horasLab 2.0)
	(horasLabExterno 3.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Ingles)
	(nivelCompetencia N2)
	(nombreAsig "Mineria Datos")
	(prerequisitos
		[ontologia_Class92]
		[ontologia_Class95])
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "MD")
	(temas [ontologia_Class10015]))

([ontologia_Class50010] of  Optativa

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 2.0)
	(distribucionProb 1.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "4")
	(horasTeo 4.0)
	(idioma Ingles)
	(nivelCompetencia N1)
	(nombreAsig "F�sica Orientada a la Modelizaci�n y la Animaci�n Realista")
	(promedioAprobados 74.0)
	(proyecto TRUE)
	(siglas "FOMAR")
	(temas
		[ontologia_Class108]
		[ontologia_Class30021]))

([ontologia_Class50011] of  ECTSLibreEleccion

	(creditosTotales 2.0)
	(distribucionLab 2.0)
	(distribucionProb 0.0)
	(distribucionTeo 0.0)
	(horario Manana)
	(nombreAsig "Seguridad Avanzada")
	(promedioAprobados 90.0)
	(temas
		[ontologia_Class10010]
		[ontologia_Class30010]))

([ontologia_Class50012] of  ECTSLibreEleccion

	(creditosTotales 2.0)
	(distribucionLab 0.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(nombreAsig "Seminario Empresa")
	(promedioAprobados 100.0)
	(temas [ontologia_Class10021]))

([ontologia_Class50013] of  Optativa

	(competencias G7)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 3.0)
	(distribucionTeo 0.0)
	(horario Tarde)
	(horasEstudio 2.0)
	(horasLab 2.0)
	(horasLabExterno 3.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Visi�n por computador")
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "VC")
	(temas [ontologia_Class101]))

([ontologia_Class50014] of  Optativa

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 3.0)
	(distribucionTeo 0.0)
	(horario Manana)
	(horasEstudio 3.0)
	(horasLab 3.0)
	(horasLabExterno 3.0)
	(horasProb "3")
	(horasTeo 0.0)
	(idioma Ingles)
	(nivelCompetencia N3)
	(nombreAsig "Writing Skills Engineering")
	(promedioAprobados 94.0)
	(proyecto FALSE)
	(siglas "WSE")
	(temas [ontologia_Class10013]))

([ontologia_Class60000] of  ECTSLibreEleccion

	(creditosTotales 2.0)
	(distribucionLab 1.0)
	(distribucionProb 1.0)
	(distribucionTeo 0.0)
	(horario Ambos)
	(nombreAsig "Programacion Basica")
	(promedioAprobados 90.0)
	(temas [ontologia_Class10016]))

([ontologia_Class60001] of  Optativa

	(competencias G4)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 3.0)
	(horasLab 3.0)
	(horasLabExterno 2.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Castellano)
	(nivelCompetencia N2)
	(nombreAsig "Tarjetas Gr�ficas y Aceleradores")
	(promedioAprobados 80.0)
	(proyecto TRUE)
	(siglas "TGA")
	(temas
		[ontologia_Class109]
		[ontologia_Class30013]))

([ontologia_Class60002] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20016]
		[ontologia_Class20019]
		[ontologia_Class20017]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20012])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class60003] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20027]
		[ontologia_Class20026]
		[ontologia_Class20024]
		[ontologia_Class20025])
	(expedienteAlumno [ontologia_Class20012])
	(fechaCurso "2013-2014")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class60004] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20033]
		[ontologia_Class20030]
		[ontologia_Class20032]
		[ontologia_Class20031]
		[ontologia_Class20035])
	(expedienteAlumno [ontologia_Class20012])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class60005] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20041]
		[ontologia_Class5]
		[ontologia_Class20040]
		[ontologia_Class20042]
		[ontologia_Class20038])
	(expedienteAlumno [ontologia_Class20012])
	(fechaCurso "2014-2015")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class60006] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20037]
		[ontologia_Class60007]
		[ontologia_Class60008]
		[ontologia_Class20043]
		[ontologia_Class60009])
	(expedienteAlumno [ontologia_Class20012])
	(fechaCurso "2015-2016")
	(tipoCuatri OtonoQ1))

([ontologia_Class60007] of  Convocatoria

	(asignatura [ontologia_Class10023])
	(calificacion 7.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class60008] of  Convocatoria

	(asignatura [ontologia_Class10027])
	(calificacion 5.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class60009] of  Convocatoria

	(asignatura [ontologia_Class10028])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class70000] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20016]
		[ontologia_Class20019]
		[ontologia_Class20017]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2012-2013")
	(tipoCuatri OtonoQ1))

([ontologia_Class70001] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20025]
		[ontologia_Class20024]
		[ontologia_Class20026]
		[ontologia_Class20027])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2012-2013")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70002] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20030]
		[ontologia_Class20031]
		[ontologia_Class20033]
		[ontologia_Class20035]
		[ontologia_Class20032])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class70003] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20041]
		[ontologia_Class5]
		[ontologia_Class20040]
		[ontologia_Class20038]
		[ontologia_Class20042])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2013-2014")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70004] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20037]
		[ontologia_Class60008]
		[ontologia_Class60007]
		[ontologia_Class60009]
		[ontologia_Class20043])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class70006] of  Especialidad

	(competencias G5)
	(creditosTotales 6.0)
	(cuatrimestre Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Tarde)
	(horasEstudio 3.0)
	(horasLab 3.0)
	(horasLabExterno 3.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Compiladores")
	(nombreEsp Computacion)
	(obligatoria Complementaria)
	(prerequisitos [ontologia_Class10028])
	(promedioAprobados 50.0)
	(proyecto TRUE)
	(siglas "CL")
	(temas
		[ontologia_Class101]
		[ontologia_Class10008]))

([ontologia_Class70009] of  Convocatoria

	(asignatura [ontologia_Class70006])
	(calificacion 5.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class70010] of  Convocatoria

	(asignatura [ontologia_Class10024])
	(calificacion 7.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class70011] of  Convocatoria

	(asignatura [ontologia_Class10022])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class70012] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20036]
		[ontologia_Class70011]
		[ontologia_Class70009]
		[ontologia_Class70010]
		[ontologia_Class70013])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2014-2015")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70013] of  Convocatoria

	(asignatura [ontologia_Class10026])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Tarde))

([ontologia_Class70014] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class70016]
		[ontologia_Class70015])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2015-2016")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70015] of  Convocatoria

	(asignatura [ontologia_Class50008])
	(calificacion 7.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class70016] of  Convocatoria

	(asignatura [ontologia_Class50007])
	(calificacion 8.0)
	(idiomaConvocatoria Catalan)
	(tipoHorario Manana))

([ontologia_Class70017] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20016]
		[ontologia_Class20017]
		[ontologia_Class20019]
		[ontologia_Class20018])
	(expedienteAlumno [ontologia_Class20014])
	(fechaCurso "2012-2013")
	(tipoCuatri OtonoQ1))

([ontologia_Class70018] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20026]
		[ontologia_Class20027]
		[ontologia_Class20024]
		[ontologia_Class20025])
	(expedienteAlumno [ontologia_Class20014])
	(fechaCurso "2012-2013")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70019] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20031]
		[ontologia_Class20033]
		[ontologia_Class20030]
		[ontologia_Class20035]
		[ontologia_Class20032])
	(expedienteAlumno [ontologia_Class20014])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class70020] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20040]
		[ontologia_Class20041]
		[ontologia_Class20042]
		[ontologia_Class20037]
		[ontologia_Class70021])
	(expedienteAlumno [ontologia_Class20014])
	(fechaCurso "2013-2014")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class70021] of  Convocatoria

	(asignatura [ontologia_Class50003])
	(calificacion 7.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Tarde))

([ontologia_Class77] of  Obligatoria

	(competencias G4)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Primero)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "2")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Fisica")
	(promedioAprobados 85.0)
	(proyecto FALSE)
	(siglas "F")
	(temas [ontologia_Class108]))

([ontologia_Class78] of  Obligatoria

	(competencias G9)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Primero)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N1)
	(nombreAsig "Fundamentos Matematicos")
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "FM")
	(temas
		[ontologia_Class107]
		[ontologia_Class10002]
		[ontologia_Class10006]))

([ontologia_Class80000] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class90001]
		[ontologia_Class90002])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2015-2016")
	(tipoCuatri OtonoQ1))

([ontologia_Class80001] of  ExpedienteAcademico

	(cuatrimestres
		[ontologia_Class80003]
		[ontologia_Class80005]
		[ontologia_Class80007]
		[ontologia_Class80004]
		[ontologia_Class80006]
		[ontologia_Class80008]
		[ontologia_Class80000])
	(estudiante [ontologia_Class80002])
	(faltanECTSEsp 0.0)
	(faltanECTSOblig 0.0)
	(faltanECTSOpt 36.0)
	(ultimoCuatrimestre [ontologia_Class80000]))

([ontologia_Class80002] of  Estudiante

	(DNI "45432131")
	(expediente [ontologia_Class80001])
	(nombre "alumno8"))

([ontologia_Class80003] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20019]
		[ontologia_Class20018]
		[ontologia_Class20017]
		[ontologia_Class20021])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2012-2013")
	(tipoCuatri OtonoQ1))

([ontologia_Class80004] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20026]
		[ontologia_Class20024]
		[ontologia_Class20025]
		[ontologia_Class20027]
		[ontologia_Class20016])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2012-2013")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class80005] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20031]
		[ontologia_Class20033]
		[ontologia_Class20030]
		[ontologia_Class20032]
		[ontologia_Class20035])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2013-2014")
	(tipoCuatri OtonoQ1))

([ontologia_Class80006] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20038]
		[ontologia_Class5]
		[ontologia_Class20040]
		[ontologia_Class20042]
		[ontologia_Class20041])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2013-2014")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class80007] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20036]
		[ontologia_Class20037]
		[ontologia_Class20043]
		[ontologia_Class60007]
		[ontologia_Class60008])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2014-2015")
	(tipoCuatri OtonoQ1))

([ontologia_Class80008] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class60009]
		[ontologia_Class70011]
		[ontologia_Class70010]
		[ontologia_Class70013]
		[ontologia_Class70009])
	(expedienteAlumno [ontologia_Class80001])
	(fechaCurso "2014-2015")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class83] of  Obligatoria

	(competencias G7)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Primero)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 8.0)
	(horasLab 3.0)
	(horasLabExterno 8.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N1)
	(nombreAsig "Programacion1")
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "PRO1")
	(temas [ontologia_Class101]))

([ontologia_Class84] of  Obligatoria

	(competencias G6)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Primero)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "IntroduccionComputadores")
	(promedioAprobados 75.0)
	(proyecto FALSE)
	(siglas "IC")
	(temas [ontologia_Class109]))

([ontologia_Class87] of  Obligatoria

	(competencias G5)
	(corequisitos [ontologia_Class10017])
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 8.0)
	(horasLab 2.0)
	(horasLabExterno 8.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Poryecto de Programacion")
	(prerequisitos
		[ontologia_Class91]
		[ontologia_Class93])
	(promedioAprobados 70.0)
	(proyecto TRUE)
	(siglas "PROP")
	(temas
		[ontologia_Class101]
		[ontologia_Class10008]
		[ontologia_Class1]))

([ontologia_Class88] of  Obligatoria

	(competencias G2)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Segundo)
	(distribucionLab 4.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.5)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 3.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Estructura de Computadores")
	(promedioAprobados 89.0)
	(proyecto FALSE)
	(siglas "EC")
	(temas [ontologia_Class109]))

([ontologia_Class89] of  Obligatoria

	(competencias G7)
	(creditosTotales 7.5)
	(cuatrimestre Q2 Q1)
	(curso Segundo)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 5.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "1")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N2)
	(nombreAsig "Matematicas2")
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "M2")
	(temas
		[ontologia_Class107]
		[ontologia_Class10002]))

([ontologia_Class90] of  Obligatoria

	(competencias G9)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Segundo)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 5.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "1")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N1)
	(nombreAsig "Matematicas1")
	(promedioAprobados 70.0)
	(proyecto FALSE)
	(siglas "M1")
	(temas
		[ontologia_Class107]
		[ontologia_Class10002]))

([ontologia_Class90000] of  Especialidad

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Manana)
	(horasEstudio 4.0)
	(horasLab 4.0)
	(horasLabExterno 4.0)
	(horasProb "3")
	(horasTeo 3.0)
	(idioma Castellano)
	(nivelCompetencia N1)
	(nombreAsig "Sistemas Operativos Avanzados")
	(nombreEsp TecnologiasInformacion)
	(obligatoria Obligatoria)
	(prerequisitos [ontologia_Class96])
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "SOA")
	(temas
		[ontologia_Class10010]
		[ontologia_Class30011]
		[ontologia_Class30010]))

([ontologia_Class90001] of  Convocatoria

	(asignatura [ontologia_Class50014])
	(calificacion 8.0)
	(idiomaConvocatoria Ingles)
	(tipoHorario Manana))

([ontologia_Class90002] of  Convocatoria

	(asignatura [ontologia_Class50009])
	(calificacion 7.0)
	(idiomaConvocatoria Ingles)
	(tipoHorario Manana))

([ontologia_Class90003] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class70021]
		[ontologia_Class90004])
	(expedienteAlumno [ontologia_Class20013])
	(fechaCurso "2015-2016")
	(tipoCuatri OtonoQ1))

([ontologia_Class90004] of  Convocatoria

	(asignatura [ontologia_Class50004])
	(calificacion 6.0)
	(idiomaConvocatoria Castellano)
	(tipoHorario Manana))

([ontologia_Class90005] of  MatriculaCuatrimestre

	(convocatorias
		[ontologia_Class20026]
		[ontologia_Class20027]
		[ontologia_Class20025])
	(expedienteAlumno [ontologia_Class20010])
	(fechaCurso "2014-2015")
	(tipoCuatri PrimaveraQ2))

([ontologia_Class91] of  Obligatoria

	(competencias G8)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Tercero)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Bases de Datos")
	(prerequisitos
		[ontologia_Class83]
		[ontologia_Class92])
	(promedioAprobados 86.0)
	(proyecto FALSE)
	(siglas "BD")
	(temas [ontologia_Class110]))

([ontologia_Class92] of  Obligatoria

	(competencias G5)
	(creditosTotales 7.5)
	(cuatrimestre Q1 Q2)
	(curso Segundo)
	(distribucionLab 3.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 6.0)
	(horasLab 3.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Programacion2")
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "PRO2")
	(temas
		[ontologia_Class101]
		[ontologia_Class10008]))

([ontologia_Class93] of  Obligatoria

	(competencias G6)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Tercero)
	(distribucionLab 2.0)
	(distribucionProb 2.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Catalan Ingles)
	(nivelCompetencia N2)
	(nombreAsig "Estructura de Datos y Algoritmo")
	(prerequisitos
		[ontologia_Class83]
		[ontologia_Class92])
	(promedioAprobados 60.0)
	(proyecto TRUE)
	(siglas "EDA")
	(temas
		[ontologia_Class101]
		[ontologia_Class10008]))

([ontologia_Class94] of  Obligatoria

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Tercero)
	(distribucionLab 3.5)
	(distribucionProb 0.0)
	(distribucionTeo 2.5)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N2)
	(nombreAsig "Interfaces de Computadores")
	(prerequisitos
		[ontologia_Class88]
		[ontologia_Class84]
		[ontologia_Class77])
	(promedioAprobados 89.0)
	(proyecto FALSE)
	(siglas "CI")
	(temas [ontologia_Class109]))

([ontologia_Class95] of  Obligatoria

	(competencias G9)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Tercero)
	(distribucionLab 2.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N2)
	(nombreAsig "ProbabilidadEstadistica")
	(prerequisitos
		[ontologia_Class90]
		[ontologia_Class89])
	(promedioAprobados 79.0)
	(proyecto FALSE)
	(siglas "PE")
	(temas
		[ontologia_Class107]
		[ontologia_Class10004]))

([ontologia_Class96] of  Obligatoria

	(competencias G8)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Tercero)
	(distribucionLab 2.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 4.0)
	(horasLab 2.0)
	(horasLabExterno 4.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan Ingles)
	(nivelCompetencia N1)
	(nombreAsig "SistemasOperativos")
	(prerequisitos
		[ontologia_Class88]
		[ontologia_Class84])
	(promedioAprobados 98.0)
	(proyecto FALSE)
	(siglas "SO")
	(temas
		[ontologia_Class101]
		[ontologia_Class10010]))

([ontologia_Class97] of  Obligatoria

	(competencias G8)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(curso Cuarto)
	(distribucionLab 2.0)
	(distribucionProb 0.0)
	(distribucionTeo 2.0)
	(horario Ambos)
	(horasEstudio 6.0)
	(horasLab 2.0)
	(horasLabExterno 6.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N3)
	(nombreAsig "Interaccion y Dise�o de Interficies")
	(prerequisitos
		[ontologia_Class93]
		[ontologia_Class90])
	(promedioAprobados 75.0)
	(proyecto TRUE)
	(siglas "IDI")
	(temas
		[ontologia_Class101]
		[ontologia_Class10003]))

([ontologia_Class99] of  Optativa

	(competencias G3)
	(creditosTotales 6.0)
	(cuatrimestre Q1 Q2)
	(distribucionLab 3.0)
	(distribucionProb 0.0)
	(distribucionTeo 3.0)
	(horario Manana)
	(horasEstudio 5.0)
	(horasLab 6.0)
	(horasLabExterno 5.0)
	(horasProb "0")
	(horasTeo 2.0)
	(idioma Castellano Catalan)
	(nivelCompetencia N1)
	(nombreAsig "Criptografia")
	(promedioAprobados 85.0)
	(proyecto TRUE)
	(siglas "C")
	(temas
		[ontologia_Class101]
		[ontologia_Class10010]))


)	
	
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; deftemplat para almacenar la informacion que se infiere del expediente
(deftemplate Expediente
	(multislot aprobadas (type STRING))
	(multislot suspendidas(type STRING))
    (multislot competenciaN3 (type SYMBOL) (allowed-values G1 G2 G3 G4 G5 G6 G7 G8 G9))
	(slot faseIniSup (type SYMBOL)(allowed-values TRUE FALSE)(default FALSE))
	(slot especialidad (type SYMBOL) (allowed-values Computacion  IngenieriaComputadores SistemasInformacion TecnologiasInformacion IngenieriaSoftware Ninguna)(default Ninguna))
	(slot COpt (type FLOAT))
	(slot COblig (type FLOAT))
	(slot CEsp (type FLOAT))
	(slot tercLeng (type FLOAT)) 
	(slot nota (type FLOAT) (default -1.0)) 
)

;;; deftemplat para almacenar la informacion de la solucion final ordenada
(deftemplate solucionOrdenada "solucion final"
	(slot posicion (type INTEGER))
	(slot recomendacion (type INSTANCE) (allowed-classes Recomendacion))  
)

;;;;;============================ RESTRICCIONES ============================ 

;;; deftemplates para alamcenar los diferentes tipos de restricciones del alumno

(deftemplate RestriccionesHorarias "restricciones de tipo horarias"
    (slot horario (type SYMBOL) (allowed-values Manana Tarde Indiferente Indef) (default Indef))
    (slot horaTrabajo (type SYMBOL) (allowed-values Manana Tarde Ninguna Indef) (default Indef))
)

(deftemplate RestriccionesCalidad "restricciones de calidad "
    (slot asignaturasP (type SYMBOL) (allowed-values FALSE TRUE Indef) (default Indef))
    (slot asignaturasI (type SYMBOL) (allowed-values FALSE TRUE Indef) (default Indef)) 
    (slot dificultad (type SYMBOL) (allowed-values Facil Dificil Cualquiera Indef) (default Indef))
)


(deftemplate RestriccionesCantidad  "restricciones de cantidad"
    (slot numeroMaximoHoras (type SYMBOL) (allowed-values Muchas Normal Pocas Indef) (default Indef))
    (slot numeroMaximoHorasLabs (type SYMBOL) (allowed-values Muchas Normal Pocas Indef) (default Indef)) 
)


(deftemplate RestriccionesMultievaluadas "restricciones multievaluadas"
    (multislot temas (type STRING))
    (multislot temasNoInf (type STRING))
    (multislot competencias (type SYMBOL) (allowed-values G1 G2 G3 G4 G5 G6 G7 G8 G9 Indiferente))
)


;;;;;============================ PREFERENCIAS ============================ 

;;; deftemplates para alamcenar los diferentes tipos de preferencias del alumno,
;;; y algunas que se crean como parte de la inferencia que hace el sistemas

(deftemplate PreferenciasHorarias "preferencias de tipo horarias"
    (slot horario (type SYMBOL) (allowed-values Manana Tarde Indiferente Indef) (default Indef))
    (slot horaTrabajo (type SYMBOL) (allowed-values Manana Tarde Ninguna Indef) (default Indef)) 
)

(deftemplate PreferenciasCalidad  "preferencias de calidad "
    (slot asignaturasP (type SYMBOL) (allowed-values FALSE TRUE Indef) (default Indef))
    (slot asignaturasI (type SYMBOL) (allowed-values FALSE TRUE Indef) (default Indef))
    (slot completarEspecialidad (type SYMBOL) (allowed-values Mucho Poco Indiferente Indef) (default Indef))
    (slot dificultad (type SYMBOL) (allowed-values Facil Dificil Cualquiera Indef) (default Indef)) 
)


(deftemplate PreferenciasCantidad   "preferencias de cantidad"
    (slot numeroMaximoHoras (type SYMBOL) (allowed-values Muchas Normal Pocas Indef) (default Indef))
    (slot numeroMaximoHorasLabs (type SYMBOL) (allowed-values Muchas Normal Pocas Indef) (default Indef))  
)


(deftemplate PreferenciasMultievaluadas "preferencias multievaluadas"
    (multislot temas (type STRING))
    (multislot temasNoInf (type STRING))
    (multislot competencias (type SYMBOL) (allowed-values G1 G2 G3 G4 G5 G6 G7 G8 G9 Indiferente) )
	 
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general 
(deffunction pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "�%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta    
(deffunction pregunta-lista (?pregunta $?valores_posibles) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (readline))  
	(bind ?res (str-explode ?resposta))   
	?res
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MENSAJES					 		---------- 								MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases 

(defmessage-handler Asignatura imprime primary ()
	(printout t " Asignatura:  " ?self:nombreAsig crlf) 
)

(defmessage-handler Tema imprime primary()
	(printout t ?self:nombreTema crlf)
)

(defmessage-handler Recomendacion imprime  primary(?max)
	(bind ?rango_1 (/ ?max 3))
	(bind ?rango_2 (* ?rango_1 2)) 
	(send ?self:recomendacion imprime)	
	(printout t " Grado de recomendacion:  " ?self:gradoRecomendacion " ") 
	(if (and (>= ?self:gradoRecomendacion 0)(< ?self:gradoRecomendacion ?rango_1)) then (printout t "Poco Recomendable" crlf ) 
		else (if (and (>= ?self:gradoRecomendacion ?rango_1) (<=  ?self:gradoRecomendacion ?rango_2)) then (printout t "Recomendable" crlf ) 
				else (printout t "Altamente Recomendable" crlf ) ))
	(printout t crlf)
	(printout t " Preferencias del Usuario: " )
	(bind $?justf ?self:justificacionU) 
	(if (eq (length$ ?justf) 0) then (printout t "No hay preferencias dadas por ti" crlf)
		else (printout t crlf) 
			(loop-for-count (?i 1 (length$ ?justf)) do 
				(printout t " --> "(nth$ ?i ?justf) ". " crlf)  	
			)
	)	
	(printout t crlf) 
	(printout t " Informacion inferida por el Sistema: " )
	(bind $?justf ?self:justificacionS) 
	(if (eq (length$ ?justf) 0) then (printout t "No se ha echo inferencia" crlf)
		else (printout t crlf) 
			(loop-for-count (?i 1 (length$ ?justf)) do 
				(printout t " --> "(nth$ ?i ?justf) ". " crlf)  	
			) 	
	)
	(printout t crlf) 
	(printout t "---------------------------------------------------" crlf) 
	
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 								MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara l existencia del estudiante 
;; en el conjunto de instancias del sistema

(defmodule MAIN (export ?ALL))

(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de Asignaturas de la FIB -----" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo_estudiante))		
)

(defrule existe_alumno "regla para saber si el estudiante esta instanciado en el sistema"
    (nuevo_estudiante)
    =>
    (bind ?nombre (pregunta-general "Nombre: "))
	(while (not (any-instancep ((?alumno Estudiante)) (eq (str-compare ?alumno:nombre ?nombre) 0))) 
		do
			(printout t "No existe el estudiante." crlf)
			(bind ?nombre (pregunta-general "Nombre: ")) 
	) 
    (assert (Estudiante ?nombre))   
	(focus hacer_preguntas)	    
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 							MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este se le haran las preguntas al estudiantes 
;; para obtener la informacion de sus restricciones y/o preferencias 

(defmodule hacer_preguntas
    (import MAIN ?ALL)
    (export ?ALL)
)

;;,PONER COMO SLOT
(defrule cuatrimestreMatricula "regla para saber el cuatrimestre que se matriculara"
	(nuevo_estudiante)	
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?q (pregunta-general "�Qu� cuatrimestre es? [Q1(1)-Q2(2)]:  "))
	;;(bind ?restriccion (make-instance restriccionNumericaMHD of RestriccionCantidad))
	(switch ?q
		(case 1 then (assert(Cuatrimestre Q1)))
		(case 2 then (assert(Cuatrimestre Q2)))	
	)
)


(defrule maxHorasDedicacion "regla para saber el n� maximo de horas de dedicacion de estudio al dia  "
	(nuevo_estudiante)	
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?maxH (pregunta-numerica "�M�ximo n�mero de horas de dedicaci�n esperadas(0->Indiferente)? " 0 10))
	(if (eq ?maxH 0) then (assert(horas_dedicadas_indiferentes)) (assert(JDedicacion Sistema))  
	else (if (and (> ?maxH 0)(<= ?maxH 10)) then
			(bind ?restriccion (make-instance restriccionNumericaMHD of RestriccionCantidad))
		    (send ?restriccion put-numHorasDedicadas ?maxH)
	 		  (bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia:  "))
	 		  (if (eq ?res 1) then (send ?restriccion put-importante TRUE)
	 		  else (send ?restriccion put-importante FALSE)) 
	 		  (slot-insert$ ?alumno preferencias 1 ?restriccion)
 		     (assert (maximo_horas_dedicadas))
			 (assert(JDedicacion Usuario)) 
		)		  
	)	
)



(defrule maxHorasLaboratorio   "regla para saber el n� maximo horas extras de laboratorios que dedicara al dia  "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?maxHL (pregunta-numerica "�M�ximo n�mero de horas de laboratorios extras(0->Indiferente)? " 0 10))
	(if (eq ?maxHL 0) then (assert(horas_laboratorio_indiferentes)) (assert(JLaboratorio Sistema))   
	else(if (and (> ?maxHL 0)(<= ?maxHL 10)) then
			(bind ?restriccion (make-instance restriccionNumericaMHL of RestriccionCantidad))
			 (send ?restriccion put-numHorasLabs ?maxHL)
			 (bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			 (if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			  else (send ?restriccion put-importante FALSE)) 
			 (slot-insert$ ?alumno preferencias 1 ?restriccion)
			 (assert (maximo_horas_laboratorios_extras))
			 (assert(JLaboratorio Usuario)) 
		)
	)	
)


(defrule dificultad  "regla para saber la dificultad que esta dispuesto a asumir en las asignaturas "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?dificultad (pregunta-general "�Qu� dificultad quieres asumir en una asignatura: (Facil(f)-Dificil(d)-Cualquiera(c))? " ))
	(if (eq (str-compare ?dificultad "c") 0) then (assert(dificultad_cualquiera)) (assert(JDificultad Sistema))  
	else(if (or (eq (str-compare ?dificultad  "f")0)(eq (str-compare ?dificultad "d") 0)) then
			  (bind ?restriccion (make-instance restriccionCalidadD of RestriccionCalidad))
			  (switch (lowcase ?dificultad)
				(case "f" then (send ?restriccion put-prefHorario Facil))
				(case "d" then (send ?restriccion put-prefHorario Dificil))	
			  ) 			   		      
		      (bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia "))
		      (if (eq ?res 1) then (send ?restriccion put-importante TRUE)
		       else (send ?restriccion put-importante FALSE))			  	
		      (slot-insert$ ?alumno preferencias 1 ?restriccion)
		      (assert (dificultad_asumida))
			  (assert(JDificultad Usuario)) 
		)
	)	
)


(defrule trabajador  "regla para saber si trabaja y en que horario"
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?trabaja (pregunta-general "�Trabajas? (Manana(m)-Tarde(t)-Ninguno(n)(no trabaja)) " ))
	(if (eq (str-compare ?trabaja "n") 0) then (assert(noTrabaja))  
	else(if (or (eq (str-compare ?trabaja  "m")0) (eq (str-compare ?trabaja "t") 0))  then
			(bind ?restriccion (make-instance restriccionHorarioT of RestriccionHorario))
			(send ?restriccion put-trabaja ?trabaja)
			(switch (lowcase ?trabaja)
				(case "m" then (send ?restriccion put-prefHorario Tarde))
				(case "t" then (send ?restriccion put-prefHorario Manana))	
			 ) 			  
			(send ?restriccion put-importante TRUE)			
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (trabaja)) 
			(assert (horario_asumido))
			(assert(JHorario Usuario)) 
	    )
	)
 )
 
(defrule prefHoraria "regla para saber que tipo de horario prefiere"
	(nuevo_estudiante)
	(noTrabaja)
	(not (horario_asumido))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?prefHorario (pregunta-general "�Que tipo de horario prefieres: (Manana(m)-Tarde(t)-Indiferente(i))? " ))
	(if (= (str-compare ?prefHorario "i") 0) then 
	  (assert(horario_indiferente))  (assert(JHorario Sistema)) 
	else (if (or (eq (str-compare ?prefHorario  "m")0) (eq (str-compare ?prefHorario "t") 0)) then
		  (bind ?restriccion (make-instance restriccionHorarioPH_NoT of RestriccionHorario))
		  (switch (lowcase ?prefHorario)
				(case "m" then (send ?restriccion put-prefHorario Tarde))
				(case "t" then (send ?restriccion put-prefHorario Manana))	
		   ) 		 
		  (bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
		  (if (eq ?res 1) then (send ?restriccion put-importante TRUE)
		  else (send ?restriccion put-importante FALSE)) 
		  (slot-insert$ ?alumno preferencias 1 ?restriccion)
		  (assert (horario_asumido))
		  (assert(JHorario Usuario)) 
		)
	)	
)



(defrule completarEspecialidad "regla para saber si quiere completar especialidad "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?especialidad (pregunta-general "�Quieres completar la especialidad en esta matricula?: (Mucho(m)-Poco(p)-Indiferente(i)) " ))
	(if (eq (str-compare ?especialidad "i") 0) then 
	  (assert(completar_especialidad_indiferente)) (assert(JEspecialidad Sistema))   
	else (if (or (eq (str-compare ?especialidad  "m")0) (eq (str-compare ?especialidad "p") 0)) then
		  (bind ?restriccion (make-instance restriccionCalidadCE of RestriccionCalidad))
		   (switch (lowcase ?especialidad)
				(case "m" then (send ?restriccion put-completarEspecialidad Mucho))
				(case "p" then (send ?restriccion put-completarEspecialidad Poco))	
		   ) 		  
		  ;;(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
		  ;;(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
		  ;;else 
		  (send ?restriccion put-importante FALSE) 
		  (slot-insert$ ?alumno preferencias 1 ?restriccion)
		  (assert (especialidad_asumida))
		  (assert(JEspecialidad Usuario)) 
		)
	)	
)


(defrule asignaturasProyecto "regla para conocer si le interesan las asignaturas de proyecto "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?proyecto (pregunta-general "�Quieres realizar asignaturas de proyecto?: (si(s)/no(n)/Indiferente(i)) " ))
	(switch (lowcase ?proyecto)
		(case s then
			(bind ?restriccion (make-instance restriccionCalidadAP of RestriccionCalidad))
			(send ?restriccion put-asigProyecto TRUE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE))
			
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (proyecto_asumida))	
			(assert(JProyecto Usuario)) 
		)
		(case n then
			(bind ?restriccion (make-instance restriccionCalidadAP of RestriccionCalidad))
			(send ?restriccion put-asigProyecto FALSE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE)) 
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (proyecto_asumida))
			(assert(JProyecto Usuario)) 
		)
		(default then (assert (proyecto_indiferente)) (assert(JProyecto Sistema)) ) 
	)     
)


(defrule asignaturasIngles "regla para saber si le interesa realizar asignaturas en ingles "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?ingles (pregunta-general "�Quieres realizar asignaturas en ingles?: (si(s)/no(n)/Indiferente(i)) " ))	
	(switch (lowcase ?ingles)
		(case s then
			(bind ?restriccion (make-instance restriccionCalidadAI of RestriccionCalidad))
			(send ?restriccion put-asigIngles TRUE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE))			
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (ingles_asumida))
			(assert(JIngles Usuario)) 
		)
		(case n then
			(bind ?restriccion (make-instance restriccionCalidadAI of RestriccionCalidad))
			(send ?restriccion put-asigIngles FALSE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE)) 
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (ingles_asumida))
			(assert(JIngles Usuario)) 
		)
		(default then (assert (ingles_indiferente)) (assert(JIngles Sistema)) ) 
	) 		
)

(defrule competenciasInteres "regla para saber si tiene alguna/s competencia/s de interes "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(printout t "Competencias Transversales de interes: " crlf)   	
	(printout t "0. Indiferente " crlf)
	(printout t "1. ESP�RITU EMPRENDEDOR E INNOVADOR " crlf)
	(printout t "2. SOSTENIBILIDAD Y COMPROMISO SOCIAL " crlf)
	(printout t "3. LENGUA EXTRANJERA" crlf)
	(printout t "4. COMUNICACI�N EFICAZ ORAL Y ESCRITA" crlf)
	(printout t "5. TRABAJO EN EQUIPO " crlf)
	(printout t "6. USO SOLVENTE DE LOS RECURSOS DE INFORMACI�N " crlf)
	(printout t "7. APRENDIZAJE AUT�NOMO " crlf)  
	(printout t "8. ACTITUD FRENTE AL TRABAJO " crlf)  
	(printout t "9. RAZONAMIENTO " crlf)  
	(bind ?competencias (pregunta-lista "Quieres realizar alguna competencia transversal en concreto?:  " ))
	(if  (not (member 0 ?competencias)) then 
		(bind ?comp (make-instance restriccionMultievaluadaC of RestriccionMultievaluada)) 
		(progn$ (?it ?competencias)
			(switch ?it
				(case 1 then (slot-insert$ ?comp competenciasPrefe 1 G1))
				(case 2 then (slot-insert$ ?comp competenciasPrefe 1 G2))
				(case 3 then (slot-insert$ ?comp competenciasPrefe 1 G3))
				(case 4 then (slot-insert$ ?comp competenciasPrefe 1 G4))
				(case 5 then (slot-insert$ ?comp competenciasPrefe 1 G5))
				(case 6 then (slot-insert$ ?comp competenciasPrefe 1 G6))
				(case 7 then (slot-insert$ ?comp competenciasPrefe 1 G7))
				(case 8 then (slot-insert$ ?comp competenciasPrefe 1 G8))
				(case 9 then (slot-insert$ ?comp competenciasPrefe 1 G9))
			)
		)   		
		(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
		(if (eq ?res 1) then (send ?comp put-importante TRUE)
		else (send ?comp put-importante FALSE)) 
		(slot-insert$ ?alumno preferencias 1 ?comp)	    
		(assert (competencias_asumidas)) 
		(assert(JCompetencias Usuario))
		else (assert(competencias_indiferentes)) (assert(JCompetencias Sistema))
	)
)


;;;;;;;;SECCION TEMAS


(defrule temasDeInteres "regla para saber si tiene algun/os tema/s de interes especifico"
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=>
	(bind ?tema (pregunta-general "�Tienes algun tema en concreto de interes?: (si(s)/no(n)) " ))
	(if (eq (str-compare ?tema "s") 0) then (assert(tema_interes_seleccionados)) (assert(JTemas Usuario))
		else (assert(temas_interes_indiferente)) (assert(JTemas Sistema)))     
)

(defrule temasGenerales
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA) ) 
	(test (eq (str-compare  ?nombre ?nombreA) 0))  
	=> 
	(printout t "Temas Generales: " crlf)   	
	(printout t "1. Programacion " crlf)
	(printout t "2. Ingenieria de Software " crlf)
	(printout t "3. Bases de Datos" crlf)
	(printout t "4. Redes" crlf)
	(printout t "5. Arquitectura de Computadores" crlf)
	(printout t "6. Matematicas " crlf)
	(printout t "7. Fisica " crlf)  
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: "))
	(bind ?tema (make-instance restriccionMultievaluadaT of RestriccionMultievaluada)) 
	(progn$ (?it ?temas)
		(switch ?it
		;;;(slot-insert$ ?tema temasInteres 1 "Programacion") (slot-insert$ ?tema temasInteres 1 "Ingenieria de Software")
		;;;(slot-insert$ ?tema temasInteres 1 "Bases de Datos") (slot-insert$ ?tema temasInteres 1 "Redes") 
		;;;(slot-insert$ ?tema temasInteres 1 "Arquitectura de Computadores") (slot-insert$ ?tema temasInteres 1 "Matematicas") (slot-insert$ ?tema temasInteres 1 "Fisica")
			(case 1 then   (assert(Programacion)))
			(case 2 then   (assert(IngenieriaSoftware)))
			(case 3 then   (assert(BasesDatos)))
			(case 4 then   (assert(Redes)))
			(case 5 then   (assert(ArquitecturaComputadores)))
			(case 6 then   (assert(Matematicas)))
			(case 7 then   (assert(Fisica))) 
		)
	)
	(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
	(if (eq ?res 1) then (send ?tema put-importante TRUE) else (send ?tema put-importante FALSE)) 
)


(defrule temasEspecializadosProgramacion "regla especifica para los temas especializados de programcion "
	(nuevo_estudiante)
	(Programacion) 
	(tema_interes_seleccionados)
	(not(temasEspecializadosProgramacion_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema en especifico de Programacion que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Lenguajes De Programacion " crlf)
	(printout t "2. Inteligencia Artificial " crlf)
	(printout t "3. Calculo Numerico " crlf)
	(printout t "4. Graficos" crlf)
	(printout t "5. Investigacion Operativa " crlf)
	(printout t "6. Tratamiento De Datos " crlf)
	(printout t "7. Logica " crlf)
	(printout t "8. Algoritmia" crlf)
	(printout t "9. Geometria Computacional " crlf)	
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Lenguajes De Programacion"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Inteligencia Artificial"))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Calculo Numerico"))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Graficos"))
			  (case 5 then  (slot-insert$ ?restricc temasInteres 1 "Investigacion Operativa"))
			  (case 6 then  (slot-insert$ ?restricc temasInteres 1 "Tratamiento De Datos"))
			  (case 7 then  (slot-insert$ ?restricc temasInteres 1 "Logica "))
			  (case 8 then  (slot-insert$ ?restricc temasInteres 1 "Algoritmia"))
			  (case 9 then  (slot-insert$ ?restricc temasInteres 1 "Geometria Computacional")) 
			)
		)
		else  (slot-insert$ ?restricc temasInteres 1 "Programacion")		
	) 
	(assert (temasEspecializadosProgramacion_ok))
	(assert (RestriccionTemasLista))
)


(defrule temasEspecializadosIngenieriaSoftware "regla especifica para los temas especializados de software"
	(nuevo_estudiante)
	(IngenieriaSoftware) 
	(tema_interes_seleccionados)
	(not(temasEspecializadosSoftware_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Software que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Dise�o de sistemas web " crlf)
	(printout t "2. Dise�o UML " crlf)
	(printout t "3. Ingenieria de Requisitos " crlf)
	(printout t "4. Arquitectura del Software" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Dise�o de sistemas web"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Dise�o UML "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Ingenieria de Requisitos"))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Arquitectura del Software")) 
			)
		)
		else (slot-insert$ ?restricc temasInteres 1 "Ingenieria de Software")			
	) 
	(assert (temasEspecializadosSoftware_ok))
	(assert (RestriccionTemasLista))
)


(defrule temasEspecializadosBasesDatos "regla especifica para los temas especializados de bases de datos"
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	(BasesDatos) 
	(not(temasEspecializadosBasesDatos_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Bases de datos que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Administracion de bases de datos " crlf)
	(printout t "2. Dise�ador de bases de datos " crlf)
	(printout t "3. Seguridad en bases de datos " crlf)
	(printout t "4. Bases de Datos especializadas" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Administracion de bases de datos"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Dise�ador de bases de datos  "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Seguridad en bases de datos "))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Bases de Datos especializadas")) 
			)
		) 
		else (slot-insert$ ?restricc temasInteres 1 "BasesDatos")			
	) 
	(assert (temasEspecializadosBasesDatos_ok))
	(assert (RestriccionTemasLista))
)

(defrule temasEspecializadosRedes "regla especifica para los temas especializados de redes"
	(nuevo_estudiante)
	(Redes) 
	(tema_interes_seleccionados)
	(not(temasEspecializadosRedes_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Redes que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Administracion de Sistemas Operativos " crlf)
	(printout t "2. Internet " crlf)
	(printout t "3. Seguridad Informatica " crlf)
	(printout t "4. Tecnologias de Redes" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Administracion de Sistemas Operativos"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Internet  "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Seguridad Informatica  "))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Tecnologias de Redes")) 
			)
		) 
		else (slot-insert$ ?restricc temasInteres 1 "Redes")			
	) 
	(assert (temasEspecializadosRedes_ok))
	(assert (RestriccionTemasLista))
)


(defrule temasEspecializadosArquitectura "regla especifica para los temas especializados de arquitectura"
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	(ArquitecturaComputadores) 
	(not(temasEspecializadosArquitectura_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Arquitectura que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Ensamblador " crlf)
	(printout t "2. Microcomputadores " crlf)
	(printout t "3. Procesamiento de Se�al " crlf)
	(printout t "4. Sistemas Operativos" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Ensamblador"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Microcomputadores  "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Procesamiento de Se�al"))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Sistemas Operativos")) 
			)
		) 
		else (slot-insert$ ?restricc temasInteres 1 "ArquitecturaComputadores")			
	) 
	(assert (temasEspecializadosArquitectura_ok))
	(assert (RestriccionTemasLista))
)

(defrule temasEspecializadosMatematicas "regla especifica para los temas especializados de matematicas"
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	(Matematicas) 
	(not(temasEspecializadosMatematicas_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Matematicas que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Geometr�a computacional " crlf)
	(printout t "2. C�lculo num�rico " crlf)
	(printout t "3. Grafos " crlf)
	(printout t "4. Analisis Matematico" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Geometria computacional"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "C�lculo num�rico  "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Grafos"))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Analisis Matematico")) 
			)
		) 
		else (slot-insert$ ?restricc temasInteres 1 "Matematicas")			
	) 
	(assert (temasEspecializadosMatematicas_ok))
	(assert (RestriccionTemasLista))
)

(defrule temasEspecializadosFisica "regla especifica para los temas especializados de fisica"
	(tema_interes_seleccionados)
	(nuevo_estudiante)
	(Fisica) 
	(not(temasEspecializadosFisica_ok))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT])) 
	=> 
	(printout t "�Tienes algun tema especifico de Fisica que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Corriente Continua" crlf)
	(printout t "2. Corriente Alterna " crlf)
	(printout t "3. Electrnica y Puertas Logicas " crlf)
	(printout t "4. Ondas" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Corriente Continua"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Corriente Alterna"))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Electronica y Puertas Logicas"))
			  (case 4 then  (slot-insert$ ?restricc temasInteres 1 "Ondas")) 
			)
		) 
		else (slot-insert$ ?restricc temasInteres 1 "Fisica")			
	) 
	(assert (temasEspecializadosFisica_ok))
	(assert (RestriccionTemasLista))
)

(defrule restriccionTemasInteresCompleto "regla par crear la restriccion de todos los temas "
	(nuevo_estudiante) 
	(RestriccionTemasLista)
	(not (temas_asumidos))
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))  
	?restricc <- (object (is-a RestriccionMultievaluada)(temasInteres $?temas))
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT]))
	=>
	(slot-insert$ ?alumno preferencias 1 ?restricc)
	(assert(temas_asumidos))
)

(defrule temasNoInformatico "regla para saber los temas no informaticos de interes"  
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0)) 
	=>
	(bind ?proyecto (pregunta-general "�Tienes algun tema no iformatico de interes?: (si(s)/no(n)) " ))
	(if (eq (str-compare ?proyecto "s") 0) then  
			(bind ?temaNI (make-instance restriccionMultievaluadaTNI of RestriccionMultievaluada)) 
			(printout t "Temas No Informaticos: " crlf)  
			(printout t "0. Indiferente " crlf)	 		
			(printout t "1. L�dicas " crlf)
			(printout t "2. Culturales " crlf)
			(printout t "3. Divulgacion Cientifica" crlf)
			(printout t "4. Investigacion" crlf) 
			(printout t "5. Cursos" crlf) 
			(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
			(if (not(member 0 ?temas)) then  
				(progn$ (?it ?temas)
					(switch ?it
					  (case 1 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "L�dicas"))
					  (case 2 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Culturales"))
					  (case 3 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Divulgacion Cientifica"))
					  (case 4 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Investigacion")) 
					  (case 5 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Cursos")) 
					)
				) 
				else (slot-insert$ ?temaNI temasNoInformaticos 1 "NoInformaticos")			
			) 
			(bind ?res (pregunta-general "Indica si deseas que sea una restricci�n o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?temaNI put-importante TRUE)
				else (send ?temaNI put-importante FALSE))			
			(slot-insert$ ?alumno preferencias 1 ?temaNI)
			(assert(temasNoInformaticos_asumidos)) 
			(assert(JTemasNI Usuario))
		else (assert(temasNoInformaticos_indiferente)) (assert(JTemasNI Sistema))
	)
)


(defrule finPreguntasAbstaccionDatos "regla para pasar al modulo siguiente"
      (nuevo_estudiante)
      => 
	  (printout t crlf)
	  (printout t "Modulos: "crlf)
	  (printout t "Restricciones y Preferencias almacenadas" crlf)
      (focus inferir_datos)     
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS					 		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import hacer_preguntas ?ALL)
    (export ?ALL)
)

(defrule insertaRestriccionesPreferencias "a�adimos los echos de preferencias y restricciones"
	(nuevo_estudiante)
	(not (RestriccionesHorarias))
	(not (PreferenciasHorarias))
	(not (RestriccionesCantidad))
	(not (PreferenciasCantidad))
	(not (RestriccionesCalidad))
	(not (PreferenciasCalidad))
	(not (RestriccionesMultievaluadas))
	(not (PreferenciasMultievaluadas))
	=>
	(assert(RestriccionesHorarias))
	(assert(PreferenciasHorarias))
	(assert(RestriccionesCantidad))
	(assert(PreferenciasCantidad))
	(assert(RestriccionesCalidad))
	(assert(PreferenciasCalidad))
	(assert(RestriccionesMultievaluadas))
	(assert(PreferenciasMultievaluadas))
)

;;; De CANTIDAD

(defrule r_maxHorasDedicacionPocas "regla para establecer la dedicacion de estudio baja como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 0) (< ?numH 4)))
	=>   
	(modify ?rc (numeroMaximoHoras Pocas))
	(assert(maxHorasDedicacion_rp)) 
)


(defrule p_maxHorasDedicacionPocas "regla para establecer la dedicacion de estudio baja como una preferencia "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 0) (< ?numH 4)))
	=>  
	(modify ?pc (numeroMaximoHoras Pocas))
	(assert(maxHorasDedicacion_rp)) 
)

(defrule r_maxHorasDedicacionNormal "regla para establecer la dedicacion de estudio normal como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 3) (< ?numH 8)))
	=>  
	(modify ?rc (numeroMaximoHoras Normal))
	(assert(maxHorasDedicacion_rp)) 
)


(defrule p_maxHorasDedicacionNormal "regla para establecer la dedicacion de estudio nromal como una preferencia "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 3) (< ?numH 8)))
	=>  
	(modify ?pc (numeroMaximoHoras Normal))
	(assert(maxHorasDedicacion_rp)) 
)

(defrule r_maxHorasDedicacionMuchas "regla para establecer la dedicacion de estudio alta como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 7) (< ?numH 11)))
	=>  
	(modify ?rc (numeroMaximoHoras Muchas))
	(assert(maxHorasDedicacion_rp)) 
)

(defrule p_maxHorasDedicacionMuchas "regla para establecer la dedicacion de estudio alta como una preferencia "
	(nuevo_estudiante)
	(maximo_horas_dedicadas)
	(not (maxHorasDedicacion_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasDedicadas ?numH))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHD]))
	(test (and(> ?numH 7) (< ?numH 11)))
	=>  
	(modify ?pc (numeroMaximoHoras Muchas))
	(assert(maxHorasDedicacion_rp)) 
)

(defrule r_maxHorasLaboratorioPocas "regla para establecer las horas extras de laboratorio bajas como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 0) (< ?numHL 4)))
	=>  
	(modify ?rc (numeroMaximoHorasLabs Pocas))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)


(defrule p_maxHorasLaboratorioPocas "regla para establecer las horas extras de laboratorio bajas como una preferenecia "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 0) (< ?numHL 4)))
	=>  
	(modify ?pc (numeroMaximoHorasLabs Pocas))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)

(defrule r_maxHorasLaboratorioNormal "regla para establecer las horas extras de laboratorio nnormal como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 3) (< ?numHL 8)))
	=>  
	(modify ?rc (numeroMaximoHorasLabs Normal))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)


(defrule p_maxHorasLaboratorioNormal "regla para establecer las horas extras de laboratorio normal como una preferencia "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 3) (< ?numHL 8)))
	=>  
	(modify ?pc (numeroMaximoHorasLabs Normal))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)

(defrule r_maxHorasLaboratorioMuchas "regla para establecer las horas extras de laboratorio alta como una restriccion "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?rc <- (RestriccionesCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante TRUE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 7) (< ?numHL 11)))
	=>  
	(modify ?rc (numeroMaximoHorasLabs Muchas))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)


(defrule p_maxHorasLaboratorioMuchas "regla para establecer las horas extras de laboratorio alta como una preferencia "
	(nuevo_estudiante)
	(maximo_horas_laboratorios_extras)
	(not (maximo_horas_laboratorios_extras_rp))
	?pc <- (PreferenciasCantidad)
	?restricc <-(object (is-a RestriccionCantidad) (importante FALSE)(numHorasLabs ?numHL))
	(test (eq (instance-name ?restricc) [restriccionNumericaMHL]))
	(test (and(> ?numHL 7) (< ?numHL 11)))
	=>  
	(modify ?pc (numeroMaximoHorasLabs Muchas))
	(assert(maximo_horas_laboratorios_extras_rp)) 
)

;;; De HORARIO

(defrule r_prefHoraria "regla para establecer el horario como una restriccion "
	(nuevo_estudiante)
	(noTrabaja)
	(horario_asumido) 
	(not (horario_asumido_rp))
	?rh <- (RestriccionesHorarias)
	?restricc <-(object (is-a RestriccionHorario) (importante TRUE)(prefHorario ?prefSesion))
	(test (eq (instance-name ?restricc) [restriccionHorarioPH_NoT]))
	=> 
	(modify ?rh (horario ?prefSesion))
	(assert(horario_asumido_rp)) 
)


(defrule p_prefHoraria "regla para establecer el horario como una preferencia "
	(nuevo_estudiante)
	(noTrabaja)
	(horario_asumido) 
	(not (horario_asumido_rp))
	?ph <- (PreferenciasHorarias)
	?restricc <-(object (is-a RestriccionHorario) (importante FALSE)(prefHorario ?prefSesion))
	(test (eq (instance-name ?restricc) [restriccionHorarioPH_NoT]))
	=> 
	(modify ?ph (horario ?prefSesion))
	(assert(horario_asumido_rp))  
)


(defrule r_trabajador "regla para establecer el horario como una restriccion debido a que el estudiante trabaja  "
	(nuevo_estudiante)
	(trabaja)
	(horario_asumido)
	(not (horario_asumido_rp))
	?rh <- (RestriccionesHorarias)
	?restricc  <-(object (is-a RestriccionHorario) (importante TRUE)(trabaja ?hT)(prefHorario ?pH))  
	(test (eq (instance-name ?restricc) [restriccionHorarioT]))
	(test (neq ?hT Ninguno))
	=>  
	(modify ?rh (horaTrabajo ?hT) (horario ?pH))  
	(assert(horario_asumido_rp)) 
)

;;;De CALIDAD 

(defrule r_dificultad "regla para establecer el horario como una restriccion "
	(nuevo_estudiante)
	(dificultad_asumida)
	(not (dificultad_asumida_rp))
	?rc <- (RestriccionesCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante TRUE)(dificultad ?d)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadD]))
	=>  
	(modify ?rc (dificultad ?d)) 
	(assert(dificultad_asumida_rp)) 
)


(defrule p_dificultad "regla para establecer el horario como una preferencia "
	(nuevo_estudiante)
	(dificultad_asumida)
	(not (dificultad_asumida_rp))
	?pc <- (PreferenciasCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante FALSE)(dificultad ?d)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadD]))
	=>  
	(modify ?pc (dificultad ?d)) 
	(assert(dificultad_asumida_rp)) 
)


(defrule p_completarEspecialidad "regla para establecer el inetres de completar especialidad como una preferencia "
	(nuevo_estudiante)
	(especialidad_asumida)
	(not (especialidad_asumida_rp))
	?pc <- (PreferenciasCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante FALSE)(completarEspecialidad ?ce)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadCE]))
	=>   
	(modify ?pc (completarEspecialidad ?ce)) 
	(assert(especialidad_asumida_rp)) 
)


(defrule r_asignaturasProyecto "regla para establecer el inetres en asignaturas de poryecto como restriccion "
	(nuevo_estudiante)
	(proyecto_asumida)
	(not (proyecto_asumida_rp))
	?rc <- (RestriccionesCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante TRUE)(asigProyecto ?ap))
	(test (eq (instance-name ?restricc) [restriccionCalidadAP]))	
	=>  
	(modify ?rc (asignaturasP ?ap)) 
	(assert(proyecto_asumida_rp)) 
)


(defrule p_asignaturasProyecto  "regla para establecer el inetres en asignaturas de poryecto como preferencia "
	(nuevo_estudiante)
	(proyecto_asumida)
	(not (proyecto_asumida_rp))
	?pc <- (PreferenciasCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante FALSE)(asigProyecto ?ap)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadAP]))
	=>  
	(modify ?pc (asignaturasP ?ap)) 
	(assert(proyecto_asumida_rp)) 
)


(defrule r_asignaturasIngles  "regla para establecer el inetres en asignaturas de ingles como restriccion "
	(nuevo_estudiante)
	(ingles_asumida)
	(not (ingles_asumida_rp))
	?rc <- (RestriccionesCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante TRUE)(asigIngles ?ai)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadAI]))
	=>  
	(modify ?rc (asignaturasI ?ai)) 
	(assert(ingles_asumida_rp))
)


(defrule p_asignaturasIngles  "regla para establecer el inetres en asignaturas de ingles como preferencia "
	(nuevo_estudiante)
	(ingles_asumida)
	(not (ingles_asumida_rp))
	?pc <- (PreferenciasCalidad)
	?restricc  <-(object (is-a RestriccionCalidad) (importante FALSE)(asigIngles ?ai)) 
	(test (eq (instance-name ?restricc) [restriccionCalidadAI]))
	=>  
	(modify ?pc (asignaturasI ?ai)) 
	(assert(ingles_asumida_rp))
)

;; MULTIEVALUADAS 

(defrule r_competenciasInteres  "regla para establecer las competencias de interes como restriccion "
	(nuevo_estudiante)
	(competencias_asumidas)
	(not (competencias_asumidas_rp))
	?rm <- (RestriccionesMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante TRUE)(competenciasPrefe $?cp)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaC])) 
	=> 	
	(modify ?rm (competencias ?cp)) 
	(assert(competencias_asumidas_rp))
)


(defrule p_competenciasInteres  "regla para establecer las competencias de interes como preferencia "
	(nuevo_estudiante)
	(competencias_asumidas)
	(not (competencias_asumidas_rp))
	?pm <- (PreferenciasMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante FALSE)(competenciasPrefe $?cp)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaC]))
	=>  
	(modify ?pm (competencias ?cp)) 
	(assert(competencias_asumidas_rp))
)

;;;;; SECCION DE TEMAS 

(defrule r_temasInteres "regla para establecer los temas de interes como restriccion "
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	(temas_asumidos)
	(not (temas_asumidos_rp))
	?rm <- (RestriccionesMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante TRUE)(temasInteres $?te)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT]))
	=>  
	(modify ?rm (temas ?te)) 
	(assert(temas_asumidos_rp))
)


(defrule p_temasInteres "regla para establecer  los temas de interes como preferencia "
	(nuevo_estudiante)
	(tema_interes_seleccionados)
	(temas_asumidos)
	(not (temas_asumidos_rp))
	?pm <- (PreferenciasMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante FALSE)(temasInteres $?te)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaT]))
	=>   
	(modify ?pm (temas ?te)) 
	(assert(temas_asumidos_rp))
)


(defrule r_temasInteresNoInf "regla para establecer los temas no informaticos de interes como restriccion "
	(nuevo_estudiante)
	(temasNoInformaticos_asumidos) 
	(not (temasNoInformaticos_asumidos_rp))
	?rm <- (RestriccionesMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante TRUE)(temasNoInformaticos $?tNI)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaTNI]))
	=>  
	(modify ?rm (temasNoInf ?tNI)) 
	(assert(temasNoInformaticos_asumidos_rp))
)


(defrule p_temasInteresNoInf "regla para establecer  los temas no informaticos de interes como preferencia "
	(nuevo_estudiante)
	(temasNoInformaticos_asumidos) 
	(not (temasNoInformaticos_asumidos_rp))
	?pm <- (PreferenciasMultievaluadas)
	?restricc  <-(object (is-a RestriccionMultievaluada) (importante FALSE)(temasNoInformaticos $?tNI)) 
	(test (eq (instance-name ?restricc) [restriccionMultievaluadaTNI]))
	=>   
	(modify ?pm (temasNoInf ?tNI)) 
	(assert(temasNoInformaticos_asumidos_rp))
)


(defrule finInferenciaDatos "regla para pasar al modulo siguiente"
      (nuevo_estudiante)
      => 
	  (printout t "Abstraccion de datos hecha " crlf)
     (focus expediente)     
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE INFERENCIA DE EXPEDIENTE		 		---------- 						MODULO DE INFERENCIA DE EXPEDIENTE	
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la inferencia de la informacion almacenada en el expediente 

(defmodule expediente
	(import MAIN ?ALL) 
	(import inferir_datos ?ALL)   
    (import hacer_preguntas ?ALL)
	(export ?ALL)
)

(defrule insertaExpediente
	(nuevo_estudiante)
	(not (Expediente))
	=>
	(assert (Expediente))
)

(defrule asignaturasCursadas "regla para infereir del expediente las asignaturas aprobadas, suspensas, la nota, las competencias con nivel 3 y los creditos de la tercera lengua  "
	(nuevo_estudiante)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	?exp <- (Expediente (aprobadas $?A) (suspendidas $?S) (competenciaN3 $?compN3))
	(not (asignaturas_cursadas))
	=>   
	(bind ?expediente (send ?alumno get-expediente))
	(bind $?cuatrimestres (send (instance-address * ?expediente) get-cuatrimestres))  
	(bind ?nP 0)
	(bind ?nA 0)
	(bind ?nS 0)	
	(bind ?tA 0) 
	(bind ?creditosIngles 0) 
	(progn$ (?q ?cuatrimestres)
		(bind $?convocatorias (send (instance-address * ?q) get-convocatorias))
		(progn$ (?c ?convocatorias)
			(bind ?nota (send (instance-address * ?c) get-calificacion))
			(bind ?nP (+ ?nP ?nota))
			(bind ?asig (send (instance-address * ?c) get-asignatura))
			(bind ?nombreAsig (send (instance-address * ?asig) get-nombreAsig))
			(bind ?tA (+ ?tA 1)) 
			(if (< ?nota 5)
				then 
					(bind $?S (insert$ ?S 1 ?nombreAsig))
					(bind ?nS (+ ?nS 1)) 
				else 
					(bind $?A (insert$ ?A 1 ?nombreAsig))
					(bind ?nA (+ ?nA 1)) 
					(if (and (eq (send (instance-address * ?c) get-idiomaConvocatoria) Ingles) (< ?creditosIngles 13) )
						then (bind ?creditosIngles (+ ?creditosIngles 6)))
					(bind ?nivel (send (instance-address * ?asig) get-nivelCompetencia))
					(bind ?comp (send (instance-address * ?asig) get-competencias)) 
					(if (and (eq ?nivel N3) (not (member ?comp ?compN3))) then (bind $?compN3 (insert$ ?compN3 1 ?comp)))						
			)
		)
	) 
	(if (or (>= ?nA 6) (>=(+ ?nA ?nS) 8)) then (bind ?exp (modify ?exp (faseIniSup TRUE))))  
	(bind ?nP (/ ?nP ?tA)) 
	(modify ?exp (aprobadas $?A) (suspendidas $?S)(nota ?nP)(tercLeng ?creditosIngles)(competenciaN3 ?compN3))
	(assert (asignaturas_cursadas))
)

(defrule ECTSfaltan "regla para infereir del expediente los creditos que faltan de asignturas obligatorias, de especialidad y optativos "
	(nuevo_estudiante)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	(not (ECTS_pendientes))
	=> 
	(bind ?exp (send ?alumno get-expediente))
	(bind ?ECTSOblig (send (instance-address * ?exp) get-faltanECTSOblig)) 
	(bind ?ECTSOpt (send (instance-address * ?exp) get-faltanECTSOpt)) 
	(bind ?ECTSEsp (send (instance-address * ?exp) get-faltanECTSEsp))	
	(modify ?expH (COblig ?ECTSOblig) (COpt ?ECTSOpt) (CEsp ?ECTSEsp))
	(assert (ECTS_pendientes))
)


(defrule definirEspecialidad "regla para infereir la especialidad segun las asignturas cursadas de especialidad o por los temas de las cursadas y la nota   "
	(nuevo_estudiante) 
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	?expH <- (Expediente (especialidad ?esp))
	(test (eq ?esp Ninguna))
	(not (especialidad_definida))
	=>  
	(bind ?cs 0)
	(bind ?ec 0)
	(bind ?es 0)
	(bind ?si 0)
	(bind ?ti 0) 
	(bind ?cs_a 0)
	(bind ?ec_a 0)
	(bind ?es_a 0)
	(bind ?si_a 0)
	(bind ?ti_a 0) 
	(bind ?expediente (send ?alumno get-expediente))
	(bind $?cuatrimestres (send (instance-address * ?expediente) get-cuatrimestres)) 
	(progn$ (?q ?cuatrimestres)
		(bind $?convocatorias (send (instance-address * ?q) get-convocatorias))
		(progn$ (?c ?convocatorias)
			(bind ?asig (send (instance-address * ?c) get-asignatura))
			(if (eq (class (instance-address * ?asig)) Especialidad) then 
				(bind ?e (send (instance-address * ?asig) get-nombreEsp)) 
				(switch ?e
					(case Computacion then (bind ?cs (+ ?cs 1)))
					(case IngenieriaComputadores then (bind ?ec (+ ?ec 1)))
					(case IngenieriaSoftware then (bind ?es (+ ?es 1)))
					(case SistemasInformacion then (bind ?si (+ ?si 1)))
					(case TecnologiasInformacion then (bind ?ti (+ ?ti 1)))
				)			
			else (if (eq (class (instance-address * ?asig)) Obligatoria) then  
					(bind $?temas (send (instance-address * ?asig) get-temas))
					(bind ?nota (send (instance-address * ?c) get-calificacion))
					(progn$ (?t ?temas)
						(bind ?tema_As (send (instance-address * ?t) get-nombreTema))
						(if (> ?nota 6.5) then  
							(switch ?tema_As
								(case "Programacion" then  (bind ?cs_a (+ ?cs_a 1)))
								(case "Matematicas"  then  (bind ?cs_a (+ ?cs_a 1)))
								(case "Ingenieria de Software" then  (bind ?es_a (+ ?es_a 1)))
								(case "BasesDatos" then (bind ?es_a (+ ?es_a 1)))
								(case "ArquitecturaComputadores" then (bind ?ec (+ ?ec_a 1)))
								(case "Fisica" then (bind ?ec (+ ?ec_a 1)))
								(case "Redes" then  (bind ?ti_a (+ ?ti_a 1)))
								(case "Economicos" then (bind ?si_a (+ ?si_a 1)))
	)	)	)	)	)	)	 )
	(if (and (eq ?cs 0)(eq ?ec 0)(eq ?es 0)(eq ?si 0)(eq ?ti 0)) then (bind ?cs cs_a) (bind ?es es_a) (bind ?es es_a) (bind ?si si_a)(bind ?ti ti_a))
	(if(and (>= ?cs ?ec)(>= ?cs ?es )(>= ?cs ?si)(>= ?cs ?ti)) then (modify ?expH (especialidad Computacion))
	else ( if (and (>= ?ec ?cs)(>= ?ec ?es )(>= ?ec ?si)(>= ?ec ?ti)) then (modify ?expH (especialidad IngenieriaComputadores))
			else (if (and (>= ?es ?cs)(>= ?es ?ec )(>= ?es ?si)(>= ?es ?ti)) then (modify ?expH (especialidad IngenieriaSoftware))
					else ( if (and (>= ?si ?cs)(>= ?si ?ec )(>= ?si ?es)(>= ?si ?ti)) then (modify ?expH (especialidad SistemasInformacion))
							else (modify ?expH (especialidad TecnologiasInformacion))
	)	)		)		) 
	(assert(especialidad_definida))
)



(defrule completarEspecialidadExpediente "regla para infereir del expediente las asignaturas aprobadas, suspensas, la nota promedio, "
	(completar_especialidad_indiferente)
	(especialidad_definida)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0)) 
	?cEPH <- (PreferenciasCalidad (completarEspecialidad ?cEP))
	?expH <- (Expediente (CEsp ?ECTSesp) (especialidad ?especialidad))
	(test (eq ?cEP Indef))
	(not (completar_especialidad)) 
	=>	  
	(if (> ?ECTSesp 29) then (modify ?cEPH (completarEspecialidad Poco))
		else (modify ?cEPH (completarEspecialidad Mucho)))
	(assert(completar_especialidad))
)


(defrule temasNoInformaticosExpediente "regla para infereir del expediente los temas no informaticos de interes "
	(temasNoInformaticos_indiferente)
	(nuevo_estudiante)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesMultievaluadas (temasNoInf $?temasNIR))
	?pMH <- (PreferenciasMultievaluadas (temasNoInf  $?temasNIP))
	(test (and (eq (length$  ?temasNIR) 0) (eq (length$  ?temasNIP) 0)))
	(not (temasNI_expediente))
	=> 	 
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres)) 
	(progn$ (?i ?quatris)
		(bind $?convs (send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura))
			(bind $?temas(send (instance-address * ?asig) get-temas))
			(progn$ (?k ?temas)
				(bind ?tema_A (send (instance-address * ?k) get-nombreTema))
				(if (and (not(member ?tema_A ?temasNIP)) (or (eq (str-compare ?tema_A "Ludicas")0)(eq (str-compare ?tema_A "Culturales")0)
				(eq (str-compare ?tema_A "Investigacion")0)(eq (str-compare ?tema_A "Cursos")0)(eq (str-compare ?tema_A "Divulgacion Cientifica")0) ))
				then (bind $?temasNIP (insert$ ?temasNIP 1 ?tema_A)))
			)
		)
	)	
	(modify ?pMH (temasNoInf $?temasNIP))
	(assert(temasNI_expediente))
)

(defrule temasExpediente "regla para infereir del expediente los temas de interes"
	(temas_interes_indiferente) 
	(nuevo_estudiante)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesMultievaluadas (temas $?temasR))
	?pMH <- (PreferenciasMultievaluadas (temas  $?temasP))
	(test (and (eq (length$  ?temasR) 0)(eq (length$  ?temasP) 0)))
	(not (temas_expediente))
	=>  
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres)) 
	(progn$ (?i ?quatris)
		(bind $?convs (send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura))
			(bind $?temas(send (instance-address * ?asig) get-temas))
			(progn$ (?k ?temas)
				(bind ?tema_A (send (instance-address * ?k) get-nombreTema)) 
				(if (and (not(member ?tema_A ?temasP)) (and (neq (str-compare ?tema_A "Ludicas")0)(neq (str-compare ?tema_A "Culturales")0)
				(neq (str-compare ?tema_A "Investigacion")0)(neq (str-compare ?tema_A "Cursos")0)(neq (str-compare ?tema_A "Divulgacion Cientifica")0) ))			
					then (bind $?temasP (insert$ ?temasP 1 ?tema_A))
				)
			)
		)
	)	
	(modify ?pMH (temas $?temasP))
	(assert(temas_expediente))
)


(defrule competenciasExpediente "regla para infereir del expediente las competencias de interes "
	(competencias_indiferentes)
	(nuevo_estudiante)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesMultievaluadas (competencias $?competenciasR))
	?pMH <- (PreferenciasMultievaluadas (competencias  $?competenciasP))
	(test(and (eq (length$ ?competenciasR ) 0) (eq (length$ ?competenciasP ) 0)))
	(not (competencias_expediente))
	=> 
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres)) 
	(progn$ (?i ?quatris)
		(bind $?convs (send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura)) 
			(if(or(eq (class (instance-address * ?asig)) Obligatoria) 
				(eq (class (instance-address * ?asig)) Especialidad)
				(eq (class (instance-address * ?asig)) Optativa)) then 
				(bind ?comp (send (instance-address * ?asig) get-competencias)) 
				(if (not(member ?comp ?competenciasP)) then (bind $?competenciasP (insert$ ?competenciasP 1 ?comp))) 
			)			
		)
	)	
	(modify ?pMH (competencias $?competenciasP))
	(assert(competencias_expediente))
)


(defrule horarioAnteriorQuatri "regla para infereir el tipo de horario segun el ultimo cuatrimestre  "
	(nuevo_estudiante)
	(horario_indiferente)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesHorarias (horario ?hR))
	?hPH <- (PreferenciasHorarias (horario ?hP))
	(test(and (eq ?hR Indef) (eq ?hP Indef)))
	(not (horario_quatri_anterior))
	=>  
	(bind ?exp (send ?alumno get-expediente))
	(bind ?ultimoQuatri (send (instance-address * ?exp) get-ultimoCuatrimestre)) 
	(bind $?convs (send (instance-address * ?ultimoQuatri) get-convocatorias))
	(progn$ (?i ?convs)
		(bind ?horario (send (instance-address * ?i) get-tipoHorario))
		(bind ?m 0)
		(bind ?t 0)
		(switch ?horario
			(case Manana then (bind ?m (+ ?m 1)))
			(case Tarde then (bind ?t (+ ?t 1)))
		)
	)
	(if (>= ?m ?t) then (modify ?hPH (horario Manana)) 
	 else (modify ?hPH (horario Tarde) ))
	(assert (horario_quatri_anterior))
)


(defrule dificultadExpediente "regla para infereir del expediente la dificultad asumida en otros cuatrimestres "
	(nuevo_estudiante)
	(dificultad_cualquiera)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	?pCH <- (PreferenciasCalidad)
	(not(dificultad_media_expediente))
	=> 
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres))
	(bind ?fA 0) 
	(bind ?dA 0)  
	(progn$ (?i ?quatris)
		(bind $?convs(send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura))
			(bind ?numAprob (send (instance-address * ?asig) get-promedioAprobados))
			(bind ?nomAsig (send (instance-address * ?asig) get-nombreAsig))
			(if (and (member ?nomAsig ?A) (not(member ?nomAsig ?S))) then
				(if (> ?numAprob 69) then (bind ?fA (+ ?fA 1)) else (bind ?dA (+ ?dA 1))) 
			)			
		)
	)
	(if (> ?dA ?fA) then (modify ?pCH (dificultad Dificil))
		else (modify ?pCH (dificultad Facil) ))
	(assert (dificultad_media_expediente))
)


(defrule horasDedicadas "regla para infereir del expediente las horas de estudio asumidas en otros cuatrimestres "
	(nuevo_estudiante)
	(horas_dedicadas_indiferentes)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesCantidad (numeroMaximoHoras ?hDR))
	?pCH <- (PreferenciasCantidad (numeroMaximoHoras ?hDP))
	(test(and (eq ?hDR Indef) (eq ?hDP Indef)))
	(not (dedicadas_expediente))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	=>  
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres)) 
	(bind ?dedicadas 0)
	(bind ?nA 0)
	(progn$ (?i ?quatris)
		(bind $?convs (send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura))
			(if(or(eq (class (instance-address * ?asig)) Obligatoria) (eq (class (instance-address * ?asig)) Especialidad) (eq (class (instance-address * ?asig)) Optativa)) then 
				(bind ?nomAsig (send (instance-address * ?asig) get-nombreAsig))
				(if (and (member ?nomAsig ?A) (not(member ?nomAsig ?S))) then
					(bind ?horasEstudio(send (instance-address * ?asig) get-horasEstudio))
					(bind ?dedicadas (+ ?dedicadas ?horasEstudio))			
					
				)
				(bind ?nA (+ ?nA 1))
			)
		)
	)
	(if (> ?nA 0) then 
		(bind ?dedicadas (/ ?dedicadas ?nA))   
		(if (and (> ?dedicadas 0) (< ?dedicadas 4)) then (modify ?pCH (numeroMaximoHoras Pocas) ))
		(if (and (> ?dedicadas 3) (< ?dedicadas 8)) then (modify ?pCH (numeroMaximoHoras Normal) ))
		(if (> ?dedicadas 7) then (modify ?pCH (numeroMaximoHoras Muchas) )) 
	)
	(assert (dedicadas_expediente))
)



(defrule horasExtrasLabs "regla para infereir del expediente las horas de laboratorio extras asumidas en otros cuatrimestres "
	(nuevo_estudiante)
	(horas_laboratorio_indiferentes)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesCantidad (numeroMaximoHorasLabs ?hLR))
	?pCH <- (PreferenciasCantidad (numeroMaximoHorasLabs ?hLP))
	(test(and (eq ?hLR Indef) (eq ?hLP Indef)))
	(not (laboratorio_expediente))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	=>  
	(bind ?exp (send ?alumno get-expediente))
	(bind $?quatris (send (instance-address * ?exp) get-cuatrimestres)) 
	(bind ?LabExtra 0)
	(bind ?nA 0)
	(progn$ (?i ?quatris)
		(bind $?convs (send (instance-address * ?i) get-convocatorias))
		(progn$ (?j ?convs)
			(bind ?asig (send (instance-address * ?j) get-asignatura))
			(if(or(eq (class (instance-address * ?asig)) Obligatoria) (eq (class (instance-address * ?asig)) Especialidad) (eq (class (instance-address * ?asig)) Optativa)) then 
				(bind ?nomAsig (send (instance-address * ?asig) get-nombreAsig)) 
				(if (and (member ?nomAsig ?A) (not(member ?nomAsig ?S))) then
					(bind ?horasLabExt(send (instance-address * ?asig) get-horasLabExterno))
					(bind ?LabExtra (+ ?LabExtra ?horasLabExt))		
				)
				(bind ?nA (+ ?nA 1))
			)
		)
	)
	(if (> ?nA 0) then 
		(bind ?LabExtra (/ ?LabExtra ?nA)) 		
		(if (and (> ?LabExtra 0) (< ?LabExtra 4)) then (modify ?pCH (numeroMaximoHorasLabs Pocas) ))
		(if (and (> ?LabExtra 3) (< ?LabExtra 8)) then (modify ?pCH (numeroMaximoHorasLabs Normal) ))
		(if (> ?LabExtra 7) then (modify ?pCH (numeroMaximoHorasLabs Muchas) )) 
	)
	(assert (laboratorio_expediente))
)


(defrule proyectoExpediente "regla para infereir del expediente si le interesan las asignturas de proyecto segun el ultimo cuatrimestre "
	(nuevo_estudiante)
	(proyecto_indiferente)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesCalidad (asignaturasP ?aPR))
	?pCH <- (PreferenciasCalidad (asignaturasP ?aPP))
	(test(and (eq ?aPR Indef) (eq ?aPP Indef)))
	(not (proyecto_expediente))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	=> 
	(bind ?exp (send ?alumno get-expediente))
	(bind ?quatri (send (instance-address * ?exp) get-ultimoCuatrimestre))  
	(bind ?nAP 0) 
	(bind $?convs (send (instance-address * ?quatri) get-convocatorias))
	(bind ?numAsig (length$ ?convs))
	(progn$ (?j ?convs)
		(bind ?asig (send (instance-address * ?j) get-asignatura))
		(if(and (or(eq (class (instance-address * ?asig)) Obligatoria) (eq (class (instance-address * ?asig)) Especialidad) (eq (class (instance-address * ?asig)) Optativa))(eq TRUE (send (instance-address * ?asig) get-proyecto))) then 
			(bind ?nomAsig (send (instance-address * ?asig) get-nombreAsig))
			(if (and (member ?nomAsig ?A) (not(member ?nomAsig ?S))) then (bind ?nAP (+ ?nAP 1)))	
		)
	)
	(if(>= (/ ?nAP ?numAsig) (/ ?numAsig 2)) then (modify ?pCH (asignaturasP TRUE)) 
	else (modify ?pCH (asignaturasP FALSE)))
	(assert(proyecto_expediente))
)

(defrule inglesExpediente "regla para infereir del expediente si le interesan asignturas en ingles segun el ultimo cuatrimestre "
	(nuevo_estudiante)
	(ingles_indiferente)
	?estudianteH <- (Estudiante ?nombreH)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreI))
	(test (eq(str-compare ?nombreH ?nombreI) 0))
	(RestriccionesCalidad (asignaturasI ?aIR))
	?pCH <- (PreferenciasCalidad (asignaturasI ?aIP))
	(test(and (eq ?aIR Indef) (eq ?aIP Indef)))
	(not (ingles_expediente))
	?expH <- (Expediente (aprobadas $?A) (suspendidas $?S))
	=> 
	(bind ?exp (send ?alumno get-expediente))
	(bind ?quatri (send (instance-address * ?exp) get-ultimoCuatrimestre))  
	(bind ?nAI 0) 
	(bind $?convs (send (instance-address * ?quatri) get-convocatorias))
	(bind ?numAsig (length$ ?convs))
	(progn$ (?j ?convs)
		(bind ?asig (send (instance-address * ?j) get-asignatura))
		(if(and (or(eq (class (instance-address * ?asig)) Obligatoria) (eq (class (instance-address * ?asig)) Especialidad) (eq (class (instance-address * ?asig)) Optativa))(eq TRUE (send (instance-address * ?asig) get-proyecto))) then 
			(bind ?nomAsig (send (instance-address * ?asig) get-nombreAsig))
			(if (and (member ?nomAsig ?A) (not(member ?nomAsig ?S))) then (bind ?nAI (+ ?nAI 1)))	
		)
	)
	(if(>= (/ ?nAI ?numAsig) (/ ?numAsig 2)) then (modify ?pCH (asignaturasI TRUE)) 
	else (modify ?pCH (asignaturasI FALSE)))
	(assert(ingles_expediente))
)


(defrule finexpediente "regla para pasar al modulo siguiente"
      (nuevo_estudiante)
      =>  
	  (printout t "Inferencia de datos del expediente hecha" crlf)
      (focus filtrado) 
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE FILTRADO			 		---------- 							MODULO DE FILTRADO	
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se obtienen todas las asignaturas instanciadas
;; y se ir�n descartando si no cumplen alguna restriccion

(defmodule filtrado
	(import MAIN ?ALL) 
	(import expediente ?ALL)
	(import inferir_datos ?ALL) 
	(export ?ALL)
)

;;; Obtener todas las asignaturas para poder descartar segun las restricciones
(defrule obtenerAsignaturas 
	(nuevo_estudiante)
	=>
	(bind $?allAsigs (find-all-instances((?inst Asignatura)) TRUE))
	(loop-for-count (?i 1 (length$ ?allAsigs)) do
		(bind ?asig (nth$ ?i ?allAsigs)) 
		(bind ?nR (sym-cat R**(send ?asig get-nombreAsig)))	 
		(bind ?inst (make-instance ?nR of Recomendacion))
		(send ?inst put-recomendacion (instance-address (nth$ ?i ?allAsigs)))
	)
	(printout t crlf)
	(printout t " Asignaturas eliminadas por no cumplir restricciones: " crlf)
	(printout t "----------------------------------------------------- " crlf)
)

(defrule descartandoPorCuatrimestre "regla para descartar asignaturas que no se impartan en el cuatrimestre que se matricula"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (cuatrimestre $?cuatris))
	(Cuatrimestre ?Q)
	(test (and (eq ?asig ?asigRec)(not(member ?Q ?cuatris))))   
	=>
	(assert (DescartadaQuatri ?posRecm))
	(printout t " Eliminada por no ser del cuatrimestre " (instance-name ?posRecm) crlf)	
	(send ?posRecm delete)
)

(defrule descartandoPorAprobadas "regla para descartar asignaturas que esten aprobadas"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (nombreAsig ?nomAsig)) 
	(test (eq ?asig ?asigRec)) 
	(Expediente (aprobadas $?aprobadas))
	(test (and (> (length$ ?aprobadas) 0) (member ?nomAsig ?aprobadas))) 
	=>
	(assert (DescartadaApro ?posRecm)) 
	(printout t " Eliminada por estar aprobada " (instance-name ?posRecm) crlf)	
	(send ?posRecm delete)
)

(defrule descartandoPorPrerequisito "regla para descartar asignaturas cuyo prerequisito no esta aprobado"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (prerequisitos $?asigPre)) 
	(test (eq ?asig ?asigRec)) 
	(Expediente (aprobadas $?aprobadas))
	(test (and (> (length$ ?asigPre) 0) (> (length$ ?aprobadas) 0))) 
	=>
	(bind ?descartar FALSE)
	(progn$ (?i ?asigPre)
		(bind ?nomAsig (send (instance-address * ?i) get-nombreAsig))
		(if (not (member ?nomAsig ?aprobadas)) then (bind ?descartar TRUE) (break))
	)
	(if (eq ?descartar TRUE) then (assert (DescartadaPre ?posRecm)) 	
		(printout t " Eliminada por tener prerequisitos sin aprobar " (instance-name ?posRecm) crlf)	 
		(send ?posRecm delete))
)

(defrule descartandoPorObligatoriaEnFaseSelectivaNoSuperada "regla para descartar asignaturas por ser obligatorias en 3 o 4 semestre"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Obligatoria) (curso ?curso)) 
	(test (eq ?asig ?asigRec)) 
	(Expediente (faseIniSup ?Nosup))
	(test (and(eq ?Nosup FALSE)(or(eq ?curso Tercero )(eq ?curso Cuarto))))
	=>
	(assert (DescartadaPOFSNS ?posRecm)) 
	(printout t " Eliminada por ser obligatoria de 3 o 4 semestre sin fase inicial no superada " (instance-name ?posRecm) crlf)	
	(send ?posRecm delete)
)

(defrule descartandoPorOptativaEnFaseSelectivaNoSuperada "regla para descartar asignaturas optativas en fase selectiva no superada o con menos de 90 creditos superados "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Optativa)) 
	(test (eq ?asig ?asigRec)) 
	(Expediente (faseIniSup ?Nosup)(COblig ?oblig))
	(test (or(eq ?Nosup FALSE)(and (eq ?Nosup TRUE) (>= ?oblig 42)))) 
	=>
	(assert (DescartadaPOFSNS ?posRecm))
	(printout t " Eliminada por ser optativa sin fase inicial superada o  tener menos  de 90ECTS obligatorios aprobados " (instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)

(defrule descartandoPorEspecialidadEnFaseSelectivaNoSuperada-90ECTS "regla para descartar asignaturas de especialidad en fase selectiva no superada o con menos de 90 creditos superados "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Especialidad)) 
	(test (eq ?asig ?asigRec)) 
	(Expediente (faseIniSup ?Nosup)(COblig ?oblig))
	(test (or(eq ?Nosup FALSE)(and (eq ?Nosup TRUE) (>= ?oblig 42)))) 
	=>
	(assert (DescartadaPEFSNS ?posRecm)) 
	(printout t " Eliminada por ser de especialidad sin fase inicial superada o  tener menos  de 90ECTS obligatorios aprobados "(instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)

(defrule descartandoPorPreferenciaHoraria  "regla para descartar asignaturas que no tengan la misma sesion horaria que la pedida po rel alumno o porque trabaja "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (horario ?sesionA)) 
	(test (eq ?asig ?asigRec))  
	(RestriccionesHorarias (horario ?sesionR))	 
	(test (and (neq ?sesionR Indef) (neq ?sesionR Indiferente) (neq ?sesionA Ambos) (eq ?sesionA ?sesionR)))
	=>
	(assert (DescartadaPH ?posRecm)) 
	(printout t " Eliminada por horario incompatible " (instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)

(defrule descartandoPorMaximasHorasDedicacion  "regla para descartar asignaturas porque no cohincidan con las horas de estudio pedidas"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (horasEstudio ?hE)) 
	(test (eq ?asig ?asigRec))
	(RestriccionesCantidad (numeroMaximoHoras ?hEstR))
	(test(neq ?hEstR Indef) )
	(test (not(and(eq ?hEstR Pocas)  (< ?hE 4))))
	(test (not(and(eq ?hEstR Normal) (and(> ?hE 3)(< ?hE 8)))))
	(test (not(and(eq ?hEstR Muchas)  (> ?hE 7))))
	=>
	(assert (DescartadaMHD ?posRecm)) 
	(printout t " Eliminada por dedicaion de estudio incompatible  " (instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)


(defrule descartandoPorMaximasHorasLaboratorio  "regla para descartar asignaturas porque no cohincidan con las horas extras de laboratori pedidas"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (horasLabExterno ?hEL)) 
	(test (eq ?asig ?asigRec))
	(RestriccionesCantidad (numeroMaximoHorasLabs ?hELabR))
	(test (neq ?hELabR Indef) )
	(test (not(and (eq ?hELabR Pocas)  (< ?hEL 4))))
	(test (not(and(eq ?hELabR Normal) (and(> ?hEL 3)(< ?hEL 8)))))
	(test (not(and(eq ?hELabR Muchas)  (> ?hEL 7))))
	=>
	(assert (DescartadaMHDL ?posRecm)) 
	(printout t " Eliminada por dedicacion extra de laboratorio incompatible " (instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)

(defrule descartandoPorAsignaturasProyecto "regla para descartar asignaturas porque no cohincidan con la restriccion de proyeto pedida"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (proyecto ?aP)) 
	(test (eq ?asig ?asigRec))
	(RestriccionesCalidad (asignaturasP ?aPR))
	(test (not(eq (str-compare ?aPR ?aP) 0 )))	
	(test (neq ?aPR Indef))	
	=>
	(assert (DescartadaProy ?posRecm)) 
	(if (eq ?aP TRUE) then (printout t " Eliminada por ser asignatura de proyecto " (instance-name ?posRecm) crlf)
	else (printout t " Eliminada por no ser asignatura poryecto " (instance-name ?posRecm) crlf))	
	(send ?posRecm delete)
)


(defrule descartandoPorAsignaturasIngles  "regla para descartar asignaturas porque no cohincidan con la restriccion de ingles pedida"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (idioma $?ingles))
	(test  (member Ingles ?ingles)) 
	(test (eq ?asig ?asigRec))
	(RestriccionesCalidad (asignaturasI ?aIR)) 
	(test (or (and(eq ?aIR FALSE)(not(member Ingles ?ingles))) (and(eq ?aIR TRUE)(member Ingles ?ingles))))
	(test (neq ?aIR Indef))	
	=>
	(assert (DescartadaIng ?posRecm)) 
	(if (eq ?aIR TRUE) then (printout t " Eliminada por ser asignatura en ingles " (instance-name ?posRecm) crlf)
	else (printout t " Eliminada por no ser asignatura en ingles " (instance-name ?posRecm) crlf))	
	(send ?posRecm delete)
)

(defrule descartandoPorDificultad  "regla para descartar asignaturas porque no cohincidan con la dificultad pedida"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (promedioAprobados ?aprob))  
	(test (eq ?asig ?asigRec))
	(RestriccionesCalidad (dificultad ?dR))
	(test (and(neq ?dR Cualquiera)(neq ?dR Indef)))
	(test (not(and(eq ?dR Facil) (> ?aprob 69))))	
	(test (not(and(eq ?dR Dificil) (< ?aprob 70))))		
	=>
	(assert (DescartadaDif ?posRecm)) 
	(printout t " Eliminada por dificultad incompatible " (instance-name ?posRecm) crlf)
	(send ?posRecm delete)
)


(defrule descartandoPorCompetenciasInteres  "regla para descartar asignaturas porque tienen las competencias pedida"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (competencias ?comp))  
	(test (eq ?asig ?asigRec))
	(RestriccionesMultievaluadas(competencias $?compR))
	(test (neq (length$ ?compR) 0))
	(test (not(member ?comp ?compR)))	
	=>
	(assert (DescartadaCom ?posRecm)) 
	(printout t " Eliminada por competencias de interes incompatibles " (instance-name ?posRecm)crlf)
	(send ?posRecm delete)
)

(defrule descartandoPorTemas "regla para descartar asignaturas porque no porque tienen los temas pedidos"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (temas $?temas))
	(test (eq ?asig ?asigRec))
	(RestriccionesMultievaluadas(temas $?tR))
	(test (> (length$ ?tR) 0))
	(test (not(member Indiferente ?tR)))
	=>
	(bind ?trobat FALSE)
	(progn$ (?iR ?tR)
		(progn$ (?iA ?temas)
		  (if (eq (str-compare ?iR (send (instance-address * ?iA) get-nombreTema)) 0) then (bind ?trobat TRUE) (break))
		)
	)
	(if (eq ?trobat FALSE) then (printout t " Eliminada por temas de interes incompatibles " (instance-name ?posRecm) crlf)(send ?posRecm delete))
)

(defrule descartandoPorTemasNoInformaticos "regla para descartar asignaturas porque no tienen los temas no informaticos pedidos"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (temas $?temas))
	(test (eq ?asig ?asigRec))
	(RestriccionesMultievaluadas(temasNoInf $?tNIR))
	(test (> (length$ ?tNIR) 0)) 
	=>
	(bind ?trobat FALSE)
	(progn$ (?iR ?tNIR)
		(progn$ (?iA ?temas)
		  (if (eq (str-compare ?iR (send (instance-address * ?iA) get-nombreTema)) 0) then (bind ?trobat TRUE) (break))
		)
	)
	(if (eq ?trobat FALSE) then (printout t " Eliminada por temas no informatico de interes incompatibles " (instance-name ?posRecm) crlf)(send ?posRecm delete))
)

(defrule finfiltrado "regla para pasar al siguiente modulo"
      (nuevo_estudiante)
      => 
	  (printout t crlf)
	  (printout t "Modulos: "crlf)
	  (printout t "Asociacion heuristica hecha" crlf)
      (focus valorar_preferencias) 
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PRIORIDAD	DE PREFERENCIAS	 		---------- 					MODULO DE PRIORIDAD	DE PREFERENCIAS		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se valoraran las solcuiones en funcion de las preferencias
;; explicitadas por el aluno y las inferidas del expediente para dar un valor cuantitativo a cada solucion

(defmodule valorar_preferencias
	(import MAIN ?ALL) 
	(import inferir_datos ?ALL)  
	(import expediente ?ALL)
	(export ?ALL)
)


(defrule evaluarRepetidasObligatorias "valora las asignaturas repetidas para darles mayor preferencia"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (nombreAsig ?nomAsig))
	(test (eq ?asig ?asigRec))
	(test (or (eq (class ?asig) Obligatoria)(eq (class ?asig) Especialidad)))
	(Expediente (suspendidas $?asigSusp))
	(test (> (length$ ?asigSusp) 0))
	(test (member ?nomAsig ?asigSusp))
	=> 
	(bind ?justf "Asignatura repetida(Normativa FIB)")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 10))
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)


(defrule evaluarECTSPendientesObligatoriosPrimer "valora las asignaturas de primer semestre para darles mayor prioridad, que las de 2,3,4"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Obligatoria) (creditosTotales ?ECTSAsig) (curso ?curso))
	(test (eq ?asig ?asigRec))
	(Expediente (COblig ?pendtOblig))
	(test (and (eq ?curso Primero)(>= ?pendtOblig ?ECTSAsig)))  
	=>  
	(bind ?justf "Obligatoria 1 semestre(Normativa FIB) ")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 6))	 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)

(defrule evaluarECTSPendientesObligatoriosSegundo "valora las asignaturas de segundo semestre para darles mayor prioridad, que las de 3,4"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Obligatoria) (creditosTotales ?ECTSAsig) (curso ?curso))
	(test (eq ?asig ?asigRec))
	(Expediente (COblig ?pendtOblig))
	(test (and (eq ?curso Segundo) (>= ?pendtOblig ?ECTSAsig)))  
	=>  
	(bind ?justf "Obligatoria 2 semestre(Normativa FIB) ")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 5))	 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)


(defrule evaluarECTSPendientesObligatoriosTercer "valora las asignaturas de primer semestre para darles mayor prioridad, que las de 4"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Obligatoria) (creditosTotales ?ECTSAsig) (curso ?curso))
	(test(eq ?asig ?asigRec) )
	(Expediente (COblig ?pendtOblig))
	(test (and  (eq ?curso Tercero)(>= ?pendtOblig ?ECTSAsig)))  
	=>  
	(bind ?justf "Obligatoria 3 semestre(Normativa FIB) ")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 4))	 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)


(defrule evaluarECTSPendientesObligatoriosCuarto "valora las asignaturas de primer semestre para darles mayor prioridad, que las optaivas y de especialidad"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Obligatoria) (creditosTotales ?ECTSAsig) (curso ?curso))
	(test (eq ?asig ?asigRec))
	(Expediente (COblig ?pendtOblig))
	(test (and   (eq ?curso Cuarto)(>= ?pendtOblig ?ECTSAsig)))  
	=>   
	(bind ?justf "Obligatoria 4 semestre(Normativa FIB) ")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 3))	 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)


(defrule evaluarECTSPendientesOptativos "valora asignaturas optativas, en funcion de los creditos pendientes que tenga el estudiante"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (creditosTotales ?ECTSAsig))
	(test (and  (eq ?asig ?asigRec)(eq (class ?asig) Optativa))) 
	(Expediente (COpt ?pendtOpt))
	(test (>= ?pendtOpt ?ECTSAsig))
	=>  
	(bind ?justf "ECTS Pendientes Optativos")
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)

(defrule evaluarCorequisitosAprobados "valora una asigantura si sus corequisitos son asignturas aporbadas"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec) (justificacionS $?justS))
	?asig <- (object (is-a Asignatura) (corequisitos $?coreq)) 
	(test (and(> (length$ ?coreq) 0)(eq ?asig ?asigRec)))
	(Expediente (aprobadas $?aprobadas))	
	=> 
	(progn$ (?i ?coreq)
		(bind ?nomAsig (send (instance-address * ?i) get-nombreAsig))
		(if (member ?nomAsig ?aprobadas) then (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) )
	)	
	(bind ?justf "Corequisito aprobado")
	(if (not(member ?justf ?justS )) then (slot-insert$ ?posRecm justificacionS 1 ?justf) )	 
)

(defrule evaluarCorequisitosPendientes "valora una asignatura y sus corequitos si estos no estan aprobados, se valora con mayor prioridad la asignatura corequisito "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec) (justificacionS $?justS))
	?asig <- (object (is-a Asignatura) (corequisitos $?coreq))
	?posRecm1  <- (object (is-a Recomendacion) (recomendacion ?asigRec1) (justificacionS $?justS1))
	(test (and (> (length$ ?coreq) 0)(eq ?asig ?asigRec) (neq ?asig ?asigRec1)))
	(Expediente (aprobadas $?aprobadas))		
	;;(test (and (member ?asigRec1 ?coreq) (not (member(send ?asigRec1 get-nombreAsig) ?aprobadas))))
	=> 
	(bind ?trobat FALSE)
	(progn$ (?i ?coreq)
		(bind ?nomAsig (send (instance-address * ?i) get-nombreAsig))
		(if (eq (str-compare ?nomAsig (send ?asigRec1 get-nombreAsig)) 0) then (bind ?trobat TRUE))
	)
	(if (eq ?trobat TRUE) then
		(bind ?justf "Asig con corequisito pendiente(NormativaFIB)")
		(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1))
		(if (not(member ?justf ?justS )) then (slot-insert$ ?posRecm justificacionS 1 ?justf))	
		(bind ?justf1 "Corequisito pendiente(NormativaFIB)")
		(send ?posRecm1 put-gradoRecomendacion (+ (send ?posRecm1 get-gradoRecomendacion) 15)) 
		(if (not(member ?justf1 ?justS1 )) then (slot-insert$ ?posRecm1 justificacionS 1 ?justf1))		
	)	
)


(defrule evaluarCompetenciaNivel3CasiAcabando "valora asignaturas con competencia de nivel 3 en un estudiante casi acabando la carrera, que no las tiene todas "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (competencias ?comp) (nivelCompetencia ?nivel)) 
	(test (eq ?asig ?asigRec))
	(Expediente (competenciaN3 $?cN3)(COpt ?opt) (COblig ?oblig) (CEsp ?espc))
	(test (and (eq ?nivel N3)(eq ?oblig 0) (eq ?espc 0) (<= ?opt 18) (not (member ?comp ?cN3))))	 
	(not (finalizando_carrera))
	=>  
	(bind ?justf "Acababando y completa competencia nivel 3(S)") 
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 10)) 
	(slot-insert$ ?posRecm justificacionS 1 ?justf)  
	(assert(finalizando_carrera))
)


(defrule evaluarCompetenciaNivel3 "valora asignaturas con competencias de N3, si aun le quedan competencias sin este nivel"
	(not (finalizando_carrera))
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (competencias ?comp) (nivelCompetencia ?nivel)) 
	(test (eq ?asig ?asigRec))
	(Expediente (competenciaN3 $?cN3)) 
	(test (and (eq ?nivel N3)(< (length$ ?cN3) 9)  (not (member ?comp ?cN3))))	 
	=>  
	(bind ?justf "Completa competencia nivel 3(S)") 
	(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 3)) 
	(slot-insert$ ?posRecm justificacionS 1 ?justf) 
)

;;Valoracion de preferencias explicitas

(defrule evaluarPreferenciasMaxHrsDed "valora el maximo de horas de dedicacion de estudio" 
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (horasEstudio ?hE))
	(test (eq ?asig ?asigRec))
	(PreferenciasCantidad (numeroMaximoHoras ?hEP))
	(test (and (neq ?hEP Indef)(or (and (eq ?hEP Pocas)  (< ?hE 4)) (and (eq ?hEP Normal) (and (> ?hE 3) (< ?hE 8))) 
			(and (eq ?hEP Muchas)  (> ?hE 7)) (eq ?hEP Indiferente))))
	(JDedicacion ?resp)
	=>     
	(if (eq ?resp Sistema) then 
			(bind ?justf "Dedicacion de estudio inferida(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Dedicacion de estudio deseada(U)")	 
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))  
		 (slot-insert$ ?posRecm justificacionU 1 ?justf)) 
)

 
(defrule evaluarPreferenciasMaxHrsLab "valora el maximo de horas extras de laboratorio" 
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (horasLabExterno ?hEL))
	(test (eq ?asig ?asigRec))
	(PreferenciasCantidad (numeroMaximoHorasLabs ?hELP))
	(test (and (neq ?hELP Indef) (or (and (eq ?hELP Pocas)  (< ?hEL 4)) (and (eq ?hELP Normal) (and (> ?hEL 3) (< ?hEL 8))) 
			(and (eq ?hELP Muchas)  (> ?hEL 7)) (eq ?hELP Indiferente))))
	(JLaboratorio ?resp)
	=>    
	(if (eq ?resp Sistema) then 
			(bind ?justf "Dedicacion de horas extras de laboratorio inferida(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Dedicacion de horas extras de laboratorio deseada(U)")	 
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2)) 	 
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))
)

(defrule evaluarPreferenciaHoraria "valorar la prefernecia horaria "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (horario ?sesionA))
	(test (eq ?asig ?asigRec))
	(PreferenciasHorarias (horario ?hP))
	(test (and (neq ?hP Indef)(or (eq (str-compare ?sesionA ?hP) 0) (eq ?sesionA Ambos) (eq ?hP Indiferente))))
	(JHorario ?resp)
	=>     
	(if (eq ?resp Sistema) then 
		(bind ?justf "Horario inferido del semestre anterior(S)") 
		(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
		(slot-insert$ ?posRecm justificacionS 1 ?justf) 
	else (bind ?justf "Horario compatible(U)")	 
		(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		(slot-insert$ ?posRecm justificacionU 1 ?justf)) 
)


(defrule evaluarPreferenciasCompEspecialidad "valora la preferencia del estudiante de completar  especialidad"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Especialidad) (creditosTotales ?ECTSAsig) (nombreEsp ?nomEsp))
	(test(eq ?asig ?asigRec))
	(Expediente (CEsp ?pendtEsp) (especialidad ?esp ))
	(test (and  (eq ?nomEsp ?esp) (>= ?pendtEsp ?ECTSAsig) ))  	
	(PreferenciasCalidad (completarEspecialidad ?cEP))
	(test (and (neq ?cEP Indef) (neq ?cEP Indiferente)))
	(JEspecialidad ?resp)
	=>     
	(if (eq ?resp Sistema) then 
		(bind ?justf "Se infiere que quieres completar la especialidad(S)") 
		(if(eq ?cEP Poco) then  (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1))
		else (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 10)))
		(slot-insert$ ?posRecm justificacionS 1 ?justf) 
	else (bind ?justf "Completa Especialidad(U)")	
		(if(eq ?cEP Poco) then  (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		else (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 11)))
		(slot-insert$ ?posRecm justificacionU 1 ?justf)) 
	
)


(defrule evaluarPreferenciasDificultad "valora la dificultad deseada o inferida "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (promedioAprobados ?pA))
	(test (eq ?asig ?asigRec))
	(PreferenciasCalidad (dificultad ?difP))
	(test (and (neq ?difP Indef) (or (and (eq ?difP Facil) (> ?pA 69)) (and (eq ?difP Dificil) (< ?pA 70)) )))
	(JDificultad ?resp)
	=>   
	(if (eq ?resp Sistema) then 
			(bind ?justf "Dificultad inferida(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Dificultad asumible(U)")
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2)) 
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))
)


(defrule evaluarPreferenciasAsignaturasProyecto "evaluar preferenias sobre asignaturas de proyectos "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (proyecto ?asigProy))
	(test (eq ?asig ?asigRec))
	(PreferenciasCalidad (asignaturasP ?aPP)) 
	(test (eq ?asigProy ?aPP))
	(JProyecto ?resp)
	=>  
	(if (eq ?resp Sistema) then 
			(if (eq ?asigProy TRUE ) then (bind ?justf "Interes en asignaturas de proyecto(S)") else (bind ?justf "No interes en asignaturas de proyecto(S)"))  
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (if (eq ?asigProy TRUE ) then (bind ?justf "Asignatura de proyecto(U)") else (bind ?justf "No es asignatura de proyecto(U)"))  
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))  
	
)

(defrule evaluarPreferenciasAsignaturasNOIngles "evaluar preferencias sobre asignaturas sin idioma ingles"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (idioma $?idiomasA))
	(test (eq ?asig ?asigRec))
	(PreferenciasCalidad (asignaturasI ?aIP))  
	(test (and (eq ?aIP FALSE) (not (member Ingles ?idiomasA))))
	(JIngles ?resp)	
	=>    
	(if (eq ?resp Sistema) then (bind ?justf "No tienes muchas asignaturas en ingles(S)")		
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "No tiene idioma ingles(U)")		
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))   
)

(defrule evaluarPreferenciasAsignaturasInglesCon3Lengua "evaluar preferencia por asignaturas con ingles con la 3 lengua "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (idioma $?idiomasA))
	(test (eq ?asig ?asigRec))
	(PreferenciasCalidad (asignaturasI ?aIP)) 
	(Expediente (tercLeng ?tL))
	(test (and (> ?tL 11)(eq ?aIP TRUE) (member Ingles ?idiomasA) ))	
	(JIngles ?resp)	
	=>    
	(if (eq ?resp Sistema) then (bind ?justf "Tienes asignaturas en ingles, pero ya tienes la 3 lengua(S)")		
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Asignatura de ingles,(te gusta el ingles eh!)(U)")		
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))    
)

;;
(defrule evaluarPreferenciasAsignaturasInglesSin3Lengua "evaluar preferencias por asignaturas con ingles son las 3 lengua, mayor prioridad"
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (idioma $?idiomasA))
	(test (eq ?asig ?asigRec))
	(PreferenciasCalidad (asignaturasI ?aIP)) 
	(Expediente (tercLeng ?tL))
	(test (and (< ?tL 12)(eq ?aIP TRUE) (member Ingles ?idiomasA)))	
	(JIngles ?resp)	
	=>    
	(if (eq ?resp Sistema) then (bind ?justf "Te servira para obtener la 3 lengua(S)")		
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 5)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Asignatura de ingles,(podr�s completar la tercera lengua)(U)")		
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 10))
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))    
)


(defrule evaluarPreferenciasCompetenciasInteres "valorar asignaturas con las competencias de interes "
	?posRecm  <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a AsignaturaFIB) (competencias $?cA))
	(test (eq ?asig ?asigRec))
	(PreferenciasMultievaluadas (competencias $?cAP))
	(test (> (length$ ?cAP) 0))
	(test (and (not(member Indiferente ?cAP)) (member ?cA ?cAP)))
	(JCompetencias ?resp)
	=>   
	(if (eq ?resp Sistema) then 
			(bind ?justf "Competencias de interes inferidas(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
	else (bind ?justf "Competencias de interes(U)")
		 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
		 (slot-insert$ ?posRecm justificacionU 1 ?justf))  
	
)

(defrule evaluarPreferenciasTemas "valorar asignturas por los temas de interes"
	?posRecm <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (temas $?tA))
	(test (eq ?asig ?asigRec))
	(PreferenciasMultievaluadas (temas $?tAP))
	(test (and (> (length$ ?tAP) 0)(> (length$ ?tA) 0))) 
	(JTemas ?resp)
	=>	   
	(bind $?recomendaciones (find-all-instances ((?inst Recomendacion)) TRUE)) 
	(bind ?trobat FALSE)
	(progn$ (?i ?tAP)		 
		(progn$ (?j ?tA) 
		  (if (eq (str-compare ?i (send (instance-address * ?j) get-nombreTema)) 0) then (bind ?trobat TRUE) (break))
		)
		(if (eq ?trobat TRUE) then (break))
	)
	(if (eq ?trobat TRUE) then
		(if (eq ?resp Sistema) then 
			(bind ?justf "Temas de interes(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
		else (bind ?justf "Temas de interes(U)")
			 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
			 (slot-insert$ ?posRecm justificacionU 1 ?justf))  		
	)
)

(defrule evaluarPreferenciasTemasNoInformaticos "valorar asignturas por los temas no informaticos de interes"
	?posRecm <- (object (is-a Recomendacion) (recomendacion ?asigRec))
	?asig <- (object (is-a Asignatura) (temas $?tA))
	(test (eq ?asig ?asigRec))
	(PreferenciasMultievaluadas (temasNoInf $?tNIP))
	(test (and (> (length$ ?tA) 0)(> (length$ ?tNIP) 0))) 
	(JTemasNI ?resp)
	=>	   
	(bind $?recomendaciones (find-all-instances ((?inst Recomendacion)) TRUE)) 
	(bind ?trobat FALSE)
	(progn$ (?i ?tNIP)		 
		(progn$ (?j ?tA) 
		  (if (eq (str-compare ?i (send (instance-address * ?j) get-nombreTema)) 0) then (bind ?trobat TRUE) (break))
		)
		(if (eq ?trobat TRUE) then (break))
	)
	(if (eq ?trobat TRUE) then
		(if (eq ?resp Sistema) then 
			(bind ?justf "temas no informaticos inferidos(S)") 
			(send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 1)) 
			(slot-insert$ ?posRecm justificacionS 1 ?justf)
		else (bind ?justf "Temas no informaticos de interes(U)")
			 (send ?posRecm put-gradoRecomendacion (+ (send ?posRecm get-gradoRecomendacion) 2))
			 (slot-insert$ ?posRecm justificacionU 1 ?justf))  		
	)
)

(defrule finvalorarpreferencias	"regla para pasar al modulo siguiente"
	(nuevo_estudiante)
	=> 
	(printout t "Refinamiento hecho.....mostrando solucion " crlf) 
	(focus recomendaciones) 
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE RECOMENDACIONES		---------- 				MODULO DE RECOMENDACIONES		
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se obtendran todas las solcuiones y se mostrara la solcuion
;; si hay mas de 6 solcuiones se mostraran las 6 con valor cuantitativo mas alto y 
;; si hay menos pues se mostraran todas  

(defmodule recomendaciones
	(import MAIN ?ALL) 
	(import inferir_datos ?ALL) 
	(import filtrado ?ALL) 
	(import valorar_preferencias ?ALL) 
	(export ?ALL)
)

(defrule obtenerRecomendaciones "regla para obtener todas las recomendaciones que ha conseguido el sistema"
	(nuevo_estudiante)
	=> 
	(bind ?pos 1)
	(bind $?recomendaciones (find-all-instances ((?inst Recomendacion)) TRUE))
	(printout t crlf)
	(printout t "Todas las posibles recomendaciones: " crlf)
	(printout t "----------------------------------- " crlf)
	(progn$ (?i ?recomendaciones)
		(assert (solucionOrdenada (posicion ?pos) (recomendacion ?i)))	
		(bind ?grado (send ?i get-gradoRecomendacion))
		(printout t " "(instance-name ?i) " " ?grado crlf)
		(bind ?pos (+ ?pos 1))		
	)  
	(if(> ?pos 1) then (assert (PrimeraPos 1)) (assert (numeroR (- ?pos 1))) (assert(MaxGradoRec 0)))
	(printout t crlf)
	(printout t "------------------------  ASIGNATURAS RECOMENDADAS -----------------------" crlf)
	(printout t crlf)
)

(defrule ordenarRecomendaciones "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(not (FIN))
	(nuevo_estudiante)
	?maxgrH <- (MaxGradoRec ?mxgr)
	?rec1 <- (solucionOrdenada (posicion ?p1) (recomendacion ?recomendacion1))
	?rec2 <- (solucionOrdenada (posicion ?p2) (recomendacion ?recomendacion2))
	(test (and (> (send ?recomendacion2 get-gradoRecomendacion) (send ?recomendacion1 get-gradoRecomendacion)) (< ?p1 ?p2)))
	=>    
	(modify ?rec1 (posicion ?p2))
	(modify ?rec2 (posicion ?p1)) 
	(bind ?pos_max (send ?recomendacion2 get-gradoRecomendacion))
	(if (> ?pos_max  ?mxgr) then (retract ?maxgrH) (assert(MaxGradoRec ?pos_max)))
)
	
(defrule seleccionar6Recomendacion  "regla para mostrar solo 6 recomendaciones"
	(declare (salience -1))
	(nuevo_estudiante)
	?maxgrH <- (MaxGradoRec ?mxgr)
	?numRH <- (numeroR ?pos)
	(test (> ?pos 6))
	?ppH <-(PrimeraPos ?pp)
	?recH <- (solucionOrdenada (posicion ?p) (recomendacion ?rec))
	(test (and (eq ?p ?pp)(<= ?p 6)))
	=>
	(send ?rec imprime ?mxgr)
	(retract ?ppH)
	(assert(PrimeraPos (+ ?pp 1))) 	
	(assert (FIN))
)

(defrule seleccionarTodasRecomendacion "regla para mostrar todas las recomendaciones existente <6"
	(declare (salience -1))
	(nuevo_estudiante)
	?maxgrH <- (MaxGradoRec ?mxgr)
	?numRH <- (numeroR ?pos)
	(test (< ?pos 7))
	?ppH <-(PrimeraPos ?pp) 
	?recH <- (solucionOrdenada (posicion ?p) (recomendacion ?rec))
	(test (eq ?p ?pp))
	=>
	(send ?rec imprime ?mxgr)
	(retract ?ppH)
	(assert(PrimeraPos (+ ?pp 1))) 	
	(assert (FIN))
)

(defrule noHayRecomendaciones  "regla para saber que no se obtuvieron recomendacioness"
	(declare (salience -1))
	(nuevo_estudiante)
	?numRH <- (numeroR ?pos)
	(test (eq ?pos 0))
	=>	
	(printout t "No tenemos recomendaciones para ti :[ " crlf)  
	(assert (FIN))
)