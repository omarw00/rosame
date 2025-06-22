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
	:parameters (?a - aircraft ?c - city ?p - person)
	:precondition (and )
	:effect (and  
		))

(:action debark
	:parameters (?a - aircraft ?c - city ?p - person)
	:precondition (and )
	:effect (and  
		))

(:action fly
	:parameters (?a - aircraft ?c1 - city ?c2 - city ?l1 - flevel ?l2 - flevel)
	:precondition (and (not (= ?l1 ?l2))
	(not (= ?c1 ?c2)))
	:effect (and  
		))

(:action zoom
	:parameters (?a - aircraft ?c1 - city ?c2 - city ?l1 - flevel ?l2 - flevel ?l3 - flevel)
	:precondition (and (not (= ?l1 ?l2))
	(not (= ?c1 ?c2))
	(not (= ?l2 ?l3))
	(not (= ?l1 ?l3)))
	:effect (and  
		))

(:action refuel
	:parameters (?a - aircraft ?c - city ?l - flevel ?l1 - flevel)
	:precondition (and (not (= ?l ?l1)))
	:effect (and  
		))

)