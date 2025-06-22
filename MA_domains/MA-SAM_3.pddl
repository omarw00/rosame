(define (domain blocks)
(:requirements :typing :negative-preconditions :equality)
(:types 	agent block - object
)

(:predicates (on ?x - block ?y - block)
	(ontable ?x - block)
	(clear ?x - block)
	(holding ?agent - agent ?x - block)
	(handempty ?agent - agent)
	(dummy-additional-predicate )
)

(:action pick-up
	:parameters (?a - agent ?x - block)
	:precondition (and (clear ?x)
	(handempty ?a)
	(ontable ?x))
	:effect (and (holding ?a ?x)
		(not (clear ?x))
		(not (handempty ?a))
		(not (ontable ?x)) 
		))

(:action put-down
	:parameters (?a - agent ?x - block)
	:precondition (and (holding ?a ?x))
	:effect (and (clear ?x)
		(handempty ?a)
		(not (holding ?a ?x))
		(ontable ?x) 
		))

(:action stack
	:parameters (?a - agent ?x - block ?y - block)
	:precondition (and (clear ?y)
	(holding ?a ?x)(not (= ?x ?y)))
	:effect (and (clear ?x)
		(handempty ?a)
		(not (clear ?y))
		(not (holding ?a ?x))
		(on ?x ?y) 
		))

(:action unstack
	:parameters (?a - agent ?x - block ?y - block)
	:precondition (and (clear ?x)
	(handempty ?a)
	(on ?x ?y)(not (= ?x ?y)))
	:effect (and (clear ?y)
		(holding ?a ?x)
		(not (clear ?x))
		(not (handempty ?a))
		(not (on ?x ?y)) 
		))

(:action dummy-add-predicate-action
	:parameters (?agent - object)
	:precondition (and )
	:effect (and (dummy-additional-predicate ) 
		))

(:action dummy-del-predicate-action
	:parameters (?agent - object)
	:precondition (and )
	:effect (and (not (dummy-additional-predicate )) 
		))

)