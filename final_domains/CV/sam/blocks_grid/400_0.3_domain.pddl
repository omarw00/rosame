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
	:effect (and  
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a))
	:effect (and (not (arm-empty ))
		(not (clear ?a)) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (clear ?a)(not (= ?a ?b)))
	:effect (and (not (clear ?a)) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (on ?a ?b)(not (= ?a ?b)))
	:effect (and (arm-empty )
		(not (on ?a ?b))
		(on ?a ?b) 
		))

)