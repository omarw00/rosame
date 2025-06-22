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
	:effect (and (holding ?a)
		(not (on-table ?a)) 
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?a))
	:effect (and (arm-empty )
		(clear ?a)
		(not (holding ?a))
		(on-table ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?a)
	(on ?a ?b)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (not (holding ?a)) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?b)
	(on ?a ?b)(not (= ?a ?b)))
	:effect (and (not (on ?a ?b)) 
		))

)