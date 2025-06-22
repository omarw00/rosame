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
	(at ?c ?a))
	:effect (and (in ?b ?c)
		(not (at ?b ?a)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (at ?c ?a)
	(in ?b ?c))
	:effect (and (at ?b ?a) 
		))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b)
	(at ?c ?b)
	(empty ?c))
	:effect (and (driving ?a ?c)
		(not (empty ?c)) 
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
	(at ?d ?b)
	(driving ?a ?d)
	(link ?b ?c)
	(link ?c ?b)
	(path ?b ?c)
	(path ?c ?b)(not (= ?b ?c)))
	:effect (and (at ?d ?c)
		(not (at ?d ?b)) 
		))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b)
	(at ?a ?c)
	(link ?c ?b)
	(path ?b ?c)
	(path ?c ?b)(not (= ?b ?c)))
	:effect (and (not (at ?a ?b)) 
		))

)