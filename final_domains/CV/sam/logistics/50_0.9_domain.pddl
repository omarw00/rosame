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
	:precondition (and (at ?a ?c))
	:effect (and (in ?b ?c) 
		))

(:action load-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?a)
	(at ?b ?c)
	(in ?c ?a))
	:effect (and (at ?b ?c)
		(in ?c ?a)
		(not (at ?b ?c))
		(not (in ?c ?a)) 
		))

(:action unload-truck
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and )
	:effect (and  
		))

(:action unload-airplane
	:parameters (?a - airplane ?b - airport ?c - obj)
	:precondition (and (at ?b ?a)
	(at ?b ?c)
	(in ?c ?a)
	(not (at ?b ?c)))
	:effect (and (at ?b ?a)
		(at ?b ?c)
		(in ?c ?a)
		(not (at ?b ?a))
		(not (at ?b ?c))
		(not (in ?c ?a)) 
		))

(:action drive-truck
	:parameters (?a - city ?b - location ?c - location ?d - truck)
	:precondition (and (in-city ?a ?b)
	(in-city ?a ?c)(not (= ?b ?c)))
	:effect (and  
		))

(:action fly-airplane
	:parameters (?a - airplane ?b - airport ?c - airport)
	:precondition (and (at ?b ?a)
	(at ?c ?a)(not (= ?b ?c)))
	:effect (and (at ?b ?a)
		(at ?c ?a)
		(not (at ?b ?a))
		(not (at ?c ?a)) 
		))

)