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
	:precondition (and )
	:effect (and (at ?c ?a) (at ?c ?b)))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (clear ?a))
	:effect (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?a) (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?d) (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (on ?a ?d) (available ?b))
	:effect (and (at ?a ?c) (lifting ?a ?b) (clear ?a) (clear ?d) (not (on ?a ?d))  (not (available ?b))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (on ?a ?a) (available ?b))
	:effect (and (in ?a ?d) (lifting ?a ?b) (not (available ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (on ?a ?a))
	:effect (and (in ?a ?d) (lifting ?a ?b) (available ?b)))

)