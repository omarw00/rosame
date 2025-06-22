(define (domain depot)
(:requirements :strips :typing :negative-preconditions :equality)
(:types 	place locatable - object
	depot distributor - place
	truck hoist surface - locatable
	pallet crate - surface
)

(:predicates (at ?x - locatable ?y - place)
	(on ?x - crate ?y - surface)
	(in ?x - crate ?y - truck)
	(lifting ?y - crate ?x - hoist)
	(available ?x - hoist)
	(clear ?x - surface)
)

(:action drive
	:parameters (?a - place ?b - place ?c - truck)
	:precondition (and (at ?c ?b)(not (= ?a ?b)))
	:effect (and (at ?c ?a) 
		))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and )
	:effect (and (at ?a ?c)
		(available ?b)
		(clear ?d) 
		))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (available ?b))
	:effect (and (clear ?a)
		(clear ?d)
		(lifting ?a ?b) 
		))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(at ?d ?c)
	(available ?b)
	(clear ?a)
	(lifting ?a ?b))
	:effect (and  
		))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?d ?c)
	(clear ?a))
	:effect (and (available ?b) 
		))

)