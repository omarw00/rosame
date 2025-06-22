(define (domain zeno-travel)
(:requirements :typing :negative-preconditions :equality)
(:types 	transportable city flevel - object
	aircraft person - transportable
)

(:predicates (at ?x - transportable ?c - city)
	(in ?a - aircraft ?p - person)
	(fuel-level ?a - aircraft ?l - flevel)
	(next ?l1 - flevel ?l2 - flevel)
)

(:action board
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(at ?b ?c))
	:effect (and (in ?a ?b)
		(not (at ?a ?c)) 
		))

(:action debark
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?b ?c))
	:effect (and (at ?a ?c)
		(not (in ?a ?b)) 
		))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b)
	(fuel-level ?a ?d)
	(next ?e ?d)(not (= ?b ?c))
	(not (= ?d ?e)))
	:effect (and (at ?a ?c)
		(fuel-level ?a ?e)
		(not (at ?a ?b))
		(not (fuel-level ?a ?d)) 
		))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (at ?a ?b)
	(fuel-level ?a ?d)
	(next ?e ?d)
	(next ?f ?e)(not (= ?b ?c))
	(not (= ?d ?f))
	(not (= ?d ?e))
	(not (= ?e ?f)))
	:effect (and (at ?a ?c)
		(fuel-level ?a ?f)
		(not (at ?a ?b))
		(not (fuel-level ?a ?d)) 
		))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b)
	(fuel-level ?a ?c)
	(next ?c ?d)(not (= ?c ?d)))
	:effect (and (fuel-level ?a ?d)
		(not (fuel-level ?a ?c)) 
		))

)