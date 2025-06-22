(define (domain Depot)
(:requirements :strips :typing)
(:types place locatable - object
	depot distributor - place
        truck hoist surface - locatable
        pallet crate - surface)

(:predicates (at ?x - locatable ?y - place)
             (on ?x - crate ?y - surface)
             (in ?x - crate ?y - truck)
             (lifting ?x - hoist ?y - crate)
             (available ?x - hoist)
             (clear ?x - surface))

(:action Drive
  :parameters (?a - truck ?b - place ?c - place)
  :precondition (and (at ?a ?b))
  :effect (and (not (at ?a ?b)) (at ?a ?c)))

(:action Lift
  :parameters (?a - hoist ?b - crate ?c - surface ?d - place)
  :precondition (and (at ?a ?d) (available ?a) (at ?b ?d) (on ?b ?c) (clear ?b))
  :effect (and (not (at ?b ?d)) (lifting ?a ?b) (not (clear ?b)) (not (available ?a)) (clear ?c) (not (on ?b ?c))))

(:action Drop
  :parameters (?a - hoist ?b - crate ?c - surface ?d - place)
  :precondition (and (at ?a ?d) (at ?c ?d) (clear ?c) (lifting ?a ?b))
  :effect (and (available ?a) (not (lifting ?a ?b)) (at ?b ?d) (not (clear ?c)) (clear ?b)(on ?b ?c)))

(:action Load
  :parameters (?a - hoist ?b - crate ?c - truck ?d - place)
  :precondition (and (at ?a ?d) (at ?c ?d) (lifting ?a ?b))
  :effect (and (not (lifting ?a ?b)) (in ?b ?c) (available ?a)))

(:action Unload
  :parameters (?a - hoist ?b - crate ?c - truck ?d - place)
  :precondition (and (at ?a ?d) (at ?c ?d) (available ?a) (in ?b ?c))
  :effect (and (not (in ?b ?c)) (not (available ?a)) (lifting ?a ?b)))
)