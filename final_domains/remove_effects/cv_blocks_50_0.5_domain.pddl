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
	:effect (and (arm-empty ) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(on-table ?a))
	:effect (and  
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?b)
	(on-table ?a)(not (= ?a ?b)))
	:effect (and (not (on-table ?a))
		(on ?a ?b)
		(on-table ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (clear ?a)
	(on ?a ?b)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?a)
		(not (on ?a ?b)) 
		))

)