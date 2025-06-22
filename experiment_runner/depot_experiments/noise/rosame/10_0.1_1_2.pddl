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
	:precondition (and (at ?c ?b))
	:effect (and (at ?c ?a) (not (at ?c ?b))))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (on ?a ?d) (clear ?a))
	:effect (and (at ?a ?c) (lifting ?a ?b) (available ?b) (clear ?d) (not (on ?a ?d))  (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (available ?b) (clear ?d))
	:effect (and (at ?a ?c) (on ?a ?d) (lifting ?a ?b) (clear ?a) (not (available ?b))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (in ?a ?d) (lifting ?a ?b))
	:effect (and (at ?a ?c) (at ?d ?c) (on ?a ?a) (available ?b) (clear ?a) (not (at ?b ?c))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (on ?a ?a))
	:effect (and ))

)