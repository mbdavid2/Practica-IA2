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
		(format t "¿%s? [%d, %d] " ?pregunta ?rangini ?rangfi) 
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
	(bind ?q (pregunta-general "¿Qué cuatrimestre es? [Q1(1)-Q2(2)]:  "))
	;;(bind ?restriccion (make-instance restriccionNumericaMHD of RestriccionCantidad))
	(switch ?q
		(case 1 then (assert(Cuatrimestre Q1)))
		(case 2 then (assert(Cuatrimestre Q2)))	
	)
)


(defrule maxHorasDedicacion "regla para saber el nº maximo de horas de dedicacion de estudio al dia  "
	(nuevo_estudiante)	
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?maxH (pregunta-numerica "¿Máximo número de horas de dedicación esperadas(0->Indiferente)? " 0 10))
	(if (eq ?maxH 0) then (assert(horas_dedicadas_indiferentes)) (assert(JDedicacion Sistema))  
	else (if (and (> ?maxH 0)(<= ?maxH 10)) then
			(bind ?restriccion (make-instance restriccionNumericaMHD of RestriccionCantidad))
		    (send ?restriccion put-numHorasDedicadas ?maxH)
	 		  (bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia:  "))
	 		  (if (eq ?res 1) then (send ?restriccion put-importante TRUE)
	 		  else (send ?restriccion put-importante FALSE)) 
	 		  (slot-insert$ ?alumno preferencias 1 ?restriccion)
 		     (assert (maximo_horas_dedicadas))
			 (assert(JDedicacion Usuario)) 
		)		  
	)	
)



(defrule maxHorasLaboratorio   "regla para saber el nº maximo horas extras de laboratorios que dedicara al dia  "
	(nuevo_estudiante)
	?h <- (Estudiante ?nombre)
	?alumno <-(object (is-a Estudiante)(nombre ?nombreA))
	(test (eq (str-compare  ?nombre ?nombreA) 0))
	=> 
	(bind ?maxHL (pregunta-numerica "¿Máximo número de horas de laboratorios extras(0->Indiferente)? " 0 10))
	(if (eq ?maxHL 0) then (assert(horas_laboratorio_indiferentes)) (assert(JLaboratorio Sistema))   
	else(if (and (> ?maxHL 0)(<= ?maxHL 10)) then
			(bind ?restriccion (make-instance restriccionNumericaMHL of RestriccionCantidad))
			 (send ?restriccion put-numHorasLabs ?maxHL)
			 (bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(bind ?dificultad (pregunta-general "¿Qué dificultad quieres asumir en una asignatura: (Facil(f)-Dificil(d)-Cualquiera(c))? " ))
	(if (eq (str-compare ?dificultad "c") 0) then (assert(dificultad_cualquiera)) (assert(JDificultad Sistema))  
	else(if (or (eq (str-compare ?dificultad  "f")0)(eq (str-compare ?dificultad "d") 0)) then
			  (bind ?restriccion (make-instance restriccionCalidadD of RestriccionCalidad))
			  (switch (lowcase ?dificultad)
				(case "f" then (send ?restriccion put-prefHorario Facil))
				(case "d" then (send ?restriccion put-prefHorario Dificil))	
			  ) 			   		      
		      (bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia "))
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
	(bind ?trabaja (pregunta-general "¿Trabajas? (Manana(m)-Tarde(t)-Ninguno(n)(no trabaja)) " ))
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
	(bind ?prefHorario (pregunta-general "¿Que tipo de horario prefieres: (Manana(m)-Tarde(t)-Indiferente(i))? " ))
	(if (= (str-compare ?prefHorario "i") 0) then 
	  (assert(horario_indiferente))  (assert(JHorario Sistema)) 
	else (if (or (eq (str-compare ?prefHorario  "m")0) (eq (str-compare ?prefHorario "t") 0)) then
		  (bind ?restriccion (make-instance restriccionHorarioPH_NoT of RestriccionHorario))
		  (switch (lowcase ?prefHorario)
				(case "m" then (send ?restriccion put-prefHorario Tarde))
				(case "t" then (send ?restriccion put-prefHorario Manana))	
		   ) 		 
		  (bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(bind ?especialidad (pregunta-general "¿Quieres completar la especialidad en esta matricula?: (Mucho(m)-Poco(p)-Indiferente(i)) " ))
	(if (eq (str-compare ?especialidad "i") 0) then 
	  (assert(completar_especialidad_indiferente)) (assert(JEspecialidad Sistema))   
	else (if (or (eq (str-compare ?especialidad  "m")0) (eq (str-compare ?especialidad "p") 0)) then
		  (bind ?restriccion (make-instance restriccionCalidadCE of RestriccionCalidad))
		   (switch (lowcase ?especialidad)
				(case "m" then (send ?restriccion put-completarEspecialidad Mucho))
				(case "p" then (send ?restriccion put-completarEspecialidad Poco))	
		   ) 		  
		  ;;(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(bind ?proyecto (pregunta-general "¿Quieres realizar asignaturas de proyecto?: (si(s)/no(n)/Indiferente(i)) " ))
	(switch (lowcase ?proyecto)
		(case s then
			(bind ?restriccion (make-instance restriccionCalidadAP of RestriccionCalidad))
			(send ?restriccion put-asigProyecto TRUE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE))
			
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (proyecto_asumida))	
			(assert(JProyecto Usuario)) 
		)
		(case n then
			(bind ?restriccion (make-instance restriccionCalidadAP of RestriccionCalidad))
			(send ?restriccion put-asigProyecto FALSE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(bind ?ingles (pregunta-general "¿Quieres realizar asignaturas en ingles?: (si(s)/no(n)/Indiferente(i)) " ))	
	(switch (lowcase ?ingles)
		(case s then
			(bind ?restriccion (make-instance restriccionCalidadAI of RestriccionCalidad))
			(send ?restriccion put-asigIngles TRUE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
			(if (eq ?res 1) then (send ?restriccion put-importante TRUE)
			else (send ?restriccion put-importante FALSE))			
			(slot-insert$ ?alumno preferencias 1 ?restriccion)
			(assert (ingles_asumida))
			(assert(JIngles Usuario)) 
		)
		(case n then
			(bind ?restriccion (make-instance restriccionCalidadAI of RestriccionCalidad))
			(send ?restriccion put-asigIngles FALSE)
			(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(printout t "1. ESPÍRITU EMPRENDEDOR E INNOVADOR " crlf)
	(printout t "2. SOSTENIBILIDAD Y COMPROMISO SOCIAL " crlf)
	(printout t "3. LENGUA EXTRANJERA" crlf)
	(printout t "4. COMUNICACIÓN EFICAZ ORAL Y ESCRITA" crlf)
	(printout t "5. TRABAJO EN EQUIPO " crlf)
	(printout t "6. USO SOLVENTE DE LOS RECURSOS DE INFORMACIÓN " crlf)
	(printout t "7. APRENDIZAJE AUTÓNOMO " crlf)  
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
		(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(bind ?tema (pregunta-general "¿Tienes algun tema en concreto de interes?: (si(s)/no(n)) " ))
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
	(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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
	(printout t "¿Tienes algun tema en especifico de Programacion que te interese?: " crlf)
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
	(printout t "¿Tienes algun tema especifico de Software que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Diseño de sistemas web " crlf)
	(printout t "2. Diseño UML " crlf)
	(printout t "3. Ingenieria de Requisitos " crlf)
	(printout t "4. Arquitectura del Software" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Diseño de sistemas web"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Diseño UML "))
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
	(printout t "¿Tienes algun tema especifico de Bases de datos que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Administracion de bases de datos " crlf)
	(printout t "2. Diseñador de bases de datos " crlf)
	(printout t "3. Seguridad en bases de datos " crlf)
	(printout t "4. Bases de Datos especializadas" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Administracion de bases de datos"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Diseñador de bases de datos  "))
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
	(printout t "¿Tienes algun tema especifico de Redes que te interese?: " crlf)
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
	(printout t "¿Tienes algun tema especifico de Arquitectura que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Ensamblador " crlf)
	(printout t "2. Microcomputadores " crlf)
	(printout t "3. Procesamiento de Señal " crlf)
	(printout t "4. Sistemas Operativos" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Ensamblador"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Microcomputadores  "))
			  (case 3 then  (slot-insert$ ?restricc temasInteres 1 "Procesamiento de Señal"))
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
	(printout t "¿Tienes algun tema especifico de Matematicas que te interese?: " crlf)
	(printout t "0. Indiferente " crlf)	  	
	(printout t "1. Geometría computacional " crlf)
	(printout t "2. Cálculo numérico " crlf)
	(printout t "3. Grafos " crlf)
	(printout t "4. Analisis Matematico" crlf) 
	(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
	(if (not(member 0 ?temas)) then  
		(progn$ (?it ?temas)
			(switch ?it
			  (case 1 then  (slot-insert$ ?restricc temasInteres 1 "Geometria computacional"))
			  (case 2 then  (slot-insert$ ?restricc temasInteres 1 "Cálculo numérico  "))
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
	(printout t "¿Tienes algun tema especifico de Fisica que te interese?: " crlf)
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
	(bind ?proyecto (pregunta-general "¿Tienes algun tema no iformatico de interes?: (si(s)/no(n)) " ))
	(if (eq (str-compare ?proyecto "s") 0) then  
			(bind ?temaNI (make-instance restriccionMultievaluadaTNI of RestriccionMultievaluada)) 
			(printout t "Temas No Informaticos: " crlf)  
			(printout t "0. Indiferente " crlf)	 		
			(printout t "1. Lúdicas " crlf)
			(printout t "2. Culturales " crlf)
			(printout t "3. Divulgacion Cientifica" crlf)
			(printout t "4. Investigacion" crlf) 
			(printout t "5. Cursos" crlf) 
			(bind ?temas (pregunta-lista "Escribe los identificadores separados por espacios: ")) 
			(if (not(member 0 ?temas)) then  
				(progn$ (?it ?temas)
					(switch ?it
					  (case 1 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Lúdicas"))
					  (case 2 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Culturales"))
					  (case 3 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Divulgacion Cientifica"))
					  (case 4 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Investigacion")) 
					  (case 5 then  (slot-insert$ ?temaNI temasNoInformaticos 1 "Cursos")) 
					)
				) 
				else (slot-insert$ ?temaNI temasNoInformaticos 1 "NoInformaticos")			
			) 
			(bind ?res (pregunta-general "Indica si deseas que sea una restricción o una preferencia 1-Restriccion 2-Preferencia: "))
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

(defrule insertaRestriccionesPreferencias "añadimos los echos de preferencias y restricciones"
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
;; y se irán descartando si no cumplen alguna restriccion

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
	else (bind ?justf "Asignatura de ingles,(podrás completar la tercera lengua)(U)")		
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