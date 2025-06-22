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
	(clear ?a))
	:effect (and (not (arm-empty )) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )(not (= ?a ?b)))
	:effect (and  
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )(not (= ?a ?b)))
	:effect (and  
		))

)