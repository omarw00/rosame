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

(:action drive
  :parameters (?y - place ?z - place ?x - truck)
  :precondition (and (at ?x ?y))
  :effect (and (not (at ?x ?y)) (at ?x ?z)))

(:action lift
  :parameters (?y - crate ?x - hoist ?p - place ?z - surface)
  :precondition (and (at ?x ?p) (available ?x) (at ?y ?p) (on ?y ?z) (clear ?y))
  :effect (and (not (at ?y ?p)) (lifting ?x ?y) (not (clear ?y)) (not (available ?x)) (clear ?z) (not (on ?y ?z))))

(:action drop
  :parameters (?y - crate ?x - hoist ?p - place ?z - surface)
  :precondition (and (at ?x ?p) (at ?z ?p) (clear ?z) (lifting ?x ?y))
  :effect (and (available ?x) (not (lifting ?x ?y)) (at ?y ?p) (not (clear ?z)) (clear ?y) (on ?y ?z)))

(:action load
  :parameters (?y - crate ?x - hoist ?p - place ?z - truck)
  :precondition (and (at ?x ?p) (at ?z ?p) (lifting ?x ?y))
  :effect (and (not (lifting ?x ?y)) (in ?y ?z) (available ?x)))

(:action unload
  :parameters (?y - crate ?x - hoist ?p - place ?z - truck)
  :precondition (and (at ?x ?p) (at ?z ?p) (available ?x) (in ?y ?z))
  :effect (and (not (in ?y ?z)) (not (available ?x)) (lifting ?x ?y)))
)