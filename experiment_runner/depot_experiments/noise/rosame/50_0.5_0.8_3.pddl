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
	:precondition (and (at ?c ?a))
	:effect (and (at ?c ?b) (not (at ?c ?a))))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (on ?a ?d) (clear ?a))
	:effect (and (at ?a ?c) (lifting ?a ?b) (available ?b) (clear ?d) (not (on ?a ?d))  (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (lifting ?a ?b) (clear ?d))
	:effect (and (at ?a ?c) (on ?a ?d) (available ?b) (clear ?a) (not (lifting ?a ?b))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (lifting ?a ?b) (available ?b))
	:effect (and (in ?a ?d) (not (lifting ?a ?b))  (not (available ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c))
	:effect (and (lifting ?a ?b) (available ?b)))

)