(define (domain zeno-travel)
(:requirements :typing :strips)
(:types transportable city flevel - object
        aircraft person - transportable)

(:predicates (at ?x - transportable ?c - city)
             (in ?a - aircraft ?p - person)
	     (fuel-level ?a - aircraft ?l - flevel)
	     (next ?l1 - flevel ?l2 - flevel))


(:action board
 :parameters (?a - person ?b - aircraft ?c - city)

 :precondition (and (at ?a ?c)
                 (at ?b ?c))
 :effect (and (not (at ?a ?c))
              (in ?a ?b)))

(:action debark
 :parameters (?a - person ?b - aircraft ?c - city)

 :precondition (and (in ?a ?b)
                 (at ?b ?c))
 :effect (and (not (in ?a ?b))
              (at ?a ?c)))

(:action fly
 :parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel)

 :precondition (and (at ?a ?b)
                 (fuel-level ?a ?d)
		 (next ?e ?d))
 :effect (and (not (at ?a ?b))
              (at ?a ?c)
              (not (fuel-level ?a ?d))
              (fuel-level ?a ?e)))

(:action zoom
 :parameters (?a - aircraft ?b - city ?c - city ?d - flevel ?e - flevel ?f - flevel)

 :precondition (and (at ?a ?b)
                 (fuel-level ?a ?d)
		 (next ?e ?d)
		 (next ?f ?e)
		)
 :effect (and (not (at ?a ?b))
              (at ?a ?c)
              (not (fuel-level ?a ?d))
              (fuel-level ?a ?f)
	)
)

(:action refuel
 :parameters (?a - aircraft ?b - city ?c - flevel ?d - flevel)

 :precondition (and (fuel-level ?a ?c)
                 (next ?c ?d)
                 (at ?a ?b))
 :effect (and (fuel-level ?a ?d) (not (fuel-level ?a ?c))))


)