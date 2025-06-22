(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action move
  :parameters (?a - room ?b - room)
  :precondition (and)
  :effect (and (at-robby ?a) (at-robby ?b)))

(:action pick
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and)
  :effect (and (at ?a ?c) (free ?b) (carry ?a ?b)))

(:action drop
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and)
  :effect (and (at ?a ?c) (free ?b) (carry ?a ?b)))

)