(define (domain blocksworld-4ops)
(:requirements :strips :equality)
(:types block - object)(:predicates (arm-empty) (clear ?a - block) (on-table ?a - block) (holding ?a - block) (on ?a - block ?b - block))

(:action move-up
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (blank ?a ?c) (dec ?c ?b))
  :effect (and (at ?a ?c ?d) (blank ?a ?b) (not (at ?a ?b ?d)) (not (blank ?a ?c))))

(:action move-down
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (blank ?a ?c) (inc ?c ?b) (dec ?b ?c))
  :effect (and (at ?a ?c ?d) (blank ?a ?b) (not (at ?a ?b ?d)) (not (blank ?a ?c))))

(:action move-left
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (blank ?c ?b) (inc ?a ?c) (dec ?c ?a))
  :effect (and (at ?c ?b ?d) (blank ?a ?b) (not (at ?a ?b ?d)) (not (blank ?c ?b))))

(:action move-right
  :parameters (?a - position ?b - position ?c - position ?d - tile)
  :precondition (and (at ?a ?b ?d) (blank ?c ?b) (inc ?c ?a) (dec ?a ?c))
  :effect (and (at ?c ?b ?d) (blank ?a ?b) (not (at ?a ?b ?d)) (not (blank ?c ?b))))

)