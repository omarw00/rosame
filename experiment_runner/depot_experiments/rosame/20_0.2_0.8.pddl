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
	:parameters (?a - place ?b - place ?c - truck)
	:precondition (and )
	:effect (and (at ?c ?a) (at ?c ?b)))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (available ?b))
	:effect (and (at ?a ?c) (on ?a ?d) (clear ?a) (clear ?d) (not (available ?b))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (clear ?d))
	:effect (and (on ?a ?d) (available ?b) (clear ?a) (not (at ?a ?c))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (clear ?a))
	:effect (and (in ?a ?d) (available ?b)))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?a) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a)))

)