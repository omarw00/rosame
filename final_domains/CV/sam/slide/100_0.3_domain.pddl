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
	:precondition (and (at ?d ?a ?b)
	(blank ?a ?c)(not (= ?a ?c))
	(not (= ?a ?b))
	(not (= ?b ?c)))
	:effect (and (at ?d ?a ?c)
		(not (at ?d ?a ?b))
		(not (blank ?a ?c)) 
		))

(:action move-down
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (at ?d ?a ?b)(not (= ?a ?c))
	(not (= ?a ?b))
	(not (= ?b ?c)))
	:effect (and (at ?d ?a ?c)
		(blank ?a ?b)
		(not (at ?d ?a ?b)) 
		))

(:action move-left
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?c))
	(not (= ?a ?b))
	(not (= ?b ?c)))
	:effect (and (at ?d ?c ?b)
		(blank ?a ?b)
		(not (at ?d ?a ?b)) 
		))

(:action move-right
	:parameters (?a - position ?b - position ?c - position ?d - tile)
	:precondition (and (not (= ?a ?c))
	(not (= ?a ?b))
	(not (= ?b ?c)))
	:effect (and  
		))

)