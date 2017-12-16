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

(deftemplate candidato "vivienda posible"
	(slot noCoinciden (type INTEGER))
	(slot extras (type INTEGER))
	(slot vivienda (type INSTANCE) (allowed-classes Vivienda))  	
)

;;; deftemplate para guardar las preferencias de los solicitantes
(deftemplate PrefSolicitantes
    (slot preciomaximo (type INTEGER))
    (slot preciominimo (type INTEGER)) 
    (slot dDobles (type INTEGER))
    (slot dSimples (type INTEGER))
    (slot hayMascota (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMenorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMayorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMinusvalido (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
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
 	;;(modify ?Solicitante (preciomaximo ?pmax))

 	;;Precio minimo, si le interesa
 	(bind ?if (pregunta-si-o-no "Tienes un precio minimo a partir del cual crees que la oferta es adecuada?"))
	(if (eq ?if TRUE) 
	then (bind ?pmin (pregunta-integer "Precio minimo?" 0 999999999))
	else (bind ?pmin 0) 
	)
	;;(modify ?Solicitante (preciominimo ?pmin))

	;;Numero de dormitorios
	(bind ?if (pregunta-si-o-no "Quieres un numero concreto de dormitorios?"))
	(if (eq ?if TRUE)
	then 
		(bind ?dSimples (pregunta-integer "Minimo numero de dormitorios simples?" 0 50))
 		(bind ?dDobles (pregunta-integer "Minimo numero de dormitorios dobles?" 0 50))
 		;;(modify ?Solicitante (dSimples ?dSimples) (dDobles ?dDobles))

	else 	
		(bind ?dSimples 0)
 		(bind ?dDobles 0)
 		;;(modify ?Solicitante (dSimples 0) (dDobles 0))
	)

 	;;Tiene mascotas o planea tenerlas
 	(bind ?mascota (pregunta-si-o-no "Hay alguna mascota?"))
 	;;(modify ?Solicitante (hayMascota ?mascota))

 	;;Necesita garaje
	(bind ?garaje (pregunta-si-o-no "Necesitas garaje?"))
	;;(modify ?Solicitante (necesitaGaraje ?garaje))

	

	;;Ahora estas las usamos para "sentido comun" pero tambien hay que preguntar si es importante tener colegio cerca en este caso por ejemplo
 	;;Hay algun menor de edad?
 	(bind ?menoredad (pregunta-si-o-no "Hay algun menor de edad?"))

 	;;Hay alguna persona mayor?
 	(bind ?persmayor (pregunta-si-o-no "Hay alguna persona mayor?"))

 	;;Hay alguna persona minusvalida?
 	(bind ?minusvalida (pregunta-si-o-no "Hay alguna persona minusvalida?"))
 	;;(modify ?Solicitante (hayMinusvalido ?minusvalida))

 	(retract ?puntero)
 	(assert (PrefSolicitantes 
 		(preciomaximo ?pmax) 
 		(preciominimo ?pmin) 
 		(dDobles ?dDobles) 
 		(dSimples ?dSimples) 
 		(hayMascota ?mascota) 
 		(hayMenorEdad ?menoredad) 
 		(hayMayorEdad ?persmayor) 
 		(hayMinusvalido ?minusvalida)
 		(necesitaGaraje ?garaje)
 		;;(trabaja)
 		;;(barrioTrabajo)
 		;;(quiereTranspPublico)
 		)
 	)
 	(assert (nuevo_solicitante))
)

(deftemplate PrefSolicitantes
    (slot preciomaximo (type INTEGER))
    (slot preciominimo (type INTEGER)) 
    (slot dDobles (type INTEGER))
    (slot dSimples (type INTEGER))
    (slot hayMascota (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMenorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMayorEdad (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot hayMinusvalido (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot necesitaGaraje (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot trabaja (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
    (slot barrioTrabajo (type INSTANCE) (allowed-classes Barrio))  
    (slot quiereTranspPublico (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
)


(defrule buscar-vivienda "Busca una vivienda"
	?PrefSolicitantes <- (PrefSolicitantes (preciomaximo ?pmax) (dSimples ?dorms) (hayMinusvalido ?minus))
	?puntero <- (nuevo_solicitante)
	=>
	(printout t crlf)
	(printout t "Buscando viviendas..." crlf)
	(printout t crlf)
	
	(bind ?viviendas 
		(find-all-instances ((?inst Vivienda)) 
			(and 
				(< ?inst:Preu ?pmax)
				(>= (length$ (send ?inst get-tiene)) ?dorms)
				(not (and (eq ?minus TRUE)(eq ?inst:Ascensor FALSE)))
			)
		)
	)
	
	(print-vivienda ?viviendas)	

	(retract ?PrefSolicitantes)
	(retract ?puntero)

	(bind ?nuevo (pregunta-si-o-no "Quieres hacer una solicitud nueva?"))

	(if (eq ?nuevo TRUE)
		then (assert (nuevo_solicitante))
		else (printout t "Adios!" crlf)
	)	
)










