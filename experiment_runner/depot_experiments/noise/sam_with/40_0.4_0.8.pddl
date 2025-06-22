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
	:precondition (and (not (= ?y ?z)))
	:effect (and (at ?x ?z) 
		))

(:action lift
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (available ?x))
	:effect (and (at ?y ?p)
		(clear ?z)
		(not (available ?x))
		(on ?y ?z) 
		))

(:action drop
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?y ?p)
	(available ?x))
	:effect (and (clear ?y)
		(not (at ?y ?p))
		(not (available ?x))
		(on ?y ?z) 
		))

(:action load
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and )
	:effect (and  
		))

(:action unload
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and )
	:effect (and  
		))

)