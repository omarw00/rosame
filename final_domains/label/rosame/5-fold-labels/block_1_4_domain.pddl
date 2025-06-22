(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action pickup
  :parameters (?a - block)
  :precondition (and (arm-empty) (clear ?a) (on-table ?a))
  :effect (and (holding ?a) (not (arm-empty)) (not (clear ?a)) (not (on-table ?a))))

(:action putdown
  :parameters (?a - block)
  :precondition (and (arm-empty) (clear ?a) (on-table ?a) (holding ?a))
  :effect (and (not (arm-empty)) (not (clear ?a)) (not (on-table ?a)) (not (holding ?a))))

(:action stack
  :parameters (?a - block ?b - block)
  :precondition (and (arm-empty) (clear ?a) (clear ?b) (on-table ?a) (on-table ?b) (holding ?a) (holding ?b) (on ?a ?b) (on ?b ?a))
  :effect (and (not (arm-empty)) (not (clear ?a)) (not (clear ?b)) (not (on-table ?a)) (not (on-table ?b)) (not (holding ?a)) (not (holding ?b)) (not (on ?a ?b)) (not (on ?b ?a))))

(:action unstack
  :parameters (?a - block ?b - block)
  :precondition (and (arm-empty) (clear ?a) (clear ?b) (on-table ?a) (on-table ?b) (holding ?a) (holding ?b) (on ?a ?b) (on ?b ?a))
  :effect (and))

)