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
		(on-table ?a) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(on-table ?a))
	:effect (and  
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(holding ?a)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?a)
		(clear ?b)
		(not (holding ?a))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(on ?a ?b)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (holding ?a)
		(not (on ?a ?b)) 
		))

)