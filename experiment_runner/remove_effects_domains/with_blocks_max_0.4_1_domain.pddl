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
	:precondition (and )
	:effect (and (arm-empty )
		(holding ?a) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty ))
	:effect (and (clear ?a)
		(not (arm-empty )) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )(not (= ?a ?b)))
	:effect (and (clear ?a)
		(not (arm-empty ))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (not (= ?a ?b)))
	:effect (and (arm-empty )
		(clear ?b)
		(holding ?a) 
		))

)