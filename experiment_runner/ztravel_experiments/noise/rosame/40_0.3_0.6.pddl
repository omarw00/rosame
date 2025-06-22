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
	:precondition (and (at ?c ?b))
	:effect (and (in ?a ?c)))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?a ?b) (at ?c ?b) (in ?a ?c))
	:effect (and  (not (at ?a ?b))  (not (at ?c ?b))  (not (in ?a ?c))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (at ?a ?c) (fuel-level ?a ?d) (fuel-level ?a ?e) (next ?d ?e))
	:effect (and (next ?e ?d) (not (at ?a ?b))  (not (at ?a ?c))  (not (fuel-level ?a ?d))  (not (fuel-level ?a ?e))  (not (next ?d ?e))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (fuel-level ?a ?e) (next ?d ?e) (next ?f ?d))
	:effect (and (at ?a ?b) (at ?a ?c) (fuel-level ?a ?d) (fuel-level ?a ?f) (next ?d ?f) (next ?e ?d) (next ?e ?f) (next ?f ?e)))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?c) (fuel-level ?a ?d) (next ?c ?d) (next ?d ?c))
	:effect (and  (not (fuel-level ?a ?c))  (not (fuel-level ?a ?d))  (not (next ?d ?c))))

)