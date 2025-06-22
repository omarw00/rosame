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
	:precondition (and (at ?c ?a)(not (= ?a ?b)))
	:effect (and (at ?c ?b)
		(not (at ?c ?a)) 
		))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(at ?d ?c)
	(available ?b)
	(clear ?a)
	(on ?a ?d))
	:effect (and (clear ?d)
		(lifting ?a ?b)
		(not (on ?a ?d)) 
		))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c)
	(at ?d ?c)
	(clear ?d)
	(lifting ?a ?b))
	:effect (and (at ?a ?c)
		(available ?b)
		(clear ?a)
		(not (clear ?d))
		(not (lifting ?a ?b))
		(on ?a ?d) 
		))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(at ?d ?c)
	(lifting ?a ?b))
	:effect (and (available ?b)
		(in ?a ?d)
		(not (lifting ?a ?b)) 
		))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(at ?d ?c)
	(available ?b)
	(in ?a ?d))
	:effect (and (lifting ?a ?b)
		(not (available ?b))
		(not (in ?a ?d)) 
		))

)