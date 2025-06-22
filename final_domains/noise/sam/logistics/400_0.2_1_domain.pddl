(define (domain logistics-strips)
(:requirements :strips :typing :equality :negative-preconditions)
(:types 	movable location city - object
	obj transport - movable
	truck airplane - transport
	airport - location
)

(:predicates (at ?a - location ?b - movable)
	(in ?a - obj ?b - transport)
	(in-city ?a - city ?b - location)
)

(:action load-truck
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and (at ?a ?b))
	:effect (and (in ?b ?c) 
		))

(:action load-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?c)
	(in ?c ?a))
	:effect (and (not (in ?c ?a)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and (at ?a ?b)
	(in ?b ?c))
	:effect (and (not (in ?b ?c)) 
		))

(:action unload-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?c))
	:effect (and (in ?c ?a)
		(not (at ?b ?c)) 
		))

(:action drive-truck
	:parameters (?a - city ?b - location ?c - location ?d - truck)
	:precondition (and (at ?b ?d)
	(at ?c ?d)(not (= ?b ?c)))
	:effect (and (at ?b ?d)
		(at ?c ?d)
		(not (at ?b ?d))
		(not (at ?c ?d)) 
		))

(:action fly-airplane
	:parameters (?a - airplane ?b - airport ?c - airport)
	:precondition (and (at ?c ?a)(not (= ?b ?c)))
	:effect (and (at ?b ?a)
		(not (at ?c ?a)) 
		))

)