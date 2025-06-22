(define (domain blocksworld)
(:requirements :strips :equality :negative-preconditions)
(:types 	block - object
)

(:predicates (arm-empty )
	(clear ?a - block)
	(on-table ?a - block)
	(holding ?a - block)
	(on ?a - block ?b - block)
)

(:action pickup
	:parameters (?a - block)
	:precondition (and (on-table ?a))
	:effect (and (holding ?a)
		(not (on-table ?a)) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(holding ?a))
	:effect (and (not (holding ?a))
		(on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?a)(not (= ?a ?b)))
	:effect (and (not (clear ?a))
		(not (clear ?b))
		(not (holding ?a))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (on ?a ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(holding ?a)
		(not (on ?a ?b)) 
		))

)