(define (domain zeno-travel)
(:requirements :typing :negative-preconditions :equality)
(:types 	atransportable city flevel - object
	aircraft person - atransportable
)

(:predicates (at ?x - atransportable ?c - city)
	(in ?a - aircraft ?p - person)
	(fuel-level ?a - aircraft ?l - flevel)
	(next ?l1 - flevel ?l2 - flevel)
)

(:action board
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?c ?b))
	:effect (and (in ?a ?c) (not (at ?c ?b))))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (in ?a ?c))
	:effect (and (at ?c ?b) (not (in ?a ?c))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d) (fuel-level ?a ?e))
	:effect (and (at ?a ?c) (next ?d ?e) (next ?e ?d) (not (at ?a ?b))  (not (fuel-level ?a ?d))  (not (fuel-level ?a ?e))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and )
	:effect (and (at ?a ?c)))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (next ?c ?d) (next ?d ?c))
	:effect (and (fuel-level ?a ?c) (fuel-level ?a ?d)))

)