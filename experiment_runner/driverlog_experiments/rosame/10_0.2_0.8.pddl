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
	:precondition (and (at ?b ?a))
	:effect (and (in ?b ?c) (not (at ?b ?a))))

(:action unload-truck
	:parameters (?a - location ?b - package ?c - truck)
	:precondition (and )
	:effect (and (in ?b ?c)))

(:action board-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?a ?b) (at ?c ?b))
	:effect (and (driving ?a ?c) (empty ?c) (not (at ?a ?b))))

(:action disembark-truck
	:parameters (?a - driver ?b - location ?c - truck)
	:precondition (and (at ?c ?b) (empty ?c))
	:effect (and (at ?a ?b) (driving ?a ?c) (not (empty ?c))))

(:action drive-truck
	:parameters (?a - driver ?b - location ?c - location ?d - truck)
	:precondition (and (at ?a ?b) (at ?a ?c) (at ?d ?b) (at ?d ?c) (driving ?a ?d) (link ?b ?c) (link ?c ?b) (path ?b ?c) (path ?c ?b) (empty ?d))
	:effect (and  (not (at ?a ?b))  (not (at ?a ?c))  (not (at ?d ?b))  (not (at ?d ?c))  (not (driving ?a ?d))  (not (link ?b ?c))  (not (link ?c ?b))  (not (path ?b ?c))  (not (path ?c ?b))  (not (empty ?d))))

(:action walk
	:parameters (?a - driver ?b - location ?c - location)
	:precondition (and (at ?a ?b))
	:effect (and (at ?a ?c) (not (at ?a ?b))))

)