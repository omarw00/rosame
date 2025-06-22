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
	:precondition (and (in ?b ?c) (empty ?c))
	:effect (and (at ?b ?a) (not (in ?b ?c))))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (at ?b ?a) (at ?c ?a) (empty ?c))
	:effect (and (in ?b ?c) (not (at ?b ?a))))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (driving ?a ?c))
	:effect (and (empty ?c) (not (driving ?a ?c))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and (at ?c ?b) (empty ?c)))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (link ?b ?c) (link ?c ?b) (path ?c ?b) (empty ?d))
	:effect (and (at ?d ?b) (at ?d ?c)))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?c) (link ?b ?c))
	:effect (and (at ?a ?b) (not (at ?a ?c))))

)