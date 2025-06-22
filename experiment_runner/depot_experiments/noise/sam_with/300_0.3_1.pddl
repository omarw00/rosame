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
	:precondition (and (not (= ?a ?b)))
	:effect (and (at ?c ?a) 
		))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and )
	:effect (and (available ?b)
		(clear ?d)
		(lifting ?a ?b)
		(on ?a ?d) 
		))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (available ?b))
	:effect (and (clear ?a)
		(not (available ?b)) 
		))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (available ?b))
	:effect (and (in ?a ?d)
		(lifting ?a ?b)
		(not (available ?b)) 
		))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and (available ?b)
		(in ?a ?d) 
		))

)