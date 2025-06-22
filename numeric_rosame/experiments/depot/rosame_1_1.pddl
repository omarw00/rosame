(define (domain depot)
(:requirements :typing :fluents)
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

(:functions (load_limit ?t - truck)
	(current_load ?t - truck)
	(weight ?c - crate)
	(fuel-cost )
)

(:action drive
	:parameters (?a - truck ?b - place ?c - place)
	:precondition (and (at ?a ?b))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

(:action lift
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?b ?d) (on ?b ?c) (available ?a) (clear ?b))
	:effect (and (at ?a ?d) (at ?c ?d) (lifting ?a ?b) (clear ?c) (not (at ?b ?d))  (not (on ?b ?c))  (not (available ?a))  (not (clear ?b))))

(:action drop
	:parameters (?a - hoist ?b - crate ?c - surface ?d - place)
	:precondition (and (at ?a ?d) (at ?c ?d) (lifting ?a ?b) (clear ?c))
	:effect (and (at ?b ?d) (on ?b ?c) (available ?a) (clear ?b) (not (lifting ?a ?b))  (not (clear ?c))))

(:action load
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d) (at ?c ?d) (lifting ?a ?b))
	:effect (and (in ?b ?c) (available ?a) (not (lifting ?a ?b))))

(:action unload
	:parameters (?a - hoist ?b - crate ?c - truck ?d - place)
	:precondition (and (at ?a ?d) (at ?c ?d) (in ?b ?c) (available ?a))
	:effect (and (lifting ?a ?b) (not (in ?b ?c))  (not (available ?a))))

)