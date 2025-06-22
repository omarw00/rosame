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
	:precondition (and (at ?b ?a) (empty ?c))
	:effect (and (in ?b ?c) (not (at ?b ?a))))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and (at ?b ?a) (at ?c ?a) (in ?b ?c) (empty ?c)))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b))
	:effect (and (driving ?a ?c) (empty ?c) (not (at ?a ?b))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and )
	:effect (and (at ?a ?b) (at ?c ?b) (driving ?a ?c) (empty ?c)))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?a ?c) (driving ?a ?d) (path ?b ?c) (empty ?d))
	:effect (and (at ?d ?b)))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b) (at ?a ?c))
	:effect (and  (not (at ?a ?b))  (not (at ?a ?c))))

)