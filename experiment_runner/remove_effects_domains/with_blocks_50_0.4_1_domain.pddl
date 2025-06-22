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
	:precondition (and (clear ?a))
	:effect (and (arm-empty )
		(holding ?a) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(holding ?a))
	:effect (and (not (arm-empty ))
		(not (holding ?a))
		(on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(holding ?a)(not (= ?a ?b)))
	:effect (and (clear ?a)
		(clear ?b)
		(not (arm-empty ))
		(not (holding ?a))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (on ?a ?b)(not (= ?a ?b)))
	:effect (and (arm-empty )
		(holding ?a)
		(not (on ?a ?b)) 
		))

)