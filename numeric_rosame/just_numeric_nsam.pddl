(define (domain driverlog)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck obj - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - obj ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:functions (time-to-walk ?l1 - location ?l2 - location)
	(time-to-drive ?l1 - location ?l2 - location)
	(driven )
	(walked )
)

(:action load-truck
	:parameters (?obj - obj ?truck - truck ?loc - location)
	:precondition (and (= (driven ) 5)
	(= (walked ) 6))
	:effect (and  
		))

(:action unload-truck
	:parameters (?obj - obj ?truck - truck ?loc - location)
	:precondition (and (= (driven ) 8)
	(= (walked ) 6))
	:effect (and  
		))

(:action board-truck
	:parameters (?driver - driver ?truck - truck ?loc - location)
	:precondition (and (= (driven ) 0)
	(= (walked ) 0))
	:effect (and  
		))

(:action drive-truck
	:parameters (?truck - truck ?loc-from - location ?loc-to - location ?driver - driver)
	:precondition (and (= (driven ) 8)
	(= (time-to-drive ?loc-from ?loc-to) 1)
	(= (time-to-drive ?loc-to ?loc-from) 1)
	(= (walked ) 6)(not (= ?loc-from ?loc-to)))
	:effect (and 
(assign (driven ) 9)))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (= (driven ) 1)
	(= (time-to-walk ?loc-from ?loc-to) 2)
	(= (time-to-walk ?loc-to ?loc-from) 2)
	(= (walked ) 4)(not (= ?loc-from ?loc-to)))
	:effect (and 
(assign (walked ) 6)))

)