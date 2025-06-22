(define (domain gripper-strips-4ops)
(:requirements :adl :equality)
(:types object)
(:predicates (arm-empty) (clear ?a - object) (on-table ?a - object) (holding ?a - object) (on ?a - object ?b - object))

(:action pickup
  :parameters (?a - object)
  :precondition (and (arm-empty) (clear ?a) (on-table ?a))
  :effect (and (not (on-table ?a))))

(:action putdown
  :parameters (?a - object)
  :precondition (and (arm-empty) (clear ?a))
  :effect (and (on-table ?a)))

(:action stack
  :parameters (?a - object ?b - object)
  :precondition (and (clear ?a) (clear ?b) (holding ?a))
  :effect (and (arm-empty) (on ?a ?b) (not (clear ?b)) (not (holding ?a))))

(:action unstack
  :parameters (?a - object ?b - object)
  :precondition (and (arm-empty) (clear ?a) (on ?a ?b))
  :effect (and (clear ?b) (holding ?a) (not (arm-empty)) (not (clear ?a)) (not (on ?a ?b))))

)