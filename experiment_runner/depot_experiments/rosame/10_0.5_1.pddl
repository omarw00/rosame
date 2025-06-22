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
	:precondition (and (at ?c ?b))
	:effect (and (at ?c ?a) (not (at ?c ?b))))

(:action lift
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (on ?a ?a))
	:effect (and (at ?a ?c) (on ?a ?d) (available ?b) (clear ?a) (clear ?d)))

(:action drop
	:parameters (?a - crate ?b - hoist ?c - place ?d - surface)
	:precondition (and (at ?a ?c) (at ?b ?c) (on ?a ?a) (on ?a ?d) (available ?b))
	:effect (and (clear ?a) (clear ?d) (not (at ?a ?c))  (not (on ?a ?d))  (not (available ?b))))

(:action load
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?b ?c) (on ?a ?a) (clear ?a))
	:effect (and (in ?a ?d) (available ?b)))

(:action unload
	:parameters (?a - crate ?b - hoist ?c - place ?d - truck)
	:precondition (and (at ?a ?c) (at ?b ?c) (at ?d ?c) (on ?a ?a) (in ?a ?d) (lifting ?a ?b) (available ?b) (clear ?a))
	:effect (and  (not (at ?a ?c))  (not (at ?d ?c))  (not (on ?a ?a))  (not (available ?b))  (not (clear ?a))))

)