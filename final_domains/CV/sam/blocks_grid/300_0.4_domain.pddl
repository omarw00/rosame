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
	:precondition (and (on-table ?a))
	:effect (and (arm-empty )
		(clear ?a)
		(not (on-table ?a)) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(on-table ?a))
	:effect (and (not (arm-empty ))
		(not (clear ?a))
		(not (on-table ?a)) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)(not (= ?a ?b)))
	:effect (and (not (arm-empty ))
		(not (clear ?a)) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )(not (= ?a ?b)))
	:effect (and (on-table ?a) 
		))

)