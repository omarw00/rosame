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
	(on-table ?a))
	:effect (and (not (on-table ?a)) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(not (holding ?a)))
	:effect (and  
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?b)
	(holding ?a)
	(holding ?b)(not (= ?a ?b)))
	:effect (and (not (clear ?b))
		(not (holding ?a))
		(not (holding ?b))
		(on ?a ?b)
		(on-table ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(on ?a ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(not (on ?a ?b)) 
		))

)