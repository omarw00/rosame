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
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) 0.7071) (* (y ?a) -0.7071)) -1.4142)
	(<= (+ (* (x ?a) 0.9701) (* (y ?a) 0.2425)) 30.8020)
	(<= (+ (* (y ?a) 0.0196) (* (x ?a) -0.9998)) 1.9996)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 54.4472))
	:effect (and 
(increase (x ?a) 1.5000)		
(increase (y ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (* (x ?a) -1) -1)
	(<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -38.8909)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 70.7107)
	(<= (+ (* (x ?a) 0.9701) (* (y ?a) 0.2425)) 32.6210)
	(<= (+ (* (y ?a) -0.5547) (* (x ?a) -0.8321)) -34.1141)
	(<= (+ (* (y ?a) 0.0665) (* (x ?a) -0.9978)) 3.9911))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (+ (* (d ?b) 0.5223) (+ (* (x ?a) 0.6908) (* (y ?a) -0.4999))) 2.3927)
	(<= (+ (* (d ?b) 0.5235) (+ (* (x ?a) -0.6980) (* (y ?a) -0.4886))) 2.2336)
	(<= (+ (* (d ?b) 0.5808) (+ (* (x ?a) 0.3485) (* (y ?a) -0.7357))) -9.9898)
	(<= (+ (* (x ?a) 0.5096) (+ (* (d ?b) 0.6022) (* (y ?a) -0.6146))) -1.3156)
	(<= (+ (* (y ?a) 0.5317) (+ (* (x ?a) -0.6267) (* (d ?b) -0.5697))) -1.7376)
	(<= (+ (* (y ?a) 0.6553) (+ (* (x ?a) -0.4426) (* (d ?b) -0.6122))) 4.4374))
	:effect (and  
		))

)