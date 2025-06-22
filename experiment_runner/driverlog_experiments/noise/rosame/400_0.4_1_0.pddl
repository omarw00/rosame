(define (domain driverlog)
(:requirements :typing :negative-preconditions :equality)
(:types 	location locatable - object
	driver truck package - locatable
)

(:predicates (at ?obj - locatable ?loc - location)
	(in ?obj1 - package ?obj - truck)
	(driving ?d - driver ?v - truck)
	(link ?x - location ?y - location)
	(path ?x - location ?y - location)
	(empty ?v - truck)
)

(:action load-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and (at ?b ?a) (in ?b ?c)))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and (at ?b ?a) (in ?b ?c)))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (driving ?a ?c))
	:effect (and (empty ?c) (not (at ?a ?b))  (not (driving ?a ?c))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and (at ?a ?b) (at ?c ?b) (driving ?a ?c) (empty ?c)))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and )
	:effect (and (at ?d ?b) (at ?d ?c)))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and )
	:effect (and (at ?a ?b) (at ?a ?c)))

)