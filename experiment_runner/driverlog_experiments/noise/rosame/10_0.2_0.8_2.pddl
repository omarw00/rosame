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
	:precondition (and (at ?b ?a) (at ?c ?a) (in ?b ?c) (empty ?c))
	:effect (and  (not (at ?b ?a))  (not (in ?b ?c))))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and (at ?c ?a) (empty ?c))
	:effect (and (at ?b ?a) (in ?b ?c)))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (driving ?a ?c) (empty ?c))
	:effect (and (at ?c ?b) (not (at ?a ?b))  (not (driving ?a ?c))  (not (empty ?c))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (at ?c ?b) (driving ?a ?c) (empty ?c))
	:effect (and ))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (link ?b ?c) (link ?c ?b) (path ?c ?b))
	:effect (and (at ?d ?c)))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (path ?c ?b))
	:effect (and (at ?a ?b) (at ?a ?c)))

)