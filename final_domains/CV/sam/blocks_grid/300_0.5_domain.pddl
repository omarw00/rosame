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
	(on-table ?a))
	:effect (and (arm-empty )
		(clear ?a)
		(not (arm-empty ))
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
		(on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)(not (= ?a ?b)))
	:effect (and (holding ?b)
		(not (arm-empty ))
		(not (clear ?a))
		(not (clear ?b))
		(on-table ?a) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (on-table ?a)(not (= ?a ?b)))
	:effect (and (arm-empty )
		(not (on-table ?a))
		(on-table ?a) 
		))

)