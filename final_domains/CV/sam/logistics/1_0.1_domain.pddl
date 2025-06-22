(define (domain gripper-strips-4ops)
(:requirements :adl :equality :negative-preconditions)
(:types 	tile position - object
)

(:predicates (at ?a - tile ?b - position ?c - position)
	(blank ?a - position ?b - position)
	(inc ?a - position ?b - position)
	(dec ?a - position ?b - position)
)

(:action move-up
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?b))
	(not (= ?a ?c))
	(not (= ?b ?c)))
	:effect (and (blank ?b ?c) 
		))

(:action move-down
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?b))
	(not (= ?a ?c))
	(not (= ?b ?c)))
	:effect (and (blank ?b ?c) 
		))

(:action move-left
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?b))
	(not (= ?a ?c))
	(not (= ?b ?c)))
	:effect (and (blank ?b ?c) 
		))

(:action move-right
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?b))
	(not (= ?a ?c))
	(not (= ?b ?c)))
	:effect (and (blank ?b ?c) 
		))

)