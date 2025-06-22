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
		(not (on-table ?a)) 
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
	:precondition (and (arm-empty )
	(clear ?a)
	(on ?a ?b)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (not (arm-empty ))
		(not (clear ?a))
		(not (on ?a ?b))
		(not (on-table ?b)) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (on ?a ?b)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (arm-empty )
		(not (on ?a ?b))
		(not (on-table ?b))
		(on ?a ?b) 
		))

)