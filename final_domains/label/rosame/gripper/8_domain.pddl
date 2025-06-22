(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action move
  :parameters (?a - room ?b - room)
  :precondition (and (at-robby ?a))
  :effect (and (at-robby ?b) (not (at-robby ?a))))

(:action pick
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and (at-robby ?c) (at ?a ?c) (free ?b))
  :effect (and (carry ?a ?b) (not (at ?a ?c)) (not (free ?b))))

(:action drop
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and (at-robby ?c) (carry ?a ?b))
  :effect (and (at ?a ?c) (free ?b) (not (carry ?a ?b))))

)