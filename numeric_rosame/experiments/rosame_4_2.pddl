(define (domain zeno-travel)
(:requirements :typing :fluents)
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
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?a ?c) (at ?b ?c))
	:effect (and (in ?a ?b) (not (at ?a ?c))))

(:action debark
	:parameters (?a - person ?b - aircraft ?c - city)
	:precondition (and (at ?b ?c) (in ?a ?b))
	:effect (and (at ?a ?c) (not (in ?a ?b))))

(:action fly
	:parameters (?a - aircraft ?b - city ?c - city)
	:precondition (and (at ?a ?b))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

(:action zoom
	:parameters (?a - aircraft ?b - city ?c - city)
	:precondition (and )
	:effect (and (at ?a ?b) (at ?a ?c)))

(:action refuel
	:parameters (?a - aircraft ?b - city)
	:precondition (and (at ?a ?b))
	:effect (and ))

)