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
		))

(:action putdown
	:parameters (?a - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(holding ?a)
	(on-table ?a))
	:effect (and (clear ?a) 
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?a)
	(on ?b ?a)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?a)
		(not (holding ?a))
		(on ?a ?b) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(clear ?b)
	(holding ?a)
	(on ?a ?b)
	(on ?b ?a)
	(on-table ?a)
	(on-table ?b)(not (= ?a ?b)))
	:effect (and (clear ?b)
		(holding ?a) 
		))

)