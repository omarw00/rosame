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
	:precondition (and (at ?a ?c) (lifting ?a ?b) (available ?b) (clear ?d))
	:effect (and (on ?a ?d) (clear ?a) (not (at ?a ?c))  (not (lifting ?a ?b))  (not (available ?b))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (lifting ?a ?b))
	:effect (and (in ?a ?d) (available ?b) (not (lifting ?a ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (available ?b))
	:effect (and (lifting ?a ?b) (not (available ?b))))

)