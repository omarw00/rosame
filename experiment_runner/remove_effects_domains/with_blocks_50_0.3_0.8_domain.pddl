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
	:precondition (and (arm-empty )
	(clear ?a))
	:effect (and (holding ?a) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(holding ?a))
	:effect (and (clear ?a)
		(not (holding ?a))
		(on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?b)
	(holding ?a)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?a)
		(not (holding ?a))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(on ?a ?b)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(holding ?a)
		(not (on ?a ?b)) 
		))

)