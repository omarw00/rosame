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
  :precondition (and (in ?b ?c))
  :effect (and))

(:action load-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a))
  :effect (and))

(:action unload-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and)
  :effect (and))

(:action unload-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a) (in ?c ?a))
  :effect (and))

(:action drive-truck
  :parameters (?a - city ?b - location ?c - location ?d - truck)
  :precondition (and (at ?b ?d) (at ?c ?d) (in-city ?a ?b) (in-city ?a ?c))
  :effect (and))

(:action fly-airplane
  :parameters (?a - airplane ?b - airport ?c - airport)
  :precondition (and (at ?b ?a) (at ?c ?a))
  :effect (and))

)