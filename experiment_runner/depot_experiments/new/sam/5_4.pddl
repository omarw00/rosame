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
	(lifting ?x - hoist ?y - crate)
	(available ?x - hoist)
	(clear ?x - surface)
)

(:action drive
	:parameters (?a - truck ?b - place ?c - place)
	:precondition (and (at ?a ?b)(not (= ?b ?c)))
	:effect (and (at ?a ?c)
		(not (at ?a ?b)) 
		))

(:action lift
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?a ?d)
	(at ?b ?d)
	(at ?c ?d)
	(available ?a)
	(clear ?b)
	(on ?b ?c))
	:effect (and (clear ?c)
		(lifting ?a ?b)
		(not (at ?b ?d))
		(not (available ?a))
		(not (clear ?b))
		(not (on ?b ?c)) 
		))

(:action drop
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(clear ?c)
	(lifting ?a ?b))
	:effect (and (at ?b ?d)
		(available ?a)
		(clear ?b)
		(not (clear ?c))
		(not (lifting ?a ?b))
		(on ?b ?c) 
		))

(:action load
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(lifting ?a ?b))
	:effect (and (available ?a)
		(in ?b ?c)
		(not (lifting ?a ?b)) 
		))

(:action unload
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d)
	(at ?c ?d)
	(available ?a)
	(in ?b ?c))
	:effect (and (lifting ?a ?b)
		(not (available ?a))
		(not (in ?b ?c)) 
		))

)