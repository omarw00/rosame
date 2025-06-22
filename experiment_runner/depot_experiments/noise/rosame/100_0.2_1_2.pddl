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
	:precondition (and )
	:effect (and (at ?a ?c) (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a) (clear ?d)))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (at ?b ?c) (on ?a ?d) (available ?b))
	:effect (and (lifting ?a ?b) (clear ?a) (clear ?d) (not (at ?a ?c))  (not (on ?a ?d))  (not (available ?b))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (lifting ?a ?b) (available ?b))
	:effect (and (in ?a ?d) (not (lifting ?a ?b))  (not (available ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c))
	:effect (and (in ?a ?d) (lifting ?a ?b) (available ?b)))

)