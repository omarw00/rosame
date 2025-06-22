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
	:precondition (and (at ?y ?p)
	(at ?z ?p)
	(available ?x)
	(clear ?y)
	(on ?y ?z))
	:effect (and (clear ?z)
		(not (at ?y ?p))
		(not (at ?z ?p))
		(not (available ?x))
		(not (clear ?y))
		(not (on ?y ?z)) 
		))

(:action drop
	:parameters (?y - crate ?x - hoist ?p - place ?z - surface)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(at ?z ?p)
	(available ?x)
	(clear ?z)
	(on ?y ?z))
	:effect (and (at ?y ?p)
		(available ?x)
		(clear ?y)
		(not (at ?x ?p))
		(not (at ?y ?p))
		(not (at ?z ?p))
		(not (available ?x))
		(not (clear ?z))
		(not (on ?y ?z))
		(on ?y ?z) 
		))

(:action load
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and (at ?x ?p)
	(at ?y ?p)
	(at ?z ?p)
	(clear ?y)
	(in ?y ?z))
	:effect (and (available ?x)
		(in ?y ?z)
		(not (at ?x ?p))
		(not (at ?y ?p))
		(not (at ?z ?p))
		(not (clear ?y))
		(not (in ?y ?z)) 
		))

(:action unload
	:parameters (?y - crate ?x - hoist ?p - place ?z - truck)
	:precondition (and )
	:effect (and  
		))

)