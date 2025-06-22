(define (domain zeno-travel)
(:requirements :typing)
(:types transportable city flevel - object
	aircraft person - transportable
)

(:predicates (at ?x - transportable ?c - city)
	(in ?a - aircraft ?p - person)
	(fuel-level ?a - aircraft ?l - flevel)
	(next ?l1 - flevel ?l2 - flevel)
)

(:action board
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?a ?c) (at ?b ?c))
	:effect (and  (not (at ?a ?c))))

(:action debark
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?b ?c))
	:effect (and (at ?a ?c)))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d) (next ?e ?d))
	:effect (and (at ?a ?c) (fuel-level ?a ?e) (not (at ?a ?b))  (not (fuel-level ?a ?d))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d) (next ?e ?d) (next ?f ?e))
	:effect (and (at ?a ?c) (fuel-level ?a ?f) (not (at ?a ?b))  (not (fuel-level ?a ?d))))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?c) (next ?c ?d))
	:effect (and (fuel-level ?a ?d) (not (fuel-level ?a ?c))))

)