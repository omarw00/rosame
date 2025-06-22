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
	:precondition (and (at-robby ?from)
	(at-robby ?to)(not (= ?from ?to)))
	:effect (and  
		))

(:action pick
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and (at ?ball ?room)
	(at-robby ?room)
	(carry ?ball ?gripper)
	(free ?gripper))
	:effect (and (not (at ?ball ?room)) 
		))

(:action drop
	:parameters (?ball - ball ?gripper - gripper ?room - room)
	:precondition (and (at ?ball ?room)
	(at-robby ?room)
	(carry ?ball ?gripper)
	(free ?gripper))
	:effect (and  
		))

)