(define (domain blocks)
(:requirements :typing)
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
	:parameters (?a - agent ?b - block)
	:precondition (and (ontable ?b) (clear ?b) (handempty ?a))
	:effect (and (holding ?a ?b) (not (ontable ?b))  (not (clear ?b))  (not (handempty ?a))))

(:action put-down
	:parameters (?a - agent ?b - block)
	:precondition (and (holding ?a ?b))
	:effect (and (ontable ?b) (clear ?b) (handempty ?a) (not (holding ?a ?b))))

(:action stack
	:parameters (?a - agent ?b - block ?c - block)
	:precondition (and (clear ?c) (holding ?a ?b))
	:effect (and (on ?b ?c) (clear ?b) (handempty ?a) (not (clear ?c))  (not (holding ?a ?b))))

(:action unstack
	:parameters (?a - agent ?b - block ?c - block)
	:precondition (and (on ?b ?c) (clear ?b) (handempty ?a))
	:effect (and (clear ?c) (holding ?a ?b) (not (on ?b ?c))  (not (clear ?b))  (not (handempty ?a))))

(:action dummy-add-predicate-action
	:parameters (?a - object)
	:precondition (and )
	:effect (and ))

(:action dummy-del-predicate-action
	:parameters (?a - object)
	:precondition (and )
	:effect (and ))

)