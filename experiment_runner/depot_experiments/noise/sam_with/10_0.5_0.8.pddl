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
	:effect (and (not (at ?c ?a)) 
		))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c)
	(available ?b)
	(lifting ?a ?b))
	:effect (and (clear ?a)
		(clear ?d)
		(not (at ?a ?c))
		(not (available ?b))
		(not (lifting ?a ?b))
		(on ?a ?d) 
		))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(clear ?d)
	(lifting ?a ?b))
	:effect (and (available ?b)
		(clear ?a)
		(not (at ?a ?c))
		(not (clear ?d))
		(not (lifting ?a ?b))
		(on ?a ?d) 
		))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and  
		))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and  
		))

)