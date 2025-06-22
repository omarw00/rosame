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
	:precondition (and (at ?b ?c) (on ?a ?a) (clear ?a))
	:effect (and (at ?a ?c) (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?d) (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (on ?a ?a) (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?d))
	:effect (and (clear ?a) (not (at ?a ?c))  (not (on ?a ?d))  (not (lifting ?a ?b))  (not (available ?b))  (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (on ?a ?a) (available ?b) (clear ?a))
	:effect (and (in ?a ?d) (lifting ?a ?b) (not (available ?b))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c))
	:effect (and (in ?a ?d) (lifting ?a ?b) (available ?b)))

)