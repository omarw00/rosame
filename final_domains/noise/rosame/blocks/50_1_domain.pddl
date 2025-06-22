(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action pickup
  :parameters (?a - block)
  :precondition (and (holding ?a))
  :effect (and (arm-empty) (clear ?a) (on-table ?a) (not (holding ?a))))

(:action putdown
  :parameters (?a - block)
  :precondition (and (clear ?a))
  :effect (and (arm-empty) (on-table ?a) (holding ?a) (not (clear ?a))))

(:action stack
  :parameters (?a - block ?b - block)
  :precondition (and (clear ?b))
  :effect (and (arm-empty) (clear ?a) (holding ?a) (on ?a ?b) (not (clear ?b))))

(:action unstack
  :parameters (?a - block ?b - block)
  :precondition (and (clear ?a) (on-table ?b))
  :effect (and (arm-empty) (clear ?b) (holding ?a) (on ?a ?b) (not (clear ?a))))

)