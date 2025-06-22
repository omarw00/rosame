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
	:precondition (and (not (= ?b ?c))
	(not (= ?d ?e)))
	:effect (and  
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
	:precondition (and (at ?a ?b)
	(next ?c ?d)
	(next ?d ?c)(not (= ?c ?d)))
	:effect (and (fuel-level ?a ?c)
		(fuel-level ?a ?d) 
		))

)