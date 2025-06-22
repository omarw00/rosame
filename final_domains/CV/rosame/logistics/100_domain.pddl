(define (domain gripper-strips-4ops)
(:requirements :adl :equality)
(:types object
 movable location city - object
 obj transport - movable
 truck airplane - transport
 airport - location)
(:predicates (at ?a - movable ?b - location) (in ?a - obj ?b - transport) (in-city ?a - location ?b - city))

(:action load-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and (at ?a ?c))
  :effect (and))

(:action load-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a) (in ?c ?a))
  :effect (and))

(:action unload-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and (at ?a ?b) (at ?a ?c))
  :effect (and))

(:action unload-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a))
  :effect (and))

(:action drive-truck
  :parameters (?a - city ?b - location ?c - location ?d - truck)
  :precondition (and (at ?b ?d) (at ?c ?d) (in-city ?a ?b) (in-city ?a ?c))
  :effect (and (not (at ?b ?d))))

(:action fly-airplane
  :parameters (?a - airplane ?b - airport ?c - airport)
  :precondition (and (at ?c ?a))
  :effect (and))

)