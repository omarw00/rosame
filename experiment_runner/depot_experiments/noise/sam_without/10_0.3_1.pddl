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
	:precondition (and (at ?x ?z)(not (= ?y ?z)))
	:effect (and (at ?x ?y)
		(not (at ?x ?z)) 
		))

(:action lift
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?y ?p)
	(clear ?y)
	(clear ?z)
	(on ?y ?z))
	:effect (and (at ?y ?p)
		(available ?x)
		(clear ?y)
		(clear ?z)
		(not (at ?y ?p))
		(not (clear ?y))
		(not (clear ?z))
		(not (on ?y ?z))
		(on ?y ?z) 
		))

(:action drop
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(available ?x)
	(clear ?y)
	(on ?y ?z))
	:effect (and (clear ?y)
		(clear ?z)
		(not (at ?y ?p))
		(not (available ?x))
		(not (clear ?y))
		(not (on ?y ?z)) 
		))

(:action load
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(available ?x)
	(clear ?y))
	:effect (and (in ?y ?z) 
		))

(:action unload
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and )
	:effect (and  
		))

)