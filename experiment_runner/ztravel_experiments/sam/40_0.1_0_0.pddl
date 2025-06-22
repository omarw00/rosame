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
	:precondition (and (at ?a ?c)
	(at ?p ?c))
	:effect (and (in ?p ?a)
		(not (at ?p ?c)) 
		))

(:action debark
	:parameters (?a - aircraft ?c - city ?p - person)
	:precondition (and (at ?a ?c)
	(in ?p ?a))
	:effect (and (at ?p ?c)
		(not (in ?p ?a)) 
		))

(:action fly
	:parameters (?a - aircraft ?c1 - city ?c2 - city ?l1 - flevel ?l2 - flevel)
	:precondition (and (at ?a ?c1)
	(fuel-level ?a ?l1)(not (= ?l1 ?l2))
	(not (= ?c1 ?c2)))
	:effect (and (at ?a ?c2)
		(fuel-level ?a ?l2)
		(not (at ?a ?c1))
		(not (fuel-level ?a ?l1)) 
		))

(:action zoom
	:parameters (?a - aircraft ?c1 - city ?c2 - city ?l1 - flevel ?l2 - flevel ?l3 - flevel)
	:precondition (and (at ?a ?c1)
	(fuel-level ?a ?l1)(not (= ?l1 ?l2))
	(not (= ?l1 ?l3))
	(not (= ?c1 ?c2))
	(not (= ?l2 ?l3)))
	:effect (and (at ?a ?c2)
		(fuel-level ?a ?l3)
		(not (at ?a ?c1))
		(not (fuel-level ?a ?l1)) 
		))

(:action refuel
	:parameters (?a - aircraft ?c - city ?l - flevel ?l1 - flevel)
	:precondition (and (at ?a ?c)
	(fuel-level ?a ?l)(not (= ?l ?l1)))
	:effect (and (fuel-level ?a ?l1)
		(not (fuel-level ?a ?l)) 
		))

)