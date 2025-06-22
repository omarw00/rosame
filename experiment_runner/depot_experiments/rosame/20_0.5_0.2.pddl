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
	:precondition (and (at ?c ?a))
	:effect (and (at ?c ?b) (not (at ?c ?a))))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?d) (available ?b) (clear ?a))
	:effect (and (clear ?d) (not (at ?a ?c))  (not (on ?a ?d))  (not (available ?b))  (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (at ?d ?c) (clear ?d))
	:effect (and (at ?a ?c) (on ?a ?d) (available ?b) (clear ?a) (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (at ?d ?c))
	:effect (and (in ?a ?d) (available ?b)))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (on ?a ?a))
	:effect (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a) (not (on ?a ?a))))

)