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
	(clear ?a)
	(holding ?a)
	(on-table ?a))
	:effect (and (not (on-table ?a)) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a))
	:effect (and  
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?b)
	(on ?a ?b)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (not (clear ?b))
		(not (holding ?b))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?b)
	(on ?a ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(not (on ?a ?b)) 
		))

)