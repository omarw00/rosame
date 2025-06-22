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
	:precondition (and (at ?a ?b)
	(at ?a ?c))
	:effect (and (in ?b ?c)
		(not (at ?a ?b)) 
		))

(:action load-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?a)
	(at ?b ?c))
	:effect (and (in ?c ?a)
		(not (at ?b ?c)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and (at ?a ?c)
	(in ?b ?c)
	(not (at ?a ?b)))
	:effect (and (at ?a ?b)
		(not (in ?b ?c)) 
		))

(:action unload-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?a)
	(in ?c ?a))
	:effect (and (at ?b ?c)
		(not (in ?c ?a)) 
		))

(:action drive-truck
	:parameters (?a - city ?b - location ?c - location ?d - truck)
	:precondition (and (at ?b ?d)
	(in-city ?a ?b)
	(in-city ?a ?c)(not (= ?b ?c)))
	:effect (and (at ?c ?d)
		(not (at ?b ?d)) 
		))

(:action fly-airplane
	:parameters (?a - airplane ?b - airport ?c - airport)
	:precondition (and (at ?b ?a)(not (= ?b ?c)))
	:effect (and (at ?c ?a)
		(not (at ?b ?a)) 
		))

)