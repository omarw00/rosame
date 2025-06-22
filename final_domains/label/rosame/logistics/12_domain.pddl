(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action load-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and (at ?a ?b) (at ?a ?c))
  :effect (and (in ?b ?c) (not (at ?a ?b))))

(:action load-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a) (at ?b ?c) (in ?c ?a))
  :effect (and (not (at ?b ?a)) (not (at ?b ?c)) (not (in ?c ?a))))

(:action unload-truck
  :parameters (?a - location ?b - obj ?c - truck)
  :precondition (and)
  :effect (and))

(:action unload-airplane
  :parameters (?a - airplane ?b - airport ?c - obj)
  :precondition (and (at ?b ?a) (at ?b ?c) (in ?c ?a))
  :effect (and (not (at ?b ?a)) (not (at ?b ?c)) (not (in ?c ?a))))

(:action drive-truck
  :parameters (?a - city ?b - location ?c - location ?d - truck)
  :precondition (and)
  :effect (and))

(:action fly-airplane
  :parameters (?a - airplane ?b - airport ?c - airport)
  :precondition (and (at ?b ?a) (at ?c ?a))
  :effect (and (not (at ?b ?a)) (not (at ?c ?a))))

)