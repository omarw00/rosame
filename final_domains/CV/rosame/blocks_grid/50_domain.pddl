(define (domain gripper-strips-4ops)
(:requirements :adl :equality)
(:types object)
(:predicates (arm-empty) (clear ?a - object) (on-table ?a - object) (holding ?a - object) (on ?a - object ?b - object))

(:action pickup
  :parameters (?a - object)
  :precondition (and (arm-empty) (clear ?a))
  :effect (and))

(:action putdown
  :parameters (?a - object)
  :precondition (and (arm-empty) (clear ?a))
  :effect (and))

(:action stack
  :parameters (?a - object ?b - object)
  :precondition (and (arm-empty) (clear ?a))
  :effect (and))

(:action unstack
  :parameters (?a - object ?b - object)
  :precondition (and (arm-empty) (clear ?a))
  :effect (and))

)