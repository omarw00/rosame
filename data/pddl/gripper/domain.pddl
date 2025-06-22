(define (domain gripper-strips)
	(:requirements :adl :equality)
	(:types room ball gripper - object)
   (:predicates (at-robby ?r - room)
		(at ?b - ball ?r - room)
		(free ?g - gripper)
		(carry ?b - ball ?g - gripper))

   (:action move
       :parameters  (?a - room ?b - room)
       :precondition (and (at-robby ?a) (not (= ?a ?b)))
       :effect (and  (at-robby ?b)
		     (not (at-robby ?a))))


   (:action pick
       :parameters (?a - ball ?b - gripper ?c - room)
       :precondition  (and (at ?a ?c) (at-robby ?c) (free ?b))
       :effect (and (carry ?a ?b)
		    (not (at ?a ?c))
		    (not (free ?b))))


   (:action drop
       :parameters  (?a - ball ?b - gripper ?c - room)
       :precondition  (and (carry ?a ?b) (at-robby ?c))
       :effect (and (at ?a ?c)
		    (free ?b)
		    (not (carry ?a ?b)))))