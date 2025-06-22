(define (domain zeno-travel)
(:requirements :typing :negative-preconditions :equality)
(:types 	atransportable city flevel - object
	aircraft person - atransportable
)

(:predicates (at ?x - atransportable ?c - city)
	(in ?p - person ?a - aircraft)
	(fuel-level ?a - aircraft ?l - flevel)
	(next ?l1 - flevel ?l2 - flevel)
)

(:action board
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?a ?b) (at ?c ?b))
	:effect (and  (not (at ?c ?b))))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?a ?b))
	:effect (and (at ?c ?b)))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d))
	:effect (and (at ?a ?c) (fuel-level ?a ?e) (not (at ?a ?b))  (not (fuel-level ?a ?d))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d))
	:effect (and (at ?a ?c) (fuel-level ?a ?f) (not (at ?a ?b))  (not (fuel-level ?a ?d))))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?c))
	:effect (and (fuel-level ?a ?d) (not (fuel-level ?a ?c))))

)