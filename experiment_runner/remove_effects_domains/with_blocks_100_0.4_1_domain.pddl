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
		(on-table ?a) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty ))
	:effect (and (clear ?a)
		(holding ?a)
		(not (arm-empty )) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )(not (= ?a ?b)))
	:effect (and (clear ?a)
		(clear ?b)
		(not (arm-empty ))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (clear ?a)
	(on ?a ?b)(not (= ?a ?b)))
	:effect (and (arm-empty )
		(holding ?a)
		(not (clear ?a))
		(not (on ?a ?b)) 
		))

)