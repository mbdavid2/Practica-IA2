;;;-------------------------------PREGUNTAS-------------------------------------

;;; Funcion para hacer una pregunta con una respuesta si/no
(deffunction pregunta-si-o-no (?pregunta)
	(printout t crlf)
	(format t "%s (si/no): " ?pregunta)
	(bind ?respuesta (read))
	(while (not (or (eq ?respuesta si) (eq ?respuesta no) (eq ?respuesta n) (eq ?respuesta s)))
		(format t "%s (si/no): " ?pregunta)
		(bind ?respuesta (read))
	)
	(if  (or (eq ?respuesta si) (eq ?respuesta s)) then TRUE
	else FALSE)
)

;;; Funcion para hacer una pregunta con una respuesta entera dentro de un rango
(deffunction pregunta-integer (?pregunta ?rangini ?rangfi)
	(printout t crlf)
	(format t "%s (entero): " ?pregunta) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "%s (entero): " ?pregunta) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;; Funcion para hacer una pregunta general 
(deffunction pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;;---------------------------FUNCIONES AUXILIARES-------------------------------------

(deffunction print-vivienda (?vivienda)
				(printout t " "(instance-name ?vivienda) " " crlf)
				(printout t crlf)
)

(deffunction print-detalles-vivienda (?vivienda)
				(printout t " "(instance-name ?vivienda) " " crlf)
				(bind ?grado (send ?vivienda get-Preu))
				;(bind ?ubiX (send ?vivienda get-UbicacionX))
				;(bind ?ubiY (send ?vivienda get-UbicacionY))
				(bind ?dormitorios (length$ (send ?vivienda get-tiene)))
				(bind ?ascensor (send ?vivienda get-Ascensor))
				(bind ?mascotas (send ?vivienda get-MascotasPermitidas))
				(bind ?terraza (send ?vivienda get-Terraza))
				(bind ?piscina (send ?vivienda get-Piscina))
				(bind ?vistas (send ?vivienda get-Buenas_Vistas))				
				(bind ?garaje (send ?vivienda get-Garaje))
				(bind ?jardin (send ?vivienda get-Jardin))
				(bind ?aire (send ?vivienda get-Aire_Acondicionado))
				(bind ?calefaccion (send ?vivienda get-Calefaccion))
				(bind ?superficie (send ?vivienda get-Superficie_Total))

				(printout t " -> Precio vivienda: " ?grado " euros" crlf)
				(printout t " -> Numero de dormitorios: " ?dormitorios crlf)
				(printout t " -> Superficie total: " ?superficie " metros cuadrados" crlf)
				(if (eq ?ascensor TRUE) then (printout t " -> Tiene ascensor" crlf))
				(if (eq ?mascotas TRUE) then (printout t " -> Permite mascotas" crlf))
				(if (eq ?piscina TRUE) then (printout t " -> Tiene piscina" crlf))
				(if (eq ?vistas TRUE) then (printout t " -> Tiene buenas vistas" crlf))
				(if (eq ?garaje TRUE) then (printout t " -> Tiene garaje" crlf))
				(if (eq ?jardin TRUE) then (printout t " -> Tiene jardin" crlf))
				(if (eq ?aire TRUE) then (printout t " -> Tiene aire acondicionado" crlf))
				(if (eq ?terraza TRUE) then (printout t " -> Tiene terraza" crlf))
				(if (eq ?calefaccion TRUE) then (printout t " -> Tiene calefaccion" crlf))
				

				;(printout t " -> Ubicacion: (" ?ubiX "," ?ubiY ")" crlf)
				(printout t crlf)
)

(deffunction print-justificaciones (?justificacionesBuenas)
	(loop-for-count (?i 1 (length$ ?justificacionesBuenas)) do
		(printout t " - "(nth$ ?i ?justificacionesBuenas) crlf)
	)
	(printout t crlf)
 )		

;;Trobar si hi ha un parc que permeti mascotes a prop
(deffunction parque_mascotas_cerca 
	(?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))
	(bind ?parcs_mascotes (find-instance ((?inst ZonaVerde)) 
	(and 
		(<= (+ (abs (- ?x (send ?inst get-UbicacionX))) (abs (- ?y (send ?inst get-UbicacionY)))) 500)
		(send ?inst get-MascotasPermitidas))))
	?parcs_mascotes
)

;;2: Parc < 500m, 1: Parc < 1000m, 0: No hi ha cap parc a prop que accepti mascotes
(deffunction parque-mascotas-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))


	(bind ?i 1)
	(bind ?n 0)
	(bind ?zonasverdes (find-all-instances ((?inst ZonaVerde)) TRUE))
	;;(printout t "La vivienda tiene Ubicacion : (" ?x ", " ?y "), size: " (length$ ?zonasverdes) crlf)
	(while (and (<= ?i (length$ ?zonasverdes)) (< ?n 2)) do
		(bind ?zv (nth$ ?i ?zonasverdes))
		(bind ?if (send ?zv get-MascotasPermitidas))
		(if (eq ?if TRUE) 
			then 
			(bind ?xzv (send ?zv get-UbicacionX))
			(bind ?yzv (send ?zv get-UbicacionY))
			;;(printout t "La zona verde tiene Ubicacion : (" ?xzv ", " ?yzv ")" crlf)
			(bind ?dist (+ (abs (- ?x ?xzv)) (abs (- ?y ?yzv))))
			(if (<= ?dist 500) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 1000) 
						then (bind ?n 1)
					)
			)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;;Trobar si hi ha un parc cerca
(deffunction parque_cerca 
	(?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))
	(bind ?parcs (find-instance ((?inst ZonaVerde)) 
	(<= (+ (abs (- ?x (send ?inst get-UbicacionX))) (abs (- ?y (send ?inst get-UbicacionY)))) 500)
	))
	?parcs
)

;; 2: Parc < 500m, 1: Parc < 1000m, 0: No hi ha cap parc a prop
(deffunction parque-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?zonasverdes (find-all-instances ((?inst ZonaVerde)) TRUE))
	;;(printout t "La vivienda tiene Ubicacion : (" ?x ", " ?y "), size: " (length$ ?zonasverdes) crlf)
	(while (and (<= ?i (length$ ?zonasverdes)) (< ?n 2)) do
		(bind ?zv (nth$ ?i ?zonasverdes)) 
		(bind ?xzv (send ?zv get-UbicacionX))
		(bind ?yzv (send ?zv get-UbicacionY))
		(bind ?dist (+ (abs (- ?x ?xzv)) (abs (- ?y ?yzv))))
		(if (<= ?dist 500) 
			then (bind ?n 2)
			else 
				(if (<= ?dist 1000) 
					then (bind ?n 1)
				)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: Educacion < 1000m, 1: Educacion < 3000m, 0: No hay escolas cerca 
;; 1000m porque se puede ir a pie, 3000m porque se puede ir en bicicleta
(deffunction educacion-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))


	(bind ?i 1)
	(bind ?n 0)
	(bind ?educacion (find-all-instances ((?inst Educacion)) TRUE))
	;;(printout t "La vivienda tiene Ubicacion : (" ?x ", " ?y "), size: " (length$ ?educacion) crlf)
	(while (and (<= ?i (length$ ?educacion)) (< ?n 2)) do
		(bind ?zv (nth$ ?i ?educacion)) 
		(bind ?xzv (send ?zv get-UbicacionX))
		(bind ?yzv (send ?zv get-UbicacionY))
		;;(printout t "La zona verde tiene Ubicacion : (" ?xzv ", " ?yzv ")" crlf)
		(bind ?dist (+ (abs (- ?x ?xzv)) (abs (- ?y ?yzv))))
		(if (<= ?dist 1000) 
			then (bind ?n 2)
			else 
				(if (<= ?dist 3000) 
					then (bind ?n 1)
				)
			
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: Parc < 1000m, 1: Parc < 3000m, 0: No hay teatros cerca
;; distancias para pies/bicicleta (consideramos que no estan muchisimo teatros en solito)
;; ponemos teatros porque diurnos/24h porque pensamos que por la noche muchos mayores estan a dormir
(deffunction ocio-teatro-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?ocio (find-all-instances ((?inst Ocio)) TRUE))
	;;(printout t "La vivienda tiene Ubicacion : (" ?x ", " ?y "), size: " (length$ ?zonasverdes) crlf)
	(while (and (<= ?i (length$ ?ocio)) (< ?n 2)) do
		(bind ?s (nth$ ?i ?ocio))
		(bind ?h (send ?s get-Horario))
		(bind ?t (send ?s get-TipoOcio))
		(if (and (eq ?t Teatro) (or (eq ?h Diurno) (eq ?h 24h))) 
			then 
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			;;(printout t "La zona verde tiene Ubicacion : (" ?xs ", " ?ys ")" crlf)
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 1000) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 3000) 
						then (bind ?n 1)
					)
			)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: Farmacia < 500m, 1: Farmacia < 2000m, 0: No hay farmacia cerca
(deffunction farmacia-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?salud (find-all-instances ((?inst Salud)) TRUE))
	(while (and (<= ?i (length$ ?salud)) (< ?n 2)) do
		(bind ?s (nth$ ?i ?salud))
		(bind ?t (send ?s get-Tipo))
		(if (eq ?t Farmacia)  
			then 
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 500) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 2000) 
						then (bind ?n 1)
					)
			)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: Hospital < 1000m, 1: Hospital < 3000m, 0: No hay hospital cerca
(deffunction hospital-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?salud (find-all-instances ((?inst Salud)) TRUE))
	(while (and (<= ?i (length$ ?salud)) (< ?n 2)) do
		(bind ?s (nth$ ?i ?salud))
		(bind ?t (send ?s get-Tipo))
		(if (eq ?t Hospital)  
			then 
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 1000) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 3000) 
						then (bind ?n 1)
					)
			)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: CentroDeDia < 1000m, 1: CentroDeDia < 3000m, 0: No hay centrodedia cerca
(deffunction centrodedia-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?salud (find-all-instances ((?inst Salud)) TRUE))
	(while (and (<= ?i (length$ ?salud)) (< ?n 2)) do
		(bind ?s (nth$ ?i ?salud))
		(bind ?t (send ?s get-Tipo))
		(if (eq ?t CentroDeDia)  
			then 
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 1000) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 3000) 
						then (bind ?n 1)
					)
			)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; Salud
;; 3:muchos tipos y muy cercanos, 2:mucho tipos pero no muy cercanos, 1: no mucho tipos , 0: No hay salud cerca
(deffunction salud-dist (?vivienda)	
	(bind ?numero 0)
	(bind ?cercanos 0)
	(bind ?n (farmacia-dist ?vivienda))
	(if (>= ?n 1)
		then (bind ?numero (+ ?numero 1))
			(if (>= ?n 2)
				then (bind ?cercanos (+ ?cercanos 1))
			)
	)
	
	(bind ?n (hospital-dist ?vivienda))
	(if (>= ?n 1)
		then (bind ?numero (+ ?numero 1))
			(if (>= ?n 2)
				then (bind ?cercanos (+ ?cercanos 1))
			)
	)
	
	(bind ?n (centrodedia-dist ?vivienda))
	(if (>= ?n 1)
		then (bind ?numero (+ ?numero 1))
			(if (>= ?n 2)
				then (bind ?cercanos (+ ?cercanos 1))
			)
	)
	
	(if (and (>= ?numero 2) (>= ?cercanos 2))
		then (bind ?n 3)
		else (if (>= ?numero 2)
				then (bind ?n 2)
				else (if (>= ?numero 1)
						then (bind ?n 1)
						else (bind ?n 0)
				)
		)
	)
	
	?n
)

;; 2: Ocio < 500m, 1: Ocio < 2000m, 0: No hay ocio cerca
;; cualcuier tipo de ocio
(deffunction ocio-dist (?vivienda)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?ocio (find-all-instances ((?inst Ocio)) TRUE))
	(while (and (<= ?i (length$ ?ocio)) (< ?n 2)) do
		(bind ?s (nth$ ?i ?ocio))
		(bind ?xs (send ?s get-UbicacionX))
		(bind ?ys (send ?s get-UbicacionY))
		(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
		(if (<= ?dist 500) 
			then (bind ?n 2)
			else 
				(if (<= ?dist 2000) 
					then (bind ?n 1)
				)
		)
		(bind ?i (+ ?i 1))
	)
	?n
)

;; 2: Comercio < 500m, 1: Comercio < 2000m, 0: No hay comercio cerca
;; cualcuier tipo de comercio
;; si h es true se buscan solo las instancias activas 24h
(deffunction comercio-dist (?vivienda ?h)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?comercio (find-all-instances ((?inst Comercio)) TRUE))
	(if (eq ?h FALSE)
	then
		(while (and (<= ?i (length$ ?comercio)) (< ?n 2)) do
			(bind ?s (nth$ ?i ?comercio))
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 500) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 2000) 
						then (bind ?n 1)
					)
			)
			(bind ?i (+ ?i 1))
		)
	else
		
		
		(while (and (<= ?i (length$ ?comercio)) (< ?n 2)) do
			(bind ?s (nth$ ?i ?comercio))
			(bind ?if (send ?s get-Horario))
			(if (eq ?if 24h) then
				(bind ?xs (send ?s get-UbicacionX))
				(bind ?ys (send ?s get-UbicacionY))
				(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
				(if (<= ?dist 500) 
					then (bind ?n 2)
					else 
						(if (<= ?dist 2000) 
							then (bind ?n 1)
						)
				)
			)
			(bind ?i (+ ?i 1))
		)
	)
	?n
)

;; 2: Transporte < 500m, 1: Transporte < 1000m, 0: No hay transporte cerca
;; cualcuier tipo de transporte
;; si 24h es true se buscan solo las istancias activas h
(deffunction transporte-dist (?vivienda ?h)
	(bind ?x (send ?vivienda get-UbicacionX))
	(bind ?y (send ?vivienda get-UbicacionY))

	(bind ?i 1)
	(bind ?n 0)
	(bind ?transporte (find-all-instances ((?inst Transp_Publico)) TRUE))
	(if (eq ?h FALSE)
	then
		(while (and (<= ?i (length$ ?transporte)) (< ?n 2)) do
			(bind ?s (nth$ ?i ?transporte))
			(bind ?xs (send ?s get-UbicacionX))
			(bind ?ys (send ?s get-UbicacionY))
			(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
			(if (<= ?dist 500) 
				then (bind ?n 2)
				else 
					(if (<= ?dist 1000) 
						then (bind ?n 1)
					)
			)
			(bind ?i (+ ?i 1))
		)
	else
		(while (and (<= ?i (length$ ?transporte)) (< ?n 2)) do
			(bind ?s (nth$ ?i ?transporte))
			(bind ?if (send ?s get-Disponible24h))
			(if (eq ?if TRUE) then
				(bind ?xs (send ?s get-UbicacionX))
				(bind ?ys (send ?s get-UbicacionY))
				(bind ?dist (+ (abs (- ?x ?xs)) (abs (- ?y ?ys))))
				(if (<= ?dist 500) 
					then (bind ?n 2)
					else 
						(if (<= ?dist 1000) 
							then (bind ?n 1)
						)
				)
			)
			(bind ?i (+ ?i 1))
		)
	)
	?n
)

;; Servicios cerca
;; 3:muchos servicios y muy cercanos, 2:mucho servicios, 1: muchos servicios acesible, 0: Poco servicios cerca
(deffunction servicio-dist (?vivienda)	
	(bind ?numero 0)
	(bind ?cercanos 0)
	(bind ?n (salud-dist ?vivienda))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 (bind ?cercanos (+ ?cercanos 0)))
					(case 1 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 0)))
					(case 2 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 0)))
					(case 3 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 1)))
				)

	
	(bind ?n (ocio-dist ?vivienda))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 1 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 2 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 2))
								 )
	)
	
	(bind ?n (comercio-dist ?vivienda FALSE))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 1 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 2 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 2))
								 )
	)
	
	(bind ?n (transporte-dist ?vivienda FALSE))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 1 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 0))
								 )
					(case 2 then (bind ?numero (+ ?numero 1))
								 (bind ?cercanos (+ ?cercanos 2))
								 )
	)
	
	(if (>= ?cercanos 3) then (bind ?n 3)
						else (if (and (>= ?numero 3)(>= ?cercanos 1))
								then (bind ?n 2)
								else (if (>= ?numero 2)
										then (bind ?n 1)
										else (bind ?n 0)
									 )
							 )
	)
	
	?n
)

;; Servicios cerca
;; 2:muchos servicios 24h, 1: algun servicios 24h, 0: ningun servicio 24h
(deffunction servicios-trabaja (?vivienda)	
	(bind ?numero 0)
	
	(bind ?n (comercio-dist ?vivienda TRUE))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 )
					(case 1 then (bind ?numero (+ ?numero 1))
								 )
					(case 2 then (bind ?numero (+ ?numero 1))
								 )
	)
	
	(bind ?n (transporte-dist ?vivienda TRUE))
	(switch ?n
					(case 0 then (bind ?numero (+ ?numero 0))
								 )
					(case 1 then (bind ?numero (+ ?numero 1))
								 )
					(case 2 then (bind ?numero (+ ?numero 1))
								 )
	)
	
	(if (>= ?numero 2) 
		then (bind ?n 2)
		else (if (>= ?numero 1)
				then (bind ?n 1)
				else (bind ?n 0)
			 )
	)
	
	?n
)

;;;------------------DEFTEMPLATES Y CLASES PARA GUARDAR INFO--------------------

(defclass Candidato
	(is-a USER)
	(role concrete)
	(single-slot Viv
		(type INSTANCE)
		(allowed-classes Vivienda)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Puntuacion
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
)

(defclass Adecuada
	(is-a Candidato)
	(role concrete)
)

(defclass MuyAdecuada
	(is-a Candidato)
	(role concrete)
	(multislot justificacionesBuenas
		(type STRING)
		(create-accessor read-write))
)

(defclass ParcialmenteAdecuada
	(is-a Candidato)
	(role concrete)
	(multislot justificacionesMalas
		(type STRING)
		(create-accessor read-write))
	(multislot justificacionesBuenas
		(type STRING)
		(create-accessor read-write))
)

(defclass Otras
	(is-a Candidato)
	(role concrete)
	(multislot justificacionesMalas
		(type STRING)
		(create-accessor read-write))
)

(deftemplate SolucionFinal
    (multislot MuyAdecuadas (type INSTANCE) (allowed-classes Candidato))
	(multislot Adecuadas (type INSTANCE) (allowed-classes Candidato))
	(multislot ParcialmenteAdecuadas (type INSTANCE) (allowed-classes Candidato))
)
	
;;; deftemplate para guardar las preferencias de los solicitantes
(deftemplate PrefSolicitantes
    (slot preciomaximo (type INTEGER))
    (slot preciominimo (type INTEGER)) 
	(slot npersonas (type INTEGER))
    (slot dDobles (type INTEGER))
    (slot dSimples (type INTEGER))
    (slot hayMascota (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMenorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMayorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMinusvalido (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
	(slot tieneCoche (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot necesitaGaraje (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot trabaja (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot barrioTrabajo (type INSTANCE) (allowed-classes Barrio))  
    (slot quiereTranspPublico (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot quierePiscina (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot quiereTerraza (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot superficie (type INTEGER))
    (slot estado (type INTEGER))
)

;;;------------------------------------MAIN--------------------------------------
(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "----------- Sistema de Recomendacion de Viviendas ------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	;;(assert (PrefSolicitantes))
	(assert (preguntar_preferencias))
)

(defrule preferencias "Pregunta las preferencias de los solicitantes"
	?puntero <- (preguntar_preferencias)
	;;?Solicitante <- (PrefSolicitantes)
	=>
	;;Precio maximo
 	(bind ?pmax (pregunta-integer "Precio maximo que estas dispuesto a pagar?" 0 999999999))

 	;;Precio minimo, si le interesa
 	(bind ?if (pregunta-si-o-no "Tienes un precio minimo a partir del cual crees que la oferta es adecuada?"))
	(if (eq ?if TRUE) 
	then (bind ?pmin (pregunta-integer "Precio minimo?" 0 999999999))
	else (bind ?pmin 0) 
	)
	
	;;Numero de personas
	(bind ?npers (pregunta-integer "Cuantas personas van a vivir en la casa?" 0 50))
	
	;;Numero de dormitorios
	(bind ?if (pregunta-si-o-no "Quieres un numero concreto de dormitorios?"))
	(if (eq ?if TRUE)
	then 
		(bind ?dSimples (pregunta-integer "Minimo numero de dormitorios simples?" 0 50))
 		(bind ?dDobles (pregunta-integer "Minimo numero de dormitorios dobles?" 0 50))

	else 	
		(bind ?dSimples 0)
 		(bind ?dDobles 0)
	)

 	;;Tiene mascotas o planea tenerlas
 	(bind ?mascota (pregunta-si-o-no "Hay alguna mascota?"))

 	;;Necesita garaje
	(bind ?garaje FALSE)
	(bind ?coche (pregunta-si-o-no "Tienes coche?"))
	(if (eq ?coche TRUE)
		then (bind ?garaje (pregunta-si-o-no "Necesitas garaje?"))
	)
	
 	;;Hay algun menor de edad?
 	(bind ?menoredad (pregunta-si-o-no "Hay algun menor de edad?"))

 	;;Hay alguna persona mayor?
 	(bind ?persmayor (pregunta-si-o-no "Hay alguna persona mayor?"))

 	;;Hay alguna persona minusvalida?
 	(bind ?minusvalida (pregunta-si-o-no "Hay alguna persona minusvalida?"))

 	;;Superficie
	(bind ?if (pregunta-si-o-no "Necesitas que la vivienda tenga una superficie minima?"))
	(if (eq ?if TRUE) 
	then (bind ?supmin (pregunta-integer "Superficie minimo?" 0 999999999))
	else (bind ?supmin 0) 
	)

        ;;Terraza
        (bind ?terraza (pregunta-si-o-no "Necesitas que la vivienda tenga terraza?"))

        ;;Piscina
        (bind ?piscina (pregunta-si-o-no "Quieres que la vivienda tenga piscina?"))

 	;;Si trabaja
 	(bind ?trabaja (pregunta-si-o-no "Trabajas?"))

 	(retract ?puntero)
 	(assert (PrefSolicitantes 
 		(preciomaximo ?pmax) 
 		(preciominimo ?pmin) 
		(npersonas ?npers)
 		(dDobles ?dDobles) 
 		(dSimples ?dSimples) 
 		(hayMascota ?mascota) 
 		(hayMenorEdad ?menoredad) 
 		(hayMayorEdad ?persmayor) 
 		(hayMinusvalido ?minusvalida)
		(tieneCoche ?coche)
 		(necesitaGaraje ?garaje)
 		(trabaja ?trabaja)
 		(superficie ?supmin)
 		(quiereTerraza ?terraza)
 		(quierePiscina ?piscina)
 		)
 	)
 	(assert (nuevo_solicitante))
)

(defrule buscar-vivienda "Busca una vivienda"
	?PrefSolicitantes <- (PrefSolicitantes 
		(preciomaximo ?pmax) 
 		(preciominimo ?pmin) 
		(npersonas ?npers)
 		(dDobles ?dDobles) 
 		(dSimples ?dSimples) 
 		(hayMascota ?mascota) 
 		(hayMenorEdad ?menoredad) 
 		(hayMayorEdad ?persmayor) 
 		(hayMinusvalido ?minusvalida)
		(tieneCoche ?coche)
 		(necesitaGaraje ?garaje)
 		(trabaja ?trabaja)
 		(superficie ?supmin)
 		(quiereTerraza ?terraza)
 		(quierePiscina ?piscina)) 
	?puntero <- (nuevo_solicitante)
	=>
	(printout t crlf)
	(printout t "Buscando viviendas..." crlf)
	(printout t crlf)

	;;Bucle para iterar por todas las viviendas, cada una calculamos la puntuacion segun sus caracteristicas
	;;y luego la añadimos a la clase candidato
	
	(bind $?viviendas (find-all-instances ((?inst Vivienda)) TRUE))
	(loop-for-count (?i 1 (length$ $?viviendas)) do
		;;La instancia de vivienda que vamos a tratar
		(bind ?curr-obj (nth$ ?i ?viviendas))
		
		(bind ?puntuacion 0)
		
		(bind ?listamala (create$))
		(bind ?listabuena (create$))
		
		;;-------Precio maximo/minimo-------
		;;0 si bien, -500 si poco mal, -1000 si mal, -10000 si mucho mal
		(bind ?curr-precio (send ?curr-obj get-Preu))
		(bind ?margin (- ?pmax ?pmin))
		(bind ?margin2 (* ?margin 0.5))
		(bind ?margin (* ?margin 0.2))
		
		
		
	   
		(if  (and (>= ?curr-precio ?pmin) (<= ?curr-precio ?pmax)) 
			then (bind ?puntuacion(+ ?puntuacion 0))
			else 
			(if (and (>= ?curr-precio (- ?pmin ?margin)) (<= ?curr-precio (+ ?pmax ?margin)))
				then (bind ?puntuacion (- ?puntuacion 500))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Precio poco adecuado"))	 
				else (if (and (>= ?curr-precio (- ?pmin ?margin2)) (<= ?curr-precio (+ ?pmax ?margin2)))
				      then (bind ?puntuacion (- ?puntuacion 1000))
				      	   (bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Precio no adecuado"))
				      else 
				      	   (bind ?puntacion (- ?puntuacion 10000))
				)	
			)
		)
			
		
		
		;;-------Dormitorios-------
		(bind ?instancias_dormitorios (send ?curr-obj get-tiene))
		(bind ?curr-dobles 0)
		(bind ?curr-simples 0)
		(progn$ (?i ?instancias_dormitorios)
			(bind ?type (send ?i get-Simple))
			(if (eq ?type "TRUE") 
				then (bind ?curr-dobles (+ ?curr-dobles 1))
				else (bind ?curr-simples (+ ?curr-simples 1))
			)
		)

		(bind ?total-pers (+ (* ?curr-dobles 2) ?curr-simples))
		
		
		(if (< ?total-pers ?npers)
			then (bind ?puntuacion(- ?puntuacion 1000))
			(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Numero de dormitorios insuficiente"))
		)
		(if (> ?total-pers ?npers)
			then (bind ?puntuacion(+ ?puntuacion 10))
			(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "En la casa pueden vivir mas personas de las especificadas"))
		)
		
		(if (not(and (eq ?dDobles 0) (eq ?dSimples 0))) 
			then 		
			(if (or (< ?curr-dobles ?dDobles) (< ?curr-simples ?dSimples)) 
				then (bind ?puntuacion (- ?puntuacion 1000))
				     (bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "El numero de dormitorios no coincide"))
				else
				(if (or (> ?curr-dobles ?dDobles) (> ?curr-simples ?dSimples ))
					then (bind ?puntuacion (+ ?puntuacion 10))
					(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene dormitorios extra"))
						 
		)))

		;;-----NecesitaGaraje-------
		(bind ?curr-garaje (send ?curr-obj get-Garaje))
		(if (eq ?garaje TRUE)
			then
				(if (eq ?curr-garaje FALSE)
					then (bind ?puntuacion (- ?puntuacion 1000))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene garaje"))

				)
			else
				(if (eq ?curr-garaje TRUE)
				then 
					(if (eq ?coche TRUE) 
					then (bind ?puntuacion (+ ?puntuacion 10))
					else (bind ?puntuacion (+ ?puntuacion 5))
					(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene garaje"))
					)
				)
		)
		
		;;------Mascotas--------
		(bind ?curr-mascota (send ?curr-obj get-MascotasPermitidas))
		(if (eq ?mascota TRUE)
			then (bind ?n (parque-mascotas-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 500)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene parques cerca que permitan mascotas")))
					(case 1 then (+ ?puntuacion 5)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene parques cerca que permiten mascotas")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene parques muy cerca que permiten mascotas")))
				)
				 (if (not(eq ?curr-mascota TRUE))
					then (bind ?puntuacion (- ?puntuacion 1000))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No se permiten mascotas en la vivienda"))
				 )
		)

		;;------Menor Edad--------
		;; Si hay parcs, escolas cerca vamos a punctuar mas, si no tiene nadie vamos a penalizar un poco
		(if (eq ?menoredad TRUE)
			then
				;;parques
				(bind ?n (parque-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 5)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene parques cerca para los niños")))
					(case 1 then (+ ?puntuacion 5)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene parques cerca para los niños")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene parques muy cerca para los niños")))
				)
				;;escolas
				(bind ?n (educacion-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 5)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene escuelas cerca para los niños")))
					(case 1 then (+ ?puntuacion 5)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene escuelas cerca para los niños")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene escuelas muy cerca para los niños")))
				)
		)
		
		;;------Mayor Edad--------
		;; Si hay teatros cerca vamos a punctuar un poco mas
		(if (eq ?persmayor TRUE)
			then
				;;teatro
				(bind ?n (ocio-teatro-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 5)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene teatros cerca")))
					(case 1 then (+ ?puntuacion 5)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene teatros cerca")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene teatros muy cerca")))
				)
		) 
		
		;;------Trabaja--------
		;; Valutamos bien si tiene servicios 24h cerca
		(if (eq ?trabaja TRUE)
			then
				(bind ?n (servicios-trabaja ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 20)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene servicios 24h")))
					(case 1 then (+ ?puntuacion 0)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene servicios 24h cerca")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos servicios 24h cerca")))
				)
		) 
		
		
		;;---------Salud------------
		(if (or (eq ?persmayor TRUE) (eq ?minusvalida TRUE))
			then
			;;salud
				(bind ?n (salud-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 1000)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene centros de salud cerca")))
					(case 1 then (+ ?puntuacion 0)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene algun centro de salud cerca")))
					(case 2 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos centros de salud cerca")))
					(case 3 then (+ ?puntuacion 20)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos centros de salud muy cerca")))
				)
			else 
				;;si no tenemos mayores podemos penalizar un poco meno la absencia de salud cerca
				(bind ?n (salud-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 10)
						(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene centros de salud cerca")))
					(case 1 then (+ ?puntuacion 0)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene algun centro de salud cerca")))
					(case 2 then (+ ?puntuacion 5)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos centros de salud cerca")))
					(case 3 then (+ ?puntuacion 10)
						(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos centros de salud muy cerca")))
				)
		)
		;;---------Ascensor------------
		(bind ?curr-ascensor (send ?curr-obj get-Ascensor))
		
		;;Si hay persona minusvalida y no hay ascenor penalizamos
		(if (eq ?minusvalida TRUE)
			then 
				(if (eq ?curr-ascensor FALSE)
					then (bind ?puntuacion (- ?puntuacion 1000))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene ascensor"))
				)
		)
		
		(if (eq ?curr-ascensor TRUE)
			then 
			(bind ?puntuacion (+ ?puntuacion 10))
			(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene ascensor"))
		)					

		;;;-------Superficie------------
		(bind ?curr-sup (send ?curr-obj get-Superficie_Total))
		(if (< ?curr-sup ?supmin)
			then 
				(bind ?puntuacion (- ?puntuacion 1000))
				(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Tiene menos superficie de la deseada"))
			
		)
		(if (and (> ?curr-sup ?supmin) (> ?supmin 0))
			then 
				(bind ?puntuacion (+ ?puntuacion 10))
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene superficie extra"))
			
		)

		;;;-------Piscina------------
		(bind ?curr-piscina (send ?curr-obj get-Piscina))
		(if (and (eq ?curr-piscina FALSE) (eq ?piscina TRUE))
			then 
				(bind ?puntuacion (- ?puntuacion 1000))
				(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene piscina"))
			
		)
		(if (and (eq ?curr-piscina TRUE) (eq ?piscina FALSE))
			then 
				(bind ?puntuacion (+ ?puntuacion 10))
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene piscina"))
			
		)

		;;;-------Terraza------------
		(bind ?curr-terraza (send ?curr-obj get-Terraza))
		(if (and (eq ?curr-terraza FALSE) (eq ?terraza TRUE))
			then 
				(bind ?puntuacion (- ?puntuacion 1000))
				(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "No tiene terraza"))
			
		)
		(if (and (eq ?curr-terraza TRUE) (eq ?terraza FALSE))
			then 
				(bind ?puntuacion (+ ?puntuacion 10))
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene terraza"))
			
		)
		
		;;;-------Estado de la vivienda------------
		(bind ?curr-estado (send ?curr-obj get-Estado)) 

		(if (eq ?curr-estado "nuevo") then 
			(+ ?puntuacion 10)
			(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Esta nueva"))
		)

		(if (eq ?curr-estado "reformar") then 
			(- ?puntuacion 200)
			(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Necesita reformas"))
		)

		;;---------Puntuacion general------------
		
		;;Servicios cercanos
		(bind ?n (servicio-dist ?curr-obj)) 
		(switch ?n
			(case 0 then (- ?puntuacion 10)
				(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "Tiene pocos servicios cerca")))
			(case 1 then (+ ?puntuacion 0)
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene algunos servicios cerca")))
			(case 2 then (+ ?puntuacion 10)
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos servicios cerca y algun muy cerca")))
			(case 3 then (+ ?puntuacion 20)
				(bind ?listabuena (insert$ ?listabuena (+ (length$ ?listabuena) 1) "Tiene muchos servicios muy cerca")))
		)
		
		
		
		
		;;La guardamos como clase de tipo "candidato" -> la subclase es segun la puntuación que ha obtenido
		(if (> ?puntuacion 0) then (make-instance (gensym) of MuyAdecuada (Viv ?curr-obj) (Puntuacion ?puntuacion) (justificacionesBuenas ?listabuena)))
		(if (eq ?puntuacion 0) then (make-instance (gensym) of Adecuada (Viv ?curr-obj) (Puntuacion ?puntuacion)))
		(if (and (< ?puntuacion 0) (>= ?puntuacion -2000)) then (make-instance (gensym) of ParcialmenteAdecuada (Viv ?curr-obj) (Puntuacion ?puntuacion) (justificacionesMalas ?listamala)(justificacionesBuenas ?listabuena)))
		(if (< ?puntuacion -2000) then (make-instance (gensym) of Otras (Viv ?curr-obj) (Puntuacion ?puntuacion) (justificacionesMalas ?listamala)))
	)	
	(assert (mostrar_resultado))
	(retract ?puntero)
)
	
	
(defrule mostrar-resultado "Muestra los resultados"
	?p <- (mostrar_resultado)
	=>
	(bind ?if (pregunta-si-o-no "Quieres ver los cinco mejores candidatos (si) o todos (no)?"))
	(if (eq ?if FALSE)
		then (bind ?limit (length$ (find-all-instances ((?inst Candidato)) TRUE)))
		else (bind ?limit 5)
	)
	(bind ?n 0)
	(bind ?total 0)
	(bind ?soluciones (find-all-instances ((?inst MuyAdecuada)) TRUE))

	(bind ?listacinco (create$))

	(printout t crlf)
	(if (and (not (eq (length$ ?soluciones) 0)) (< ?n ?limit)) then (printout t "-------------Viviendas muy adecuadas-------------" crlf))
	(loop-for-count (?i 1 (length$ ?soluciones)) do
		(if (< ?n ?limit) then
			(bind ?curr (nth$ ?i ?soluciones))
			(printout t crlf)
			(printout t "-> Vivienda " (+ ?total ?i) ":")
			(print-vivienda (send ?curr get-Viv))	
			(printout t "Cosas buenas:" crlf)
			(print-justificaciones(send ?curr get-justificacionesBuenas))
			(printout t "______________________________" crlf)
			(bind ?n (+ ?n 1))
			(bind ?listacinco (insert$ ?listacinco (+ (length$ ?listacinco) 1) ?curr))
		)
	)
	(bind ?total (length$ ?soluciones))
	
	(bind ?soluciones (find-all-instances ((?inst Adecuada)) TRUE))
	(printout t crlf)
	(if (and (not (eq (length$ ?soluciones) 0)) (< ?n ?limit)) then (printout t "-------------Viviendas adecuadas-------------" crlf))
	(loop-for-count (?i 1 (length$ ?soluciones)) do
		(if (< ?n ?limit) then
			(bind ?curr (nth$ ?i ?soluciones))
			(printout t crlf)
			(printout t "-> Vivienda " (+ ?total ?i) ":")
			(print-vivienda (send ?curr get-Viv))
			(printout t "______________________________" crlf)
			(bind ?n (+ ?n 1))
			(bind ?listacinco (insert$ ?listacinco (+ (length$ ?listacinco) 1) ?curr))
		)
	)
	(bind ?total (+ ?total (length$ ?soluciones)))
	(printout t crlf)
	(bind ?soluciones (find-all-instances ((?inst ParcialmenteAdecuada)) TRUE))
	(if (and (not (eq (length$ ?soluciones) 0)) (< ?n ?limit)) then (printout t "-------------Viviendas parcialmente adecuadas-------------" crlf))
	(loop-for-count (?i 1 (length$ ?soluciones)) do
		(if (< ?n ?limit) then
			(bind ?curr (nth$ ?i ?soluciones))
			(printout t crlf)
			(printout t "-> Vivienda " (+ ?total ?i) ":")
			(print-vivienda (send ?curr get-Viv))	
			(printout t "Cosas malas:" crlf)
			(print-justificaciones(send ?curr get-justificacionesMalas))
			(printout t "Cosas buenas:" crlf)
			(print-justificaciones(send ?curr get-justificacionesBuenas))
			(printout t "______________________________" crlf)
			(bind ?n (+ ?n 1))
			(bind ?listacinco (insert$ ?listacinco (+ (length$ ?listacinco) 1) ?curr))
		)
	)
	(bind ?total (+ ?total (length$ ?soluciones)))
	
	(if (eq ?total 0) then
		(bind ?soluciones (find-all-instances ((?inst Otras)) TRUE))
		(printout t crlf)
		(printout t "No se han encontrado viviendas adecuadas, estas son las mejores que se han encontrado:" crlf)
		(loop-for-count (?i 1 (length$ ?soluciones)) do
			(if (< ?n ?limit) then
				(printout t crlf)
				(bind ?curr (nth$ ?i ?soluciones))
				(printout t "-> Vivienda " (+ ?total ?i) ":")
				(print-vivienda (send ?curr get-Viv))
				(printout t "Cosas malas:" crlf)
				(print-justificaciones(send ?curr get-justificacionesMalas))
				(printout t "______________________________" crlf)
				(printout t crlf)
				(bind ?n (+ ?n 1))
				(bind ?listacinco (insert$ ?listacinco (+ (length$ ?listacinco) 1) ?curr))
			)
		)
	)

	;;Informacion adicional sobre una vivienda en concreto
	(while (pregunta-si-o-no "Quieres ver alguna vivienda en concreto (si) o salir del sistema (no)?") do
		(bind ?index (pregunta-integer "Cual de las viviendas quieres ver en mas detalle?" 1 ?limit))
		(printout t crlf)
		(print-detalles-vivienda (send (nth$ ?index ?listacinco) get-Viv))
	)
	(printout t crlf)
	(printout t "Adios! Gracias por usar el sistema" crlf)
	(printout t crlf)
	(retract ?p)
)








