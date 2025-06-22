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
	:precondition (and (at ?b ?a))
	:effect (and (at ?c ?a) (in ?b ?c) (empty ?c)))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and ))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (at ?c ?b) (driving ?a ?c) (empty ?c))
	:effect (and ))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?a ?b) (at ?d ?b) (at ?d ?c) (link ?b ?c) (path ?c ?b) (empty ?d))
	:effect (and  (not (at ?d ?b))  (not (at ?d ?c))))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b) (at ?a ?c) (path ?c ?b))
	:effect (and  (not (at ?a ?b))  (not (at ?a ?c))))

)