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
	:effect (and (at ?c ?b) 
		))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c)
	(available ?b))
	:effect (and (at ?a ?c)
		(clear ?d)
		(lifting ?a ?b) 
		))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c))
	:effect (and (available ?b)
		(clear ?a)
		(on ?a ?d) 
		))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c)
	(at ?d ?c)
	(clear ?a)
	(lifting ?a ?b))
	:effect (and (available ?b)
		(in ?a ?d) 
		))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c)
	(at ?d ?c)
	(available ?b)
	(clear ?a))
	:effect (and (lifting ?a ?b) 
		))

)