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
	:effect (and  
		))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and )
	:effect (and  
		))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b)
	(fuel-level ?a ?d)
	(next ?d ?e)
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
	(fuel-level ?a ?f)
	(next ?d ?e)
	(next ?e ?d)
	(next ?e ?f)
	(next ?f ?d)
	(next ?f ?e)(not (= ?e ?f))
	(not (= ?b ?c))
	(not (= ?d ?e))
	(not (= ?d ?f)))
	:effect (and (at ?a ?c)
		(not (fuel-level ?a ?d)) 
		))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (at ?a ?b)
	(fuel-level ?a ?c)
	(next ?c ?d)
	(next ?d ?c)(not (= ?c ?d)))
	:effect (and (fuel-level ?a ?d)
		(not (fuel-level ?a ?c)) 
		))

)