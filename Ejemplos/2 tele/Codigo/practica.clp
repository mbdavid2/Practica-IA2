;;-------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------
;;
;;                PRACTICA 2 IA: SBC
;;
;; Alumnos: Julian Martin 
;;          Lluis Castrejon 
;; Cuatrimestre: 2012-13 Q2
;;
;;-------------------------------------------------------------------------------------------------------------
;;-------------------------------------------------------------------------------------------------------------

;;-------------------------------------------------------------------------------------------------------------
;;                    ONTOLOGIA
;;-------------------------------------------------------------------------------------------------------------

; Tue May 28 19:16:33 CEST 2013
; 
;+ (version "3.4.8")
;+ (build "Build 629")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(multislot dirigida_por
		(type INSTANCE)
;+		(allowed-classes Director)
;+		(inverse-slot dirige)
		(create-accessor read-write))
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot serie_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot genero_serie)
		(create-accessor read-write))
	(multislot actua
		(type INSTANCE)
;+		(allowed-classes Actor)
;+		(inverse-slot actua_en)
		(create-accessor read-write))
	(multislot idioma_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
;+		(inverse-slot en_idioma)
		(create-accessor read-write))
	(single-slot es_mudo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot contenido_animo
		(type INSTANCE)
;+		(allowed-classes Estado_animo)
;+		(inverse-slot animo_contenido)
		(create-accessor read-write))
	(multislot genero_pelicula
		(type INSTANCE)
;+		(allowed-classes Pelicula)
;+		(inverse-slot pelicula_genero)
		(create-accessor read-write))
	(single-slot blanco_negro
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tematica
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot anyo
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot argumento_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
;+		(inverse-slot trata_de)
		(create-accessor read-write))
	(single-slot bajo_presupuesto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot tipo
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot buena_audiencia
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot genero_serie
		(type INSTANCE)
;+		(allowed-classes Serie)
;+		(inverse-slot serie_genero)
		(create-accessor read-write))
	(multislot actua_en
		(type INSTANCE)
;+		(allowed-classes Contenido)
;+		(inverse-slot actua)
		(create-accessor read-write))
	(multislot realizado_por
		(type INSTANCE)
;+		(allowed-classes Creador)
;+		(inverse-slot realiza)
		(create-accessor read-write))
	(multislot hecha_en
		(type INSTANCE)
;+		(allowed-classes Nacionalidad)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot nacionalidad_contenido)
		(create-accessor read-write))
	(single-slot aclamada_por_critica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot creada_por
		(type INSTANCE)
;+		(allowed-classes Creador)
;+		(inverse-slot crea)
		(create-accessor read-write))
	(multislot trata_de
		(type INSTANCE)
;+		(allowed-classes Argumento)
;+		(inverse-slot argumento_contenido)
		(create-accessor read-write))
	(single-slot docu_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(cardinality 1 1)
;+		(inverse-slot tematica_docu)
		(create-accessor read-write))
	(multislot animo_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
;+		(inverse-slot contenido_animo)
		(create-accessor read-write))
	(multislot crea
		(type INSTANCE)
;+		(allowed-classes Serie)
;+		(inverse-slot creada_por)
		(create-accessor read-write))
	(multislot tematica_docu
		(type INSTANCE)
;+		(allowed-classes Documental)
;+		(inverse-slot docu_tematica)
		(create-accessor read-write))
	(single-slot argumento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot clasificacion_edades
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot dirige
		(type INSTANCE)
;+		(allowed-classes Pelicula)
;+		(inverse-slot dirigida_por)
		(create-accessor read-write))
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot nacionalidad_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
;+		(inverse-slot hecha_en)
		(create-accessor read-write))
	(single-slot en_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 1 1)
;+		(inverse-slot idioma_contenido)
		(create-accessor read-write))
	(single-slot animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot de_moda
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot realiza
		(type INSTANCE)
;+		(allowed-classes Documental)
;+		(inverse-slot realizado_por)
		(create-accessor read-write))
	(multislot pelicula_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
;+		(inverse-slot genero_pelicula)
		(create-accessor read-write))
	(single-slot prototip03_Class0
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Genero
	(is-a USER)
	(role concrete)
	(multislot genero_serie
		(type INSTANCE)
;+		(allowed-classes Serie)
		(create-accessor read-write))
	(multislot genero_pelicula
		(type INSTANCE)
;+		(allowed-classes Pelicula)
		(create-accessor read-write))
	(single-slot genero
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Contenido
	(is-a USER)
	(role concrete)
	(multislot trata_de
		(type INSTANCE)
;+		(allowed-classes Argumento)
		(create-accessor read-write))
	(multislot actua
		(type INSTANCE)
;+		(allowed-classes Actor)
		(create-accessor read-write))
	(single-slot es_mudo
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot buena_audiencia
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot clasificacion_edades
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot duracion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot en_idioma
		(type INSTANCE)
;+		(allowed-classes Idioma)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot contenido_animo
		(type INSTANCE)
;+		(allowed-classes Estado_animo)
		(create-accessor read-write))
	(single-slot puntuacion
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot titulo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot blanco_negro
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot anyo
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot de_moda
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot bajo_presupuesto
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot hecha_en
		(type INSTANCE)
;+		(allowed-classes Nacionalidad)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot aclamada_por_critica
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Pelicula
	(is-a Contenido)
	(role concrete)
	(multislot dirigida_por
		(type INSTANCE)
;+		(allowed-classes Director)
		(create-accessor read-write))
	(multislot pelicula_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Serie
	(is-a Contenido)
	(role concrete)
	(multislot creada_por
		(type INSTANCE)
;+		(allowed-classes Creador)
		(create-accessor read-write))
	(multislot serie_genero
		(type INSTANCE)
;+		(allowed-classes Genero)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Documental
	(is-a Contenido)
	(role concrete)
	(multislot realizado_por
		(type INSTANCE)
;+		(allowed-classes Creador)
		(create-accessor read-write))
	(single-slot docu_tematica
		(type INSTANCE)
;+		(allowed-classes Tematica)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Entidad
	(is-a USER)
	(role concrete)
	(single-slot nombre
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot tipo
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Actor
	(is-a Entidad)
	(role concrete)
	(multislot actua_en
		(type INSTANCE)
;+		(allowed-classes Contenido)
		(create-accessor read-write)))

(defclass Director
	(is-a Entidad)
	(role concrete)
	(multislot dirige
		(type INSTANCE)
;+		(allowed-classes Pelicula)
		(create-accessor read-write)))

(defclass Creador
	(is-a Entidad)
	(role concrete)
	(multislot crea
		(type INSTANCE)
;+		(allowed-classes Serie)
		(create-accessor read-write))
	(multislot realiza
		(type INSTANCE)
;+		(allowed-classes Documental)
		(create-accessor read-write)))

(defclass Nacionalidad
	(is-a USER)
	(role concrete)
	(single-slot nacionalidad
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot nacionalidad_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
		(create-accessor read-write)))

(defclass Idioma
	(is-a USER)
	(role concrete)
	(single-slot idioma
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot idioma_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
		(create-accessor read-write)))

(defclass Tematica
	(is-a USER)
	(role concrete)
	(single-slot tematica
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot tematica_docu
		(type INSTANCE)
;+		(allowed-classes Documental)
		(create-accessor read-write)))

(defclass Estado_animo
	(is-a USER)
	(role concrete)
	(single-slot animo
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot animo_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
		(create-accessor read-write)))

(defclass Argumento
	(is-a USER)
	(role concrete)
	(multislot argumento_contenido
		(type INSTANCE)
;+		(allowed-classes Contenido)
		(create-accessor read-write))
	(single-slot argumento
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

		
;;-------------------------------------------------------------------------------------------------------------
;;                    INSTANCIAS
;;-------------------------------------------------------------------------------------------------------------

(definstances instances

; Wed May 29 20:32:54 CEST 2013
; 
;+ (version "3.4.8")
;+ (build "Build 629")

([MAIN::prototip02_Class10008] of  Genero

	(genero "accion")
	(genero_pelicula
		[MAIN::prototip02_Class10047]
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[prototip05_Class10001]
		[prototip05_Class10002]
		[prototip05_Class0]
		[prototip05_Class20006])
	(genero_serie [prototip05_Class5]))

([MAIN::prototip02_Class10009] of  Genero

	(genero "animacion")
	(genero_pelicula
		[MAIN::prototip03_Class10000]
		[prototip05_Class10003]
		[prototip05_Class3]
		[prototip05_Class0]
		[prototip05_Class2]
		[prototip05_Class1]
		[prototip05_Class10000])
	(genero_serie
		[prototip05_Class5]
		[prototip05_Class4]))

([MAIN::prototip02_Class10011] of  Genero

	(genero "ciencia-ficcion")
	(genero_pelicula
		[MAIN::prototip02_Class10047]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class38]
		[prototip05_Class10002]
		[prototip05_Class10004]))

([MAIN::prototip02_Class10012] of  Genero

	(genero "comedia")
	(genero_pelicula
		[MAIN::prototip02_Class10051]
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10031]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class23]
		[prototip05_Class3]
		[prototip05_Class2]
		[prototip05_Class10009]
		[prototip05_Class10015]
		[prototip05_Class20000]
		[prototip05_Class20003])
	(genero_serie
		[MAIN::prototip02_Class10069]
		[MAIN::prototip03_Class10097]
		[MAIN::prototip03_Class10100]))

([MAIN::prototip02_Class10013] of  Genero

	(genero "drama")
	(genero_pelicula
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10035]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10070]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class17]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class38]
		[MAIN::prototip04_Class42]
		[prototip05_Class1]
		[prototip05_Class10004]
		[prototip05_Class10006]
		[prototip05_Class10011]
		[prototip05_Class10012]
		[prototip05_Class10013]
		[prototip05_Class10015]
		[prototip05_Class10016]
		[prototip05_Class10007]
		[prototip05_Class20001]
		[prototip05_Class20002]
		[prototip05_Class20003]
		[prototip05_Class20004]
		[prototip05_Class20005])
	(genero_serie
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[MAIN::prototip02_Class10075]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip03_Class10084]
		[MAIN::prototip03_Class10092]))

([MAIN::prototip02_Class10014] of  Genero

	(genero "musical")
	(genero_pelicula [MAIN::prototip02_Class10051]))

([MAIN::prototip02_Class10015] of  Genero

	(genero "terror")
	(genero_pelicula
		[MAIN::prototip02_Class10057]
		[MAIN::prototip03_Class10066]))

([MAIN::prototip02_Class10016] of  Genero

	(genero "western")
	(genero_pelicula
		[MAIN::prototip03_Class10022]
		[prototip05_Class10018]))

([MAIN::prototip02_Class10017] of  Genero

	(genero "thriller-suspense")
	(genero_pelicula
		[MAIN::prototip02_Class10047]
		[MAIN::prototip02_Class10057]
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]))

([MAIN::prototip02_Class10018] of  Genero

	(genero "aventuras")
	(genero_pelicula
		[MAIN::prototip03_Class10000]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[prototip05_Class10002]
		[prototip05_Class3]
		[prototip05_Class0]
		[prototip05_Class2]
		[prototip05_Class1]
		[prototip05_Class10000]
		[prototip05_Class10018]
		[prototip05_Class20006])
	(genero_serie
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[prototip05_Class5]
		[prototip05_Class4]))

([MAIN::prototip02_Class10019] of  Genero

	(genero "romantico")
	(genero_pelicula
		[MAIN::prototip03_Class10015]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class26]
		[prototip05_Class10006]
		[prototip05_Class20000]
		[prototip05_Class20003]))

([MAIN::prototip02_Class10021] of  Idioma

	(idioma "catalan")
	(idioma_contenido
		[MAIN::prototip02_Class10075]
		[MAIN::prototip03_Class10084]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip03_Class10097]
		[prototip05_Class4]))

([MAIN::prototip02_Class10023] of  Idioma

	(idioma "aleman")
	(idioma_contenido [MAIN::prototip03_Class10046]))

([MAIN::prototip02_Class10024] of  Idioma

	(idioma "frances")
	(idioma_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip03_Class10040]))

([MAIN::prototip02_Class10025] of  Pelicula

	(actua
		[MAIN::prototip02_Class10029]
		[MAIN::prototip02_Class10030])
	(anyo 2001)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class32])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip02_Class10026])
	(duracion 106)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10054]
		[MAIN::prototip02_Class10017])
	(puntuacion 62)
	(titulo "The Fast and the Furious")
	(trata_de [MAIN::prototip03_Class33]))

([MAIN::prototip02_Class10026] of  Director

	(dirige [MAIN::prototip02_Class10025])
	(nombre "Rob Cohen"))

([MAIN::prototip02_Class10027] of  Nacionalidad

	(nacionalidad "EEUU")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10047]
		[MAIN::prototip02_Class10057]
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[MAIN::prototip02_Class10069]
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class17]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]
		[MAIN::prototip04_Class42]
		[prototip05_Class0]
		[prototip05_Class1]
		[prototip05_Class2]
		[prototip05_Class3]
		[prototip05_Class5]
		[prototip05_Class10000]
		[prototip05_Class10001]
		[prototip05_Class10002]
		[prototip05_Class10003]
		[prototip05_Class10006]
		[prototip05_Class10009]
		[prototip05_Class10011]
		[prototip05_Class10013]
		[prototip05_Class10015]
		[prototip05_Class10020]
		[prototip05_Class20006]))

([MAIN::prototip02_Class10028] of  Idioma

	(idioma "ingles")
	(idioma_contenido
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10047]
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[MAIN::prototip02_Class10085]
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip03_Class10105]
		[MAIN::prototip04_Class17]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]
		[prototip05_Class3]
		[prototip05_Class20001]))

([MAIN::prototip02_Class10029] of  Actor

	(actua_en [MAIN::prototip02_Class10025])
	(nombre "Paul Walker"))

([MAIN::prototip02_Class10030] of  Actor

	(actua_en
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10047])
	(nombre "Vin Diesel"))

([MAIN::prototip02_Class10031] of  Pelicula

	(actua
		[MAIN::prototip02_Class10033]
		[MAIN::prototip02_Class10034])
	(anyo 2012)
	(clasificacion_edades 18)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class18])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip02_Class10032])
	(duracion 110)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10036])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10054])
	(puntuacion 72)
	(titulo "Siete psicopatas"))

([MAIN::prototip02_Class10032] of  Director

	(dirige [MAIN::prototip02_Class10031])
	(nombre "Martin McDonagh"))

([MAIN::prototip02_Class10033] of  Actor

	(actua_en [MAIN::prototip02_Class10031])
	(nombre "Sam Rockwell"))

([MAIN::prototip02_Class10034] of  Actor

	(actua_en [MAIN::prototip02_Class10031])
	(nombre "Colin Farrell"))

([MAIN::prototip02_Class10035] of  Idioma

	(idioma "castellano")
	(idioma_contenido
		[MAIN::prototip02_Class10031]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip02_Class10057]
		[MAIN::prototip02_Class10082]
		[MAIN::prototip02_Class10089]
		[MAIN::prototip02_Class10092]
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10070]
		[MAIN::prototip03_Class10081]
		[MAIN::prototip03_Class10100]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class42]
		[MAIN::prototip02_Class10069]
		[prototip05_Class0]
		[prototip05_Class1]
		[prototip05_Class2]
		[prototip05_Class5]
		[prototip05_Class10000]
		[prototip05_Class10001]
		[prototip05_Class10002]
		[prototip05_Class10003]
		[prototip05_Class10006]
		[prototip05_Class10007]
		[prototip05_Class10009]
		[prototip05_Class10011]
		[prototip05_Class10012]
		[prototip05_Class10013]
		[prototip05_Class10015]
		[prototip05_Class10016]
		[prototip05_Class10018]
		[prototip05_Class10020]
		[prototip05_Class10022]
		[prototip05_Class10004]
		[prototip05_Class20000]
		[prototip05_Class20003]
		[prototip05_Class20004]
		[prototip05_Class20005]
		[prototip05_Class20006]))

([MAIN::prototip02_Class10036] of  Nacionalidad

	(nacionalidad "Reino Unido")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10031]
		[MAIN::prototip02_Class10066]
		[MAIN::prototip02_Class10085]
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10105]
		[MAIN::prototip04_Class35]
		[prototip05_Class20001]
		[prototip05_Class20005]))

([MAIN::prototip02_Class10038] of  Pelicula

	(actua
		[MAIN::prototip02_Class10040]
		[MAIN::prototip02_Class10041])
	(anyo 1994)
	(clasificacion_edades 18)
	(contenido_animo
		[MAIN::prototip03_Class32]
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class15])
	(dirigida_por [MAIN::prototip02_Class10039])
	(duracion 141)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10017])
	(puntuacion 72)
	(titulo "True Lies")
	(trata_de [MAIN::prototip03_Class34]))

([MAIN::prototip02_Class10039] of  Director

	(dirige [MAIN::prototip02_Class10038])
	(nombre "James Cameron"))

([MAIN::prototip02_Class10040] of  Actor

	(actua_en [MAIN::prototip02_Class10038])
	(nombre "Arnold Schwarzenegger"))

([MAIN::prototip02_Class10041] of  Actor

	(actua_en [MAIN::prototip02_Class10038])
	(nombre "Jamie Lee Curtis"))

([MAIN::prototip02_Class10042] of  Pelicula

	(actua
		[MAIN::prototip02_Class10044]
		[MAIN::prototip02_Class10045])
	(anyo 2004)
	(buena_audiencia FALSE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class18])
	(dirigida_por [MAIN::prototip02_Class10043])
	(duracion 97)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip02_Class10046])
	(pelicula_genero [MAIN::prototip02_Class10012])
	(puntuacion 69)
	(titulo "Chicas Malas")
	(trata_de [MAIN::prototip03_Class29]))

([MAIN::prototip02_Class10043] of  Director

	(dirige [MAIN::prototip02_Class10042])
	(nombre "Mark Waters"))

([MAIN::prototip02_Class10044] of  Actor

	(actua_en [MAIN::prototip02_Class10042])
	(nombre "Lindsay Lohan"))

([MAIN::prototip02_Class10045] of  Actor

	(actua_en [MAIN::prototip02_Class10042])
	(nombre "Rachel McAdams"))

([MAIN::prototip02_Class10046] of  Nacionalidad

	(nacionalidad "Canada")
	(nacionalidad_contenido [MAIN::prototip02_Class10042]))

([MAIN::prototip02_Class10047] of  Pelicula

	(actua
		[MAIN::prototip02_Class10030]
		[MAIN::prototip02_Class10050])
	(anyo 2000)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo [MAIN::prototip03_Class21])
	(dirigida_por [MAIN::prototip02_Class10048])
	(duracion 109)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10011]
		[MAIN::prototip02_Class10017])
	(puntuacion 71)
	(titulo "Pitch Black")
	(trata_de [MAIN::prototip03_Class31]))

([MAIN::prototip02_Class10048] of  Director

	(dirige [MAIN::prototip02_Class10047])
	(nombre "David Twohy"))

([MAIN::prototip02_Class10050] of  Actor

	(actua_en [MAIN::prototip02_Class10047])
	(nombre "Radha Mitchell"))

([MAIN::prototip02_Class10051] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip02_Class10053])
	(anyo 2002)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class27])
	(dirigida_por [MAIN::prototip02_Class10052])
	(duracion 111)
	(en_idioma [MAIN::prototip02_Class10024])
	(hecha_en
		[MAIN::prototip02_Class10055]
		[MAIN::prototip02_Class10056])
	(pelicula_genero
		[MAIN::prototip02_Class10054]
		[MAIN::prototip02_Class10014]
		[MAIN::prototip02_Class10012])
	(puntuacion 70)
	(titulo "8 mujeres")
	(trata_de [MAIN::prototip03_Class28]))

([MAIN::prototip02_Class10052] of  Director

	(dirige [MAIN::prototip02_Class10051])
	(nombre "Francois Ozon"))

([MAIN::prototip02_Class10053] of  Actor

	(actua_en [MAIN::prototip02_Class10051])
	(nombre "Danielle Darrieux"))

([MAIN::prototip02_Class10054] of  Genero

	(genero "crimen")
	(genero_pelicula
		[MAIN::prototip02_Class10051]
		[MAIN::prototip02_Class10031]
		[MAIN::prototip02_Class10025]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip04_Class42]
		[prototip05_Class10012]))

([MAIN::prototip02_Class10055] of  Nacionalidad

	(nacionalidad "Francia")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip02_Class10057]
		[MAIN::prototip03_Class10040]
		[prototip05_Class20000]
		[prototip05_Class20004]))

([MAIN::prototip02_Class10056] of  Nacionalidad

	(nacionalidad "Italia")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip03_Class10035]
		[prototip05_Class10012]
		[prototip05_Class10018]
		[prototip05_Class20002]))

([MAIN::prototip02_Class10057] of  Pelicula

	(actua [MAIN::prototip02_Class10059])
	(anyo 1999)
	(clasificacion_edades 13)
	(contenido_animo [MAIN::prototip03_Class20])
	(dirigida_por [MAIN::prototip02_Class10058])
	(duracion 133)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en
		[MAIN::prototip02_Class10055]
		[MAIN::prototip02_Class10027]
		[MAIN::prototip02_Class10060])
	(pelicula_genero
		[MAIN::prototip02_Class10017]
		[MAIN::prototip02_Class10065]
		[MAIN::prototip02_Class10015])
	(puntuacion 67)
	(titulo "La novena puerta")
	(trata_de [MAIN::prototip03_Class30]))

([MAIN::prototip02_Class10058] of  Director

	(dirige
		[MAIN::prototip02_Class10057]
		[prototip05_Class20001])
	(nombre "Roman Polanski"))

([MAIN::prototip02_Class10059] of  Actor

	(actua_en [MAIN::prototip02_Class10057])
	(nombre "Johnny Depp"))

([MAIN::prototip02_Class10060] of  Nacionalidad

	(nacionalidad "Espanya")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10057]
		[MAIN::prototip02_Class10082]
		[MAIN::prototip02_Class10089]
		[MAIN::prototip02_Class10092]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10070]
		[MAIN::prototip03_Class10081]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip03_Class10100]
		[prototip05_Class10022]))

([MAIN::prototip02_Class10061] of  Serie

	(actua
		[MAIN::prototip02_Class10063]
		[MAIN::prototip02_Class10064])
	(anyo 2004)
	(blanco_negro FALSE)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class32])
	(creada_por [MAIN::prototip05_Class0])
	(duracion 42)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(puntuacion 65)
	(serie_genero
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10065])
	(titulo "Lost")
	(trata_de
		[MAIN::prototip03_Class10032]
		[MAIN::prototip03_Class10033]
		[MAIN::prototip04_Class11]))

([MAIN::prototip02_Class10062] of  Director

	(nombre "J J Abrams"))

([MAIN::prototip02_Class10063] of  Actor

	(actua_en [MAIN::prototip02_Class10061])
	(nombre "Jorge Garcia"))

([MAIN::prototip02_Class10064] of  Actor

	(actua_en [MAIN::prototip02_Class10061])
	(nombre "Matthew Fox"))

([MAIN::prototip02_Class10065] of  Genero

	(genero "fantasia")
	(genero_pelicula
		[MAIN::prototip02_Class10057]
		[MAIN::prototip03_Class10000]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class30]
		[prototip05_Class10011])
	(genero_serie
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]))

([MAIN::prototip02_Class10066] of  Serie

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip02_Class10068])
	(anyo 2011)
	(buena_audiencia TRUE)
	(clasificacion_edades 18)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class32])
	(de_moda FALSE)
	(duracion 60)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip02_Class10036])
	(puntuacion 90)
	(serie_genero
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10065])
	(titulo "Game of Thrones")
	(trata_de
		[MAIN::prototip04_Class11]
		[MAIN::prototip03_Class29]))

([MAIN::prototip02_Class10067] of  Director

	(nombre "David Benioff"))

([MAIN::prototip02_Class10068] of  Actor

	(actua_en [MAIN::prototip02_Class10066])
	(nombre "Peter Dinklage"))

([MAIN::prototip02_Class10069] of  Serie

	(actua
		[MAIN::prototip02_Class10071]
		[MAIN::prototip02_Class10072]
		[MAIN::prototip02_Class10073]
		[MAIN::prototip02_Class10074])
	(anyo 2005)
	(buena_audiencia TRUE)
	(clasificacion_edades 3)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class17])
	(creada_por
		[MAIN::prototip03_Class10078]
		[MAIN::prototip03_Class10079]
		[MAIN::prototip03_Class10080])
	(de_moda TRUE)
	(duracion 22)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(puntuacion 87)
	(serie_genero [MAIN::prototip02_Class10012])
	(titulo "The Office")
	(trata_de [MAIN::prototip04_Class16]))

([MAIN::prototip02_Class10070] of  Director

	(nombre "Greg Daniels"))

([MAIN::prototip02_Class10071] of  Actor

	(actua_en [MAIN::prototip02_Class10069])
	(nombre "Steve Carrell"))

([MAIN::prototip02_Class10072] of  Actor

	(actua_en [MAIN::prototip02_Class10069])
	(nombre "John Krasinski"))

([MAIN::prototip02_Class10073] of  Actor

	(actua_en [MAIN::prototip02_Class10069])
	(nombre "Jenna Fischer"))

([MAIN::prototip02_Class10074] of  Actor

	(actua_en [MAIN::prototip02_Class10069])
	(nombre "Rainn Wilson"))

([MAIN::prototip02_Class10075] of  Serie

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip02_Class10077]
		[MAIN::prototip02_Class10078]
		[MAIN::prototip02_Class10079])
	(anyo 2004)
	(bajo_presupuesto TRUE)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10021]
		[MAIN::prototip03_Class16])
	(creada_por
		[MAIN::prototip02_Class10076]
		[MAIN::prototip03_Class10096])
	(duracion 50)
	(en_idioma [MAIN::prototip02_Class10021])
	(hecha_en [MAIN::prototip02_Class10081])
	(puntuacion 85)
	(serie_genero [MAIN::prototip02_Class10013])
	(titulo "Porca Miseria")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip04_Class16]
		[MAIN::prototip03_Class10085]))

([MAIN::prototip02_Class10076] of  Creador

	(crea
		[MAIN::prototip03_Class10097]
		[MAIN::prototip02_Class10075])
	(nombre "Joel Joan"))

([MAIN::prototip02_Class10077] of  Actor

	(actua_en
		[MAIN::prototip02_Class10075]
		[MAIN::prototip03_Class10097])
	(nombre "Joel Joan"))

([MAIN::prototip02_Class10078] of  Actor

	(actua_en [MAIN::prototip02_Class10075])
	(nombre "Anna Sahun"))

([MAIN::prototip02_Class10079] of  Actor

	(actua_en [MAIN::prototip02_Class10075])
	(nombre "Roger Coma"))

([MAIN::prototip02_Class10081] of  Nacionalidad

	(nacionalidad "Catalunya")
	(nacionalidad_contenido
		[MAIN::prototip02_Class10075]
		[MAIN::prototip03_Class10084]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip03_Class10097]
		[prototip05_Class4]
		[prototip05_Class10007]))

([MAIN::prototip02_Class10082] of  Documental

	(aclamada_por_critica TRUE)
	(anyo 2013)
	(clasificacion_edades 13)
	(docu_tematica [MAIN::prototip02_Class10084])
	(duracion 55)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 80)
	(realizado_por [MAIN::prototip05_Class3])
	(titulo "Igual-es"))

([MAIN::prototip02_Class10083] of  Director

	(nombre "Ines Paris"))

([MAIN::prototip02_Class10084] of  Tematica

	(tematica "Igualdad")
	(tematica_docu [MAIN::prototip02_Class10082]))

([MAIN::prototip02_Class10085] of  Documental

	(aclamada_por_critica TRUE)
	(anyo 2005)
	(clasificacion_edades 7)
	(docu_tematica [MAIN::prototip02_Class10087])
	(duracion 90)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10036])
	(puntuacion 88)
	(realizado_por [MAIN::prototip03_Class10106])
	(titulo "En el vientre materno"))

([MAIN::prototip02_Class10086] of  Director

	(nombre "National Geographic"))

([MAIN::prototip02_Class10087] of  Tematica

	(tematica "Biologia")
	(tematica_docu [MAIN::prototip02_Class10085]))

([MAIN::prototip02_Class10089] of  Documental

	(anyo 2009)
	(bajo_presupuesto TRUE)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo [MAIN::prototip03_Class17])
	(de_moda TRUE)
	(docu_tematica [MAIN::prototip02_Class10090])
	(duracion 50)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 55)
	(realizado_por [MAIN::prototip02_Class10091])
	(titulo "Callejeros Viajeros")
	(trata_de [MAIN::prototip05_Class2]))

([MAIN::prototip02_Class10090] of  Tematica

	(tematica "Viajes")
	(tematica_docu [MAIN::prototip02_Class10089]))

([MAIN::prototip02_Class10091] of  Creador

	(nombre "Cuatro")
	(realiza [MAIN::prototip02_Class10089]))

([MAIN::prototip02_Class10092] of  Documental

	(actua [MAIN::prototip02_Class10093])
	(anyo 2007)
	(clasificacion_edades 0)
	(docu_tematica [MAIN::prototip02_Class10095])
	(duracion 55)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 65)
	(realizado_por [MAIN::prototip02_Class10094])
	(titulo "Informe Robinson"))

([MAIN::prototip02_Class10093] of  Actor

	(actua_en [MAIN::prototip02_Class10092])
	(nombre "Michael Robinson"))

([MAIN::prototip02_Class10094] of  Creador

	(nombre "Canal+")
	(realiza [MAIN::prototip02_Class10092]))

([MAIN::prototip02_Class10095] of  Tematica

	(tematica "Deportes")
	(tematica_docu [MAIN::prototip02_Class10092]))

([MAIN::prototip03_Class10000] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 2001)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class32]
		[MAIN::prototip03_Class27])
	(dirigida_por [MAIN::prototip03_Class10001])
	(duracion 125)
	(en_idioma [MAIN::prototip03_Class10002])
	(hecha_en [MAIN::prototip03_Class10005])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip03_Class10004]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10065])
	(puntuacion 86)
	(titulo "El viaje de Chihiro")
	(trata_de [MAIN::prototip03_Class10003]))

([MAIN::prototip03_Class10001] of  Director

	(dirige [MAIN::prototip03_Class10000])
	(nombre "Hayao Miyasaki"))

([MAIN::prototip03_Class10002] of  Idioma

	(idioma "japones")
	(idioma_contenido [MAIN::prototip03_Class10000]))

([MAIN::prototip03_Class10003] of  Argumento

	(argumento "rescate")
	(argumento_contenido [MAIN::prototip03_Class10000]))

([MAIN::prototip03_Class10004] of  Genero

	(genero "familiar")
	(genero_pelicula
		[MAIN::prototip03_Class10000]
		[prototip05_Class10003]
		[prototip05_Class3]
		[prototip05_Class0]
		[prototip05_Class2]
		[prototip05_Class1]
		[prototip05_Class10000]
		[prototip05_Class10011])
	(genero_serie
		[MAIN::prototip03_Class10084]
		[prototip05_Class5]
		[prototip05_Class4]))

([MAIN::prototip03_Class10005] of  Nacionalidad

	(nacionalidad "Japon")
	(nacionalidad_contenido [MAIN::prototip03_Class10000]))

([MAIN::prototip03_Class10006] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10007]
		[MAIN::prototip03_Class10008]
		[MAIN::prototip03_Class10009])
	(anyo 2001)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10010]
		[MAIN::prototip03_Class10011]
		[MAIN::prototip03_Class10012])
	(dirigida_por [MAIN::prototip03_Class10013])
	(duracion 135)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 81)
	(titulo "Una mente maravillosa")
	(trata_de [MAIN::prototip03_Class10014]))

([MAIN::prototip03_Class10007] of  Actor

	(actua_en [MAIN::prototip03_Class10006])
	(nombre "Russell Crowe"))

([MAIN::prototip03_Class10008] of  Actor

	(actua_en [MAIN::prototip03_Class10006])
	(nombre "Ed Harris"))

([MAIN::prototip03_Class10009] of  Actor

	(actua_en [MAIN::prototip03_Class10006])
	(nombre "Jennifer Connelly"))

([MAIN::prototip03_Class10010] of  Estado_animo

	(animo "pesimista")
	(animo_contenido
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip03_Class10066]))

([MAIN::prototip03_Class10011] of  Estado_animo

	(animo "emocional")
	(animo_contenido
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10035]
		[MAIN::prototip03_Class10070]
		[prototip05_Class1]
		[prototip05_Class10006]
		[prototip05_Class20001]))

([MAIN::prototip03_Class10012] of  Estado_animo

	(animo "cautivador")
	(animo_contenido
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10070]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip04_Class17]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class38]
		[MAIN::prototip04_Class42]
		[MAIN::prototip02_Class10066]
		[prototip05_Class2]
		[prototip05_Class4]
		[prototip05_Class10003]
		[prototip05_Class10007]
		[prototip05_Class10011]
		[prototip05_Class10013]))

([MAIN::prototip03_Class10013] of  Director

	(dirige [MAIN::prototip03_Class10006])
	(nombre "Ron Howard"))

([MAIN::prototip03_Class10014] of  Argumento

	(argumento "enfermedad")
	(argumento_contenido
		[MAIN::prototip03_Class10006]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10070]))

([MAIN::prototip03_Class10015] of  Pelicula

	(actua
		[MAIN::prototip03_Class10016]
		[MAIN::prototip03_Class10017])
	(anyo 2003)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class10021])
	(dirigida_por [MAIN::prototip03_Class10018])
	(duracion 135)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip02_Class10036])
	(pelicula_genero [MAIN::prototip02_Class10019])
	(puntuacion 77)
	(titulo "Love Actually")
	(trata_de [MAIN::prototip03_Class10019]))

([MAIN::prototip03_Class10016] of  Actor

	(actua_en [MAIN::prototip03_Class10015])
	(nombre "Hugh Grant"))

([MAIN::prototip03_Class10017] of  Actor

	(actua_en [MAIN::prototip03_Class10015])
	(nombre "Liam Neeson"))

([MAIN::prototip03_Class10018] of  Director

	(dirige [MAIN::prototip03_Class10015])
	(nombre "Richard Curtis"))

([MAIN::prototip03_Class10019] of  Argumento

	(argumento "amor")
	(argumento_contenido
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip03_Class10081]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class38]
		[MAIN::prototip02_Class10075]
		[prototip05_Class2]
		[prototip05_Class10004]
		[prototip05_Class10006]
		[prototip05_Class10007]
		[prototip05_Class10011]
		[prototip05_Class20000]))

([MAIN::prototip03_Class10020] of  Estado_animo

	(animo "sentimental")
	(animo_contenido
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10081]
		[MAIN::prototip03_Class10084]
		[MAIN::prototip04_Class23]
		[MAIN::prototip04_Class26]
		[prototip05_Class3]
		[prototip05_Class10006]
		[prototip05_Class20000]
		[prototip05_Class20003]))

([MAIN::prototip03_Class10021] of  Estado_animo

	(animo "agridulce")
	(animo_contenido
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10035]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip02_Class10075]
		[prototip05_Class10012]
		[prototip05_Class10016]
		[prototip05_Class20001]
		[prototip05_Class20002]
		[prototip05_Class20004]
		[prototip05_Class20005]))

([MAIN::prototip03_Class10022] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10024]
		[MAIN::prototip03_Class10025]
		[MAIN::prototip03_Class10026])
	(anyo 2012)
	(buena_audiencia TRUE)
	(clasificacion_edades 18)
	(contenido_animo
		[MAIN::prototip03_Class32]
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class27])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip03_Class10023])
	(duracion 165)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10016])
	(puntuacion 86)
	(titulo "Django Unchained")
	(trata_de
		[MAIN::prototip03_Class10027]
		[MAIN::prototip03_Class29]))

([MAIN::prototip03_Class10023] of  Director

	(dirige [MAIN::prototip03_Class10022])
	(nombre "Quentin Tarantino"))

([MAIN::prototip03_Class10024] of  Actor

	(actua_en [MAIN::prototip03_Class10022])
	(nombre "Jamie Foxx"))

([MAIN::prototip03_Class10025] of  Actor

	(actua_en [MAIN::prototip03_Class10022])
	(nombre "Cristoph Waltz"))

([MAIN::prototip03_Class10026] of  Actor

	(actua_en
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip04_Class26])
	(nombre "Leonardo DiCaprio"))

([MAIN::prototip03_Class10027] of  Argumento

	(argumento "esclavos")
	(argumento_contenido
		[MAIN::prototip03_Class10022]
		[MAIN::prototip04_Class38]))

([MAIN::prototip03_Class10028] of  Pelicula

	(actua
		[MAIN::prototip03_Class10029]
		[MAIN::prototip03_Class10030])
	(anyo 2012)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class10011])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip03_Class10034])
	(duracion 114)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en
		[MAIN::prototip02_Class10060]
		[MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10017])
	(puntuacion 76)
	(titulo "Lo Imposible")
	(trata_de
		[MAIN::prototip03_Class10032]
		[MAIN::prototip03_Class10033]))

([MAIN::prototip03_Class10029] of  Actor

	(actua_en [MAIN::prototip03_Class10028])
	(nombre "Naomi Watts"))

([MAIN::prototip03_Class10030] of  Actor

	(actua_en [MAIN::prototip03_Class10028])
	(nombre "Ewan McGregor"))

([MAIN::prototip03_Class10032] of  Argumento

	(argumento "desastre")
	(argumento_contenido
		[MAIN::prototip03_Class10028]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class23]
		[MAIN::prototip02_Class10061]
		[prototip05_Class10009]))

([MAIN::prototip03_Class10033] of  Argumento

	(argumento "sobrevivir")
	(argumento_contenido
		[MAIN::prototip03_Class10028]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip02_Class10061]
		[prototip05_Class1]))

([MAIN::prototip03_Class10034] of  Director

	(dirige [MAIN::prototip03_Class10028])
	(nombre "Juan Antonio Bayona"))

([MAIN::prototip03_Class10035] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip03_Class10037])
	(anyo 1995)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class10021]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class10011])
	(dirigida_por [MAIN::prototip03_Class10036])
	(duracion 104)
	(en_idioma [MAIN::prototip03_Class10038])
	(hecha_en [MAIN::prototip02_Class10056])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 69)
	(titulo "Sostiene Pereira")
	(trata_de [MAIN::prototip03_Class10039]))

([MAIN::prototip03_Class10036] of  Director

	(dirige [MAIN::prototip03_Class10035])
	(nombre "Roberto Faenza"))

([MAIN::prototip03_Class10037] of  Actor

	(actua_en [MAIN::prototip03_Class10035])
	(nombre "Marcello Mastroianni"))

([MAIN::prototip03_Class10038] of  Idioma

	(idioma "italiano")
	(idioma_contenido
		[MAIN::prototip03_Class10035]
		[prototip05_Class20002]))

([MAIN::prototip03_Class10039] of  Argumento

	(argumento "represion")
	(argumento_contenido
		[MAIN::prototip03_Class10035]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10092]
		[prototip05_Class10004]
		[prototip05_Class20005]))

([MAIN::prototip03_Class10040] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip03_Class10041])
	(anyo 2011)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class15])
	(de_moda TRUE)
	(dirigida_por
		[MAIN::prototip03_Class10042]
		[MAIN::prototip03_Class10043])
	(duracion 112)
	(en_idioma [MAIN::prototip02_Class10024])
	(hecha_en [MAIN::prototip02_Class10055])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10012]
		[MAIN::prototip03_Class10044])
	(puntuacion 85)
	(titulo "Intocable")
	(trata_de
		[MAIN::prototip03_Class10014]
		[MAIN::prototip03_Class10045]))

([MAIN::prototip03_Class10041] of  Actor

	(actua_en [MAIN::prototip03_Class10040])
	(nombre "Omar Sy"))

([MAIN::prototip03_Class10042] of  Director

	(dirige [MAIN::prototip03_Class10040])
	(nombre "Eric Toledano"))

([MAIN::prototip03_Class10043] of  Director

	(dirige [MAIN::prototip03_Class10040])
	(nombre "Olivier Nakache"))

([MAIN::prototip03_Class10044] of  Genero

	(genero "biografia")
	(genero_pelicula
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10070]
		[MAIN::prototip04_Class17]
		[prototip05_Class20001]))

([MAIN::prototip03_Class10045] of  Argumento

	(argumento "amistad")
	(argumento_contenido
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip03_Class10097]
		[MAIN::prototip03_Class10100]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class30]
		[prototip05_Class4]
		[prototip05_Class10011]))

([MAIN::prototip03_Class10046] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10047]
		[MAIN::prototip03_Class10048])
	(anyo 2006)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class10010]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class21])
	(dirigida_por [MAIN::prototip03_Class10049])
	(duracion 137)
	(en_idioma [MAIN::prototip02_Class10023])
	(hecha_en [MAIN::prototip03_Class10050])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10017])
	(puntuacion 85)
	(titulo "La Vida de los Otros")
	(trata_de
		[MAIN::prototip03_Class34]
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10039]))

([MAIN::prototip03_Class10047] of  Actor

	(actua_en [MAIN::prototip03_Class10046])
	(nombre "Martina Gedeck"))

([MAIN::prototip03_Class10048] of  Actor

	(actua_en [MAIN::prototip03_Class10046])
	(nombre "Sebastian Koch"))

([MAIN::prototip03_Class10049] of  Director

	(dirige [MAIN::prototip03_Class10046])
	(nombre "Florian Henckel von Donnersmarck"))

([MAIN::prototip03_Class10050] of  Nacionalidad

	(nacionalidad "Alemania")
	(nacionalidad_contenido
		[MAIN::prototip03_Class10046]
		[MAIN::prototip04_Class30]
		[prototip05_Class10004]
		[prototip05_Class20003]))

([MAIN::prototip03_Class10051] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip03_Class10052])
	(anyo 2002)
	(bajo_presupuesto TRUE)
	(clasificacion_edades 18)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class10010]
		[MAIN::prototip03_Class27])
	(dirigida_por
		[MAIN::prototip03_Class10053]
		[MAIN::prototip03_Class10054])
	(duracion 130)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip03_Class10055])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10054])
	(puntuacion 87)
	(titulo "Ciudad de Dios")
	(trata_de
		[MAIN::prototip03_Class28]
		[MAIN::prototip03_Class10033]))

([MAIN::prototip03_Class10052] of  Actor

	(actua_en [MAIN::prototip03_Class10051])
	(nombre "Alexandre Rodrigues"))

([MAIN::prototip03_Class10053] of  Director

	(dirige [MAIN::prototip03_Class10051])
	(nombre "Fernando Meirelles"))

([MAIN::prototip03_Class10054] of  Director

	(dirige [MAIN::prototip03_Class10051])
	(nombre "Katia Lund"))

([MAIN::prototip03_Class10055] of  Nacionalidad

	(nacionalidad "Brasil")
	(nacionalidad_contenido [MAIN::prototip03_Class10051]))

([MAIN::prototip03_Class10056] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10026]
		[MAIN::prototip03_Class10057]
		[MAIN::prototip03_Class10058])
	(anyo 2010)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class32])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip03_Class10059])
	(duracion 148)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10036]
		[MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018])
	(puntuacion 88)
	(titulo "Inception")
	(trata_de
		[MAIN::prototip03_Class10060]
		[MAIN::prototip03_Class10019]))

([MAIN::prototip03_Class10057] of  Actor

	(actua_en [MAIN::prototip03_Class10056])
	(nombre "Joseph Gordon-Levitt"))

([MAIN::prototip03_Class10058] of  Actor

	(actua_en [MAIN::prototip03_Class10056])
	(nombre "Ellen Page"))

([MAIN::prototip03_Class10059] of  Director

	(dirige [MAIN::prototip03_Class10056])
	(nombre "Christopher Nolan"))

([MAIN::prototip03_Class10060] of  Argumento

	(argumento "escapar")
	(argumento_contenido [MAIN::prototip03_Class10056]))

([MAIN::prototip03_Class10061] of  Pelicula

	(actua
		[MAIN::prototip03_Class10062]
		[MAIN::prototip03_Class10063])
	(anyo 1994)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class17])
	(dirigida_por [MAIN::prototip03_Class10064])
	(duracion 107)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10012])
	(puntuacion 72)
	(titulo "Dos Tontos Muy Tontos")
	(trata_de [MAIN::prototip03_Class10045]))

([MAIN::prototip03_Class10062] of  Actor

	(actua_en [MAIN::prototip03_Class10061])
	(nombre "Jim Carrey"))

([MAIN::prototip03_Class10063] of  Actor

	(actua_en [MAIN::prototip03_Class10061])
	(nombre "Jeff Daniels"))

([MAIN::prototip03_Class10064] of  Director

	(dirige [MAIN::prototip03_Class10061])
	(nombre "Peter Farrelly"))

([MAIN::prototip03_Class10066] of  Pelicula

	(actua [MAIN::prototip03_Class10067])
	(anyo 2001)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class10010])
	(dirigida_por [MAIN::prototip03_Class10068])
	(duracion 101)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en
		[MAIN::prototip02_Class10060]
		[MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10015])
	(puntuacion 76)
	(titulo "Los Otros")
	(trata_de [MAIN::prototip03_Class10069]))

([MAIN::prototip03_Class10067] of  Actor

	(actua_en [MAIN::prototip03_Class10066])
	(nombre "Nicole Kidman"))

([MAIN::prototip03_Class10068] of  Director

	(dirige
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10070])
	(nombre "Alejandro Amenabar"))

([MAIN::prototip03_Class10069] of  Argumento

	(argumento "fantasmas")
	(argumento_contenido [MAIN::prototip03_Class10066]))

([MAIN::prototip03_Class10070] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10071]
		[MAIN::prototip03_Class10072])
	(anyo 2004)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10011]
		[MAIN::prototip03_Class10012])
	(dirigida_por [MAIN::prototip03_Class10068])
	(duracion 125)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10044])
	(puntuacion 80)
	(titulo "Mar Adentro")
	(trata_de [MAIN::prototip03_Class10014]))

([MAIN::prototip03_Class10071] of  Actor

	(actua_en
		[MAIN::prototip03_Class10070]
		[MAIN::prototip04_Class35])
	(nombre "Javier Bardem"))

([MAIN::prototip03_Class10072] of  Actor

	(actua_en [MAIN::prototip03_Class10070])
	(nombre "Belen Rueda"))

([MAIN::prototip03_Class10073] of  Serie

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip03_Class10074])
	(anyo 2007)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class16])
	(creada_por [MAIN::prototip03_Class10075])
	(de_moda TRUE)
	(duracion 45)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(puntuacion 87)
	(serie_genero [MAIN::prototip02_Class10013])
	(titulo "Mad Men")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10076]))

([MAIN::prototip03_Class10074] of  Actor

	(actua_en [MAIN::prototip03_Class10073])
	(nombre "Jon Hamm"))

([MAIN::prototip03_Class10075] of  Creador

	(crea [MAIN::prototip03_Class10073])
	(nombre "Matthew Weiner"))

([MAIN::prototip03_Class10076] of  Argumento

	(argumento "anyos 60")
	(argumento_contenido [MAIN::prototip03_Class10073]))

([MAIN::prototip03_Class10078] of  Creador

	(crea [MAIN::prototip02_Class10069])
	(nombre "Greg Daniels"))

([MAIN::prototip03_Class10079] of  Creador

	(crea [MAIN::prototip02_Class10069])
	(nombre "Ricky Gervais"))

([MAIN::prototip03_Class10080] of  Creador

	(crea [MAIN::prototip02_Class10069])
	(nombre "Stephen Merchant"))

([MAIN::prototip03_Class10081] of  Serie

	(actua [MAIN::prototip03_Class10083])
	(anyo 2011)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class10020])
	(creada_por [MAIN::prototip03_Class10104])
	(de_moda TRUE)
	(duracion 60)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 67)
	(serie_genero [MAIN::prototip03_Class10082])
	(titulo "Gran Hotel")
	(trata_de [MAIN::prototip03_Class10019]))

([MAIN::prototip03_Class10082] of  Genero

	(genero "historico")
	(genero_pelicula
		[prototip05_Class10016]
		[prototip05_Class20001])
	(genero_serie
		[MAIN::prototip03_Class10081]
		[MAIN::prototip03_Class10092]))

([MAIN::prototip03_Class10083] of  Actor

	(actua_en [MAIN::prototip03_Class10081])
	(nombre "Silvia Marso"))

([MAIN::prototip03_Class10084] of  Serie

	(actua
		[MAIN::prototip03_Class10088]
		[MAIN::prototip03_Class10089]
		[MAIN::prototip03_Class10090])
	(anyo 2005)
	(clasificacion_edades 7)
	(contenido_animo [MAIN::prototip03_Class10020])
	(creada_por [MAIN::prototip03_Class10087])
	(duracion 55)
	(en_idioma [MAIN::prototip02_Class10021])
	(hecha_en [MAIN::prototip02_Class10081])
	(puntuacion 40)
	(serie_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10004])
	(titulo "Ventdelpla")
	(trata_de [MAIN::prototip03_Class10085]))

([MAIN::prototip03_Class10085] of  Argumento

	(argumento "personas")
	(argumento_contenido
		[MAIN::prototip03_Class10084]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip03_Class10097]
		[MAIN::prototip03_Class10100]
		[MAIN::prototip03_Class10105]
		[MAIN::prototip04_Class38]
		[MAIN::prototip02_Class10075]
		[prototip05_Class10013]))

([MAIN::prototip03_Class10087] of  Creador

	(crea [MAIN::prototip03_Class10084])
	(nombre "Josep Maria Benet i Jornet"))

([MAIN::prototip03_Class10088] of  Actor

	(actua_en [MAIN::prototip03_Class10084])
	(nombre "Emma Vilarasau"))

([MAIN::prototip03_Class10089] of  Actor

	(actua_en [MAIN::prototip03_Class10084])
	(nombre "Ramon Madaula"))

([MAIN::prototip03_Class10090] of  Actor

	(actua_en [MAIN::prototip03_Class10084])
	(nombre "Marc Cartes"))

([MAIN::prototip03_Class10091] of  Argumento

	(argumento "guerra")
	(argumento_contenido
		[MAIN::prototip03_Class10092]
		[prototip05_Class10016]))

([MAIN::prototip03_Class10092] of  Serie

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip03_Class10093]
		[MAIN::prototip03_Class10094]
		[MAIN::prototip03_Class10095])
	(anyo 2001)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10021]
		[MAIN::prototip03_Class20])
	(creada_por [MAIN::prototip03_Class10096])
	(duracion 50)
	(en_idioma [MAIN::prototip02_Class10021])
	(hecha_en
		[MAIN::prototip02_Class10081]
		[MAIN::prototip02_Class10060])
	(puntuacion 70)
	(serie_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10082])
	(titulo "Temps de Silenci")
	(trata_de
		[MAIN::prototip03_Class10085]
		[MAIN::prototip03_Class10039]
		[MAIN::prototip03_Class10091]))

([MAIN::prototip03_Class10093] of  Actor

	(actua_en [MAIN::prototip03_Class10092])
	(nombre "Pep Pla"))

([MAIN::prototip03_Class10094] of  Actor

	(actua_en [MAIN::prototip03_Class10092])
	(nombre "Alex Casanovas"))

([MAIN::prototip03_Class10095] of  Actor

	(actua_en [MAIN::prototip03_Class10092])
	(nombre "Julio Manrique"))

([MAIN::prototip03_Class10096] of  Creador

	(crea
		[MAIN::prototip03_Class10092]
		[MAIN::prototip02_Class10075])
	(nombre "TV3"))

([MAIN::prototip03_Class10097] of  Serie

	(actua
		[MAIN::prototip02_Class10077]
		[MAIN::prototip03_Class10099])
	(anyo 1999)
	(bajo_presupuesto TRUE)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class17])
	(creada_por
		[MAIN::prototip02_Class10076]
		[MAIN::prototip03_Class10098])
	(duracion 30)
	(en_idioma [MAIN::prototip02_Class10021])
	(hecha_en [MAIN::prototip02_Class10081])
	(puntuacion 85)
	(serie_genero [MAIN::prototip02_Class10012])
	(titulo "Plats Bruts")
	(trata_de
		[MAIN::prototip03_Class10045]
		[MAIN::prototip03_Class10085]))

([MAIN::prototip03_Class10098] of  Creador

	(crea [MAIN::prototip03_Class10097])
	(nombre "Jordi Sanchez"))

([MAIN::prototip03_Class10099] of  Actor

	(actua_en [MAIN::prototip03_Class10097])
	(nombre "Jordi Sanchez"))

([MAIN::prototip03_Class10100] of  Serie

	(actua
		[MAIN::prototip03_Class10101]
		[MAIN::prototip03_Class10102]
		[MAIN::prototip03_Class10103])
	(anyo 1999)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo [MAIN::prototip03_Class15])
	(creada_por [MAIN::prototip03_Class10104])
	(duracion 50)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 70)
	(serie_genero [MAIN::prototip02_Class10012])
	(titulo "7 vidas")
	(trata_de
		[MAIN::prototip03_Class10085]
		[MAIN::prototip03_Class10045]))

([MAIN::prototip03_Class10101] of  Actor

	(actua_en [MAIN::prototip03_Class10100])
	(nombre "Javier Camara"))

([MAIN::prototip03_Class10102] of  Actor

	(actua_en [MAIN::prototip03_Class10100])
	(nombre "Toni Canto"))

([MAIN::prototip03_Class10103] of  Actor

	(actua_en [MAIN::prototip03_Class10100])
	(nombre "Blanca Portillo"))

([MAIN::prototip03_Class10104] of  Creador

	(crea
		[MAIN::prototip03_Class10100]
		[MAIN::prototip03_Class10081])
	(nombre "Telecinco"))

([MAIN::prototip03_Class10105] of  Documental

	(anyo 2002)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10107])
	(docu_tematica [MAIN::prototip03_Class10109])
	(duracion 240)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10036])
	(puntuacion 79)
	(realizado_por [MAIN::prototip03_Class10106])
	(titulo "The Century of the Self")
	(trata_de [MAIN::prototip03_Class10085]))

([MAIN::prototip03_Class10106] of  Creador

	(nombre "BBC")
	(realiza
		[MAIN::prototip03_Class10105]
		[MAIN::prototip02_Class10085]))

([MAIN::prototip03_Class10107] of  Estado_animo

	(animo "provocadora")
	(animo_contenido
		[MAIN::prototip03_Class10105]
		[MAIN::prototip04_Class38]
		[prototip05_Class10004]
		[prototip05_Class10009]))

([MAIN::prototip03_Class10109] of  Tematica

	(tematica "Sociologia")
	(tematica_docu [MAIN::prototip03_Class10105]))

([MAIN::prototip03_Class15] of  Estado_animo

	(animo "gracioso")
	(animo_contenido
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10051]
		[MAIN::prototip02_Class10031]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip03_Class10097]
		[MAIN::prototip03_Class10100]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class20]
		[MAIN::prototip04_Class23]
		[MAIN::prototip02_Class10069]
		[prototip05_Class10009]
		[prototip05_Class10015]
		[prototip05_Class20003]))

([MAIN::prototip03_Class16] of  Estado_animo

	(animo "inteligente")
	(animo_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class17]
		[MAIN::prototip04_Class23]
		[MAIN::prototip02_Class10075]
		[prototip05_Class10004]
		[prototip05_Class10013]
		[prototip05_Class10015]
		[prototip05_Class20000]
		[prototip05_Class20003]))

([MAIN::prototip03_Class17] of  Estado_animo

	(animo "senta_bien")
	(animo_contenido
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10051]
		[MAIN::prototip03_Class10015]
		[MAIN::prototip03_Class10040]
		[MAIN::prototip03_Class10061]
		[MAIN::prototip03_Class10097]
		[MAIN::prototip04_Class23]
		[MAIN::prototip02_Class10069]
		[MAIN::prototip02_Class10089]
		[prototip05_Class2]
		[prototip05_Class10011]
		[prototip05_Class20000]
		[prototip05_Class20003]))

([MAIN::prototip03_Class18] of  Estado_animo

	(animo "cinico")
	(animo_contenido
		[MAIN::prototip02_Class10042]
		[MAIN::prototip02_Class10031]))

([MAIN::prototip03_Class20] of  Estado_animo

	(animo "atmosferico")
	(animo_contenido
		[MAIN::prototip02_Class10057]
		[MAIN::prototip03_Class10000]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10066]
		[MAIN::prototip03_Class10092]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class38]
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[prototip05_Class10004]
		[prototip05_Class10013]))

([MAIN::prototip03_Class21] of  Estado_animo

	(animo "duro")
	(animo_contenido
		[MAIN::prototip02_Class10025]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10035]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip02_Class10047]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]
		[MAIN::prototip04_Class42]
		[prototip05_Class10007]
		[prototip05_Class10016]
		[prototip05_Class20001]
		[prototip05_Class20005]))

([MAIN::prototip03_Class27] of  Estado_animo

	(animo "estilizado")
	(animo_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip03_Class10000]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10051]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip03_Class10073]
		[MAIN::prototip03_Class10081]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class26]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]
		[MAIN::prototip02_Class10066]
		[prototip05_Class20000]))

([MAIN::prototip03_Class28] of  Argumento

	(argumento "asesinato")
	(argumento_contenido
		[MAIN::prototip02_Class10051]
		[MAIN::prototip03_Class10051]))

([MAIN::prototip03_Class29] of  Argumento

	(argumento "venganza")
	(argumento_contenido
		[MAIN::prototip02_Class10042]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip02_Class10066]))

([MAIN::prototip03_Class30] of  Argumento

	(argumento "busqueda")
	(argumento_contenido [MAIN::prototip02_Class10057]))

([MAIN::prototip03_Class31] of  Argumento

	(argumento "alienigenas")
	(argumento_contenido [MAIN::prototip02_Class10047]))

([MAIN::prototip03_Class32] of  Estado_animo

	(animo "trepidante")
	(animo_contenido
		[MAIN::prototip02_Class10025]
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10000]
		[MAIN::prototip03_Class10022]
		[MAIN::prototip03_Class10056]
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[MAIN::prototip04_Class38]
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[prototip05_Class0]
		[prototip05_Class3]
		[prototip05_Class5]
		[prototip05_Class10000]
		[prototip05_Class10001]
		[prototip05_Class10002]
		[prototip05_Class10018]
		[prototip05_Class20006]))

([MAIN::prototip03_Class33] of  Argumento

	(argumento "carreras")
	(argumento_contenido [MAIN::prototip02_Class10025]))

([MAIN::prototip03_Class34] of  Argumento

	(argumento "agentes_secretos")
	(argumento_contenido
		[MAIN::prototip02_Class10038]
		[MAIN::prototip03_Class10046]
		[MAIN::prototip04_Class35]))

([MAIN::prototip04_Class10] of  Actor

	(actua_en
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class38])
	(nombre "Harrison Ford"))

([MAIN::prototip04_Class11] of  Argumento

	(argumento "bien_contra_mal")
	(argumento_contenido
		[MAIN::prototip04_Class6]
		[MAIN::prototip04_Class30]
		[MAIN::prototip04_Class35]
		[MAIN::prototip02_Class10061]
		[MAIN::prototip02_Class10066]
		[prototip05_Class0]
		[prototip05_Class2]
		[prototip05_Class10012]
		[prototip05_Class10018]))

([MAIN::prototip04_Class12] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip04_Class13]
		[MAIN::prototip04_Class14])
	(anyo 2006)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class15])
	(dirigida_por [MAIN::prototip04_Class15])
	(duracion 109)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10019])
	(puntuacion 67)
	(titulo "El diablo viste de Prada")
	(trata_de [MAIN::prototip04_Class16]))

([MAIN::prototip04_Class13] of  Actor

	(actua_en [MAIN::prototip04_Class12])
	(nombre "Meryl Streep"))

([MAIN::prototip04_Class14] of  Actor

	(actua_en [MAIN::prototip04_Class12])
	(nombre "Anne Hathaway"))

([MAIN::prototip04_Class15] of  Director

	(dirige [MAIN::prototip04_Class12])
	(nombre "David Frankel"))

([MAIN::prototip04_Class16] of  Argumento

	(argumento "trabajo")
	(argumento_contenido
		[MAIN::prototip04_Class12]
		[MAIN::prototip04_Class17]
		[MAIN::prototip02_Class10069]
		[MAIN::prototip02_Class10075]
		[prototip05_Class10004]
		[prototip05_Class10015]))

([MAIN::prototip04_Class17] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip04_Class18])
	(anyo 2010)
	(buena_audiencia TRUE)
	(clasificacion_edades 7)
	(contenido_animo
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class10012])
	(dirigida_por [MAIN::prototip04_Class19])
	(duracion 120)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip03_Class10044]
		[MAIN::prototip02_Class10013])
	(puntuacion 79)
	(titulo "The Social Network")
	(trata_de [MAIN::prototip04_Class16]))

([MAIN::prototip04_Class18] of  Actor

	(actua_en [MAIN::prototip04_Class17])
	(nombre "Jesse Eisenberg"))

([MAIN::prototip04_Class19] of  Director

	(dirige [MAIN::prototip04_Class17])
	(nombre "David Fincher"))

([MAIN::prototip04_Class20] of  Pelicula

	(actua [MAIN::prototip04_Class21])
	(anyo 2012)
	(buena_audiencia TRUE)
	(clasificacion_edades 18)
	(contenido_animo [MAIN::prototip03_Class15])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip04_Class22])
	(duracion 88)
	(en_idioma [MAIN::prototip02_Class10028])
	(es_mudo FALSE)
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10012])
	(puntuacion 66)
	(titulo "Project X")
	(trata_de
		[MAIN::prototip03_Class10045]
		[MAIN::prototip03_Class10032]))

([MAIN::prototip04_Class21] of  Actor

	(actua_en [MAIN::prototip04_Class20])
	(nombre "Thomas Mann"))

([MAIN::prototip04_Class22] of  Director

	(dirige [MAIN::prototip04_Class20])
	(nombre "Nima Nourizadeh"))

([MAIN::prototip04_Class23] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua [MAIN::prototip04_Class24])
	(anyo 1993)
	(blanco_negro FALSE)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class16])
	(dirigida_por [MAIN::prototip04_Class25])
	(duracion 101)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10065])
	(puntuacion 81)
	(titulo "Atrapado en el tiempo")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10032]))

([MAIN::prototip04_Class24] of  Actor

	(actua_en [MAIN::prototip04_Class23])
	(nombre "Bill Murray"))

([MAIN::prototip04_Class25] of  Director

	(dirige [MAIN::prototip04_Class23])
	(nombre "Harold Ramis"))

([MAIN::prototip04_Class26] of  Pelicula

	(actua
		[MAIN::prototip03_Class10026]
		[MAIN::prototip04_Class27])
	(anyo 2013)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class27])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip04_Class29])
	(duracion 142)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip04_Class28])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10019])
	(puntuacion 75)
	(titulo "El gran Gatsby")
	(trata_de [MAIN::prototip03_Class10019]))

([MAIN::prototip04_Class27] of  Actor

	(actua_en [MAIN::prototip04_Class26])
	(nombre "Tobey Maguire"))

([MAIN::prototip04_Class28] of  Nacionalidad

	(nacionalidad "Australia")
	(nacionalidad_contenido [MAIN::prototip04_Class26]))

([MAIN::prototip04_Class29] of  Director

	(dirige [MAIN::prototip04_Class26])
	(nombre "Baz Luhrmann"))

([MAIN::prototip04_Class30] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip04_Class31]
		[MAIN::prototip04_Class32])
	(anyo 2003)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class32]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class27])
	(dirigida_por [MAIN::prototip04_Class34])
	(duracion 201)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip04_Class33]
		[MAIN::prototip03_Class10050])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10065])
	(puntuacion 89)
	(titulo "The Lord of the Rings: The Return of the King")
	(trata_de
		[MAIN::prototip04_Class11]
		[MAIN::prototip03_Class10045]))

([MAIN::prototip04_Class31] of  Actor

	(actua_en [MAIN::prototip04_Class30])
	(nombre "Orlando Bloom"))

([MAIN::prototip04_Class32] of  Actor

	(actua_en [MAIN::prototip04_Class30])
	(nombre "Viggo Mortensen"))

([MAIN::prototip04_Class33] of  Nacionalidad

	(nacionalidad "Nueva Zelanda")
	(nacionalidad_contenido [MAIN::prototip04_Class30]))

([MAIN::prototip04_Class34] of  Director

	(dirige [MAIN::prototip04_Class30])
	(nombre "Peter Jackson"))

([MAIN::prototip04_Class35] of  Pelicula

	(actua
		[MAIN::prototip03_Class10071]
		[MAIN::prototip04_Class36])
	(anyo 2012)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class32])
	(de_moda TRUE)
	(dirigida_por [MAIN::prototip04_Class37])
	(duracion 143)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en
		[MAIN::prototip02_Class10027]
		[MAIN::prototip02_Class10036])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10017])
	(puntuacion 78)
	(titulo "Skyfall")
	(trata_de
		[MAIN::prototip04_Class11]
		[MAIN::prototip03_Class34]))

([MAIN::prototip04_Class36] of  Actor

	(actua_en [MAIN::prototip04_Class35])
	(nombre "Daniel Craig"))

([MAIN::prototip04_Class37] of  Director

	(dirige [MAIN::prototip04_Class35])
	(nombre "Sam Mendes"))

([MAIN::prototip04_Class38] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip04_Class10]
		[MAIN::prototip04_Class39])
	(anyo 1982)
	(buena_audiencia TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class10107]
		[MAIN::prototip03_Class32])
	(dirigida_por [MAIN::prototip04_Class41])
	(duracion 117)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10011]
		[MAIN::prototip02_Class10017])
	(puntuacion 100)
	(titulo "Blade Runner")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10027]
		[MAIN::prototip03_Class10085]))

([MAIN::prototip04_Class39] of  Actor

	(actua_en [MAIN::prototip04_Class38])
	(nombre "Rutger Hauer"))

([MAIN::prototip04_Class40] of  Nacionalidad

	(nacionalidad "Hong Kong"))

([MAIN::prototip04_Class41] of  Director

	(dirige [MAIN::prototip04_Class38])
	(nombre "Ridley Scott"))

([MAIN::prototip04_Class42] of  Pelicula

	(actua
		[MAIN::prototip04_Class43]
		[MAIN::prototip04_Class44]
		[MAIN::prototip04_Class45])
	(anyo 1992)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class21])
	(dirigida_por [MAIN::prototip04_Class46])
	(duracion 138)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10054])
	(puntuacion 76)
	(titulo "Algunos Hombres Buenos")
	(trata_de [MAIN::prototip04_Class47]))

([MAIN::prototip04_Class43] of  Actor

	(actua_en [MAIN::prototip04_Class42])
	(nombre "Tom Cruise"))

([MAIN::prototip04_Class44] of  Actor

	(actua_en [MAIN::prototip04_Class42])
	(nombre "Jack NIcholson"))

([MAIN::prototip04_Class45] of  Actor

	(actua_en [MAIN::prototip04_Class42])
	(nombre "Demi Moore"))

([MAIN::prototip04_Class46] of  Director

	(dirige [MAIN::prototip04_Class42])
	(nombre "Rob Reiner"))

([MAIN::prototip04_Class47] of  Argumento

	(argumento "acusacion")
	(argumento_contenido [MAIN::prototip04_Class42]))

([MAIN::prototip04_Class6] of  Pelicula

	(aclamada_por_critica TRUE)
	(actua
		[MAIN::prototip04_Class9]
		[MAIN::prototip04_Class10])
	(anyo 1980)
	(bajo_presupuesto FALSE)
	(blanco_negro FALSE)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class27]
		[MAIN::prototip03_Class32])
	(de_moda FALSE)
	(dirigida_por [MAIN::prototip04_Class8])
	(duracion 124)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10011])
	(puntuacion 88)
	(titulo "El imperio contraataca")
	(trata_de [MAIN::prototip04_Class11]))

([MAIN::prototip04_Class8] of  Director

	(dirige [MAIN::prototip04_Class6])
	(nombre "Irvin Kershner"))

([MAIN::prototip04_Class9] of  Actor

	(actua_en [MAIN::prototip04_Class6])
	(nombre "Mark Hamill"))

([MAIN::prototip05_Class0] of  Creador

	(crea [MAIN::prototip02_Class10061])
	(nombre "J J Abrams"))

([MAIN::prototip05_Class1] of  Creador
)

([MAIN::prototip05_Class2] of  Argumento

	(argumento "viajes")
	(argumento_contenido [MAIN::prototip02_Class10089]))

([MAIN::prototip05_Class3] of  Creador

	(nombre "La 2")
	(realiza [MAIN::prototip02_Class10082]))

([prototip05_Class0] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 2004)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class32])
	(duracion 115)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip03_Class10004])
	(puntuacion 80)
	(titulo "Los increíbles")
	(trata_de [MAIN::prototip04_Class11]))

([prototip05_Class1] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1940)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10011])
	(duracion 88)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip03_Class10004])
	(puntuacion 76)
	(titulo "Pinocho")
	(trata_de [MAIN::prototip03_Class10033]))

([prototip05_Class10000] of  Pelicula

	(anyo 2012)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class32])
	(de_moda TRUE)
	(duracion 93)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip03_Class10004])
	(puntuacion 72)
	(titulo "Brave (Indomable)"))

([prototip05_Class10001] of  Pelicula

	(anyo 2007)
	(clasificacion_edades 7)
	(contenido_animo [MAIN::prototip03_Class32])
	(duracion 144)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10008])
	(puntuacion 71)
	(titulo "Transformers"))

([prototip05_Class10002] of  Pelicula

	(anyo 2013)
	(buena_audiencia FALSE)
	(clasificacion_edades 7)
	(contenido_animo [MAIN::prototip03_Class32])
	(de_moda TRUE)
	(duracion 130)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10011])
	(puntuacion 77)
	(titulo "Iron Man 3"))

([prototip05_Class10003] of  Pelicula

	(anyo 1950)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10012])
	(duracion 74)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip03_Class10004])
	(puntuacion 73)
	(titulo "La Cenicienta"))

([prototip05_Class10004] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1927)
	(blanco_negro TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class10107])
	(dirigida_por [prototip05_Class10005])
	(duracion 153)
	(en_idioma [MAIN::prototip02_Class10035])
	(es_mudo TRUE)
	(hecha_en [MAIN::prototip03_Class10050])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10011])
	(puntuacion 84)
	(titulo "Metropolis")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10039]
		[MAIN::prototip04_Class16]))

([prototip05_Class10005] of  Director

	(dirige [prototip05_Class10004])
	(nombre "Fritz Lang"))

([prototip05_Class10006] of  Pelicula

	(anyo 1942)
	(blanco_negro TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class10011]
		[MAIN::prototip03_Class10020])
	(duracion 102)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10019])
	(puntuacion 87)
	(titulo "Casablanca")
	(trata_de [MAIN::prototip03_Class10019]))

([prototip05_Class10007] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1940)
	(blanco_negro TRUE)
	(buena_audiencia FALSE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class10012])
	(dirigida_por [prototip05_Class10008])
	(duracion 130)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10081])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 83)
	(titulo "Rebeca")
	(trata_de [MAIN::prototip03_Class10019]))

([prototip05_Class10008] of  Director

	(dirige [prototip05_Class10007])
	(nombre "Alfred Hitchcock"))

([prototip05_Class10009] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1940)
	(blanco_negro TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class10107])
	(dirigida_por [prototip05_Class10010])
	(duracion 125)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10012])
	(puntuacion 85)
	(titulo "El Gran Dictador")
	(trata_de [MAIN::prototip03_Class10032]))

([prototip05_Class10010] of  Director

	(dirige
		[prototip05_Class10009]
		[prototip05_Class10015])
	(nombre "Charles Chaplin"))

([prototip05_Class10011] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1946)
	(blanco_negro TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class10012])
	(duracion 130)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10004]
		[MAIN::prototip02_Class10065])
	(puntuacion 87)
	(titulo "Que Bello es Vivir")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip03_Class10045]))

([prototip05_Class10012] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1948)
	(blanco_negro TRUE)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10021])
	(duracion 93)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10056])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10054])
	(puntuacion 84)
	(titulo "Ladron de Bicicletas")
	(trata_de [MAIN::prototip04_Class11]))

([prototip05_Class10013] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1941)
	(blanco_negro TRUE)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class10012]
		[MAIN::prototip03_Class20]
		[MAIN::prototip03_Class16])
	(dirigida_por [prototip05_Class10014])
	(duracion 119)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 85)
	(titulo "Ciudadano Kane")
	(trata_de [MAIN::prototip03_Class10085]))

([prototip05_Class10014] of  Director

	(dirige [prototip05_Class10013])
	(nombre "Orson Welles"))

([prototip05_Class10015] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1936)
	(blanco_negro TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class15]
		[MAIN::prototip03_Class16])
	(dirigida_por [prototip05_Class10010])
	(duracion 87)
	(en_idioma [MAIN::prototip02_Class10035])
	(es_mudo TRUE)
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10013])
	(puntuacion 86)
	(titulo "Tiempos Modernos")
	(trata_de [MAIN::prototip04_Class16]))

([prototip05_Class10016] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1925)
	(blanco_negro TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10021]
		[MAIN::prototip03_Class21])
	(duracion 80)
	(en_idioma [MAIN::prototip02_Class10035])
	(es_mudo TRUE)
	(hecha_en [prototip05_Class10017])
	(pelicula_genero
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10082])
	(puntuacion 80)
	(titulo "El acorazado Potemkin")
	(trata_de [MAIN::prototip03_Class10091]))

([prototip05_Class10017] of  Nacionalidad

	(nacionalidad "Rusia")
	(nacionalidad_contenido [prototip05_Class10016]))

([prototip05_Class10018] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1966)
	(blanco_negro FALSE)
	(clasificacion_edades 13)
	(contenido_animo [MAIN::prototip03_Class32])
	(duracion 172)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10056])
	(pelicula_genero
		[MAIN::prototip02_Class10016]
		[MAIN::prototip02_Class10018])
	(puntuacion 90)
	(titulo "El bueno el feo y el malo")
	(trata_de [MAIN::prototip04_Class11]))

([prototip05_Class10020] of  Documental

	(anyo 2003)
	(clasificacion_edades 0)
	(docu_tematica [prototip05_Class10021])
	(duracion 40)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(puntuacion 70)
	(titulo "Los animales mas peligroso del mundo"))

([prototip05_Class10021] of  Tematica

	(tematica "Animales")
	(tematica_docu
		[prototip05_Class10020]
		[prototip05_Class10022]))

([prototip05_Class10022] of  Documental

	(anyo 1970)
	(clasificacion_edades 0)
	(docu_tematica [prototip05_Class10021])
	(duracion 25)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10060])
	(puntuacion 65)
	(titulo "Jara y sedal"))

([prototip05_Class2] of  Pelicula

	(anyo 1992)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class10012])
	(duracion 90)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10012]
		[MAIN::prototip03_Class10004])
	(puntuacion 79)
	(titulo "Aladdin")
	(trata_de
		[MAIN::prototip03_Class10019]
		[MAIN::prototip04_Class11]))

([prototip05_Class20000] of  Pelicula

	(aclamada_por_critica FALSE)
	(anyo 2001)
	(bajo_presupuesto TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class27])
	(duracion 122)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10055])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10019])
	(puntuacion 85)
	(titulo "Amelie")
	(trata_de [MAIN::prototip03_Class10019]))

([prototip05_Class20001] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 2002)
	(bajo_presupuesto TRUE)
	(buena_audiencia FALSE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class10021]
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class10011])
	(dirigida_por [MAIN::prototip02_Class10058])
	(duracion 150)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10036])
	(pelicula_genero
		[MAIN::prototip03_Class10044]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip03_Class10082])
	(puntuacion 85)
	(titulo "The Pianist"))

([prototip05_Class20002] of  Pelicula

	(anyo 1988)
	(bajo_presupuesto TRUE)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10021])
	(duracion 155)
	(en_idioma [MAIN::prototip03_Class10038])
	(hecha_en [MAIN::prototip02_Class10056])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 84)
	(titulo "Cinema Paradiso"))

([prototip05_Class20003] of  Pelicula

	(anyo 2003)
	(bajo_presupuesto TRUE)
	(blanco_negro TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class17]
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class16]
		[MAIN::prototip03_Class15])
	(duracion 121)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip03_Class10050])
	(pelicula_genero
		[MAIN::prototip02_Class10012]
		[MAIN::prototip02_Class10013]
		[MAIN::prototip02_Class10019])
	(puntuacion 77)
	(titulo "Good Bye Lenin"))

([prototip05_Class20004] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 2004)
	(bajo_presupuesto TRUE)
	(clasificacion_edades 77)
	(contenido_animo [MAIN::prototip03_Class10021])
	(duracion 97)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10055])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 77)
	(titulo "Los chicos del coro"))

([prototip05_Class20005] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 1993)
	(bajo_presupuesto TRUE)
	(clasificacion_edades 13)
	(contenido_animo
		[MAIN::prototip03_Class21]
		[MAIN::prototip03_Class10021])
	(duracion 133)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10036])
	(pelicula_genero [MAIN::prototip02_Class10013])
	(puntuacion 81)
	(titulo "En el nombre del padre")
	(trata_de [MAIN::prototip03_Class10039]))

([prototip05_Class20006] of  Pelicula

	(anyo 1982)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class32])
	(duracion 96)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018])
	(puntuacion 67)
	(titulo "Tron"))

([prototip05_Class3] of  Pelicula

	(aclamada_por_critica TRUE)
	(anyo 2010)
	(buena_audiencia TRUE)
	(clasificacion_edades 0)
	(contenido_animo
		[MAIN::prototip03_Class10020]
		[MAIN::prototip03_Class32])
	(de_moda TRUE)
	(duracion 103)
	(en_idioma [MAIN::prototip02_Class10028])
	(hecha_en [MAIN::prototip02_Class10027])
	(pelicula_genero
		[MAIN::prototip02_Class10009]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10012]
		[MAIN::prototip03_Class10004])
	(puntuacion 85)
	(titulo "Toy Story 3"))

([prototip05_Class4] of  Serie

	(anyo 1992)
	(buena_audiencia FALSE)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class10012])
	(duracion 20)
	(en_idioma [MAIN::prototip02_Class10021])
	(hecha_en [MAIN::prototip02_Class10081])
	(puntuacion 60)
	(serie_genero
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10009]
		[MAIN::prototip03_Class10004])
	(titulo "Las 3 Bessones")
	(trata_de [MAIN::prototip03_Class10045]))

([prototip05_Class5] of  Serie

	(anyo 2008)
	(clasificacion_edades 0)
	(contenido_animo [MAIN::prototip03_Class32])
	(duracion 22)
	(en_idioma [MAIN::prototip02_Class10035])
	(hecha_en [MAIN::prototip02_Class10027])
	(puntuacion 73)
	(serie_genero
		[MAIN::prototip02_Class10008]
		[MAIN::prototip02_Class10018]
		[MAIN::prototip02_Class10009]
		[MAIN::prototip03_Class10004])
	(titulo "Star Wars: Las Guerras Clon"))




	
)


;;; Fin del codigo generado con Protege ---------------		
;;; ---------------------------------------------------
		
		
;;; Inicio de la solucion implementada

;;; Declaracion de clases propias

;;; Se crea una clase para las recomendaciones para poder hacer listas de recomendaciones y tratarlas mejor
(defclass Recomendacion 
	(is-a USER)
	(role concrete)
	(slot contenido
		(type INSTANCE)
		(create-accessor read-write))
	(slot puntuacion
		(type INTEGER)
		(create-accessor read-write))
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
)

;;; Se crea una clase para cada uno de los dias de la recomendacion
(defclass Dia
	(is-a USER)
	(role concrete)
	(multislot recomendaciones
		(type INSTANCE)
		(create-accessor read-write))
	(slot tiempo-ocupado
		(type INTEGER)
		(create-accessor read-write))
	(slot tiempo-maximo
		(type INTEGER)
		(create-accessor read-write))
)

;;; Fin de declaracion de clases propias --------------

;;; Declaracion de modulos ----------------------------

;;; Modulo principal de utilidades, indicamos que exportamos todo
(defmodule MAIN (export ?ALL))

;;; Modulo de recopilacion de los datos del usuario
(defmodule recopilacion-usuario
	(import MAIN ?ALL)
	(export ?ALL)
)

(defmodule recopilacion-prefs
	(import MAIN ?ALL)
	(import recopilacion-usuario deftemplate ?ALL)
	(export ?ALL)
)
;;; Modulo de filtrado y procesado del contenido adequado al usuario
(defmodule procesado
	(import MAIN ?ALL)
	(import recopilacion-usuario deftemplate ?ALL)
	(import recopilacion-prefs deftemplate ?ALL)
	(export ?ALL)
)

;;; Modulo de generacion de soluciones
(defmodule generacion
	(import MAIN ?ALL)
	(export ?ALL)
)


;;; Modulo de presentacion de resultados
(defmodule presentacion
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Fin declaracion de modulos ------------------------

;;; Declaracion de messages ---------------------------

;; Imprime los datos de un contenido
(defmessage-handler MAIN::Contenido imprimir ()
	(format t "Titulo: %s %n" ?self:titulo)
	(format t "Formato: %s" (class ?self))
	(printout t crlf)
	(format t "Anyo: %d" ?self:anyo)
	(printout t crlf)
	(printout t "País: ")
	(progn$ (?curr-pais (send ?self get-hecha_en))
		(format t "%s " (send ?curr-pais get-nacionalidad))
	)
	(printout t crlf)
	(format t "Idioma: %s" (send ?self:en_idioma get-idioma))	
	(printout t crlf)
	(format t "Duración: %d" ?self:duracion)
	(printout t crlf)
	(format t "Edad mínima recomendada: %d" ?self:clasificacion_edades)
	(printout t crlf)
	(format t "Puntuación de los usuarios: %d" ?self:puntuacion)
	(printout t crlf)
)

(defmessage-handler MAIN::Recomendacion imprimir ()
	(printout t "-----------------------------------" crlf)
	(printout t (send ?self:contenido imprimir))
	(printout t crlf)
	(format t "Nivel de recomendación: %d %n" ?self:puntuacion)
	(printout t "Justificación: " crlf)
	(progn$ (?curr-just ?self:justificaciones)
		(printout t ?curr-just crlf)
	)
	(printout t crlf)
	(printout t "-----------------------------------" crlf)
)

(defmessage-handler MAIN::Dia imprimir ()
	(printout t "============================================" crlf)
	(printout t (instance-name ?self) crlf)
	(bind $?recs ?self:recomendaciones)
	(progn$ (?curr-rec $?recs)
		(printout t (send ?curr-rec imprimir))
	)
	(printout t "============================================" crlf)
)
	

;;; Fin declaracion de messages -----------------------


;;; Declaracion de templates --------------------------

;;; Template para los datos socio-demograficos del usuario
(deftemplate MAIN::Usuario
	(slot nombre (type STRING))
	(slot sexo (type SYMBOL) (default desconocido))
	(slot edad (type INTEGER) (default -1))
	(slot familia (type SYMBOL) (default desconocido))
)

;;; Template para las preferencias del usuario
(deftemplate MAIN::preferencias
	(multislot generos-favoritos (type INSTANCE))
	(multislot tematicas-favoritas (type INSTANCE))
	(multislot nacionalidades (type INSTANCE))
	(multislot idiomas (type INSTANCE))
)

;;; Template para una lista de recomendaciones sin orden
(deftemplate MAIN::lista-rec-desordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para una lista de recomendaciones con orden
(deftemplate MAIN::lista-rec-ordenada
	(multislot recomendaciones (type INSTANCE))
)

;;; Template para la lista de los dias de la recomendacion
(deftemplate MAIN::lista-dias
	(multislot dias (type INSTANCE))
)

;;; Fin declaracion de templates ----------------------



;;; Declaracion de funciones --------------------------

;;; Funcion que retorna el elemento con puntuacion maxima
(deffunction maximo-puntuacion ($?lista)
	(bind ?maximo -1)
	(bind ?elemento nil)
	(progn$ (?curr-rec $?lista)
		(bind ?curr-cont (send ?curr-rec get-contenido))
		(bind ?curr-punt (send ?curr-rec get-puntuacion))
		(if (> ?curr-punt ?maximo)
			then 
			(bind ?maximo ?curr-punt)
			(bind ?elemento ?curr-rec)
		)
	)
	?elemento
)

;;; Funcion para hacer una pregunta con respuesta cualquiera
(deffunction pregunta-general (?pregunta)
    (format t "%s " ?pregunta)
	(bind ?respuesta (read))
	(while (not (lexemep ?respuesta)) do
		(format t "%s " ?pregunta)
		(bind ?respuesta (read))
    )
	?respuesta
)

;;; Funcion para hacer una pregunta general con una serie de respuestas admitidas
(deffunction MAIN::pregunta-opciones (?question $?allowed-values)
   (format t "%s "?question)
   (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	)
   (printout t ": ")
   (bind ?answer (read))
   (if (lexemep ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (format t "%s "?question)
	  (progn$ (?curr-value $?allowed-values)
		(format t "[%s]" ?curr-value)
	  )
	  (printout t ": ")
      (bind ?answer (read))
      (if (lexemep ?answer) 
          then (bind ?answer (lowcase ?answer))))
   ?answer
)
   
;;; Funcion para hacer una pregunta de tipo si/no
(deffunction MAIN::pregunta-si-no (?question)
   (bind ?response (pregunta-opciones ?question si no))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE 
       else FALSE)
)

;;; Funcion para hacer una pregunta con respuesta numerica unica
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer pregunta con indice de respuestas posibles
(deffunction MAIN::pregunta-indice (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles) 
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (bind ?respuesta (pregunta-numerica "Escoge una opción:" 1 (length$ ?valores-posibles)))
	?respuesta
)

;;; Funcion para hacer una pregunta multi-respuesta con indices
(deffunction pregunta-multi (?pregunta $?valores-posibles)
    (bind ?linea (format nil "%s" ?pregunta))
    (printout t ?linea crlf)
    (progn$ (?var ?valores-posibles) 
            (bind ?linea (format nil "  %d. %s" ?var-index ?var))
            (printout t ?linea crlf)
    )
    (format t "%s" "Indica los números separados por un espacio: ")
    (bind ?resp (readline))
    (bind ?numeros (str-explode ?resp))
    (bind $?lista (create$ ))
    (progn$ (?var ?numeros) 
        (if (and (integerp ?var) (and (>= ?var 1) (<= ?var (length$ ?valores-posibles))))
            then 
                (if (not (member$ ?var ?lista))
                    then (bind ?lista (insert$ ?lista (+ (length$ ?lista) 1) ?var))
                )
        ) 
    )
    ?lista
)

;;; Fin declaracion de funciones -----------------------
	
	
	
;;; Declaracion de reglas y hechos ---------------------

(defrule MAIN::initialRule "Regla inicial"
	(declare (salience 10))
	=>
	(printout t "====================================================================" crlf)
  	(printout t "=         Sistema de recomendacion de contenidos TVornoTV          =" crlf)
	(printout t "====================================================================" crlf)
  	(printout t crlf)  	
	(printout t "¡Bienvenido al sistema TVornoTV! A continuación se le formularán una serie de preguntas para poder recomendarle contenidos." crlf)
	(printout t crlf)
	(focus recopilacion-usuario)
)

;;; Modulo recopilacion

(defrule recopilacion-usuario::establecer-nombre "Establece el nombre de usuario, es la primera pregunta"
	(not (Usuario))
	=>
	(bind ?nombre (pregunta-general "¿Cómo se llama? "))
	(assert (Usuario (nombre ?nombre)))
)


(defrule recopilacion-usuario::establecer-edad "Establece la edad del usuario"
	?u <- (Usuario (edad ?edad))
	(test (< ?edad 0))
	=>
	(bind ?e (pregunta-numerica "¿Qué edad tiene? " 1 110))
	(modify ?u (edad ?e))
)


(defrule recopilacion-usuario::usuario-pequenyo "Establece parametros que son seguros debido a que el usuario es adolescente o mas pequenyo"
	(declare (salience 10))
	?u <- (Usuario (edad ?edad) (familia desconocido))
	(test (and (> ?edad 0) (< ?edad 14)))
	=>
	(modify ?u (familia TRUE))
)

(defrule recopilacion-usuario::establecer-sexo "Establece el sexo del usuario"
	?u <- (Usuario (sexo desconocido))
	=>
	(bind ?s (pregunta-opciones "¿Es hombre o mujer?" hombre mujer))
	(modify ?u (sexo ?s))
)	

(defrule recopilacion-usuario::familia "Establece si se va a ver el contenido en familia"
	?u <- (Usuario (sexo ~desconocido) (familia desconocido))
	=>
	(bind ?r (pregunta-si-no "¿Va a ver el contenido con menores?"))
	(if (eq ?r TRUE) then
		(bind ?e (pregunta-numerica "Por favor, introduzca la edad mínima de los contenidos que quiere visualizar" 1 18))
		(modify ?u (familia TRUE) (edad ?e))
	else (modify ?u (familia FALSE))	
	)
)

(defrule recopilacion-usuario::pasar-a-preferencias "Pasa a la recopilacion de preferencias"
	(declare (salience 10))
	?u <- (Usuario (edad ?e) (sexo ~desconocido) (familia TRUE|FALSE))
	(test (> ?e 0))
	=>
	(focus recopilacion-prefs)
)

(deffacts recopilacion-prefs::hechos-iniciales "Establece hechos para poder recopilar informacion"
	(genero-favorito ask)
	(tematica-favorita ask)
	(formatos ask)
	(nacionalidad ask)
	(idioma ask)
	(vo ask)
	(aclamado-critica ask)
	(clasicos ask)
	(indie ask)
	(buena-audiencia ask)
	(preferencias )
)




(defrule recopilacion-prefs::establecer-formatos "Establece que tipos de contenidos formaran la solucion"
	?hecho <- (formatos ask)
	=>
	(bind ?formatos (create$ "Peliculas" "Series" "Documentales"))
	(bind ?respuesta (pregunta-multi "Indique qué tipo(s) de contenido(s) quiere ver " ?formatos))
	(progn$ (?curr-for ?respuesta)
		(switch ?curr-for
			(case 1
				then (assert (formato Pelicula))
				(assert (decadas ask)))
			(case 2
				then (assert (formato Serie))
				(assert (series-espanyolas ask))
				(assert (subir-series ask)))
			(case 3
				then (assert (formato Documental))
				(assert (subir-documentales ask)))
		)
	)
	(retract ?hecho)
	(assert (formatos TRUE))
)



(defrule recopilacion-prefs::relacionado-series "Determina false hechos que no se van a preguntar porque no se ven series"
	(formatos TRUE)
	(not (formato Serie))
	(not (series-espanyolas))
	(not (subir-series))
	=>
	(assert (series-espanyolas FALSE))
	(assert (subir-series FALSE))
)


(defrule recopilacion-prefs::relacionado-documentales "Determina false hechos que no se van a preguntar porque no se ven documentales"
	(formatos TRUE)
	(not (formato Documental))
	(not (subir-documentales))
	=>
	(assert (subir-documentales FALSE))
)


(defrule recopilacion-prefs::no-generos "No se pregunta por generos porque solo quiere ver documentales"
	(formatos TRUE)
	?hecho1 <- (genero-favorito ask)
	(not (formato Pelicula|Serie)) 
	=>
	(retract ?hecho1)
	(assert (genero-favorito FALSE))
)

	
(defrule recopilacion-prefs::preguntar-genero-favorito "Pregunta al usuario si tiene algun genero favorito"
	?hecho <- (genero-favorito ask)
	(formato Pelicula|Serie)
	(vo ~ask)
	(idioma ~ask)
	(nacionalidad ~ask&~choose)
	=>
	(bind ?respuesta (pregunta-si-no "¿Tiene preferencias en cuanto a los géneros? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (genero-favorito choose))
		else 
		(assert (genero-favorito FALSE))
	)
)
		

(defrule recopilacion-prefs::establecer-genero-favorito "Establece el genero favorito del usuario"
	?hecho <- (genero-favorito choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-generos (find-all-instances ((?inst Genero)) TRUE))
	(bind $?nom-generos (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-generos)) do
		(bind ?curr-obj (nth$ ?i ?obj-generos))
		(bind ?curr-nom (send ?curr-obj get-genero))
		(bind $?nom-generos(insert$ $?nom-generos (+ (length$ $?nom-generos) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja sus géneros favoritos: " $?nom-generos))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-generos))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)
	
	(retract ?hecho)
	(assert (genero-favorito TRUE))
	(modify ?pref (generos-favoritos $?respuesta))
)


(defrule recopilacion-prefs::no-tematicas "No se pregunta por tematicas porque el usuario no quiere ver documentales"
	(formatos TRUE)
	?hecho1 <- (tematica-favorita ask)
	(not (formato Documental) )	
	=>
	(retract ?hecho1)
	(assert (tematica-favorita FALSE))
)

	
(defrule recopilacion-prefs::preguntar-tematica-favorita "Pregunta al usuario si tiene alguna tematica favorita"
	?hecho <- (tematica-favorita ask)
	(formato Documental)
	(idioma ~ask)
	(nacionalidad ~ask&~choose)
	=>
	(bind ?respuesta (pregunta-si-no "¿Tiene preferencias en cuanto a las temáticas de los documentales? "))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (tematica-favorita choose))
		else 
		(assert (tematica-favorita FALSE))
	)
)
		

(defrule recopilacion-prefs::establecer-tematica-favorita "Establece la tematica favorita del usuario"
	?hecho <- (tematica-favorita choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-tem (find-all-instances ((?inst Tematica)) TRUE))
	(bind $?nom-tem (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-tem)) do
		(bind ?curr-obj (nth$ ?i ?obj-tem))
		(bind ?curr-nom (send ?curr-obj get-tematica))
		(bind $?nom-tem(insert$ $?nom-tem (+ (length$ $?nom-tem) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja sus temáticas favoritas: " $?nom-tem))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-tem))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)
	
	(retract ?hecho)
	(assert (tematica-favorita TRUE))
	(modify ?pref (tematicas-favoritas $?respuesta))
)


(defrule recopilacion-prefs::preguntar-nacionalidad "Pregunta si se tiene una nacionalidad para el contenido favorita"
	(formatos ~ask)
	(idioma ~ask)
	(vo ~ask)
	?hecho <- (nacionalidad ask)
	=>
	(bind ?respuesta (pregunta-si-no "¿Tiene preferencias en cuanto a la nacionalidad de los contenidos?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (nacionalidad choose))
		else (assert (nacionalidad FALSE))
	)
)


(defrule recopilacion-prefs::establecer-nacionalidad "Establece las nacionalidades favoritas del usuario"
	?hecho <- (nacionalidad choose)
	?pref <- (preferencias)
	=>
	(bind $?obj-nacion (find-all-instances ((?inst Nacionalidad)) TRUE))
	(bind $?nom-nacion (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-nacion)) do
		(bind ?curr-obj (nth$ ?i ?obj-nacion))
		(bind ?curr-nom (send ?curr-obj get-nacionalidad))
		(bind $?nom-nacion(insert$ $?nom-nacion (+ (length$ $?nom-nacion) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "Escoja las nacionalidades que prefiera: " $?nom-nacion))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-nacion))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)
	
	(retract ?hecho)
	(assert (nacionalidad TRUE))
	(modify ?pref (nacionalidades $?respuesta))
)


(defrule recopilacion-prefs::establecer-idiomas-principales "Establece los idiomas que el usuario entiende sin subtitulos"
	(formato ~ask)
	(vo FALSE)
	?pref <- (preferencias)
	?hecho <- (idioma ask)
	=>
	(bind $?obj-idioma (find-all-instances ((?inst Idioma)) TRUE))
	(bind $?nom-idioma (create$ ))
	(loop-for-count (?i 1 (length$ $?obj-idioma)) do
		(bind ?curr-obj (nth$ ?i ?obj-idioma))
		(bind ?curr-nom (send ?curr-obj get-idioma))
		(bind $?nom-idioma(insert$ $?nom-idioma (+ (length$ $?nom-idioma) 1) ?curr-nom))
	)
	(bind ?escogido (pregunta-multi "¿Qué idiomas entiende perfectamente sin necesidad de subtítulos? : " $?nom-idioma))
	
	(bind $?respuesta (create$ ))
	(loop-for-count (?i 1 (length$ ?escogido)) do
		(bind ?curr-index (nth$ ?i ?escogido))
		(bind ?curr-gen (nth$ ?curr-index ?obj-idioma))
		(bind $?respuesta(insert$ $?respuesta (+ (length$ $?respuesta) 1) ?curr-gen))
	)
	
	(retract ?hecho)
	(assert (idioma TRUE))
	(modify ?pref (idiomas $?respuesta))
)


(defrule recopilacion-prefs::establecer-subtitulos "Establece si el usuario está dispuesto a ver contenidos con subtitulos"
	?hecho <- (vo ask)
	(formato ~ask)
	?h2 <- (idioma ask)
	=>
	(bind ?respuesta (pregunta-si-no "¿Está dispuesto a ver contenidos en versión original subtitulada? " ))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then 
		(assert (vo TRUE))
		(retract ?h2)
		(assert (idioma TRUE))
		else 
		(assert (vo FALSE))
	)
)


(defrule recopilacion-prefs::aclamado-critica "Establece si al usuario tiene un gusto como el de la crítica"
	?hecho <- (aclamado-critica ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Sigue festivales de cine como el de Cannes y premios como los Oscar?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (aclamado-critica TRUE))
		else (assert (aclamado-critica FALSE))
	)
)

(defrule recopilacion-prefs::clasicos "Establece si el usuario tiene predilección por los clásicos"
	?hecho <- (clasicos ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Le gustan los contenidos clásicos?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (clasicos TRUE))
		else 
			(assert (clasicos FALSE))
			(assert (mudo FALSE))
			(assert (blanconegro FALSE))
	)
)

(defrule recopilacion-prefs::mudo "Establece si el usuario quiere ver cine mudo"
	(clasicos TRUE)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	(not (mudo TRUE|FALSE))
	=>
	(bind ?respuesta (pregunta-si-no "¿Dentro de los contenidos clásicos, le gusta el cine mudo?"))
	(if (eq ?respuesta TRUE)
		then (assert (mudo TRUE))
		else (assert (mudo FALSE))
	)
)

(defrule recopilacion-prefs::blanconegro "Establece si el usuario que quiere ver clasicos prefiere que sea en blanco y negro"
	(clasicos TRUE)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	(not (blanconegro TRUE|FALSE))
	=>
	(bind ?respuesta (pregunta-si-no "¿Los contenidos clásicos los prefiere en blanco y negro?"))
	(if (eq ?respuesta TRUE)
		then (assert (blanconegro TRUE))
		else (assert (blanconegro FALSE))
	)
)


(defrule recopilacion-prefs::indie "Establece si al usuario le gustan las peliculas independientes"
	?hecho <- (indie ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-opciones "¿Prefiere contenido independiente y de bajo presupuesto o contenido más comercial?" indep comer))
	(retract ?hecho)
	(if (eq ?respuesta indep)
		then (assert (indie TRUE))
		else (assert (indie FALSE))
	)
)

(defrule recopilacion-prefs::buena-audiencia "Establece si al usuario le gustan los mismos contenidos que a la mayoría"
	?hecho <- (buena-audiencia ask)
	(formato ~ask)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Cuándo valora contenidos con sus amigos, familiares,..., suele haber muchas discrepancias?"))
	(retract ?hecho)
	(if (eq ?respuesta FALSE)
		then (assert (buena-audiencia TRUE))
		else (assert (buena-audiencia FALSE))
	)
)
	
(defrule recopilacion-prefs::series-espanyolas "Establece si al usuario le gustan las series espanyolas"
	?hecho <- (series-espanyolas ask)
	(formato Serie)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Conoce y son de su agrado personajes como el doctor Mateo, Luisma de Aída, el portero de Aquí No Hay Quién Viva o El Duque?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (series-espanyolas TRUE))
		else (assert (series-espanyolas FALSE))
	)
)


(defrule recopilacion-prefs::prefiere-documentales "Establece si dar preferencia a documentales"
	?hecho <- (subir-documentales ask)
	(formato Documental)
	(idioma ~ask)
	(vo ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Mira normalmente canales como National Geographic, Discovery Channel, La 2, 33, Historia o las charlas TED?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (subir-documentales TRUE))
		else (assert (subir-documentales FALSE))
	)
)


(defrule recopilacion-prefs::prefiere-series "Establece si dar preferencia a series"
	?hecho <- (subir-series ask)
	(formato Serie)
	(idioma ~ask)
	(nacionalidad TRUE|FALSE)
	=>
	(bind ?respuesta (pregunta-si-no "¿Mira normalmente canales como Factoría de Ficción, FOX, Showtime o HBO?"))
	(retract ?hecho)
	(if (eq ?respuesta TRUE)
		then (assert (subir-series TRUE))
		else (assert (subir-series FALSE))
	)
)

(defrule recopilacion-prefs::aux_familiar "Define el género familiar como favorito si se ve contenido en familia"
	(Usuario (familia TRUE))
	(not (familia-procesado TRUE))
	?pref <- (preferencias (generos-favoritos $?gen))
	?hecho <- (genero-favorito TRUE|FALSE)
	=>
	(bind ?familia (find-instance ((?inst Genero)) (eq ?inst:genero "familiar")))
	(if (not (member$ ?familia $?gen)) then
		(bind $?gen (insert$ $?gen (+ (length$ $?gen) 1) ?familia))
		(modify ?pref (generos-favoritos $?gen))
		(retract ?hecho)
		(assert (genero-favorito TRUE))
	)
)
	
(defrule recopilacion-prefs::pasar_modulo_procesado "Pasa al modulo de procesado de datos"
	(declare (salience -1))
	?h1 <- (genero-favorito TRUE|FALSE)
	?h3 <- (tematica-favorita TRUE|FALSE)
	?h5 <- (formatos TRUE|FALSE)
	?h6 <- (nacionalidad TRUE|FALSE)
	?h7 <- (idioma TRUE|FALSE)
	(vo TRUE|FALSE)
	(series-espanyolas TRUE|FALSE)
	(subir-documentales TRUE|FALSE)
	=>
	(printout t "Procesando datos..." crlf)
	(focus procesado)
)

;;; Modulo procesado de contenido ---------------------------------------------------


(defrule procesado::anadir-peliculas "Se añade todas las peliculas, luego se filtran"
	?hecho <- (formato Pelicula)
	=>
	(bind $?lista (find-all-instances ((?inst Pelicula)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)	
	(retract ?hecho)
)


(defrule procesado::anadir-series "Se añade todas las series, luego se filtran"
	?hecho <- (formato Serie)
	=>
	(bind $?lista (find-all-instances ((?inst Serie)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)	
	(retract ?hecho)
)


(defrule procesado::anadir-docus "Se añade todas los documentales, luego se filtran"
	?hecho <- (formato Documental)
	=>
	(bind $?lista (find-all-instances ((?inst Documental)) TRUE))
	(progn$ (?curr-con ?lista)
		(make-instance (gensym) of Recomendacion (contenido ?curr-con) (puntuacion (send ?curr-con get-puntuacion)))
	)	
	(retract ?hecho)
)


(defrule procesado::aux-genero "Crea hechos para poder procesar los generos favoritos"
	(preferencias (generos-favoritos $?gen))
	?hecho <- (genero-favorito ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)then 
		(progn$ (?curr-gen $?gen)
			(assert (genero-favorito ?curr-gen))
		)
	)
)

(defrule procesado::aux-tematica "Crea hechos para poder procesar las tematicas favoritas"
	(preferencias (tematicas-favoritas $?tem))
	?hecho <- (tematica-favorita ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE)then 
		(progn$ (?curr-tem $?tem)
			(assert (tematica ?curr-tem))
		)
	)
)




(defrule procesado::valorar-edad "Se quitan las peliculas que no cumplan la recomendacion de edades"
	(Usuario (edad ?e))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	?cont <-(object (is-a Contenido) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (< ?e ?min-edad))
	=>
	(send ?rec delete)
)

(defrule procesado::valorar-ninyo-peliculas "Se mejora la puntuacion de los contenidos adecuados a ninyos"
	(Usuario (edad ?e))
	(test (< ?e 14))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (duracion ?duracion) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-ninyo ?cont))
	=>
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "animacion" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género animación -> +150"))
			)
			(case "aventuras" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género aventuras -> +125")) 
			)
			(case "fantasia" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género fantasia -> +125")) 
			)
			(case "comedia" then
				(bind ?p (+ ?p 75))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género comedia -> +75"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-ninyo ?cont))	
)

(defrule procesado::valorar-ninyo-serie "Se mejora la puntuacion de los contenidos adecuados a ninyos"
	(Usuario (edad ?e))
	(test (< ?e 14))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (duracion ?duracion) (clasificacion_edades ?min-edad))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-ninyo ?cont))
	=>
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "animacion" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género animación -> +150"))
			)
			(case "aventuras" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género aventuras -> +125")) 
			)
			(case "fantasia" then
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género fantasia -> +125")) 
			)
			(case "comedia" then
				(bind ?p (+ ?p 75))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es infantil y es de género comedia -> +75"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-ninyo ?cont))
)


(defrule procesado::valorar-adolescente-pelicula "Se mejora la puntuacion de los contenidos adecuados a adolescentes"
	(Usuario (edad ?e))
	(test (and (>= ?e 14) (< ?e 23)))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-adolescente ?cont))
	=>
	(if (eq ?moda TRUE) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y está de moda -> +150")) 
	)
	(if (> ?anyo 2005) then
		(bind ?p (+ ?p 50))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es reciente -> +50")) 
	)
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "comedia" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es de género comedia -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "trepidante" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es trepidante -> +150"))
			)
			(case "gracioso" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es gracioso -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-adolescente ?cont))
)

(defrule procesado::valorar-adolescente-serie "Se mejora la puntuacion de los contenidos adecuados a adolescentes"
	(Usuario (edad ?e))
	(test (and (>= ?e 14) (< ?e 23)))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-adolescente ?cont))
	=>
	(if (eq ?moda TRUE) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y está de moda -> +150")) 
	)
	(if (> ?anyo 2005) then
		(bind ?p (+ ?p 50))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es reciente -> +50")) 
	)
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "comedia" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es de género comedia -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "trepidante" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es trepidante -> +150"))
			)
			(case "gracioso" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es adolescente y es gracioso -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-adolescente ?cont))
)

(defrule procesado::valorar-mayor-serie "Se mejora la puntuacion de los contenidos adecuados a personas mayores"
	(Usuario (edad ?e))
	(test (>= ?e 63))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Serie) (serie_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos) (trata_de $?argumentos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mayor ?cont))
	=>
	(bind ?p (+ ?p -75))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es una serie -> -75")) 
	(if (< ?anyo 1970) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es antiguo -> +150")) 
	)
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "historico" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de género histórico -> +100"))
			)
			(case "western" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es un western -> +100"))
			)
			(case "musical" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de género musical -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "sentimental" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es sentimental -> +100"))
			)
			(case "senta_bien" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y senta bien -> +100"))
			)
		)
	)
	(progn$ (?curr-arg $?argumentos)
		(bind ?nombre (send ?curr-arg get-argumento))
		(switch ?nombre
			(case "guerra_civil" then 
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la guerra civil -> +125"))
			)
			(case "anyos60" then
				(bind ?p (+ ?p 50))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la década de los 60 -> +150"))
			)	
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mayor ?cont))
)

(defrule procesado::valorar-mayor-pelicula "Se mejora la puntuacion de los contenidos adecuados a personas mayores"
	(Usuario (edad ?e))
	(test (>= ?e 63))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos) (de_moda ?moda) (anyo ?anyo) (contenido_animo $?animos) (trata_de $?argumentos))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mayor ?cont))
	=>
	(if (< ?anyo 1970) then
		(bind ?p (+ ?p 150))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es antiguo -> +150")) 
	)
	(progn$ (?curr-gen $?generos) 
		(bind ?nombre (send ?curr-gen get-genero))
		(switch ?nombre
			(case "western" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es un western -> +100"))
			)
			(case "musical" then 
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de género musical -> +100"))
			)
			(case "historico" then
				(bind ?p (+ ?p 100))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es de género histórico -> +100"))
			)
		)
	)
	(progn$ (?curr-ani $?animos)
		(bind ?nombre (send ?curr-ani get-animo))
		(switch ?nombre
			(case "sentimental" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y es sentimental -> +150"))
			)
			(case "senta_bien" then 
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y senta bien -> +150"))
			)
		)
	)
	(progn$ (?curr-arg $?argumentos)
		(bind ?nombre (send ?curr-arg get-argumento))
		(switch ?nombre
			(case "guerra" then 
				(bind ?p (+ ?p 125))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la guerra -> +125"))
			)
			(case "anyos60" then
				(bind ?p (+ ?p 150))
				(bind $?just (insert$ $?just (+ (length$ $?just) 1) "El usuario es mayor y va de la década de los 60 -> +150"))
			)
		)
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mayor ?cont))
)


(defrule procesado::valorar-tematica-favorita "Se mejora la puntuacion de ldocumentales de tematica favorita"
	?hecho <- (tematica ?tem)
	?cont <-(object (is-a Documental) (docu_tematica ?tematica))
	(test (eq (instance-name ?tem) ?tematica))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-tematica-favorita ?cont ?tem))
	=>
	(bind ?p (+ ?p 150))
	(bind ?text (str-cat "Pertenece a la temática favorita " (send ?tem get-tematica) " -> +150"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-tematica-favorita ?cont ?tem))
)


(defrule procesado::valorar-genero-favorito-peliculas "Se mejora la puntuacion de las peliculas de genero favorito"
	?hecho <- (genero-favorito ?gen)
	?cont <-(object (is-a Pelicula) (pelicula_genero $?generos))
	(test (member$ ?gen $?generos))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-genero-favorito ?cont ?gen))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Pertenece al género favorito " (send ?gen get-genero) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-genero-favorito ?cont ?gen))
)


(defrule procesado::valorar-genero-favorito-series "Se mejora la puntuacion de las series de genero favorito"
	?hecho <- (genero-favorito ?gen)
	?cont <-(object (is-a Serie) (serie_genero $?generos))
	(test (member$ ?gen $?generos))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-genero-favorito ?cont ?gen))
	=>
	(bind ?p (+ ?p 50))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Pertenece al género favorito " (send ?gen get-genero) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-genero-favorito ?cont ?gen))
)


(defrule procesado::aux-nacionalidad "Crea hechos con las nacionalidades favoritas para porder tratarlas"
	(preferencias (nacionalidades $?nac))
	?hecho <- (nacionalidad ?aux)
	(test (or (eq ?aux TRUE) (eq ?aux FALSE)))
	=>
	(retract ?hecho)
	(if (eq ?aux TRUE) then 
		(progn$ (?curr-nac $?nac)
			(assert (nacionalidad ?curr-nac))
		)
	)
)


(defrule procesado::valorar-nacionalidad-favorita "Se mejora la puntuacion de los contenidos de las nacionalidades favoritas del usuario"
	(nacionalidad ?nac)
	?cont <- (object (is-a Contenido) (hecha_en $?nacionalidades))
	(test (member$ ?nac $?nacionalidades))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-nacionalidad-favorita ?cont ?nac))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es de la nacionalidad favorita " (send ?nac get-nacionalidad) " -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-nacionalidad-favorita ?cont ?nac))
)
	

(defrule procesado::valorar-subir-series "Se mejora la puntuacion de las series en general"
	(subir-series TRUE)
	?cont <- (object (is-a Serie))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-subir-series ?cont))
	=>
	(bind ?text (str-cat "Es una serie y el usuario las ve normalmente -> + 125"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(bind ?p (+ ?p 125))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-subir-series ?cont))
)

(defrule procesado::valorar-subir-documentales "Mejora la puntuacion de los documentales en general"
	(subir-documentales TRUE)
	?cont <- (object (is-a Documental))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-subir-documental ?cont))
	=>
	(bind ?text (str-cat "Es un documental y el usuario los ve normalmente -> + 125"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(bind ?p (+ ?p 125))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-subir-documental ?cont))
)
	

(defrule procesado::descartar-por-idioma "Se descartan las peliculas que el usuario no va a entender dependiendo de si tienen subtitulos o no"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(preferencias (idiomas $?idiomas))
	(vo FALSE)
	?cont <- (object (is-a Contenido) (en_idioma ?idioma))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (not (member$ ?idioma $?idiomas)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-clasicos "Se descartan contenidos clasicos si no le gustan al usuario"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(clasicos FALSE)
	?cont <- (object (is-a Contenido) (anyo ?anyo))
	(test (<= ?anyo 1965))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-mudo "Se descartan los contenidos mudos"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(mudo FALSE)
	?cont <- (object (is-a Contenido) (es_mudo TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::descartar-blanconegro "Se descartan los contenidos en blanco y negro"
	(declare (salience 10)) ; Para tener prioridad y descartar antes
	(blanconegro FALSE)
	(clasicos FALSE)
	?cont <- (object (is-a Contenido) (blanco_negro TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	=>
	(send ?rec delete)
)

(defrule procesado::valorar-series-espanyolas "Mejora la puntuacion de las series espanyolas"
	(series-espanyolas ?valorar)
	?cont <- (object (is-a Serie) (hecha_en ?nac))
	(test (eq (send ?nac get-nacionalidad) "Espanya"))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-series-espanyolas ?cont))
	=>
	(if (eq ?valorar TRUE) 
		then
			(bind ?p (+ ?p 100))
			(bind $?just (insert$ $?just (+ (length$ $?just) 1) "Es una serie espanyola -> +100"))
	)
	(if (eq ?valorar FALSE)
		then
			(bind ?p (+ ?p -100))
			(bind $?just (insert$ $?just (+ (length$ $?just) 1) "Es una serie espanyola -> -100"))
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-series-espanyolas ?cont))
)


(defrule procesado::valorar-aclamado-critica "Sube la puntuación de los contenidos aclamados por la critica"
	(aclamado-critica TRUE)
	?cont <- (object (is-a Contenido) (aclamada_por_critica TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-aclamado-critica ?cont))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido aclamado por la crítica especializada -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-aclamado-critica ?cont))
)

(defrule procesado::valorar-clasicos "Sube la puntuación de los contenidos clásicos"
	(clasicos TRUE)
	?cont <- (object (is-a Contenido) (anyo ?a))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(test (<= ?a 1965))
	(not (valorado-clasico ?cont))
	=>
	(bind ?p (+ ?p 75))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido clásico -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-clasico ?cont))
)

(defrule procesado::valorar-indie "Modifica la puntuación de los contenidos según sean de bajo presupuesto o no"
	(indie ?indie)
	?cont <- (object (is-a Contenido) (bajo_presupuesto TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-indie ?cont))
	=>
	(if (eq ?indie TRUE) then
		(bind ?p (+ ?p 75))
		(bind ?text (str-cat "Es un contenido de bajo presupuesto o independiente -> +75"))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	else
		(bind ?p (+ ?p -75))
		(bind ?text (str-cat "Es un contenido de bajo presupuesto o independiente -> -75"))
		(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	)
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-indie ?cont))
)

(defrule procesado::valorar-blanconegro "Mejora la puntuación de los contenidos en blanco y negro"
	(blanconegro TRUE)
	?cont <- (object (is-a Contenido) (blanco_negro TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-blanconegro ?cont))
	=>
	(bind ?p (+ ?p 150))
	(send ?rec put-puntuacion ?p)
	(bind ?text (str-cat "Es un contenido en blanco y negro -> +150"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-justificaciones $?just)
	(assert (valorado-blanconegro ?cont))
)

(defrule procesado::valorar-mudo "Mejora la puntuación de los contenidos mudos"
	(mudo TRUE)
	?cont <- (object (is-a Contenido) (es_mudo TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-mudo ?cont))
	=>
	(bind ?p (+ ?p 75))
	(bind ?text (str-cat "Es un contenido mudo -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-mudo ?cont))
)

(defrule procesado::valorar-buena-audiencia "Modifica la puntuación de los contenidos con buena audiencia"
	(buena-audiencia TRUE)
	?cont <- (object (is-a Contenido) (buena_audiencia TRUE))
	?rec <- (object (is-a Recomendacion) (contenido ?conta) (puntuacion ?p) (justificaciones $?just))
	(test (eq (instance-name ?cont) (instance-name ?conta)))
	(not (valorado-buena-audiencia ?cont))
	=>
	(bind ?p (+ ?p 75))
	(bind ?text (str-cat "Es un contenido que ha tenido buena audiencia -> +75"))
	(bind $?just (insert$ $?just (+ (length$ $?just) 1) ?text))
	(send ?rec put-puntuacion ?p)
	(send ?rec put-justificaciones $?just)
	(assert (valorado-buena-audiencia ?cont))
)
	
(defrule procesado::pasar-a-generacion "Pasa al modulo de generacion de respuestas"
	(declare(salience -10))
	=>
	(printout t "Generando respuesta..." crlf)
	(focus generacion)
)


;;; Módulo de generacion de respuestas -------------------------------------------------
(defrule generacion::crea-lista-recomendaciones "Se crea una lista de recomendaciones para ordenarlas"
	(not (lista-rec-desordenada))
	=>
	(assert (lista-rec-desordenada))
)

(defrule generacion::anyadir-recomendacion "Anyade una recomendacion a la lista de recomendaciones"
	(declare (salience 10))
	?rec <- (object (is-a Recomendacion))
	?hecho <- (lista-rec-desordenada (recomendaciones $?lista))
	(test (not (member$ ?rec $?lista)))
	=>
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) ?rec))
	(modify ?hecho (recomendaciones $?lista))
)

(defrule generacion::crea-lista-ordenada "Se crea una lista ordenada de contenido"
	(not (lista-rec-ordenada))
	(lista-rec-desordenada (recomendaciones $?lista))
	=>
	;;; Hacemos una ordenacion buscando maximo a cada paso (lento per simple de implementar)
	(bind $?resultado (create$ ))
	(while (and (not (eq (length$ $?lista) 0)) (< (length$ $?resultado) 21))  do
		(bind ?curr-rec (maximo-puntuacion $?lista))
		(bind $?lista (delete-member$ $?lista ?curr-rec))
		(bind $?resultado (insert$ $?resultado (+ (length$ $?resultado) 1) ?curr-rec))
	)
	(assert (lista-rec-ordenada (recomendaciones $?resultado)))
)

(defrule generacion::asigna-contenido-a-dias "Se asigna los contenidos recomendados a dias"
	(lista-rec-ordenada (recomendaciones $?recs))
	(not (lista-dias))
	=>
	(bind $?lista (create$ ))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia1 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia2 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia3 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia4 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia5 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia6 of Dia (tiempo-maximo 180))))
	(bind $?lista (insert$ $?lista (+ (length$ $?lista) 1) (make-instance Dia7 of Dia (tiempo-maximo 180))))
	(bind ?i 1)
	(bind ?rec-ant FALSE)
	(while (and (> (length$ $?recs) 0) (< ?i 8)) do
		(bind ?dia (nth$ ?i $?lista))
		(bind $?recs-dia (create$ ))
		(bind ?t-max (send ?dia get-tiempo-maximo))
		(bind ?t-ocu 0)
		(bind ?try 1)
		(bind ?asignados 0)
		(while (and (and (and(< ?t-ocu ?t-max) (< ?try 4)) (and (<= (length$ $?recs-dia) 2) (> (length$ $?recs) 0))) (< ?asignados 3)) do
			(bind ?rec (nth$ (random 1 (length$ $?recs)) $?recs))
			(bind ?cont (send ?rec get-contenido))
			(bind ?t (send ?cont get-duracion))
			(if (< (+ ?t-ocu ?t) ?t-max) 
				then
					(bind ?t-ocu (+ ?t-ocu ?t))
					(bind ?try 1)
					(bind ?asignados (+ ?asignados 1))
					(bind ?recs-dia (insert$ $?recs-dia (+ (length$ $?recs-dia) 1) ?rec))
					(bind $?recs (delete-member$ $?recs ?rec))
				else
					(bind ?try (+ ?try 1))
			)
		)
		(send ?dia put-recomendaciones $?recs-dia)
		(bind ?i (+ ?i 1))
	)
	(assert (lista-dias (dias $?lista)))
)


(defrule generacion::pasar-a-presentacion "Se pasa al modulo de presentacion"
	(lista-dias)
	=>
	(focus presentacion)
)




;;; Modulo de presentacion de resultados ----------------------------------------------------
(defrule presentacion::mostrar-respuesta "Muestra el contenido escogido"
	(lista-dias (dias $?dias))
	(Usuario (nombre ?nombre))
	(not (final))
	=>
	(printout t crlf)
	(format t "%s, esta es nuestra recomendación para usted. ¡Esperamos que la disfrute!" ?nombre)
	(printout t crlf)
	(progn$ (?curr-dia $?dias)
		(printout t (send ?curr-dia imprimir))
	)
	(assert (final))
)


; ;;; Fin declaracion de reglas ------------------------------
