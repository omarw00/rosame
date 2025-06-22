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
	(clear ?a)
	(not (holding ?a))
	(on-table ?a))
	:effect (and  
		))

(:action stack
	:parameters (?a - block ?b - block)
	:precondition (and (arm-empty )
	(clear ?a)
	(not (on ?b ?a))
	(on-table ?a)(not (= ?a ?b)))
	:effect (and (not (clear ?a))
		(not (on-table ?a)) 
		))

(:action unstack
	:parameters (?a - block ?b - block)
	:precondition (and (not (on ?b ?a))(not (= ?a ?b)))
	:effect (and (arm-empty )
		(clear ?a)
		(on-table ?a) 
		))

)