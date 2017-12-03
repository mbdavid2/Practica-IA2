;;;-------------------------------PREGUNTAS---(no son nuestras, hay que cambiar¿?¿?¿?)-------------------------------

;;; Funcion para hacer una pregunta general 
(deffunction pregunta-general (?pregunta) 
	(format t "%s" ?pregunta) 
	(bind ?respuesta (read)) 
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi) 
	(format t "%s [%d, %d]: " ?pregunta ?rangini ?rangfi) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta    
(deffunction pregunta-lista (?pregunta $?valores_posibles) 
	(format t "%s" ?pregunta)  
	(bind ?resposta (read))   
	?resposta
)

;;;;---esta si, la he hecho yo---

;;; Funcion para hacer una pregunta con una respuesta si/no
(deffunction pregunta-si-o-no (?pregunta)
	(format t "%s (si/no): " ?pregunta)
	(bind ?respuesta (read))
	(while (not (or (eq ?respuesta si) (eq ?respuesta no) (eq ?respuesta n) (eq ?respuesta s)))
		(format t "%s (si/no): " ?pregunta)
		(bind ?respuesta (read))
	)
	(if  (or (eq ?respuesta si) (eq ?respuesta s)) then TRUE
	else FALSE)
)

;;;igual que la otra pero no hace print del rango
(deffunction pregunta-integer (?pregunta ?rangini ?rangfi) 
	(format t "%s (entero): " ?pregunta) 
	(bind ?respuesta (read)) 
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do 
		(format t "%s (entero): " ?pregunta) 
		(bind ?respuesta (read)) 
	) 
	?respuesta
)

;;;---------------------------DEFTEMPLATES-----------------------------------

;;; deftemplate para guardar la solucion final ordenada

(deftemplate solucionOrdenada "solucion final"
	(slot posicion (type INTEGER))
	(slot vivienda (type INSTANCE) (allowed-classes Vivienda))  
)

;;; deftemplate para guardar las preferencias de los solicitantes

(deftemplate PrefSolicitantes
    (slot preciomaximo (type INTEGER))
    (slot minDorm (type INTEGER))
    (slot hayMinusvalido (type SYMBOL) (allowed-values FALSE TRUE) (default FALSE))
)

;;;------------------------------------MAIN--------------------------------------

(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "----------- Sistema de Recomendacion de Viviendas ------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nuevo_solicitante))
)

(defrule preferencias "Pregunta las preferencias de los solicitantes"
	(nuevo_solicitante)
	=>
 	(bind ?pmax (pregunta-integer "Precio maximo?" 0 1000000))
 	(bind ?dorms (pregunta-integer "Minimo numero de dormitorios?" 0 50))
 	(bind ?minus (pregunta-si-o-no "Hay alguna persona minusvalida?"))
 	(assert (PrefSolicitantes (preciomaximo ?pmax) (minDorm ?dorms) (hayMinusvalido ?minus)))
)

(defrule buscar-vivienda "Busca una vivienda"
	?PrefSolicitantes <- (PrefSolicitantes (preciomaximo ?pmax) (minDorm ?dorms) (hayMinusvalido ?minus))
	=>
	(printout t crlf)
	(printout t "Buscando viviendas..." crlf)
	(printout t crlf)
	
	(bind ?viviendas 
		(find-all-instances ((?inst Vivienda)) 
			(and 
				(< ?inst:Preu ?pmax)
				(>= ?inst:Dorm_Dobles ?dorms)
				(eq ?inst:Ascensor ?minus) 
			)
		)
	)

	(if (eq lenght$(?viviendas) 0) then (printout t "No hay ninguna vivivienda que satisfazca tus condiciones" crlf))

	(progn$ (?i ?viviendas)
		(printout t "Vivienda encontrada, instancia:")
		(printout t " "(instance-name ?i) " " crlf)
		(bind ?grado (send ?i get-Preu))
		(bind ?ubiX (send ?i get-UbicacionX))
		(bind ?ubiY (send ?i get-UbicacionY))
		(bind ?dormitorios (length$ (send ?i get-tiene)))
		(bind ?ascensor (send ?i get-Ascensor))
		(printout t " -> Precio vivienda: " ?grado " euros" crlf)
		(printout t " -> Numero de dormitorios: " ?dormitorios crlf)
		(printout t " -> Tiene ascensor: " ?ascensor crlf)
		(printout t " -> Ubicacion: (" ?ubiX "," ?ubiY ")" crlf)
		(printout t crlf)
	)
)








