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
	:parameters (?loc - location ?obj - package ?truck - truck)
	:precondition (and (at ?obj ?loc)
	(in ?obj ?truck))
	:effect (and (at ?obj ?loc)
		(in ?obj ?truck)
		(not (at ?obj ?loc))
		(not (in ?obj ?truck)) 
		))

(:action unload-truck
	:parameters (?loc - location ?obj - package ?truck - truck)
	:precondition (and (in ?obj ?truck))
	:effect (and (at ?obj ?loc)
		(in ?obj ?truck)
		(not (in ?obj ?truck)) 
		))

(:action board-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?driver ?loc)
	(driving ?driver ?truck)
	(empty ?truck))
	:effect (and (driving ?driver ?truck)
		(empty ?truck)
		(not (at ?driver ?loc))
		(not (driving ?driver ?truck))
		(not (empty ?truck)) 
		))

(:action disembark-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?truck ?loc)
	(empty ?truck))
	:effect (and (at ?driver ?loc)
		(driving ?driver ?truck) 
		))

(:action drive-truck
	:parameters (?driver - driver ?loc-from - location ?loc-to - location ?truck - truck)
	:precondition (and (at ?truck ?loc-from)
	(at ?truck ?loc-to)(not (= ?loc-from ?loc-to)))
	:effect (and (at ?truck ?loc-from)
		(at ?truck ?loc-to)
		(not (at ?truck ?loc-from))
		(not (at ?truck ?loc-to)) 
		))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (at ?driver ?loc-from)
	(at ?driver ?loc-to)(not (= ?loc-from ?loc-to)))
	:effect (and (at ?driver ?loc-from)
		(at ?driver ?loc-to)
		(not (at ?driver ?loc-from))
		(not (at ?driver ?loc-to)) 
		))

)