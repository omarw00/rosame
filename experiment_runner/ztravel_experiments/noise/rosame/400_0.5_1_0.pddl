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
	:precondition (and )
	:effect (and (at ?c ?b) (in ?a ?c)))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?c ?b) (in ?a ?c))
	:effect (and  (not (at ?c ?b))  (not (in ?a ?c))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d) (fuel-level ?a ?e) (next ?d ?e))
	:effect (and (at ?a ?c) (next ?e ?d) (not (at ?a ?b))  (not (fuel-level ?a ?d))  (not (fuel-level ?a ?e))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?d) (fuel-level ?a ?f) (next ?e ?d) (next ?e ?f))
	:effect (and (at ?a ?c) (not (at ?a ?b))  (not (fuel-level ?a ?d))  (not (fuel-level ?a ?f))))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (next ?d ?c))
	:effect (and (fuel-level ?a ?c) (fuel-level ?a ?d)))

)