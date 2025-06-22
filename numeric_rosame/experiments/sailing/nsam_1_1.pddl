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
	:precondition (and (<= (+ (* (x ?b) 0.7071) (* (y ?b) -0.7071)) 0)
	(<= (+ (* (y ?b) -0.5039) (* (x ?b) -0.8638)) 0)
	(<= (+ (* (y ?b) 0.0416) (* (x ?b) 0.9991)) 6.2446)
	(<= (+ (* (y ?b) 0.2425) (* (x ?b) -0.9701)) 29.1043)
	(<= (+ (* (y ?b) 0.7071) (* (x ?b) -0.7071)) 53.0330))
	:effect (and 
(increase (x ?b) 1.5000)		
(increase (y ?b) 1.5000)))

(:action go_north_west
	:parameters (?b - boat)
	:precondition (and (<= (+ (* (x ?b) -0.7071) (* (y ?b) -0.7071)) -10.6066)
	(<= (+ (* (x ?b) 0.7071) (* (y ?b) 0.7071)) 59.3970)
	(<= (+ (* (y ?b) 0.0416) (* (x ?b) 0.9991)) 7.8057)
	(<= (+ (* (y ?b) 0.2425) (* (x ?b) -0.9701)) 27.2853)
	(<= (+ (* (y ?b) 0.5300) (* (x ?b) -0.8480)) 42.4529))
	:effect (and 
(increase (y ?b) 1.5000)		
(decrease (x ?b) 1.5000)))

(:action save_person
	:parameters (?b - boat ?t - person)
	:precondition (and (not (saved ?t))
	(<= (+ (* (d ?t) 0.3841) (+ (* (y ?b) -0.5121) (* (x ?b) -0.7682))) -2.6888)
	(<= (+ (* (d ?t) 0.4867) (+ (* (y ?b) -0.3244) (* (x ?b) -0.8111))) 13.1399)
	(<= (+ (* (d ?t) 0.5934) (+ (* (x ?b) -0.5439) (* (y ?b) -0.5934))) -0.5934)
	(<= (+ (* (d ?t) 0.5946) (+ (* (x ?b) -0.5302) (* (y ?b) -0.6045))) -1.3378)
	(<= (+ (* (x ?b) 0.2395) (+ (* (y ?b) 0.7184) (* (d ?t) -0.6531))) 8.6862)
	(<= (+ (* (y ?b) 0.5745) (+ (* (x ?b) 0.5909) (* (d ?t) -0.5663))) 1.2557)
	(<= (+ (* (y ?b) 0.6231) (+ (* (x ?b) 0.5163) (* (d ?t) -0.5875))) 3.5785)
	(<= (x ?b) 0))
	:effect (and (saved ?t) 
		))

)