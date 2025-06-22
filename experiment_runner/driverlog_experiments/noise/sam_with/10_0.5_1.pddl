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
	:effect (and (in ?b ?c) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (at ?b ?a)
	(in ?b ?c))
	:effect (and (not (at ?b ?a))
		(not (in ?b ?c)) 
		))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and  
		))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b)
	(empty ?c))
	:effect (and (driving ?a ?c)
		(not (at ?a ?b))
		(not (empty ?c)) 
		))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?d ?b)
	(at ?d ?c)
	(empty ?d)
	(link ?b ?c)
	(link ?c ?b)(not (= ?b ?c)))
	:effect (and (not (at ?d ?b))
		(not (at ?d ?c)) 
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (link ?c ?b)
	(path ?b ?c)
	(path ?c ?b)(not (= ?b ?c)))
	:effect (and (at ?a ?c) 
		))

)