(define (domain sailing)
(:requirements :typing :fluents :negative-preconditions :equality)
(:types 	boat person - object
)

(:predicates (saved ?t - person)
)

(:functions (x ?b - boat)
	(y ?b - boat)
	(d ?t - person)
)

(:action go_north_east
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) -1.4142)
	(<= (+ (* (x ?b) 0.9701) (* (y ?b) 0.2425)) 30.8020)
	(<= (+ (* (y ?b) 0.0196) (* (x ?b) -0.9998)) 1.9996)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 54.4472))
	:effect (and 
(increase (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (* (x ?b) -1) -1)
	(<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -38.8909)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 70.7107)
	(<= (+ (* (x ?b) 0.9701) (* (y ?b) 0.2425)) 32.6210)
	(<= (+ (* (y ?b) -0.5547) (* (x ?b) -0.8321)) -34.1141)
	(<= (+ (* (y ?b) 0.0665) (* (x ?b) -0.9978)) 3.9911))
	:effect (and 
(decrease (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (+ (* (d ?t) 0.5223) (+ (* (x ?b) 0.6908) (* (y ?b) -0.4999))) 2.3927)
	(<= (+ (* (d ?t) 0.5235) (+ (* (x ?b) -0.6980) (* (y ?b) -0.4886))) 2.2336)
	(<= (+ (* (d ?t) 0.5808) (+ (* (x ?b) 0.3485) (* (y ?b) -0.7357))) -9.9898)
	(<= (+ (* (x ?b) 0.5096) (+ (* (d ?t) 0.6022) (* (y ?b) -0.6146))) -1.3156)
	(<= (+ (* (y ?b) 0.5317) (+ (* (x ?b) -0.6267) (* (d ?t) -0.5697))) -1.7376)
	(<= (+ (* (y ?b) 0.6553) (+ (* (x ?b) -0.4426) (* (d ?t) -0.6122))) 4.4374))
	:effect (and (saved ?t) 
		))

)