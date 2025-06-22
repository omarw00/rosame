(define (domain gripper-strips)
(:requirements :adl :equality)
(:types object
 room ball gripper - object)
(:predicates (at-robby ?a - room) (at ?a - ball ?b - room) (free ?a - gripper) (carry ?a - ball ?b - gripper))

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