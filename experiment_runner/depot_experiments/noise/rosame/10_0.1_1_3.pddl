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
	:precondition (and (at ?a ?c) (on ?a ?a))
	:effect (and (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a) (clear ?d) (not (at ?a ?c))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (on ?a ?d) (available ?b) (clear ?a))
	:effect (and (lifting ?a ?b) (clear ?d) (not (at ?a ?c))  (not (on ?a ?d))  (not (available ?b))  (not (clear ?a))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and (on ?a ?a) (clear ?a)))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?a) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a)))

)