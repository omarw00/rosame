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
	:precondition (and (empty ?truck))
	:effect (and  
		))

(:action unload-truck
	:parameters (?loc - location ?obj - package ?truck - truck)
	:precondition (and (at ?obj ?loc)
	(empty ?truck))
	:effect (and (in ?obj ?truck) 
		))

(:action board-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?driver ?loc)
	(empty ?truck))
	:effect (and  
		))

(:action disembark-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and )
	:effect (and  
		))

(:action drive-truck
	:parameters (?driver - driver ?loc-from - location ?loc-to - location ?truck - truck)
	:precondition (and (at ?driver ?loc-to)
	(at ?truck ?loc-to)
	(empty ?truck)
	(link ?loc-to ?loc-from)
	(path ?loc-from ?loc-to)(not (= ?loc-from ?loc-to)))
	:effect (and (at ?truck ?loc-from)
		(not (at ?truck ?loc-to)) 
		))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (not (= ?loc-from ?loc-to)))
	:effect (and  
		))

)