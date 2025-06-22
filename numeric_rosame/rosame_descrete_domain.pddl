(define (domain driverlog)
(:requirements :typing :fluents)
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
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and (at ?b ?a) (at ?c ?a))
	:effect (and (in ?b ?c) (not (at ?b ?a))))

(:action unload-truck
	:parameters (?a - location ?b - obj ?c - truck)
	:precondition (and (at ?c ?a) (in ?b ?c))
	:effect (and (at ?b ?a) (not (in ?b ?c))))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (at ?c ?b) (empty ?c))
	:effect (and (driving ?a ?c) (not (at ?a ?b))  (not (empty ?c))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (driving ?a ?c))
	:effect (and (at ?a ?b) (at ?c ?b) (empty ?c) (not (driving ?a ?c))))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (driving ?a ?d) (link ?b ?c))
	:effect (and (at ?d ?b) (at ?d ?c)))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (path ?b ?c))
	:effect (and (at ?a ?b) (at ?a ?c)))

)