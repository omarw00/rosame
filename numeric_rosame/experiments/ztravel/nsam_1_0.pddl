(define (domain zeno-travel)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	aircraft person - movable
	movable city - object
)

(:predicates (at ?x - movable ?c - city)
	(in ?p - person ?a - aircraft)
)

(:functions (fuel ?a - aircraft)
	(distance ?c1 - city ?c2 - city)
	(slow-burn ?a - aircraft)
	(fast-burn ?a - aircraft)
	(capacity ?a - aircraft)
	(total-fuel-used )
	(onboard ?a - aircraft)
	(zoom-limit ?a - aircraft)
)

(:action board
	:parameters (?p - person ?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(at ?p ?c)
	(not (in ?p ?a))
	(= (capacity ?a) 3030)
	(= (fast-burn ?a) 2)
	(= (fuel ?a) 931)
	(= (onboard ?a) 0)
	(= (slow-burn ?a) 1)
	(= (total-fuel-used ) 4263)
	(= (zoom-limit ?a) 7))
	:effect (and (in ?p ?a)
		(not (at ?p ?c))
(assign (onboard ?a) 1)))

(:action debark
	:parameters (?p - person ?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(in ?p ?a)
	(not (at ?p ?c))
	(= (capacity ?a) 3030)
	(= (fast-burn ?a) 2)
	(= (fuel ?a) 249)
	(= (onboard ?a) 1)
	(= (slow-burn ?a) 1)
	(= (total-fuel-used ) 4945)
	(= (zoom-limit ?a) 7))
	:effect (and (at ?p ?c)
		(not (in ?p ?a))
(assign (onboard ?a) 0)))

(:action fly
	:parameters (?a - aircraft ?c1 - city ?c2 - city)
	:precondition (and (at ?a ?c1)
	(not (at ?a ?c2))
	(= (capacity ?a) 3030)
	(= (distance ?c1 ?c2) 682)
	(= (distance ?c2 ?c1) 682)
	(= (fast-burn ?a) 2)
	(= (fuel ?a) 931)
	(= (onboard ?a) 1)
	(= (slow-burn ?a) 1)
	(= (total-fuel-used ) 4263)
	(= (zoom-limit ?a) 7))
	:effect (and (at ?a ?c2)
		(not (at ?a ?c1))
(assign (fuel ?a) 249)		
(assign (total-fuel-used ) 4945)))

(:action zoom
	:parameters (?a - aircraft ?c1 - city ?c2 - city)
	:precondition (and (at ?a ?c1)
	(not (at ?a ?c2))
	(= (capacity ?a) 5739)
	(= (distance ?c1 ?c2) 609)
	(= (distance ?c2 ?c1) 609)
	(= (fast-burn ?a) 7)
	(= (fuel ?a) 5739)
	(= (onboard ?a) 0)
	(= (slow-burn ?a) 2)
	(= (total-fuel-used ) 0)
	(= (zoom-limit ?a) 4))
	:effect (and (at ?a ?c2)
		(not (at ?a ?c1))
(assign (total-fuel-used ) 4263)		
(assign (fuel ?a) 1476)))

(:action refuel
	:parameters (?a - aircraft ?c - city)
	:precondition (and (at ?a ?c)
	(= (capacity ?a) 5739)
	(= (fast-burn ?a) 7)
	(= (fuel ?a) 1053)
	(= (onboard ?a) 0)
	(= (slow-burn ?a) 2)
	(= (total-fuel-used ) 0)
	(= (zoom-limit ?a) 4))
	:effect (and 
(assign (fuel ?a) 5739)))

)