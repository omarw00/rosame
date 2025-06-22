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
	:effect (and (in ?a ?c)
		(not (at ?c ?b)) 
		))

(:action debark
	:parameters (?a - aircraft ?b - city ?c - person)
	:precondition (and (in ?a ?c))
	:effect (and (at ?c ?b)
		(not (in ?a ?c)) 
		))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)
	:precondition (and (at ?a ?b)
	(at ?a ?c)
	(fuel-level ?a ?d)
	(fuel-level ?a ?e)
	(next ?d ?e)
	(next ?e ?d)(not (= ?b ?c))
	(not (= ?d ?e)))
	:effect (and (not (at ?a ?b))
		(not (at ?a ?c))
		(not (fuel-level ?a ?d))
		(not (fuel-level ?a ?e)) 
		))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)
	:precondition (and (not (= ?e ?f))
	(not (= ?b ?c))
	(not (= ?d ?e))
	(not (= ?d ?f)))
	:effect (and  
		))

(:action refuel
	:parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)
	:precondition (and (next ?c ?d)
	(next ?d ?c)(not (= ?c ?d)))
	:effect (and (fuel-level ?a ?c)
		(fuel-level ?a ?d) 
		))

)