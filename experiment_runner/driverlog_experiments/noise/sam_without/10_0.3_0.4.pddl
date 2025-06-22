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
	(at ?truck ?loc))
	:effect (and (in ?obj ?truck)
		(not (at ?obj ?loc)) 
		))

(:action unload-truck
	:parameters (?loc - location ?obj - package ?truck - truck)
	:precondition (and (at ?truck ?loc)
	(empty ?truck)
	(in ?obj ?truck))
	:effect (and (at ?obj ?loc)
		(not (in ?obj ?truck)) 
		))

(:action board-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?driver ?loc)
	(at ?truck ?loc)
	(empty ?truck))
	:effect (and (driving ?driver ?truck)
		(not (at ?driver ?loc))
		(not (empty ?truck)) 
		))

(:action disembark-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?truck ?loc)
	(driving ?driver ?truck))
	:effect (and (at ?driver ?loc)
		(empty ?truck) 
		))

(:action drive-truck
	:parameters (?driver - driver ?loc-from - location ?loc-to - location ?truck - truck)
	:precondition (and (not (= ?loc-from ?loc-to)))
	:effect (and  
		))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (at ?driver ?loc-from)(not (= ?loc-from ?loc-to)))
	:effect (and (at ?driver ?loc-to)
		(not (at ?driver ?loc-from)) 
		))

)