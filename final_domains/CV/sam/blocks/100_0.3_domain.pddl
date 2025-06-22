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
	:effect (and  
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
	(clear ?a)
	(clear ?b)(not (= ?a ?b)))
	:effect (and (not (clear ?b))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(on ?a ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(not (on ?a ?b)) 
		))

)