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

;;;---------------------------DEFTEMPLATES-----------------------------------


;;; deftemplate para guardar las preferencias de los solicitantes

(deftemplate PrefSolicitantes
    (slot preciomaximo (type INTEGER))
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
 	(bind ?pmax (pregunta-numerica "Precio maximo entre" 0 100000))
 	(bind ?minus (pregunta-si-o-no "Hay alguna persona minusvalida?"))
 	(assert (PrefSolicitantes (preciomaximo ?pmax) (hayMinusvalido ?minus)))
)

(defrule buscar-vivienda "Busca una vivienda"
	?PrefSolicitantes <- (PrefSolicitantes (preciomaximo ?pmax) (hayMinusvalido ?minus))
	=>
	(format t "Tenemos un solicidante con precio maximo: %d y minusvalido: %s" ?pmax ?minus)
	(printout t crlf)
	(printout t "Vamos a buscarle una vivienda adecuada" crlf)
	(printout t crlf)
	
	(bind ?viviendas 
		(find-all-instances ((?inst Vivienda)) 
		;;;(and 
			(< ?inst:Preu ?pmax)
			;;;(= ?inst:Ascensor ?minus) //Da un problema con el ?minus :/
		;;;)
		)
	)

	(progn$ (?i ?viviendas)
		(printout t "Vivienda encontrada, instancia:")
		(printout t " "(instance-name ?i) " " crlf)
		(bind ?grado (send ?i get-Preu))
		(printout t " -> Precio vivienda: " ?grado " euros" crlf)
		(printout t " -> Tiene ascensor:" " ((aqui s'hauria de mostrar ascensor que ho he comentat pq donava errors abans))" crlf)
		(printout t crlf)
	)
)








