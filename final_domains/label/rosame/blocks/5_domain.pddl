(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

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
  :precondition (and (clear ?b) (holding ?a))
  :effect (and (arm-empty) (clear ?a) (on-table ?b) (on ?a ?b) (not (clear ?b)) (not (holding ?a))))

(:action unstack
  :parameters (?a - object ?b - object)
  :precondition (and (arm-empty) (clear ?a) (on ?a ?b))
  :effect (and (clear ?b) (holding ?a) (not (arm-empty)) (not (clear ?a)) (not (on ?a ?b))))

)