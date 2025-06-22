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
	:precondition (and (at ?a ?b) (at ?c ?b) (in ?a ?c))
	:effect (and  (not (at ?a ?b))  (not (at ?c ?b))  (not (in ?a ?c))))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (at ?a ?b) (at ?c ?b) (in ?a ?c))
	:effect (and  (not (at ?a ?b))  (not (at ?c ?b))  (not (in ?a ?c))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and )
	:effect (and ))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (at ?a ?b) (at ?a ?c) (fuel-level ?a ?d) (fuel-level ?a ?e) (fuel-level ?a ?f) (next ?d ?e) (next ?d ?f) (next ?e ?d) (next ?e ?f) (next ?f ?d) (next ?f ?e))
	:effect (and  (not (at ?a ?b))  (not (at ?a ?c))  (not (fuel-level ?a ?d))  (not (fuel-level ?a ?e))  (not (fuel-level ?a ?f))  (not (next ?d ?e))  (not (next ?d ?f))  (not (next ?e ?d))  (not (next ?e ?f))  (not (next ?f ?d))  (not (next ?f ?e))))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b) (fuel-level ?a ?c) (fuel-level ?a ?d) (next ?c ?d) (next ?d ?c))
	:effect (and  (not (at ?a ?b))  (not (fuel-level ?a ?c))  (not (fuel-level ?a ?d))  (not (next ?c ?d))  (not (next ?d ?c))))

)