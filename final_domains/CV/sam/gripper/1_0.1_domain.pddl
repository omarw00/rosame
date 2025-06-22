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
	:precondition (and (not (= ?from ?to)))
	:effect (and  
		))

(:action pick
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and (at ?ball ?room)
	(at-robby ?room)
	(free ?gripper)
	(not (carry ?ball ?gripper)))
	:effect (and (carry ?ball ?gripper)
		(not (at ?ball ?room))
		(not (free ?gripper)) 
		))

(:action drop
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and )
	:effect (and  
		))

)