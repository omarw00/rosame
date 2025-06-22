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
	:precondition (and (in ?a ?c))
	:effect (and ))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?a ?b) (at ?c ?b) (in ?a ?c))
	:effect (and  (not (at ?a ?b))  (not (at ?c ?b))  (not (in ?a ?c))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b) (at ?a ?c) (fuel-level ?a ?d) (fuel-level ?a ?e) (next ?d ?e) (next ?e ?d))
	:effect (and ))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (fuel-level ?a ?f))
	:effect (and  (not (fuel-level ?a ?f))))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?c) (fuel-level ?a ?d) (next ?c ?d) (next ?d ?c))
	:effect (and ))

)