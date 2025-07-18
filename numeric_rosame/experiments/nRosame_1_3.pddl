(define (domain driverlog)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck obj - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - obj ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:functions (time-to-walk ?l1 - location ?l2 - location)
	(time-to-drive ?l1 - location ?l2 - location)
	(driven )
	(walked )
)

(:action load-truck
	:parameters (?a - obj ?b - truck ?c - location)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(<= (* (driven ) -1) 0)
	(<= (driven ) 54)
	(= (walked ) 0))
	:effect (and (in ?a ?b)
		(not (at ?a ?c)) 
		))

(:action unload-truck
	:parameters (?a - obj ?b - truck ?c - location)
	:precondition (and (at ?b ?c)
	(in ?a ?b)
	(<= (* (driven ) -1) -51)
	(<= (driven ) 57)
	(= (walked ) 0))
	:effect (and (at ?a ?c)
		(not (in ?a ?b)) 
		))

(:action board-truck
	:parameters (?a - driver ?b - truck ?c - location)
	:precondition (and (at ?a ?c)
	(at ?b ?c)
	(empty ?b)
	(= (driven ) 0)
	(= (walked ) 0))
	:effect (and (driving ?a ?b)
		(not (at ?a ?c))
		(not (empty ?b)) 
		))

(:action disembark-truck
	:parameters (?a - driver ?b - truck ?c - location)
	:precondition (and (at ?b ?c)
	(driving ?a ?b)
	(= (driven ) 83)
	(= (walked ) 0))
	:effect (and (at ?a ?c)
		(empty ?b)
		(not (driving ?a ?b)) 
		))

(:action drive-truck
	:parameters (?a - truck ?b - location ?c - location ?d - driver)
	:precondition (and (at ?a ?b)
	(driving ?d ?a)
	(link ?b ?c)
	(link ?c ?b)
	(<= (* (time-to-drive ?c ?b) -1) -3)
	(<= (+ (* (driven ) -0.6854) (* (time-to-drive ?c ?b) -0.7282)) -37.1382)
	(<= (+ (* (driven ) 0.9916) (* (time-to-drive ?c ?b) -0.1293)) 53.1584)
	(<= (+ (* (time-to-drive ?c ?b) 0.9158) (* (driven ) 0.4017)) 46.7052)
	(= (time-to-drive ?b ?c) (time-to-drive ?c ?b))
	(= (walked ) 0))
	:effect (and (at ?a ?c)
		(not (at ?a ?b))
(increase (driven ) (time-to-drive ?b ?c))))

)