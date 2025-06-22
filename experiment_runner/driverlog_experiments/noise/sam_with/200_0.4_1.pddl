(define (domain driverlog)
(:requirements :typing :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck package - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - package ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:action load-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and (at ?b ?a)
		(in ?b ?c) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and  
		))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (driving ?a ?c))
	:effect (and (empty ?c)
		(not (driving ?a ?c)) 
		))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (empty ?c))
	:effect (and (driving ?a ?c)
		(not (empty ?c)) 
		))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?d ?b)(not (= ?b ?c)))
	:effect (and (at ?d ?c)
		(not (at ?d ?b)) 
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (not (= ?b ?c)))
	:effect (and (at ?a ?c) 
		))

)