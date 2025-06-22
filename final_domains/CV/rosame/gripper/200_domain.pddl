(define (domain gripper-strips-4ops)
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
  :precondition (and (at-robby ?c) (at ?a ?c))
  :effect (and (carry ?a ?b) (not (at ?a ?c))))

(:action drop
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and (at-robby ?c) (free ?b))
  :effect (and (at ?a ?c)))

)