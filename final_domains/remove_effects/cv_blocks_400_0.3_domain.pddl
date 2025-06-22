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
	:effect (and  
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?a))
	:effect (and (on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?a)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and  
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