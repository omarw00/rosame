(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action pickup
  :parameters (?a - block)
  :precondition (and)
  :effect (and (arm-empty) (clear ?a) (on-table ?a) (holding ?a)))

(:action putdown
  :parameters (?a - block)
  :precondition (and)
  :effect (and (arm-empty) (clear ?a) (on-table ?a) (holding ?a)))

(:action stack
  :parameters (?a - block ?b - block)
  :precondition (and)
  :effect (and (arm-empty) (clear ?a) (clear ?b) (holding ?a) (on ?a ?b)))

(:action unstack
  :parameters (?a - block ?b - block)
  :precondition (and)
  :effect (and (arm-empty) (clear ?a) (clear ?b) (holding ?a) (on ?a ?b)))

)