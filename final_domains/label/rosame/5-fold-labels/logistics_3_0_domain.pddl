(define (domain logistics-strips)
  (:requirements :strips :typing :equality)
  (:types
  	movable location city - object
  	obj transport - movable
  	truck airplane - transport
  	airport - location
  )
  (:predicates
		(at ?obj - movable ?loc - location)
		(in ?obj1 - obj ?obj2 - transport)
		(in-city ?loc - location ?city - city))

(:action load-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and (at ?a ?b) (at ?a ?c))
  :effect (and (in ?b ?c) (not (at ?a ?b))))

(:action load-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and)
  :effect (and (at ?b ?a) (at ?b ?c) (in ?c ?a)))

(:action unload-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and (at ?a ?c) (in ?b ?c))
  :effect (and (at ?a ?b) (not (in ?b ?c))))

(:action unload-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a) (in ?c ?a))
  :effect (and (at ?b ?c) (not (in ?c ?a))))

(:action drive-truck
  :parameters (?a - city ?b - location ?c - location ?d - truck)
  :precondition (and)
  :effect (and (at ?b ?d) (at ?c ?d) (in-city ?a ?b) (in-city ?a ?c)))

(:action fly-airplane
  :parameters (?a - airplane ?b - airport ?c - airport)
  :precondition (and)
  :effect (and (at ?b ?a) (at ?c ?a)))

)