(define (domain gripper-strips)
	(:requirements :adl :equality)
	(:types room ball gripper - object)
   (:predicates (at-robby ?r - room)
		(at ?b - ball ?r - room)
		(free ?g - gripper)
		(carry ?b - ball ?g - gripper))

(:action move
  :parameters (?a - room ?b - room)
  :precondition (and (at-robby ?a))
  :effect (and (at-robby ?b) (not (at-robby ?a))))

(:action pick
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and)
  :effect (and (at ?a ?c) (free ?b) (carry ?a ?b)))

(:action drop
  :parameters (?a - ball ?b - gripper ?c - room)
  :precondition (and)
  :effect (and (at ?a ?c) (free ?b) (carry ?a ?b)))

)