(define (domain gripper-strips)
(:requirements :adl :equality :negative-preconditions)
(:types 	room ball gripper - object
)

(:predicates (at-robby ?r - room)
	(at ?b - ball ?r - room)
	(free ?g - gripper)
	(carry ?b - ball ?g - gripper)
)

(:action pickup
  :parameters (?a - object)
  :precondition (and (arm-empty) (clear ?a) (on-table ?a))
  :effect (and (holding ?a) (not (arm-empty)) (not (clear ?a)) (not (on-table ?a))))

(:action putdown
  :parameters (?a - object)
  :precondition (and (holding ?a))
  :effect (and (arm-empty) (clear ?a) (on-table ?a) (not (holding ?a))))

(:action stack
  :parameters (?a - object ?b - object)
  :precondition (and (clear ?b) (on-table ?b) (holding ?a))
  :effect (and (arm-empty) (clear ?a) (on ?a ?b) (not (clear ?b)) (not (holding ?a))))

(:action unstack
  :parameters (?a - object ?b - object)
  :precondition (and (arm-empty) (clear ?a) (on-table ?b) (on ?a ?b))
  :effect (and (clear ?b) (holding ?a) (not (arm-empty)) (not (clear ?a)) (not (on ?a ?b))))

)