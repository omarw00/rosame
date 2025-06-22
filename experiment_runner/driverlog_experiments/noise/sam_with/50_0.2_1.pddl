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
	:precondition (and (in ?b ?c))
	:effect (and (at ?b ?a) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (empty ?c))
	:effect (and (at ?b ?a)
		(in ?b ?c) 
		))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and  
		))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and  
		))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?a ?b)
	(at ?a ?c)
	(driving ?a ?d)
	(empty ?d)
	(path ?b ?c)(not (= ?b ?c)))
	:effect (and  
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (not (= ?b ?c)))
	:effect (and (at ?a ?b) 
		))

)