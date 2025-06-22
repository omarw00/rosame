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
	:parameters (?y - place ?z - place ?x - truck)
	:precondition (and (at ?x ?y)(not (= ?y ?z)))
	:effect (and (at ?x ?z)
		(not (at ?x ?y)) 
		))

(:action lift
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(at ?z ?p)
	(available ?x)
	(clear ?y)
	(on ?y ?z))
	:effect (and (clear ?z)
		(lifting ?x ?y)
		(not (at ?y ?p))
		(not (available ?x))
		(not (clear ?y))
		(not (on ?y ?z)) 
		))

(:action drop
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(clear ?z)
	(lifting ?x ?y))
	:effect (and (at ?y ?p)
		(available ?x)
		(clear ?y)
		(not (clear ?z))
		(not (lifting ?x ?y))
		(on ?y ?z) 
		))

(:action load
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(lifting ?x ?y))
	:effect (and (available ?x)
		(in ?y ?z)
		(not (lifting ?x ?y)) 
		))

(:action unload
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and (at ?x ?p)
	(at ?z ?p)
	(available ?x)
	(in ?y ?z))
	:effect (and (lifting ?x ?y)
		(not (available ?x))
		(not (in ?y ?z)) 
		))

)