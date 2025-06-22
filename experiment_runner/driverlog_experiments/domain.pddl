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
   (?a - location
    ?b - package
    ?c - truck)
  :precondition
   (and (at ?c ?a) (at ?b ?a))
  :effect
   (and (not (at ?b ?a)) (in ?b ?c)))

(:action unload-truck
  :parameters
   (?a - location
    ?b - package
    ?c - truck)
  :precondition
   (and (at ?c ?a) (in ?b ?c))
  :effect
   (and (not (in ?b ?c)) (at ?b ?a)))

(:action board-truck
  :parameters
   (?a - driver
    ?b - location
    ?c - truck)
  :precondition
   (and (at ?c ?b) (at ?a ?b) (empty ?c))
  :effect
   (and (not (at ?a ?b)) (driving ?a ?c) (not (empty ?c))))

(:action disembark-truck
  :parameters
   (?a - driver
    ?b - location
    ?c - truck)
  :precondition
   (and (at ?c ?b) (driving ?a ?c))
  :effect
   (and (not (driving ?a ?c)) (at ?a ?b) (empty ?c)))

(:action drive-truck
  :parameters
   (?a - driver
    ?b - location
    ?c - location
    ?d - truck)
  :precondition
   (and (at ?d ?b)
   (driving ?a ?d) (link ?b ?c))
  :effect
   (and (not (at ?d ?b)) (at ?d ?c)))

(:action walk
  :parameters
   (?a - driver
    ?b - location
    ?c - location)
  :precondition
   (and (at ?a ?b) (path ?b ?c))
  :effect
   (and (not (at ?a ?b)) (at ?a ?c)))

 
)
