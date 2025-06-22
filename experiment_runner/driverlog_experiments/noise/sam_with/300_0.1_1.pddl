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
	:precondition (and (empty ?c)
	(in ?b ?c))
	:effect (and (not (in ?b ?c)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (empty ?c))
	:effect (and (at ?b ?a)
		(in ?b ?c) 
		))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b)
	(at ?c ?b)
	(driving ?a ?c)
	(empty ?c))
	:effect (and (not (empty ?c)) 
		))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?c ?b)
	(driving ?a ?c))
	:effect (and (at ?a ?b)
		(empty ?c) 
		))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?a ?b)
	(driving ?a ?d)
	(empty ?d)
	(link ?c ?b)
	(path ?c ?b)(not (= ?b ?c)))
	:effect (and (at ?d ?c) 
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (link ?c ?b)
	(path ?b ?c)(not (= ?b ?c)))
	:effect (and (at ?a ?c) 
		))

)