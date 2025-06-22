(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)
(:predicates (clear ?x - block)
             (on-table ?x - block)
             (arm-empty)
             (holding ?x - block)
             (on ?x - block ?y - block))

(:action pickup
  :parameters (?a - block)
  :precondition (and (clear ?a) (on-table ?a) (arm-empty))
  :effect (and (holding ?a) (not (clear ?a)) (not (on-table ?a))
               (not (arm-empty))))

(:action putdown
  :parameters  (?a - block)
  :precondition (and (holding ?a))
  :effect (and (clear ?a) (arm-empty) (on-table ?a)
               (not (holding ?a))))

(:action stack
  :parameters  (?a - block ?b - block)
  :precondition (and  (clear ?b) (holding ?a) (not (= ?a ?b)))
  :effect (and (arm-empty) (clear ?a) (on ?a ?b)
               (not (clear ?b)) (not (holding ?a))))

(:action unstack
  :parameters  (?a - block ?b - block)
  :precondition (and (on ?a ?b) (clear ?a) (arm-empty) (not (= ?a ?b)))
  :effect (and (holding ?a) (clear ?b)
               (not (on ?a ?b)) (not (clear ?a)) (not (arm-empty)))))