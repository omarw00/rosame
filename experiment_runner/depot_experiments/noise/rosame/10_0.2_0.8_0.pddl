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
	:precondition (and (at ?a ?c) (at ?b ?c) (available ?b) (clear ?a))
	:effect (and (on ?a ?d) (lifting ?a ?b) (clear ?d) (not (at ?a ?c))  (not (available ?b))  (not (clear ?a))))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?b ?c) (on ?a ?a) (clear ?d))
	:effect (and (at ?a ?c) (on ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a) (not (clear ?d))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?a) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a))
	:effect (and  (not (at ?a ?c))  (not (at ?b ?c))  (not (at ?d ?c))  (not (on ?a ?a))  (not (in ?a ?d))  (not (lifting ?a ?b))  (not (available ?b))  (not (clear ?a))))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?b ?c) (available ?b))
	:effect (and (at ?a ?c) (at ?d ?c) (on ?a ?a)))

)