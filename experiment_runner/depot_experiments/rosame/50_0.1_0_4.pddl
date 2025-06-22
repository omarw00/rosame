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
	:precondition (and (at ?a ?c) (at ?d ?c) (on ?a ?d) (available ?b) (clear ?a))
	:effect (and (lifting ?a ?b) (clear ?d) (not (at ?a ?c))  (not (on ?a ?d))  (not (available ?b))  (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (at ?d ?c) (lifting ?a ?b) (clear ?d))
	:effect (and (at ?a ?c) (on ?a ?d) (available ?b) (clear ?a) (not (lifting ?a ?b))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (at ?d ?c) (lifting ?a ?b))
	:effect (and (in ?a ?d) (available ?b) (not (lifting ?a ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (at ?d ?c) (in ?a ?d) (available ?b))
	:effect (and (lifting ?a ?b) (not (in ?a ?d))  (not (available ?b))))

)