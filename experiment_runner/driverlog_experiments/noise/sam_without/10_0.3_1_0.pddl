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
	:precondition (and (at ?b ?a)
	(in ?b ?c))
	:effect (and (in ?b ?c)
		(not (at ?b ?a))
		(not (in ?b ?c)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and  
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
	(at ?d ?b)
	(driving ?a ?d)
	(empty ?d)
	(link ?c ?b)
	(path ?b ?c)(not (= ?b ?c)))
	:effect (and (at ?d ?c) 
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b)
	(at ?a ?c)
	(link ?b ?c)
	(link ?c ?b)
	(path ?b ?c)(not (= ?b ?c)))
	:effect (and (at ?a ?b)
		(at ?a ?c)
		(not (at ?a ?b))
		(not (at ?a ?c)) 
		))

)