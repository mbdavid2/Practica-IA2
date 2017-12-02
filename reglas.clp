;;;;;============================ PREFERENCIAS ============================ 

;;; deftemplates para alamcenar los diferentes tipos de preferencias del alumno,
;;; y algunas que se crean como parte de la inferencia que hace el sistemas

(deftemplate PreferenciasHorarias "preferencias de tipo horarias"
    (slot horario (type SYMBOL) (allowed-values Manana Tarde Indiferente Indef) (default Indef))
    (slot horaTrabajo (type SYMBOL) (allowed-values Manana Tarde Ninguna Indef) (default Indef)) 
)




;;;--------------------MAIN-----------------------

(defrule comienzo "regla inicial"
	(initial-fact)
	=>
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "----------- Sistema de Recomendacion de Viviendas ------------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)	
)



;;;--------------------PREGUNTAS-----------------------

(defrule personaMinusvalida "regla para saber si alguna persona es minusvalida"
	(nuevo_estudiante)	
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?q (pregunta-general "¿Qué cuatrimestre es? [Q1(1)-Q2(2)]:  "))
	;;(bind ?restriccion (make-instance restriccionNumericaMHD of RestriccionCantidad))
	(switch ?q
		(case 1 then (assert(Cuatrimestre Q1)))
		(case 2 then (assert(Cuatrimestre Q2)))	
	)
)