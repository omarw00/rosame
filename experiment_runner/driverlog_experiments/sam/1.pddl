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
	(at ?truck ?loc)
	(empty ?truck))
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
	:precondition (and (at ?truck ?loc) (at ?driver ?loc) (driving ?driver ?truck) (empty ?truck))
	:effect (and  
		))

(:action disembark-truck
	:parameters (?driver - driver ?loc - location ?truck - truck)
	:precondition (and (at ?truck ?loc) (at ?driver ?loc) (driving ?driver ?truck) (empty ?truck))
	:effect (and  
		))

(:action drive-truck
	:parameters (?driver - driver ?loc-from - location ?loc-to - location ?truck - truck)
	:precondition (and (empty ?truck) (driving ?driver ?truck) (at ?driver ?loc-to) (at ?driver ?loc-from) (at ?truck ?loc-to) (at ?truck ?loc-from) (path ?loc-to ?loc-from) (path ?loc-from ?loc-to) (link ?loc-from ?loc-to) (link ?loc-to ?loc-from) (not (= ?loc-from ?loc-to)))
	:effect (and  
		))

(:action walk
	:parameters (?driver - driver ?loc-from - location ?loc-to - location)
	:precondition (and (at ?driver ?loc-from)(not (= ?loc-from ?loc-to)))
	:effect (and (at ?driver ?loc-to)
		(not (at ?driver ?loc-from)) 
		))

)