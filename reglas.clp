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

(deffunction print-vivienda (?viviendas)
	(if (> (length$ ?viviendas) 0)
		then 
			(progn$ (?i ?viviendas)
				(printout t "Vivienda posible:")
				(printout t " "(instance-name ?i) " " crlf)
				(bind ?grado (send ?i get-Preu))
				(bind ?ubiX (send ?i get-UbicacionX))
				(bind ?ubiY (send ?i get-UbicacionY))
				(bind ?dormitorios (length$ (send ?i get-tiene)))
				(bind ?ascensor (send ?i get-Ascensor))

				;;Mostramos la información de la vivienda, e indicamos las cosas distintas respecto las preferencias

				(printout t " -> Precio vivienda: " ?grado " euros" crlf)
				(printout t " -> Numero de dormitorios: " ?dormitorios crlf)
				(printout t " -> Tiene ascensor: " ?ascensor crlf)
				(printout t " -> Ubicacion: (" ?ubiX "," ?ubiY ")" crlf)
				(printout t crlf))
			
		else 
			(printout t "No hay ninguna vivienda que satisfazca tus condiciones" crlf)	
	)
)

;;Trobar si hi ha un parc que permeti mascotes a prop
(deffunction 
	parque_mascotas_cerca 
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

;;; Funcion que retorna el elemento con puntuacion maxima (COPIADAAA DE OTRO FICHERO HAY QUE CAMBIAR UN POCO
;;(deffunction maximo-puntuacion ($?lista)
;;	(bind ?maximo -1)
;;	(bind ?elemento nil)
;;	(progn$ (?curr-rec $?lista)
;;;;		(bind ?curr-cont (send ?curr-rec get-contenido))
	;;	(bind ?curr-punt (send ?curr-rec get-puntuacion))
	;;	(if (> ?curr-punt ?maximo)
	;;		then 
	;;		(bind ?maximo ?curr-punt)
	;;		(bind ?elemento ?curr-rec)
	;;	)
	;;)
	;;?elemento
;;)

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
	(multislot justificaciones
		(type STRING)
		(create-accessor read-write))
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
	

	;;Ahora estas las usamos para "sentido comun" pero tambien hay que preguntar si es importante tener colegio cerca en este caso por ejemplo
 	;;Hay algun menor de edad?
 	(bind ?menoredad (pregunta-si-o-no "Hay algun menor de edad?"))

 	;;Hay alguna persona mayor?
 	(bind ?persmayor (pregunta-si-o-no "Hay alguna persona mayor?"))

 	;;Hay alguna persona minusvalida?
 	(bind ?minusvalida (pregunta-si-o-no "Hay alguna persona minusvalida?"))

 	;;Si trabaja, barrio en el que trabaja
 	(bind ?trabaja (pregunta-si-o-no "Trabajas?"))
	;;(if (eq ?trabaja TRUE)
	;;then 
	;;	(bind ?nBarrio (pregunta-general "En que barrio trabajas?"))
		;;(while (not (any-instancep ((?inst Barrio)) (eq (str-compare ?Barrio:nombreBarrio ?nBarrio) 0))) 
		;;do
		;;	(printout t "No existe el barrio." crlf)
		;;	(bind ?nBarrio (pregunta-general "En que barrio trabajas?"))
		;;) 
 	;;	(bind ?barrio (find-instance ((?inst Barrio)) (= ?Barrio:NombreBarrio ?nBarrio)))
 			 ;;"BarrioCiudad2
	;;)


	;;Lo de arriba no funciona

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
 		;;(barrioTrabajo ?barrio)
 		;;(quiereTranspPublico)
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
 		(trabaja ?trabaja)) 
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

		(printout t "Vivienda que consideramos:")
		(printout t " "(instance-name ?curr-obj) " " crlf)
		
		(bind ?puntuacion 0)
		
		(bind ?listamala (create$))
		
		;;-------Precio maximo/minimo-------
		;;0 si bien, -500 si poco mal, -2000 si mal
		(bind ?curr-precio (send ?curr-obj get-Preu))
		(bind ?margin (- ?pmax ?pmin))
		(bind ?margin (* ?margin 0.2))
		
		
	   
		(if  (and (>= ?curr-precio ?pmin) (<= ?curr-precio ?pmax)) 
			then (bind ?puntuacion(+ ?puntuacion 0))
			else 
			(if (and (>= ?curr-precio (- ?pmin ?margin)) (<= ?curr-precio (+ ?pmax ?margin)))
				then (bind ?puntuacion (- ?puntuacion 500))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "precio poco adecuado"))	 
				else (bind ?puntuacion (- ?puntuacion 1000))
					(bind ?listamala (insert$ ?listamala (+ (length$ ?listamala) 1) "precio no adecuado"))	
			)
		)
			
		(printout t "puntuacion precio: " ?puntuacion crlf)
		
		;;Numero Dormitorios (si no se pregunta nada no se punctua, si se pregunta si puntua mal cuel que tiene mas, y mucho mal cuel que tiene menor)
		;;(bind ?curr-dobles (send ?curr-obj get-dDobles))
		;;(bind ?curr-simples (send ?curr-obj get-dSimples))
		;;(bind ?curr-d (+ ?curr-dobles ?curr-simples))

		;; hay que hacerlo asi pq no tenemos atributo simples y dobles, solo "tiene" que es instancia de dormitorios
		(bind ?instancias_dormitorios (send ?curr-obj get-tiene))

		;;-------Dormitorios-------
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
		
		(if  (and (eq ?dDobles 0) (eq ?dSimples 0)) 
			then (bind ?puntuacion(+ ?puntuacion 0))
			else 
			(if (or (< ?curr-dobles ?dDobles) (< ?curr-simples ?dSimples)) 
				then (bind ?puntuacion (- ?puntuacion 1000))
				else
				(if (or (> ?curr-dobles ?dDobles) (> ?curr-simples ?dSimples ))
					then (bind ?puntuacion (+ ?puntuacion 10))
						 
		))))

		(printout t "puntuacion dorms: " ?puntuacion crlf)
		
		
		;;-----NecesitaGaraje-------
		(bind ?curr-garaje (send ?curr-obj get-Garaje))
		(if (eq ?garaje TRUE)
			then
				(if (eq ?curr-garaje FALSE)
					then (bind ?puntuacion (- ?puntuacion 1000))
				)
			else
				(if (eq ?curr-garaje TRUE)
				then 
					(if (eq ?coche TRUE) 
					then (bind ?puntuacion (+ ?puntuacion 10))
					else (bind ?puntuacion (+ ?puntuacion 5))
					;;Guardar justificacion
					)
				)
		)
		
		(printout t "puntuacion garaje: " ?puntuacion crlf)
		
		;;------Mascotas--------
		(bind ?curr-mascota (send ?curr-obj get-MascotasPermitidas))
		(if (eq ?mascota TRUE)
			then (bind ?n (parque-mascotas-dist ?curr-obj)) 
				(switch ?n
					(case 0 then (- ?puntuacion 500))
					(case 1 then (+ ?puntuacion 5))
					(case 2 then (+ ?puntuacion 10))
				)
				 (if (not(eq ?curr-mascota TRUE))
					then (bind ?puntuacion (- ?puntuacion 1000))
				 )
		)

		(printout t "puntuacion mascota: " ?puntuacion crlf)

		;;---------Ascensor------------
		(bind ?curr-ascensor (send ?curr-obj get-Ascensor))
		
		;;Si hay persona minusvalida y no hay ascenor penalizamos mucho
		(if (eq ?minusvalida TRUE)
			then 
				(if (eq ?curr-ascensor TRUE)
					then (bind ?puntuacion (+ ?puntuacion 10))
					else then (bind ?puntuacion (- ?puntuacion 1000))
				)
			else 
				(if (eq ?curr-ascensor TRUE)
					then (bind ?puntuacion (+ ?puntuacion 10))
					;;Extra justificacion
				)
		)
		
		;;Si no hay persona minusvalida pero hay persona mayor y no hay ascenor penalizamos pero no tanto
		(if (and (eq ?persmayor TRUE) (eq ?minusvalida FALSE))
			then 
				(if (eq ?curr-ascensor TRUE)
					then (bind ?puntuacion (+ ?puntuacion 1000))
					else then (bind ?puntuacion (- ?puntuacion 700))
				)
			else 
				(if (eq ?curr-ascensor TRUE)
					then (bind ?puntuacion (+ ?puntuacion 100))
					;;Extra justificacion
				)
		)
		
		(printout t "puntuacion ascensor: " ?puntuacion crlf)
		
		
		;;La guardamos como clase de tipo "candidato"
		(printout t "Puntuacion final: " ?puntuacion crlf)
		(make-instance (gensym) of Candidato (Viv ?curr-obj) (Puntuacion ?puntuacion))
		
		
	)	






	;;;Version antigua 
	(bind ?viviendas 
		(find-all-instances ((?inst Vivienda)) 
			(and 
				(< ?inst:Preu ?pmax)
				(>= (length$ (send ?inst get-tiene)) ?dSimples)
				(not (and (eq ?minusvalida TRUE)(eq ?inst:Ascensor FALSE)))
			)
		)
	)
	
	;;(print-vivienda ?viviendas)	

	(retract ?PrefSolicitantes)
	(retract ?puntero)

	(bind ?nuevo (pregunta-si-o-no "Quieres hacer una solicitud nueva?"))

	(if (eq ?nuevo TRUE)
		then (assert (nuevo_solicitante))
		else (printout t "Adios!" crlf)
	)	
)














