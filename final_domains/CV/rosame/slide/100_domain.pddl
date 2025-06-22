(define (domain gripper-strips-4ops)
(:requirements :adl :equality)
(:types object
 tile position - object)
(:predicates (at ?a - tile ?b - position ?c - position) (blank ?a - position ?b - position) (inc ?a - position ?b - position) (dec ?a - position ?b - position))

(:action move-up
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (at ?a ?c ?d) (blank ?a ?b) (blank ?a ?c) (inc ?b ?c) (dec ?c ?b))
  :effect (and (not (at ?a ?b ?d)) (not (blank ?a ?c))))

(:action move-down
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (at ?a ?c ?d) (blank ?a ?c) (inc ?c ?b) (dec ?b ?c))
  :effect (and (blank ?a ?b)))

(:action move-left
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?c ?b ?d) (blank ?a ?b) (blank ?c ?b) (inc ?a ?c) (dec ?c ?a))
  :effect (and (not (blank ?c ?b))))

(:action move-right
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (at ?c ?b ?d) (blank ?a ?b) (blank ?c ?b) (inc ?c ?a) (dec ?a ?c))
  :effect (and))

)