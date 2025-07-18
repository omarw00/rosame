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
	:precondition (and (<= (* (x ?a) -1) 2)
	(<= (* (y ?a) -1) 0)
	(<= (+ (* (x ?a) 0.7740) (* (y ?a) -0.6332)) 3.0958)
	(<= (+ (* (y ?a) 0.0345) (* (x ?a) 0.9994)) 18.0582)
	(<= (+ (* (y ?a) 0.4679) (* (x ?a) 0.8838)) 42.2139)
	(<= (+ (* (y ?a) 0.7071) (* (x ?a) -0.7071)) 58.6899))
	:effect (and 
(increase (y ?a) 1.5000)		
(increase (x ?a) 1.5000)))

(:action go_north_west
	:parameters (?a - boat)
	:precondition (and (<= (+ (* (x ?a) -0.7071) (* (y ?a) -0.7071)) -4.9497)
	(<= (+ (* (x ?a) 0.7071) (* (y ?a) 0.7071)) 64.3467)
	(<= (+ (* (x ?a) 0.7740) (* (y ?a) -0.6332)) 3.3069)
	(<= (+ (* (y ?a) -0.0400) (* (x ?a) -0.9992)) -2.6779)
	(<= (+ (* (y ?a) 0.0345) (* (x ?a) 0.9994)) 19.6090)
	(<= (+ (* (y ?a) 0.1414) (* (x ?a) -0.9899)) 11.7380)
	(<= (+ (* (y ?a) 0.4679) (* (x ?a) 0.8838)) 44.2414))
	:effect (and 
(increase (y ?a) 1.5000)		
(decrease (x ?a) 1.5000)))

(:action go_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -19.5000)
	(<= (y ?a) 46.5000)
	(= (x ?a) 17.5000))
	:effect (and 
(assign (x ?a) 14.5000)))

(:action go_south_west
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -83.5000)
	(<= (y ?a) 91.5000)
	(= (+ (x ?a) (y ?a)) 91))
	:effect (and 
(decrease (y ?a) (+ (* (x ?a) 0.5000) (+ (* (y ?a) 0.5000) -43.5000)))		
(increase (x ?a) (+ (* (x ?a) -0.5000) (+ (* (y ?a) -0.5000) 47.5000)))))

(:action go_south_east
	:parameters (?a - boat)
	:precondition (and (<= (* (y ?a) -1) -75.5000)
	(<= (y ?a) 81.5000)
	(= (+ (x ?a) (* (y ?a) -1)) -72))
	:effect (and 
(decrease (x ?a) (+ (* (x ?a) 0.5000) (+ (* (y ?a) -0.5000) 38)))		
(decrease (y ?a) (+ (* (x ?a) -0.5000) (+ (* (y ?a) 0.5000) -34)))))

(:action save_person
	:parameters (?a - boat ?b - person)
	:precondition (and (<= (* (x ?a) -1) 0.5000)
	(<= (+ (* (d ?b) 0.4182) (+ (* (x ?a) 0.7170) (* (y ?a) -0.5577))) -0.5377)
	(<= (+ (* (d ?b) 0.4969) (+ (* (x ?a) 0.6625) (* (y ?a) -0.5606))) -0.2166)
	(<= (+ (* (d ?b) 0.5088) (+ (* (x ?a) 0.6784) (* (y ?a) -0.5300))) 0.9010)
	(<= (+ (* (d ?b) 0.5203) (+ (* (x ?a) 0.7198) (* (y ?a) -0.4596))) 5.6627)
	(<= (+ (* (d ?b) 0.5774) (+ (* (x ?a) 0.5774) (* (y ?a) -0.5774))) 0)
	(<= (+ (* (d ?b) 0.6882) (+ (* (x ?a) -0.2294) (* (y ?a) -0.6882))) -0.9177)
	(<= (+ (* (x ?a) 0.5561) (+ (* (y ?a) 0.7680) (* (d ?b) -0.3178))) 41.3904)
	(<= (+ (* (x ?a) 0.5774) (+ (* (y ?a) 0.5774) (* (d ?b) -0.5774))) 14.4338)
	(<= (+ (* (x ?a) 0.7094) (+ (* (y ?a) 0.5445) (* (d ?b) -0.4475))) 18.7106)
	(<= (+ (* (y ?a) 0.0746) (+ (* (x ?a) -0.9921) (* (d ?b) -0.1009))) -1.0489)
	(<= (+ (* (y ?a) 0.0871) (+ (* (d ?b) -0.0923) (* (x ?a) -0.9919))) 0.3037)
	(<= (+ (* (y ?a) 0.1099) (+ (* (d ?b) -0.0989) (* (x ?a) -0.9890))) 1.6484)
	(<= (+ (* (y ?a) 0.4865) (+ (* (d ?b) -0.7243) (* (x ?a) -0.4886))) -1.1912)
	(<= (+ (* (y ?a) 0.5323) (+ (* (x ?a) 0.7259) (* (d ?b) -0.4355))) 18.7282)
	(<= (+ (* (y ?a) 0.7055) (+ (* (x ?a) 0.6466) (* (d ?b) -0.2902))) 38.3135)
	(<= (x ?a) 11.5000))
	:effect (and (saved ?b) 
		))

)