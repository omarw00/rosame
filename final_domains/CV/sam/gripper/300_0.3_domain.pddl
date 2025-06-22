(define (domain gripper-strips)
(:requirements :adl :equality :negative-preconditions)
(:types 	room ball gripper - object
)

(:predicates (at-robby ?r - room)
	(at ?b - ball ?r - room)
	(free ?g - gripper)
	(carry ?b - ball ?g - gripper)
)

(:action move
	:parameters (?from - room ?to - room)
	:precondition (and (at-robby ?from)(not (= ?from ?to)))
	:effect (and (at-robby ?to)
		(not (at-robby ?from)) 
		))

(:action pick
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and (at-robby ?room))
	:effect (and  
		))

(:action drop
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and (at-robby ?room)
	(carry ?ball ?gripper))
	:effect (and (free ?gripper)
		(not (carry ?ball ?gripper)) 
		))

)