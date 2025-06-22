(define (domain driverlog)
  (:requirements :typing)
  (:types         location locatable - object
		driver truck package - locatable

  )
  (:predicates
		(at ?obj - locatable ?loc - location)
		(in ?obj1 - package ?obj - truck)
		(driving ?d - driver ?v - truck)
		(link ?x ?y - location) (path ?x ?y - location)
		(empty ?v - truck)
)


(:action load-truck
  :parameters
   (?loc - location ?obj - package
    ?truck - truck
    )
  :precondition
   (and (at ?truck ?loc) (at ?obj ?loc))
  :effect
   (and (not (at ?obj ?loc)) (in ?obj ?truck)))

(:action unload-truck
  :parameters
   (?loc - location ?obj - package
    ?truck - truck
    )
  :precondition
   (and (at ?truck ?loc) (in ?obj ?truck))
  :effect
   (and (not (in ?obj ?truck)) (at ?obj ?loc)))

(:action board-truck
  :parameters
   (?driver - driver
    ?loc - location ?truck - truck
    )
  :precondition
   (and (at ?truck ?loc) (at ?driver ?loc) (empty ?truck))
  :effect
   (and (not (at ?driver ?loc)) (driving ?driver ?truck) (not (empty ?truck))))

(:action disembark-truck
  :parameters
   (?driver - driver
    ?loc - location ?truck - truck
    )
  :precondition
   (and (at ?truck ?loc) (driving ?driver ?truck))
  :effect
   (and (not (driving ?driver ?truck)) (at ?driver ?loc) (empty ?truck)))

(:action drive-truck
  :parameters
   (?driver - driver
    ?loc-from - location
    ?loc-to - location
    ?truck - truck)
  :precondition
   (and (at ?truck ?loc-from)
   (driving ?driver ?truck) (link ?loc-from ?loc-to))
  :effect
   (and (not (at ?truck ?loc-from)) (at ?truck ?loc-to)))

(:action walk
  :parameters
   (?driver - driver
    ?loc-from - location
    ?loc-to - location)
  :precondition
   (and (at ?driver ?loc-from) (path ?loc-from ?loc-to))
  :effect
   (and (not (at ?driver ?loc-from)) (at ?driver ?loc-to)))


)