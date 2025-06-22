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
	:precondition (and (at ?a ?c) (available ?b))
	:effect (and (on ?a ?d) (lifting ?a ?b) (clear ?a) (clear ?d) (not (at ?a ?c))  (not (available ?b))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and )
	:effect (and ))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?d ?c) (on ?a ?a) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a))
	:effect (and (at ?b ?c) (not (at ?a ?c))  (not (at ?d ?c))  (not (on ?a ?a))  (not (in ?a ?d))  (not (lifting ?a ?b))  (not (available ?b))  (not (clear ?a))))

)